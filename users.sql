CREATE TABLE users (
    id VARCHAR2(50) PRIMARY KEY,
    pw VARCHAR2(50) NOT NULL,
    name VARCHAR2(100) NOT NULL,
    gender CHAR(1) NOT NULL,
    birth_year NUMBER(4) NOT NULL,
    birth_month NUMBER(2) NOT NULL,
    birth_day NUMBER(2) NOT NULL,
    email VARCHAR2(100) NOT NULL,
    phone VARCHAR2(20),
    address VARCHAR2(200)
);
