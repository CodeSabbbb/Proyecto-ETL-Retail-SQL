USE ProyectoETL
GO;

SELECT * FROM Retail_limpio;

/*cuáles son los 5 productos específicos (Items) que más dinero nos han dejado,
pero solo de la categoría 'Electronics'*/
SELECT top 5 item, SUM (total_spent) AS Total FROM Retail_limpio
WHERE category LIKE 'Electric%'
GROUP BY item 
ORDER BY Total DESC;


/*¿Estamos ganando más dinero con la gente que viene físicamente o 
con los que compran por internet?*/
SELECT locations, SUM(total_spent) AS Total, AVG(total_spent) AS Prom FROM Retail_limpio
GROUP BY locations
ORDER BY Total DESC



