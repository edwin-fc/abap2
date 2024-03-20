CLASS zcl_lab_30_org_germany_9387 DEFINITION INHERITING FROM zcl_lab_29_organization_9387
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_location REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_30_org_germany_9387 IMPLEMENTATION.
  METHOD get_location.
    rv_location = 'Organization Germany'.
  ENDMETHOD.

ENDCLASS.
