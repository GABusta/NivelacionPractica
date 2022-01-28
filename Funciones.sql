# ---------------------------------------------
# ---------- Funcion calculo de años ----------
# ---------------------------------------------
DELIMITER //
CREATE FUNCTION anios(edad int, date1 date) RETURNS int DETERMINISTIC
BEGIN
 DECLARE date2 DATE;
  Select current_date() into date2;
  RETURN edad - (year(date2) - year(date1));
END
//

# ---------------------------------------------
# ---------- Funcion calculo de meses ---------
# ---------------------------------------------
DELIMITER // 
CREATE FUNCTION meses(date1 date, date2 date) RETURNS int DETERMINISTIC
BEGIN
    DECLARE meses INT;
    DECLARE anios INT;
    DECLARE salida INT;
    
    SET meses = month(date1) - month(date2),
    anios = year(date1) - year(date2);
    
    IF meses = 0 THEN
		IF anios = 0 THEN
			SET salida = 0;
        ELSE
			SET salida = anios * 12;
        END IF;
	ELSE
		IF anios = 0 THEN
			SET salida = meses;
        ELSE
			SET salida = anios * 12 + meses;
        END IF;
    END IF;
    
  RETURN salida;
END
//