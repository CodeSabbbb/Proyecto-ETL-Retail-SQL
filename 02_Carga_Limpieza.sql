-- =============================================
-- PROCESO: Transformación y Carga de Datos (ETL)
-- PROYECTO: Retail Store Sales
-- OBJETIVO: Procesar los datos de la tabla principal hacia la tabla final.
-- =============================================

/* METAS DEL PROCESO:
   1. ESTANDARIZACIÓN: Convertir formatos de texto a tipos de datos nativos (fechas y lógicas).
   2. LIMPIEZA DE NULOS: Imputar valores faltantes en campos críticos (Item, Category, Total).
   3. VALIDACIÓN DE CÁLCULOS: Recalcular TotalSpent para asegurar integridad financiera.
   4. ENRIQUECIMIENTO: Normalizar valores booleanos para la columna de descuentos.
*/

USE ProyectoETL
GO;

INSERT INTO Retail_limpio(
transaction_id,
customer_id,
category,
item,
price_unit,
quantity,
total_spent,
payment_method,
locations,
transaction_date,
discount_applied
)
SELECT
Transaction_ID,
Customer_ID,
Category,
ISNULL(Item, 'PRODUCTO DESCONOCIDO'), --Se reconoció que un item es nulo cuando Price o Quantity es nulo
ISNULL(Price_Per_Unit, 0),
ISNULL(Quantity, 0),
ISNULL(Total_Spent,0), 
Payment_Method,
Location,
Transaction_Date,
ISNULL(Discount_Applied, 0)
FROM retail_principal

WHERE  Quantity > 0 --Evitamos transacciones vacías que sesgan el ticket promedio.
  AND [Price_Per_Unit] > 0 --Filtramos errores de carga o productos sin valor comercial.
GO

