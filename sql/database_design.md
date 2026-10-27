Inventory Database Design

Tables


categories

* category_id (PK)
* category_name

suppliers

* supplier_id (PK)
* supplier_name
* contact_email

products

* product_id (PK)
* product_name
* category_id (FK)
* supplier_id (FK)
* unit_price

warehouses

* warehouse_id (PK)
* warehouse_name
* location

inventory

* inventory_id (PK)
* product_id (FK)
* warehouse_id (FK)
* quantity

inventory_movements

* movement_id (PK)
* product_id (FK)
* warehouse_id (FK)
* movement_type
* quantity
* movement_date
