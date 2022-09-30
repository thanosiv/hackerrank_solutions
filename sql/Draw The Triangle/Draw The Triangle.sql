-- INT Value here changed to max num of * characters desired
declare @totnum INT = 20;

WHILE @totnum > 0
    BEGIN
        DECLARE @countnum INT = @totnum
        DECLARE @printstr VARCHAR(255) = '';
    
        WHILE @countnum > 0
            BEGIN
                -- String MUST contain a space after each * char in order to meet the requirements
                SET @printstr += '* ';
                -- Subtract 1 from @countnum each loop til it gets to 0
                SET @countnum -= 1;
            END;
        -- Print out the * character string 
        PRINT @printstr;

        -- Subtract 1 from the total number and start the loop again
        SET @totnum -= 1;
END;
