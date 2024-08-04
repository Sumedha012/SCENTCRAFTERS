
from flask import Flask, get_flashed_messages, jsonify, render_template, request, redirect, flash
import cx_Oracle

# Initialize Oracle client
cx_Oracle.init_oracle_client(lib_dir=r"C:/instantclient_21_13")

perf = Flask(__name__, template_folder='.')
perf.secret_key = '0101'

# Oracle connection details
perf.config['ORACLE_CONNECTION_STRING'] = 'sumedha/admin@localhost:1521/xepdb1'


dic={}

def generate_user_id(cursor):
    try:
        cursor.execute("SELECT COUNT(*) FROM users")
        count = cursor.fetchone()[0]
        return 'U{:03d}'.format(count + 1)
    except cx_Oracle.Error as error:
        print("Error generating user ID:", error)
 

# def insert_user(cursor, user_data):
#     try:
#         user_id = generate_user_id(cursor)
#         cursor.execute("INSERT INTO users VALUES (:user_id, :name, :email, :password, :phone, :address)",
#                        (user_id, user_data['name'], user_data['email'], user_data['password'], user_data['phone'], user_data['address']))
#         cursor.connection.commit()
#     except cx_Oracle.Error as error:
#         print("Error inserting user data:", error)
def insert_user(cursor, user_data):
   
    try:
        user_id = generate_user_id(cursor)
        cursor.execute("INSERT INTO users VALUES (:user_id, :name, :email, :password, :phone, :address)",
                       (user_id, user_data['name'], user_data['email'], user_data['password'], user_data['phone'], user_data['address']))
        cursor.connection.commit()
    except cx_Oracle.Error as error:
        # Propagate the exception to the calling function
        raise error



@perf.route('/') 
def create_account_page():
    messages = get_flashed_messages()
    return render_template('create.html', messages=messages)
 

@perf.route('/create_acc', methods=['GET','POST'])
def create_account():
  if request.method == 'POST':
    try:
        # Extract form data
        user_data = {
            'name': request.form['name'],
            'email': request.form['email'],
            'phone': request.form['phone'],
            'address': request.form['address'],
            'password': request.form['password']
        }

      
        # Connect to Oracle database
        connection = cx_Oracle.connect(perf.config['ORACLE_CONNECTION_STRING'])
        cursor = connection.cursor()

        # Insert user data into the database
        insert_user(cursor, user_data)

        user_id = generate_user_id(cursor)
       
        # Close cursor and connection
        cursor.close()
        connection.close()

        # Redirect to home page with user's data
        return redirect('/home?user_id={}&name={}&phone={}&address={}'.format(user_id,user_data['name'], user_data['phone'], user_data['address']))
    except cx_Oracle.DatabaseError as e:
        # Handle database errors, including the one raised by the trigger
        error, = e.args
        if error.code == -20001:
            flash('An account with the same email ID and phone number already exists.', 'error')
        else:
            flash('An error occurred while creating the account. Please try again later.', 'error')
        
        # Redirect to create account page with error message
        return render_template('create.html') 

    
    except Exception as e:
        print("Error creating account:", e)
        flash('An error occurred while creating the account. Please try again later.', 'error')
        return render_template('create.html') 
  else:
        return render_template('create.html')

@perf.route('/home')
def display_home():
    try:
        # Retrieve user's data from query parameters
        user_id = request.args.get('user_id')
        name = request.args.get('name')
        phone = request.args.get('phone')
        address = request.args.get('address')
        dic['name']=name
        dic['user_id']=user_id
        dic['phone']=phone
        dic['address']=address
     


        
        # Render home page with user's data
        return render_template('home.html', user_id=user_id, name=name, phone=phone, address=address)
        
    except Exception as e:
        print("Error displaying home page:", e)
 

@perf.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        phone_number = request.form['phone']
        password = request.form['password']

        # Connect to the Oracle database
        connection = cx_Oracle.connect(perf.config['ORACLE_CONNECTION_STRING'])
        cursor = connection.cursor()

        # Query the database for the provided phone number and password
        cursor.execute("SELECT * FROM users WHERE PHONE_NUMBER = :phone", {'phone': phone_number})
        user_data = cursor.fetchone()  # Fetch the user data

        if user_data and user_data[3] == password:  # Check if the user exists and password matches
            # Close cursor and connection
            cursor.close()
            connection.close()

           

            # Redirect to home page with user's data
            user_id, name, _, _, _, address = user_data  # Extracting relevant data
            return redirect('/home?user_id={}&name={}&phone={}&address={}'.format(user_id, name, phone_number, address))
        else:
            # Close cursor and connection
            cursor.close()
            connection.close()

            # Show an alert for incorrect data and return to the login page
            return "<script>alert('Incorrect phone number or password. Please try again.'); window.location.href = '/login';</script>"

    # Render the login page for GET requests
    return render_template('login.html')
 

@perf.route('/IngChoice.html')
def ing_choice():
    try:
        # Retrieve user's data from query parameters
        user_id = request.args.get('user_id')
        name = request.args.get('name')
        phone = request.args.get('phone')
        address = request.args.get('address')

        # Render the IngChoice.html template with user's data
        return render_template('IngChoice.html', user_id=user_id, name=name, phone=phone, address=address)
        
    except Exception as e:
        print("Error rendering IngChoice page:", e)
 

@perf.route('/create_perfume', methods=['GET', 'POST'])
def create_perfume():
    if request.method == 'POST':
        try:
            # Extract the selected first ingredient ID from the form
            ingredient1_id = request.form['ingredient_id']
            
           

            
            # Connect to the Oracle database
            connection = cx_Oracle.connect(perf.config['ORACLE_CONNECTION_STRING'])
            cursor = connection.cursor()

            # Prepare the output parameter for the cursor
            second_ingredients = cursor.var(cx_Oracle.CURSOR)

            # Call the stored procedure to get possible second ingredients
            cursor.callproc('GetIngredient2Details', [ingredient1_id, second_ingredients])

           


            # Fetch the result set from the output parameter
            second_ingredients_cursor = second_ingredients.getvalue()
            second_ingredients_data = second_ingredients_cursor.fetchall()

            # Close cursor and connection
            cursor.close()
            connection.close()

            # Render the template with the possible second ingredients
            return render_template('IngChoice.html', second_ingredients=second_ingredients_data)
        except Exception as e:
            print("Error in create_perfume:", e)

    # Render the template for GET requests
    return render_template('IngChoice.html')

 

@perf.route('/bottles')
def display_bottles():
    
    try:
        
        # Retrieve fragrance name and ID from query parameters
        fragrance_name = request.args.get('fragranceName')
        fragrance_id = request.args.get('fragranceId')
        dic['fragrance_name']=fragrance_name
        dic['fragrance_id']=fragrance_id
      
        # Render bottles.html template with fragrance name and ID
        return render_template('bottles.html', fragrance_name=fragrance_name, fragrance_id=fragrance_id)
    except Exception as e:
        print("Error displaying bottles page:", e)

@perf.route('/orders', methods=['GET', 'POST'])
def display_orders():
  
    if request.method == 'GET':
        try:
            # Retrieve the bottle ID from the query parameters
            bottle_id = request.args.get('bottleId')
            dic['bottle_id'] = bottle_id
           

            # Render the orders.html template with the bottle ID
            return render_template('orders.html', bottle_id=bottle_id)
        except Exception as e:
            print("Error displaying orders page:", e)
            return "An error occurred while displaying the orders page."
    
    elif request.method == 'POST':
        try:
            
            # Retrieve data from the form
            name_on_perfume = request.form['name on perfume']
          
            message = request.form['message']
            bottle_id=dic['bottle_id']
            fragrance_id=dic['fragrance_id']
            
            # Connect to the Oracle database
            connection = cx_Oracle.connect(perf.config['ORACLE_CONNECTION_STRING'])
            cursor = connection.cursor()

            # Generate a new Perfume ID
            cursor.execute("SELECT COUNT(*) FROM PERFUMES")
            count = cursor.fetchone()[0]
            perfume_id = 'P{:03d}'.format(count + 1)
            dic['perfume_id']=perfume_id
            # Insert the new perfume data into the database
            cursor.execute("INSERT INTO PERFUMES (Perfume_name, Perfume_id, message) VALUES (:perfume_name, :perfume_id, :perfume_message )",
                           (name_on_perfume, perfume_id, message))
            cursor.execute("INSERT INTO PERFUME_FRAG (Bottle_id, Perfume_id, Fragrance_id) VALUES (:bottle_id, :perfume_id, :fragrance_id )",
                           (bottle_id, perfume_id, fragrance_id))
            connection.commit()

            cursor.execute("SELECT prices FROM perfumes WHERE Perfume_id = :perfume_id", {'perfume_id': perfume_id})
            final_price = cursor.fetchone()[0]
            dic['final_price']=final_price
            # Close cursor and connection
            cursor.callproc('generate_order', [dic['user_id'], bottle_id, perfume_id, final_price])

            cursor.execute("SELECT Order_ID FROM orders WHERE Perfume_id = :perfume_id", {'perfume_id': perfume_id})
            order_id = cursor.fetchone()[0]
            
            
            cursor.close()
            connection.close()
           
           



            # Redirect to a success page or render a success message
            return render_template('final.html', 
                                   name_on_perfume=name_on_perfume,
                                   message=message,
                                   address=dic['address'],
                                   orderId=order_id,
                                   price=final_price
                                  )
        except Exception as e:
            print("Error placing order:", e)
            return "An error occurred while placing the order."




if __name__ == '__main__':
    perf.run()
    print(dic)
    
    