SELECT client_id FROM bank.client WHERE district_id = 1 LIMIT 5;
SELECT MAX(client_id) FROM bank.client WHERE district_id = 72;
SELECT amount FROM bank.loan order by amount asc limit 3;
SELECT distinct status FROM bank.loan order by status asc;
SELECT loan_id FROM bank.loan WHERE payments = (SELECT max(payments) FROM bank.loan);
SELECT account_id, amount FROM bank.loan ORDER BY account_id ASC LIMIT 5;
SELECT account_id FROM bank.loan WHERE duration = 60 ORDER BY amount ASC LIMIT 5;
SELECT DISTINCT k_symbol FROM bank.`order` WHERE NOT k_symbol = ' ';
SELECT order_id FROM bank.`order` WHERE account_id = 34;
SELECT DISTINCT account_id FROM bank.`order` WHERE order_id >= 29540 AND order_id <= 29560;
SELECT amount FROM bank.`order` WHERE account_to = 30067122;
SELECT trans_id, date, type, amount FROM bank.trans WHERE account_id = 793 ORDER BY date DESC LIMIT 10;
SELECT district_id, count(client_id) FROM bank.client WHERE district_id < 10 GROUP BY district_id ORDER BY district_id ASC;
SELECT type, count(card_id) FROM bank.card GROUP BY type ORDER BY count(card_id) DESC;
SELECT account_id, SUM(amount) FROM bank.loan GROUP BY account_id ORDER BY SUM(amount) DESC LIMIT 10;
SELECT date, count(loan_id) FROM bank.loan WHERE date < 930907 GROUP BY date ORDER BY date DESC;
SELECT date, duration, count(loan_id) FROM bank.loan WHERE date >= 971201 AND date <= 971231 GROUP BY date, duration ORDER BY date ASC, duration ASC;
SELECT account_id, type, SUM(amount) AS total_amount FROM bank.trans WHERE account_id = 396 GROUP BY account_id, type ORDER BY type ASC;