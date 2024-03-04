CREATE TABLE IF NOT EXISTS invoices(
	invoiceid SERIAL PRIMARY KEY,
	customerid int not null,
	invoicedate TIMESTAMP,
	billingaddress VARCHAR(100),
	billingcity VARCHAR(100),
	billingstate VARCHAR(100),
	billingcountry VARCHAR(100),
	billingpostalcode VARCHAR(100),
	total FLOAT(8)
);

SELECT *
FROM invoices

DROP TABLE invoices