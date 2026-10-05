-- История по счёту
SELECT * FROM transactions
WHERE from_acc=1 OR to_acc=1
ORDER BY created DESC;

-- Сумма переводов между клиентами
SELECT c1.name, c2.name, SUM(t.amount)
FROM transactions t
JOIN accounts a1 ON t.from_acc=a1.id
JOIN accounts a2 ON t.to_acc=a2.id
JOIN clients c1 ON a1.client_id=c1.id
JOIN clients c2 ON a2.client_id=c2.id
GROUP BY c1.id, c2.id;
