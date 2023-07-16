drop procedure IF EXISTS ComputeAverageScoreForUser;
DELIMITER //
-- Write a SQL script that creates a stored procedure ComputeAverageScoreForUser that computes and store the average score for a student. 
-- Note: An average score can be a decimal
CREATE PROCEDURE ComputeAverageScoreForUser(
    IN user_id INTEGER)

BEGIN
    UPDATE users
        SET average_score=(SELECT AVG(score) from corrections WHERE corrections.user_id=user_id)
    WHERE id=user_id;

END;

//
DELIMITER ;



