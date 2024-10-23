CREATE DATABASE SalesDWH;
USE SalesDWH;


CREATE TABLE dim_customer
(
    customer_key INT IDENTITY(1,1) PRIMARY KEY,  -- Surrogate Key
    customer_id INT NOT NULL,                    -- Business Key
    first_name NVARCHAR(50),
    last_name NVARCHAR(50),
    date_of_birth DATE,
    start_date DATETIME DEFAULT GETDATE(),       -- SCD Type 2 Start Date
    end_date DATETIME DEFAULT NULL,              -- SCD Type 2 End Date
    is_current TINYINT DEFAULT 1                 -- SCD Current Flag
);

CREATE TABLE dim_customer_address
(
    address_key INT IDENTITY(1,1) PRIMARY KEY,
    address_id INT NOT NULL,
    customer_id INT,              -- Link to dim_customer
    street NVARCHAR(100),
    city NVARCHAR(50),
    state NVARCHAR(50),
    zip_code NVARCHAR(20),
    start_date DATETIME DEFAULT GETDATE(),       -- SCD Type 2 Start Date
    end_date DATETIME,
    is_current TINYINT DEFAULT 1                 -- SCD Current Flag
);


CREATE TABLE dim_customer_contact
(
    contact_key INT IDENTITY(1,1) PRIMARY KEY,
    contact_id INT NOT NULL,
    customer_id INT,              -- Link to dim_customer
    contact_type NVARCHAR(50),
    contact_value NVARCHAR(100),
    start_date DATETIME DEFAULT GETDATE(),
    end_date DATETIME,
    is_current TINYINT DEFAULT 1
);


CREATE TABLE dim_payment_method
(
    payment_method_key INT IDENTITY(1,1) PRIMARY KEY,
    payment_method_id INT NOT NULL,
    method_name NVARCHAR(50)
);


CREATE TABLE dim_date
(
    date_key INT IDENTITY(1,1) PRIMARY KEY,
    full_date DATE NOT NULL,
    year INT NOT NULL,
    quarter INT NOT NULL,
    month_num INT NOT NULL,
    month_name NVARCHAR(15) NOT NULL
);


CREATE TABLE dim_interaction
(
    interaction_key INT IDENTITY(1,1) PRIMARY KEY,
    interaction_id INT NOT NULL,
    customer_id INT,              -- Link to dim_customer
    interaction_date DATE,
    interaction_type_id INT,      -- Link to dim_interaction_type
    notes NVARCHAR(255)
);


CREATE TABLE dim_interaction_type
(
    interaction_type_key INT IDENTITY(1,1) PRIMARY KEY,
    interaction_type_id INT NOT NULL,
    type_name NVARCHAR(50)
);


CREATE TABLE fact_sales
(
    sales_key INT IDENTITY(1,1) PRIMARY KEY,
    transaction_id INT NOT NULL,                -- Transaction ID
    customer_key INT,                           -- Link to dim_customer
    address_key INT,                            -- Link to dim_customer_address
    contact_key INT,                            -- Link to dim_customer_contact
    payment_method_key INT,                     -- Link to dim_payment_method
    interaction_key INT,                        -- Link to dim_interaction
    interaction_type_key INT,                   -- Link to dim_interaction_type
    transaction_date_key INT,                   -- Link to dim_date
    amount MONEY,
    created_at DATETIME DEFAULT GETDATE(),
    -- Foreign Key Constraints
    CONSTRAINT fk_fact_sales_dim_customer FOREIGN KEY (customer_key) REFERENCES dim_customer(customer_key),
    CONSTRAINT fk_fact_sales_dim_address FOREIGN KEY (address_key) REFERENCES dim_customer_address(address_key),
    CONSTRAINT fk_fact_sales_dim_contact FOREIGN KEY (contact_key) REFERENCES dim_customer_contact(contact_key),
    CONSTRAINT fk_fact_sales_dim_payment FOREIGN KEY (payment_method_key) REFERENCES dim_payment_method(payment_method_key),
    CONSTRAINT fk_fact_sales_dim_interaction FOREIGN KEY (interaction_key) REFERENCES dim_interaction(interaction_key),
    CONSTRAINT fk_fact_sales_dim_interaction_type FOREIGN KEY (interaction_type_key) REFERENCES dim_interaction_type(interaction_type_key),
    CONSTRAINT fk_fact_sales_dim_date FOREIGN KEY (transaction_date_key) REFERENCES dim_date(date_key)
);



CREATE INDEX idx_fact_sales_customer_key ON fact_sales(customer_key);
CREATE INDEX idx_fact_sales_date_key ON fact_sales(transaction_date_key);
CREATE INDEX idx_fact_sales_payment_method_key ON fact_sales(payment_method_key);
CREATE INDEX idx_fact_sales_interaction_key ON fact_sales(interaction_key);


