-- INT Value here changed to max num of * characters desired
declare @totnum INT = 20;

WHILE @totnum > 0
BEGIN
    DECLARE @countnum INT = @totnum
    DECLARE @printstr VARCHAR(255) = '';
    
    WHILE @countnum > 0
        BEGIN
            SET @printstr += '* ';
            SET @countnum -= 1;
        END;
    PRINT @printstr;
    SET @totnum -= 1;
END;
