# Proyecto ETL y Análisis de Retail 

## Objetivo
Transformar un dataset de retail con datos inconsistentes en una base de datos limpia y lista para generar reportes estratégicos de negocio.

## Estructura del Proyecto
1. **01_Estructura_DDL.sql**: Creación de la base de datos y esquemas.
2. **02_Carga_Limpieza.sql**: Proceso de limpieza (manejo de nulos, corrección de precios y cantidades).
3. **03_Analisis_de_Datos.sql**: Consultas de negocio (Ventas Online vs Tienda, Top productos, etc.).

## Proceso de Limpieza (ETL)
Se realizaron las siguientes acciones para garantizar la calidad de los datos:
* **Manejo de Nulos:** Se utilizó la lógica `ISNULL` para rescatar productos y categorías.
* **Integridad de Datos:** Se eliminaron registros con cantidades o precios menores o iguales a cero.
* **Cálculos:** Se creó la columna `total_spent` recalculando valores para asegurar la precisión financiera.

##  Hallazgos Clave
* El canal **Online** genera mayores ingresos totales que el físico.
* El ticket promedio de venta es superior en plataformas digitales.
* Se identificó el ítem `Item_25_EHE` como el producto líder en la categoría electrónica.
