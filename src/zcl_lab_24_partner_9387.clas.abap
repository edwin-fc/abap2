CLASS zcl_lab_24_partner_9387 DEFINITION
  PUBLIC
*FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS get_company_capital  RETURNING VALUE(rv_comapny_capital) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_24_partner_9387 IMPLEMENTATION.
  METHOD get_company_capital.

Data(lo_company) = new zcl_lab_23_company_9387( ).

lo_company->capital = 'LOGALI'.
rv_comapny_capital = lo_company->capital.

  ENDMETHOD.

ENDCLASS.
