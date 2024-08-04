
CREATE TABLE bottle (
    Bottle_id VARCHAR2(5) PRIMARY KEY,
    Bottle_price NUMBER(4,0),
    Design VARCHAR2(30)
);
INSERT INTO bottle (Bottle_id, Bottle_price, Design) VALUES  ('B001', 1000, 'Vintage Charm');
INSERT INTO bottle (Bottle_id, Bottle_price, Design) VALUES ('B002', 1300, 'Mystic Woods');
INSERT INTO bottle (Bottle_id, Bottle_price, Design) VALUES  ('B003', 1500, 'Classic Elegance');
INSERT INTO bottle (Bottle_id, Bottle_price, Design) VALUES  ('B004', 1700, 'Modern and Sleek');
INSERT INTO bottle (Bottle_id, Bottle_price, Design) VALUES  ('B005', 2000, 'Ocean Breeze');



CREATE TABLE ingredients (
    Ingredient_id VARCHAR2(5) PRIMARY KEY,
    Ingredient_Name VARCHAR2(30),
    Price_per_ml NUMBER(4,2),
    Family VARCHAR2(20)
);


   
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES ('I001', 'Bergamot', 13.00, 'Citrus');
 
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES   ('I002', 'Grapefruit', 10.00, 'Citrus');
   
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES ('I003', 'Vetiver', 17.00, 'Woody');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I004', 'Oakmoss', 30.00, 'Chypre');
   
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES ('I005', 'Amber', 20.00, 'Amber');
 
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES   ('I006', 'Tonka Bean', 20.00, 'Amber');
   
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES ('I007', 'Jasmine', 25.00, 'Floral');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I008', 'Cardamom', 15.00, 'Spicy');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I009', 'Oud', 50.00, 'Woody');
 
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES   ('I010', 'Sandalwood', 30.00, 'Woody');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I011', 'Galbanum', 25.00, 'Green');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I012', 'Green notes', 17.00, 'Green');
   
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES ('I013', 'Patchouli', 13.00, 'Earthy');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I014', 'Ambergris', 60.00, 'Amber');

INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES    ('I015', 'Neroli', 27.00, 'Floral');
 
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES   ('I016', 'Vanilla', 18.00, 'Gourmand');
 
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES   ('I017', 'Musk', 33.00, 'Animalic');
   
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES ('I018', 'Frangipani', 25.00, 'Floral');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I019', 'Osmanthus', 37.00, 'Floral');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I020', 'Lemon', 9.00, 'Citrus');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I021', 'Rose', 20.00, 'Floral');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I022', 'Cedarwood', 15.00, 'Woody');
 
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES   ('I023', 'Cinnamon', 16.00, 'Spicy');
 
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES   ('I024', 'Sea salt accord', 19.00, 'Marine');
   
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES ('I025', 'Leather', 25.00, 'Leathery');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I026', 'Benzoin', 22.00, 'Resinous');
   
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES ('I027', 'Ambrette', 28.00, 'Musky');
   
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES ('I028', 'Hedione', 25.00, 'Aromatic');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I029', 'Coconut', 13.00, 'Creamy');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I030', 'Orange blossom', 24.00, 'Floral');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I031', 'Cloves', 15.00, 'Spicy');
   
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES ('I032', 'Lavender', 12.00, 'Floral');
 
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES   ('I033', 'Seaweed', 20.00, 'Marine');
 
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES   ('I034', 'Sage', 15.00, 'Herbal');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I035', 'Civet', 75.00, 'Animalic');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I036', 'Amyris', 30.00, 'Woody');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I037', 'Labdanum', 40.00, 'Amber');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I038', 'Lily of the valley', 35.00, 'Floral');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I039', 'Balsamic', 20.00, 'Amber');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I040', 'Myrrh', 25.00, 'Amber');
 
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES   ('I041', 'Pink Pepper', 20.00, 'Spicy');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I042', 'Woody Notes', 21.00, 'Woody');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I043', 'Iris', 35.00, 'Woody');
   
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES ('I044', 'Mandarin', 12.00, 'Citrus');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I045', 'Artemisia', 16.00, 'Green');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I046', 'Peony', 27.00, 'Floral');
 
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES   ('I047', 'Lychee', 25.00, 'Fruity');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I048', 'Peach', 17.00, 'Fruity');
 
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES   ('I049', 'Rainbow Accord', 25.00, 'Fruity');
  
INSERT INTO ingredients (Ingredient_id, Ingredient_Name, Price_per_ml, Family) VALUES  ('I050', 'Costus', 28.00, 'Woody');
 

CREATE TABLE USERS (
    User_id VARCHAR2(5) PRIMARY KEY,
    User_name VARCHAR2(30),  
    Email VARCHAR2(30),  
    Passwd VARCHAR2(20),  
    Phone_number NUMBER(20)  
);

CREATE TABLE PERFUMES(
 Perfume_name VARCHAR2(30),
 Perfume_id VARCHAR2(5) PRIMARY KEY,
 Message VARCHAR2(20)
);



CREATE TABLE FRAGRANCE (
    Fragrance_id VARCHAR2(5),
    Fragrance_name VARCHAR2(10),
    Ingredient1_id VARCHAR2(5),
    Ingredient2_id VARCHAR2(5),
  
    PRIMARY KEY (Fragrance_id),
    FOREIGN KEY (Ingredient1_id) REFERENCES INGREDIENTS(Ingredient_id),
    FOREIGN KEY (Ingredient2_id) REFERENCES INGREDIENTS(Ingredient_id)
);

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F001', 'Bright Citrus', 'I001', 'I020');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F002', 'Sparkling Citrus', 'I002', 'I020');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F003', 'Warm Woods', 'I003', 'I010');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F004', 'Elegant Amber', 'I005', 'I006');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F005', 'Lush Floral', 'I007', 'I021');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F006', 'Spicy Depth', 'I008', 'I014');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F007', 'Earthy Harmony', 'I012', 'I013');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F008', 'Creamy Delight', 'I016', 'I029');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F009', 'Floral Fantasy', 'I018', 'I019');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F010', 'Chypre Mystery', 'I004', 'I021');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F011', 'Zesty Spice', 'I023', 'I041');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F012', 'Refreshing Citrus', 'I020', 'I044');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F013', 'Soft Floral', 'I030', 'I046');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F014', 'Summer Delight', 'I047', 'I048');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F015', 'Woody Embrace', 'I010', 'I042');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F016', 'Green Tranquility', 'I011', 'I045');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F017', 'Seaside Bliss', 'I024', 'I033');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F018', 'Warm Embrace', 'I025', 'I005');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F019', 'Inviting Musk', 'I017', 'I027');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F020', 'Sweet Seduction', 'I016', 'I039');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F021', 'Velvet Sunset', 'I043', 'I005');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F022', 'Sunlit Woods', 'I042', 'I018');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F023', 'Velvet Bloom', 'I007', 'I036');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F024', 'Amber Nectar', 'I005', 'I039');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F025', 'Moonlit Serenade', 'I038', 'I015');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F026', 'Tropical Bliss', 'I047', 'I024');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F027', 'Silken Whispers', 'I001', 'I028');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F028', 'Forest Dream', 'I003', 'I034');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F029', 'Amber Intrigue', 'I006', 'I037');

INSERT INTO FRAGRANCE (Fragrance_id, Fragrance_name, Ingredient1_id, Ingredient2_id)
VALUES ('F030', 'Midnight Bloom', 'I015', 'I017');




CREATE TABLE PERFUME_FRAG (
    Perfume_id VARCHAR2(5),
    Fragrance_id VARCHAR2(5),
    PRIMARY KEY (Fragrance_id, Perfume_id),
    FOREIGN KEY (Fragrance_id) REFERENCES FRAGRANCE(Fragrance_id),
    FOREIGN KEY (Perfume_id) REFERENCES PERFUMES(Perfume_id)
);


CREATE TABLE ORDERS (
    Order_id VARCHAR2(5),
    User_id VARCHAR2(5),
    Bottle_id VARCHAR2(5),
    Price NUMBER(10, 2), 
    Perfume_id VARCHAR2(5),  
    PRIMARY KEY(Order_id,User_id),
    FOREIGN KEY (User_id) REFERENCES USERS(User_id),
    FOREIGN KEY (Bottle_id) REFERENCES BOTTLE(Bottle_id),
    FOREIGN KEY (Perfume_id) REFERENCES PERFUMES(Perfume_id)
);

DESC USERS;
 
 SELECT * FROM INGREDIENTS;
 
 SET SERVEROUTPUT ON;
--
-- 
--CREATE OR REPLACE PROCEDURE GetRelatedIngredients(p_ingredient_name IN VARCHAR2) IS
--BEGIN
--    FOR frag_rec IN (SELECT Fragrance_id
--                     FROM FRAGRANCE
--                     WHERE Ingredient1_id = (SELECT Ingredient_id
--                                             FROM INGREDIENTS
--                                             WHERE Ingredient_Name = p_ingredient_name))
--    LOOP
--        FOR ing2_rec IN (SELECT i.Ingredient_id, i.Ingredient_Name
--                         FROM FRAGRANCE f
--                         JOIN INGREDIENTS i ON f.Ingredient2_id = i.Ingredient_id
--                         WHERE f.Fragrance_id = frag_rec.Fragrance_id)
--        LOOP
--            DBMS_OUTPUT.PUT_LINE('Fragrance ID: ' || frag_rec.Fragrance_id ||
--                                 ', Ingredient2 ID: ' || ing2_rec.Ingredient_id ||
--                                 ', Ingredient2 Name: ' || ing2_rec.Ingredient_Name);
--        END LOOP;
--    END LOOP;
--END GetRelatedIngredients;
--/
--DECLARE
--    v_ingredient_name VARCHAR2(50) := 'Bergamot';
--BEGIN
--    GetRelatedIngredients(v_ingredient_name);
--END;
--/



desc users;
ALTER TABLE users ADD CONSTRAINT unique_phone UNIQUE (PHONE_NUMBER);

SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE GetIngredient2Details (
    p_ingredient_id IN VARCHAR2,
    p_ingredient2_details OUT SYS_REFCURSOR
)
as
BEGIN
    -- Main logic of the procedure
    OPEN p_ingredient2_details FOR
        SELECT i.Family, i.Ingredient_Name, f.fragrance_name, f.fragrance_id
        FROM Fragrance f
        JOIN Ingredients i ON f.Ingredient2_id = i.Ingredient_id
        WHERE f.Ingredient1_id = p_ingredient_id;

END;
/


CREATE TABLE perfume_frag (
    bottle_id VARCHAR2(5) ,
    perfume_id VARCHAR2(5),
    fragrance_id VARCHAR(5),
    PRIMARY KEY (bottle_id, perfume_id, fragrance_id),
    FOREIGN KEY (bottle_id) REFERENCES BOTTLE(Bottle_id),
    FOREIGN KEY (perfume_id) REFERENCES PERFUMES(Perfume_id),
    FOREIGN KEY (fragrance_id) REFERENCES Fragrance(Fragrance_id)
);


select * from perfumes;

delete from perfumes where perfume_name='XYZ';

ALTER TABLE PERFUMES
ADD (PRICES NUMBER(10, 2));

drop trigger CALCULATE_TOTAL_PRICE;


CREATE OR REPLACE TRIGGER calculate_price_trigger
BEFORE INSERT OR UPDATE ON perfume_frag
FOR EACH ROW
DECLARE
    v_ingredient1_price NUMBER;
    v_ingredient2_price NUMBER;
    v_bottle_price NUMBER;
    v_final_price NUMBER;
    
BEGIN
    -- Retrieve ingredient prices
    SELECT price_per_ml
    INTO v_ingredient1_price
    FROM ingredients
    WHERE ingredient_id = (SELECT ingredient1_id FROM fragrance WHERE fragrance_id = :new.fragrance_id);
    
    SELECT price_per_ml
    INTO v_ingredient2_price
    FROM ingredients
    WHERE ingredient_id = (SELECT ingredient2_id FROM fragrance WHERE fragrance_id = :new.fragrance_id);
    
    -- Retrieve bottle price
    SELECT bottle_price
    INTO v_bottle_price
    FROM bottle
    WHERE bottle_id = :new.bottle_id;
    
    -- Calculate final price
    v_final_price := v_ingredient1_price * 120 + v_ingredient2_price * 80 + v_bottle_price;
    
   UPDATE perfumes
    SET prices = v_final_price
    WHERE Perfume_id = :new.Perfume_id;
END;
/



select * from perfume_frag;
select * from perfumes;
select * from orders;

CREATE SEQUENCE ORDERS_SEQ START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE PROCEDURE generate_order(
    p_user_id IN VARCHAR2,
    p_bottle_id IN VARCHAR2,
    p_perfume_id IN VARCHAR2,
    p_price IN NUMBER 
)
IS
    v_order_id VARCHAR2(10);
BEGIN
    -- Generate order ID
    SELECT 'O' || TO_CHAR(ORDERS_SEQ.NEXTVAL, 'FM00000') INTO v_order_id FROM DUAL;
    
    -- Insert data into ORDERS table
    INSERT INTO ORDERS (Order_ID, User_ID, Bottle_ID, Price, Perfume_ID) -- Add Price here
    VALUES (v_order_id, p_user_id, p_bottle_id, p_price, p_perfume_id);
    
    -- Commit the transaction
    COMMIT;
END generate_order;
/

alter table orders modify order_id varchar2(10);
select * from orders;

CREATE OR REPLACE TRIGGER prevent_duplicate_user
BEFORE INSERT ON users
FOR EACH ROW
DECLARE
    existing_user_count NUMBER;
BEGIN
    -- Check if a user with the same email ID and phone number already exists
    SELECT COUNT(*) INTO existing_user_count
    FROM users
    WHERE email = :new.email
    AND phone_number = :new.phone_number;

    -- If a user with the same email ID and phone number exists, raise an exception
    IF existing_user_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'An account with the same email ID and phone number already exists.');
    END IF;
END;
/
select * from users;



