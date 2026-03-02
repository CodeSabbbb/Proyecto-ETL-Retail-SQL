-- =============================================
-- PROCESO: Definición de Estructura de Datos (DDL)
-- PROYECTO: ETL Retail Store Sales
-- OBJETIVO: Establecer el esquema de base de datos optimizado para la carga final.
-- =============================================

/* METAS DEL DDL:
   1. INTEGRIDAD: Definir Llaves Primarias (PK) para evitar registros duplicados.
   2. CONSISTENCIA: Asignar tipos de datos precisos.
   3. CALIDAD: Establecer valores por defecto para evitar nulos inesperados.
*/

USE ProyectoETL
GO

--La tabla final, donde irán los datos limpios
CREATE TABLE Retail_limpio(
transaction_id NVARCHAR(50) PRIMARY KEY NOT NULL,
customer_id NVARCHAR(50)NOT NULL,
category NVARCHAR(50),
item NVARCHAR(100),
price_unit DECIMAL(10,2) NOT NULL,
quantity INT NOT NULL,
total_spent DECIMAL(10,2),
payment_method NVARCHAR(50)NOT NULL,
locations NVARCHAR(50)NOT NULL,
transaction_date DATE NOT NULL,
discount_applied bit NOT NULL
);
