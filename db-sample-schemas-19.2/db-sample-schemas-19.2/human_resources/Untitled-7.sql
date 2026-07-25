-- 1. Criação das Tabelas Principais
CREATE TABLE departments (
    department_id NUMBER(4) PRIMARY KEY,
    department_name VARCHAR2(30) NOT NULL,
    manager_id NUMBER(6),
    location_id NUMBER(4)
);

CREATE TABLE employees (
    employee_id NUMBER(6) PRIMARY KEY,
    first_name VARCHAR2(20),
    last_name VARCHAR2(25) NOT NULL,
    email VARCHAR2(25) NOT NULL,
    phone_number VARCHAR2(20),
    hire_date DATE NOT NULL,
    job_id VARCHAR2(10) NOT NULL,
    salary NUMBER(8,2),
    commission_pct NUMBER(2,2),
    manager_id NUMBER(6),
    department_id NUMBER(4) REFERENCES departments(department_id)
);

-- 2. Inserção dos Departamentos Padrão
INSERT INTO departments VALUES (10, 'Administration', 200, 1700);
INSERT INTO departments VALUES (20, 'Marketing', 201, 1800);
INSERT INTO departments VALUES (30, 'Purchasing', 114, 1700);
INSERT INTO departments VALUES (50, 'Shipping', 121, 1500);
INSERT INTO departments VALUES (60, 'IT', 103, 1400);
INSERT INTO departments VALUES (80, 'Sales', 145, 2500);
INSERT INTO departments VALUES (90, 'Executive', 100, 1700);
INSERT INTO departments VALUES (100, 'Finance', 108, 1700);

-- 3. Inserção dos Funcionários (Exatamente como nos exemplos da Oracle)
INSERT INTO employees VALUES (100, 'Steven', 'King', 'SKING', '515.123.4567', TO_DATE('17-06-2003', 'DD-MM-YYYY'), 'AD_PRES', 24000, NULL, NULL, 90);
INSERT INTO employees VALUES (101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', TO_DATE('21-09-2005', 'DD-MM-YYYY'), 'AD_VP', 17000, NULL, 100, 90);
INSERT INTO employees VALUES (102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', TO_DATE('13-01-2001', 'DD-MM-YYYY'), 'AD_VP', 17000, NULL, 100, 90);
INSERT INTO employees VALUES (103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', TO_DATE('03-01-2006', 'DD-MM-YYYY'), 'IT_PROG', 9000, NULL, 102, 60);
INSERT INTO employees VALUES (104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', TO_DATE('21-05-2007', 'DD-MM-YYYY'), 'IT_PROG', 6000, NULL, 103, 60);
INSERT INTO employees VALUES (105, 'David', 'Austin', 'DAUSTIN', '590.423.4569', TO_DATE('25-06-2007', 'DD-MM-YYYY'), 'IT_PROG', 4800, NULL, 103, 60);
INSERT INTO employees VALUES (106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', TO_DATE('05-02-2006', 'DD-MM-YYYY'), 'IT_PROG', 4800, NULL, 103, 60);
INSERT INTO employees VALUES (107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', TO_DATE('07-02-2007', 'DD-MM-YYYY'), 'IT_PROG', 4200, NULL, 103, 60);
INSERT INTO employees VALUES (108, 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', TO_DATE('17-08-2002', 'DD-MM-YYYY'), 'FI_MGR', 12008, NULL, 101, 100);
INSERT INTO employees VALUES (109, 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', TO_DATE('16-08-2002', 'DD-MM-YYYY'), 'FI_ACCOUNT', 9000, NULL, 108, 100);

-- 4. Confirmar e gravar no banco de dados
COMMIT;