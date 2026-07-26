-- 1. Criar o usuário HR no banco
CREATE USER HR IDENTIFIED BY "SenhaForteHR2026#";

-- 2. Dar cota ilimitada no tablespace DATA
ALTER USER HR QUOTA UNLIMITED ON DATA;

-- 3. Conceder permissões de conexão e criação de objetos
GRANT CONNECT, RESOURCE TO HR;
GRANT CREATE VIEW, CREATE SEQUENCE, CREATE SYNONYM TO HR;