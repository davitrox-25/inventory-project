-- Inventory by Warehouse

SELECT
    p.product_name,
    w.warehouse_name,
    i.quantity
FROM inventory i
JOIN products p
    ON i.product_id = p.product_id
JOIN warehouses w
    ON i.warehouse_id = w.warehouse_id;

--------------------------------------------------

-- Products with Low Stock

SELECT
    p.product_name,
    i.quantity
FROM inventory i
JOIN products p
    ON i.product_id = p.product_id
WHERE i.quantity < 20;

--------------------------------------------------

-- Inventory Value

SELECT
    p.product_name,
    i.quantity,
    p.unit_price,
    (i.quantity * p.unit_price) AS inventory_value
FROM inventory i
JOIN products p
    ON i.product_id = p.product_id;

--------------------------------------------------

-- Total Inventory Value

SELECT
    SUM(i.quantity * p.unit_price) AS total_inventory_value
FROM inventory i
JOIN products p
    ON i.product_id = p.product_id;

--------------------------------------------------

-- Inventory Movements History

SELECT
    p.product_name,
    w.warehouse_name,
    m.movement_type,
    m.quantity,
    m.movement_date
FROM inventory_movements m
JOIN products p
    ON m.product_id = p.product_id
JOIN warehouses w
    ON m.warehouse_id = w.warehouse_id
ORDER BY m.movement_date DESC;

