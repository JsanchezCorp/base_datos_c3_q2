use db_security;

Select
r.name AS name,
v.path AS ruta,
m.name as name,
m.path as paquete
from
	role r
INNER JOIN role_module rm ON r.id = rm.role_id
INNER JOIN module m ON rm.module_id = m.id
INNER JOIN module_view mv ON m.id = mv.module_id
INNER JOIN view v ON mv.view_id = v.id