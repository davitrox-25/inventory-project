Entity Relationship Diagram (ERD)

+----------------+
|   categories   |
+----------------+
| category_id PK |
| category_name  |
+----------------+
        |
        |
        v

+----------------+       +---------------+
|    products    |------>|   suppliers   |
+----------------+       +---------------+
| product_id PK  |       | supplier_id PK|
| product_name   |       | supplier_name |
| category_id FK |       | contact_email |
| supplier_id FK |       +---------------+
| unit_price     |
+----------------+
        |
        |
        +-------------------+
        |                   |
        v                   v

+----------------+   +----------------------+
|   inventory    |   | inventory_movements  |
+----------------+   +----------------------+
| inventory_id PK|   | movement_id PK       |
| product_id FK  |   | product_id FK        |
| warehouse_id FK|   | warehouse_id FK      |
| quantity       |   | movement_type        |
+----------------+   | quantity             |
                     | movement_date        |
                     +----------------------+
                                ^
                                |
                                |
                     +------------------+
                     |   warehouses     |
                     +------------------+
                     | warehouse_id PK  |
                     | warehouse_name   |
                     | location         |
                     +------------------+
