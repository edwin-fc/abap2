CLASS zcl_lab_31_org_france_9387 DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_29_organization_9387
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_location REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_31_org_france_9387 IMPLEMENTATION.
  METHOD get_location.
rv_location = 'Organiation France'.
  ENDMETHOD.

ENDCLASS.
