-- Create the 'sellers' table
CREATE TABLE sellers (
    id INTEGER PRIMARY KEY AUTOINCREMENT, -- Auto-incrementing unique ID for each seller
    username TEXT NOT NULL UNIQUE         -- Unique username for each seller
);

-- Create the 'products' table
CREATE TABLE products (
    id INTEGER PRIMARY KEY AUTOINCREMENT, -- Auto-incrementing unique ID for each product
    product_name TEXT NOT NULL,           -- Name of the product
    product_url TEXT NOT NULL,            -- URL of the product
    seller_id INTEGER NOT NULL,           -- Foreign key referencing the seller ID
    FOREIGN KEY (seller_id) REFERENCES sellers(id) ON DELETE CASCADE
);