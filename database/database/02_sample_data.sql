USE banking_system;

-- Users
INSERT INTO users (name, email, role) VALUES
('Admin User', 'admin@bank.com', 'ADMIN'),
('John Doe', 'john@example.com', 'CUSTOMER'),
('Jane Smith', 'jane@example.com', 'CUSTOMER');

-- Accounts
INSERT INTO accounts (user_id, account_type, balance, status) VALUES
(2, 'SAVINGS', 10000, 'ACTIVE'),
(3, 'CURRENT', 20000, 'PENDING');

-- Transactions
INSERT INTO transactions (account_id, type, amount) VALUES
(1, 'DEPOSIT', 5000),
(1, 'WITHDRAW', 2000);

-- Account approvals
INSERT INTO account_approval (account_id, admin_id, approval_status) VALUES
(2, 1, 'APPROVED');

-- Audit logs
INSERT INTO audit_log (user_id, action) VALUES
(1, 'Approved account for user 3'),
(2, 'Deposited amount');
