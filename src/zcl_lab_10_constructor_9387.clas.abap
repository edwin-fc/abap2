CLASS zcl_lab_10_constructor_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.


    METHODS constructor  IMPORTING iv_log TYPE string OPTIONAL.

    CLASS-METHODS class_constructor.

    CLASS-DATA log TYPE string.
    CLASS-DATA s_constructor TYPE string.


    METHODS get_log RETURNING VALUE(ev_log) TYPE string.

*  class-METHODS constructor IMPORTING iv_log2 type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA n_constructor TYPE string.

ENDCLASS.



CLASS zcl_lab_10_constructor_9387 IMPLEMENTATION.


  METHOD constructor.
    me->n_constructor = iv_log.
    log = | { log }-Instance Constructor { n_constructor }-->|.

  ENDMETHOD.

  METHOD get_log.
    ev_log = me->n_constructor.
  ENDMETHOD.

  METHOD class_constructor.
    s_constructor = 'Constructor Estatico'.
    log = | { log }-Static Constructor { s_constructor }-->|.
  ENDMETHOD.

ENDCLASS.
