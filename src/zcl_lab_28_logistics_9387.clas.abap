CLASS zcl_lab_28_logistics_9387 DEFINITION INHERITING FROM zcl_lab_27_factory_9387
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS: input_products REDEFINITION,
           production_line REDEFINITION.


  PROTECTED SECTION.
  PRIVATE SECTION.
  Data: line    TYPE string VALUE 'PRODUCTION_LINE ',
        product TYPE string value 'INPUT_PRODUCTS'.
ENDCLASS.



CLASS zcl_lab_28_logistics_9387 IMPLEMENTATION.
  METHOD input_products.
  rv_input = product.
  ENDMETHOD.

  METHOD production_line.
rv_production = line.
  ENDMETHOD.

ENDCLASS.
