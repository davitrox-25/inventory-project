Database Schema
Tables and Relationships
categories └── products

suppliers └── products

products ├── inventory └── inventory_movements

warehouses ├── inventory └── inventory_movements

-------------------------------------------------
Relationship Details

categories

Primary Key:

* category_id

Referenced By:

* products.category_id

suppliers

Primary Key:

* supplier_id

Referenced By:

* products.supplier_id

products

Primary Key:

* product_id

Foreign Keys:

* category_id → categories.category_id
* supplier_id → suppliers.supplier_id

Referenced By:

* inventory.product_id
* inventory_movements.product_id

warehouses

Primary Key:

* warehouse_id

Referenced By:

* inventory.warehouse_id
* inventory_movements.warehouse_id

inventory

Primary Key:

* inventory_id

Foreign Keys:

* product_id → products.product_id
* warehouse_id → warehouses.warehouse_id

inventory_movements

Primary Key:

* movement_id

Foreign Keys:

* product_id → products.product_id
* warehouse_id → warehouses.warehouse_id
