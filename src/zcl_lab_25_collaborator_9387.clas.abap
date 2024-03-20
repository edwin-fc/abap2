CLASS zcl_lab_25_collaborator_9387 DEFINITION
INHERITING FROM zcl_lab_24_partner_9387
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS get_capital RETURNING VALUE(rv_capital) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_25_collaborator_9387 IMPLEMENTATION.
  METHOD get_capital.
    DATA(lo_company) = NEW zcl_lab_23_company_9387( ).
    lo_company->capital = 'LOGALI_CAPITAL'.
    rv_capital = lo_company->capital.
  ENDMETHOD.

ENDCLASS.
