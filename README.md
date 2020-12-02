# Práctica 5. Triggers
Rafael Cala González
alu0101121901@ull.edu.es

1. Dada la base de dato de viveros:

* Procedimiento: crear_email devuelva una dirección de correo electrónico con el siguiente formato:

- Un conjunto de caracteres del nombe y/o apellidos
- El carácter @.
- El dominio pasado como parámetro.

Una vez creada la tabla escriba un trigger con las siguientes características:

Trigger: trigger_crear_email_before_insert

- Se ejecuta sobre la tabla clientes.
- Se ejecuta antes de una operación de inserción.
- Si el nuevo valor del email que se quiere insertar es NULL, entonces se le creará automáticamente una dirección de email y se insertará en la tabla.
- Si el nuevo valor del email no es NULL se guardará en la tabla el valor del email.

![Ejercicio1](/IMG/DEMO_EMAIL.png)

2. Crear un trigger permita verificar que las personas en el Municipio del catastro no pueden vivir en dos viviendas diferentes.

![Ejercicio2](/IMG/DEMO_VIVIENDAS.png)

3. Crear el o los trigger que permitan mantener actualizado el stock de la base de dato de viveros.

No he sido capaz de realizar éste ejercicio, ya que al intentar hacer la inserción, mysql me indicaba un error en el código que no he sido capaz de solucionar.
