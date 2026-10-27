-- Categories

INSERT INTO categories (category_name)
VALUES
('Laptops'),
('Monitors'),
('Keyboards');

-- Suppliers

INSERT INTO suppliers (supplier_name, contact_email)
VALUES
('Dell','sales@dell.com'),
('HP','sales@hp.com'),
('Lenovo','sales@lenovo.com');

-- Products

INSERT INTO products (
    product_name,
    category_id,
    supplier_id,
    unit_price
)
VALUES
('Dell Latitude 5550', 1, 1, 899.99),
('HP EliteBook 840', 1, 2, 949.99),
('Lenovo ThinkPad T14', 1, 3, 999.99);

-- Warehouses

INSERT INTO warehouses (
    warehouse_name,
    location
)
VALUES
('Main Warehouse', 'New York'),
('West Warehouse', 'Chicago');

-- Inventory

INSERT INTO inventory (
    product_id,
    warehouse_id,
    quantity
)
VALUES
(1, 1, 25),
(2, 1, 18),
(3, 1, 30),
(1, 2, 12),
(2, 2, 20),
(3, 2, 15);

-- Inventory Movements

INSERT INTO inventory_movements (
    product_id,
    warehouse_id,
    movement_type,
    quantity
)
VALUES
(1, 1, 'IN', 25),
(2, 1, 'IN', 18),
(3, 1, 'IN', 30),
(1, 2, 'IN', 12),
(2, 2, 'IN', 20);
