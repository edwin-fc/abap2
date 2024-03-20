CLASS zcl_lab_20_person_9387 DEFINITION
  PUBLIC
*Con vision Final, se bloquea la clase para que ninguna clase pueda heredar de ella.
*  FINAL
  CREATE PUBLIC .


  PUBLIC SECTION.

*Con palabra final despues del nombre del metodo se retringe la herencia para redefinir el metodo.
    METHODS set_name FINAL IMPORTING iv_name TYPE string.

  PROTECTED SECTION.
    DATA name TYPE string.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_20_person_9387 IMPLEMENTATION.
  METHOD set_name.
    me->name = iv_name.
  ENDMETHOD.

ENDCLASS.
