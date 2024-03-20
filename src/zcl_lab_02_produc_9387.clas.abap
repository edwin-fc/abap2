CLASS zcl_lab_02_produc_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS set_product IMPORTING value(iv_product) type string.
  METHODS set_creationdate IMPORTING value(iv_creation_date) type zdate_9387.
  PROTECTED SECTION.
  PRIVATE SECTION.
  Data product type matnr.
  Data creation_date type zdate_9387.
ENDCLASS.



CLASS zcl_lab_02_produc_9387 IMPLEMENTATION.
  METHOD set_creationdate.
me->creation_date = iv_creation_date.
  ENDMETHOD.

  METHOD set_product.
me->product = iv_product.
  ENDMETHOD.

ENDCLASS.
