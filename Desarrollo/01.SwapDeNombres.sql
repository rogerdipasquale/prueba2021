-- Este es un procedure que copia los datos de a en b y les cambia el orden de los nombres

delimiter $$
create procedure swap_de_nombres() 
BEGIN
	  insert into b (id, nombre1, nombre2, id_original)
	    select id, nombre2, nombre1, id from a;

END;
$$

