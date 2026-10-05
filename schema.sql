CREATE TABLE clients (id INTEGER PRIMARY KEY, name TEXT, passport TEXT);
CREATE TABLE accounts (id INTEGER PRIMARY KEY, client_id INTEGER,
    balance REAL, currency TEXT, opened DATE);
CREATE TABLE transactions (
    id INTEGER PRIMARY KEY, from_acc INTEGER, to_acc INTEGER,
    amount REAL, created DATETIME, status TEXT);
CREATE TABLE audit_log (id INTEGER PRIMARY KEY, action TEXT,
    created DATETIME, details TEXT);
