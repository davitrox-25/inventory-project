Mermaid Diagram
erDiagram

    CATEGORIES ||--o{ PRODUCTS : contains
    SUPPLIERS ||--o{ PRODUCTS : supplies

    PRODUCTS ||--o{ INVENTORY : stored_in
    WAREHOUSES ||--o{ INVENTORY : contains

    PRODUCTS ||--o{ INVENTORY_MOVEMENTS : tracked_by
    WAREHOUSES ||--o{ INVENTORY_MOVEMENTS : records
