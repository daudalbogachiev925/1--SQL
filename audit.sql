-- Лог действий
SELECT * FROM audit_log ORDER BY created DESC;

-- Подозрительные (сумма > 100000)
SELECT * FROM transactions WHERE amount > 100000;
