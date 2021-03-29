-- Elimino el procedure
drop procedure swap_de_nombres;

-- creo el trigger
delimiter $$
create trigger invertir_nombres 
  before insert
  on a for each row
BEGIN
  select max(id) into @futuro_id from b;
  insert into b (id, nombre1, nombre2, id_original)
  values (@futuro_id+1, NEW.nombre2, NEW.nombre1, NEW.id);
END
$$
