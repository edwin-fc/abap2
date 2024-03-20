CLASS zcl_lab_41_organization_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS: set_headquarters IMPORTING iv_headquarters TYPE string,
           get_headquarters RETURNING VALUE(rv_headquarters) type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
  Data headquarters type string.
ENDCLASS.



CLASS zcl_lab_41_organization_9387 IMPLEMENTATION.
  METHOD set_headquarters.
me->headquarters = iv_headquarters.
  ENDMETHOD.

  METHOD get_headquarters.
rv_headquarters = me->headquarters.
  ENDMETHOD.

ENDCLASS.
