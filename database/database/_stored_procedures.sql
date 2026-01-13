USE banking_system;

DELIMITER $$

-- Deposit procedure
CREATE PROCEDURE process_deposit (
    IN acc_id INT,
    IN amt DECIMAL(15,2)
)
BEGIN
    UPDATE accounts 
    SET balance = balance + amt 
    WHERE account_id = acc_id AND status = 'ACTIVE';

    INSERT INTO transactions (account_id, type, amount)
    VALUES (acc_id, 'DEPOSIT', amt);
END $$

-- Withdrawal procedure
CREATE PROCEDURE process_withdrawal (
    IN acc_id INT,
    IN amt DECIMAL(15,2)
)
BEGIN
    DECLARE current_balance DECIMAL(15,2);

    SELECT balance INTO current_balance 
    FROM accounts WHERE account_id = acc_id;

    IF current_balance < amt THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Insufficient balance';
    ELSE
        UPDATE accounts 
        SET balance = balance - amt 
        WHERE account_id = acc_id AND status = 'ACTIVE';

        INSERT INTO transactions (account_id, type, amount)
        VALUES (acc_id, 'WITHDRAW', amt);
    END IF;
END $$

DELIMITER ;
