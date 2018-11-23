-- Parcial2

CREATE OR REPLACE FUNCTION CALCULAR_CAJAS_NECESARIAS (
    items_number      NUMBER,
    big_box_av        NUMBER,
    little_box_av     NUMBER    
) RETURN NUMBER IS
    boxes   NUMBER;
    
BEGIN
    IF (MOD(items_number,5) > 0) THEN
        IF (big_box_av > 0) THEN 
            boxes := ROUND((items_number / big_box_av), 0) +  MOD(items_number,5);
        END IF;
        
    END IF;

    RETURN boxes;
END CALCULAR_CAJAS_NECESARIAS;
