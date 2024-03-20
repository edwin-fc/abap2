CLASS zcl_lab_37_screen_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS: set_screen_type IMPORTING iv_screen_type TYPE string,
           get_screen_type RETURNING VALUE(rv_screen_type) type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
  Data screen_type TYPE string.

ENDCLASS.



CLASS zcl_lab_37_screen_9387 IMPLEMENTATION.
  METHOD set_screen_type.
me->screen_type = iv_screen_type.
  ENDMETHOD.

  METHOD get_screen_type.
rv_screen_type = me->screen_type.
  ENDMETHOD.

ENDCLASS.
