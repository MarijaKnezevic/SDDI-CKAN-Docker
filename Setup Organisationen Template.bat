REM Dieses Script dient als Beispiel, wie eine neue Organisation angelegt werden kann.
REM Nach Starten der Docker Container k�nnen Organisationen auch Manuell �ber das Web-Interface angelegt werden.
REM f�r den Wert "name" d�rfen nur Kleinbuchstaben und "-" verwendet werden.


REM Beispiel f�r eine Organisation
docker exec -it ckan sh -c ". usr/lib/ckan/venv/bin/activate; ckanapi action organization_create -c etc/ckan/production.ini title='Organisation eins' name='organisation-eins'"


REM Beispiel f�r eine Organisation, die einer anderen Organisation untergeordnet ist. Der Wert "name" im "group"-Tag bezieht sich auf den Wert "name" der �bergeordneten Organisation.
docker exec -it ckan sh -c ". usr/lib/ckan/venv/bin/activate; ckanapi action organization_create -c etc/ckan/production.ini title='Organisation zwei' name='organisation-zwei' groups:'[{\"capacity\":\"public\",\"name\":\"haupt-organisation\"}]'"