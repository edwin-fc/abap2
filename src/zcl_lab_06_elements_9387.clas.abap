CLASS zcl_lab_06_elements_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES: BEGIN OF ty_elem_objects,
             class     TYPE string,
             instance  TYPE string,
             reference TYPE string,
           END  OF ty_elem_objects.


********8.- Constantes
CONSTANTS: BEGIN OF currency,
           usd type c LENGTH 3 VALUE 'USD',
           mxn type c LENGTH 3 VALUE 'MXN',
           eur type c LENGTH 3 VALUE 'EUR',
           cad type c LENGTH 3 VALUE 'CAD',
           END OF CURRENCY.


METHODS set_object IMPORTING iv_class     type ty_elem_objects-class
                             iv_instance  type ty_elem_objects-instance
                             iv_reference type ty_elem_objects-reference
                             RETURNING VALUE(ms_object) TYPE ty_elem_objects.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_06_elements_9387 IMPLEMENTATION.
  METHOD set_object.
ms_object-class     = iv_class.
ms_object-instance  = iv_instance.
ms_object-reference = iv_reference.
  ENDMETHOD.

ENDCLASS.
