USE banking_system;

-- Customer Account Summary
CREATE VIEW customer_account_summary AS
SELECT 
    u.name,
    a.account_type,
    a.balance,
    a.status
FROM users u
JOIN accounts a ON u.user_id = a.user_id;

-- Recent Transactions
CREATE VIEW recent_transactions AS
SELECT 
    t.transaction_id,
    t.type,
    t.amount,
    t.transaction_time,
    a.account_id
FROM transactions t
JOIN accounts a ON t.account_id = a.account_id
ORDER BY t.transaction_time DESC;

-- Pending Accounts
CREATE VIEW pending_accounts AS
SELECT 
    a.account_id,
    u.name,
    a.account_type,
    a.created_at
FROM accounts a
JOIN users u ON a.user_id = u.user_id
WHERE a.status = 'PENDING';
