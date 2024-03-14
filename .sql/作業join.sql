SELECT *
FROM gate_count LEFT JOIN stations ON 站點編號=編號;

SELECT 日期,進站人數,出站人數,名稱,地名,地址,youbike
From gate_count LEFT JOIN stations ON 站點編號=編號;

SELECT 名稱,SUM(進站人數) AS 進站人數
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE 日期 BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY 名稱
ORDER BY 進站人數 DESC;

SELECT 名稱,SUM(進站人數) AS 進站人數
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE 日期 BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY 名稱
HAVING SUM(進站人數) >5000000;

SELECT DATE_TRUNC(,SUM(進站人數) AS 進站人數
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE 日期 BETWEEN '2020-01-01' AND '2020-12-31'
GROUP BY 月份

