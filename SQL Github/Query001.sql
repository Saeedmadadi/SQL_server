USE sql_invoicing;

SELECT state, city ,SUM(invoice_total) AS maximum 
FROM invoices
JOIN clients using(client_id)
GROUP BY state, city WITH ROLLUP