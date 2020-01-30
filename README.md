# Features
--------------------------------
Auto Data Compression
Navicat UI for Postgre SQL
Types &  - Arrays IP Mac
By Default Utf-8
Full-Text
Inheritance
Windowing
MVCC - Multi version concurrency control

plpg sequel
Object Oriented Tables

# Basic Data Types
---------------------------------
pgbench


Psql advanced settings
The psql client can be personalized. The psqlrc file is used to store the user
preference for later use. There are several aspects of psql personalization, including

Surrogate keys
Natural keys

# Index types
PostgreSQL supports different indexes; each index can be used for a certain scenario
or a data type.
• B-tree index: This is the default index in PostgreSQL when the index type is
not specified with the CREATE INDEX command. The "B" stands for balanced,
which means that the data on both sides of the tree is roughly equal. B-tree
can be used for equality, ranges, and null predicates. The B-tree index
supports all PostgreSQL data types.
• Hash indexes: Hash indexes are not well supported in PostgreSQL. They are
not transaction-safe, and are not replicated to the slave nodes in streaming
replication. They are useful for equality predicates, but since a B-tree index
can support this use case, it is not recommended to use the Hash indexes.
• Generalized inverted index (GIN): The GIN index is useful when several
values need to map to one row. It can be used with complex data structures
such as arrays and full-text searches.
• Generalized Search Tree (GiST): The GiST indexes allow building of general
balanced tree structures. They are useful in indexing geometric data types,
as well as full-text search.
• Block range index (BRIN): This will be introduced in PostgreSQL 9.5. The
BRIN index is useful for very large tables where the size is limited. A BRIN
index is slower than a B-tree index, but requires less space than the B-tree.



# PostgreSQL anonymous functions

# PostgreSQL user-defined data types
## PostgreSQL provides two methods for implementing user-defined data types through the following commands:
• CREATE DOMAIN: The CREATE DOMAIN command allows developers to
create a user-defined data type with constraints. This helps in making the source code more modular.
• CREATE TYPE: The CREATE TYPE command is often used to create a
composite type, which is useful in procedural languages, and is used as the return data type. Also, one can use the create type to create the ENUM type, which is useful in decreasing the number of joins, specifically for lookup tables.
Often, developers tend not to use the user-defined data types, and use flat tables instead due to a lack of support on the driver side, such as JDBC and ODBC.
Nonetheless, in JDBC, the composite data types can be retried as Java objects and parsed manually.

```sql
CREATE DOMAIN text_without_space_and_null AS TEXT NOT NULL CHECK (value 
!~ '\s');
```