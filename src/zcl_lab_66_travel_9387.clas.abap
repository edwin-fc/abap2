CLASS zcl_lab_66_travel_9387 DEFINITION ABSTRACT
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
      METHODS travel FINAL IMPORTING ro_out TYPE REF TO iF_OO_ADT_CLASSRUN_OUT.
  PROTECTED SECTION.
    DATA out TYPE REF TO iF_OO_ADT_CLASSRUN_OUT.
    METHODS transport_oneway ABSTRACT IMPORTING ro_out TYPE REF TO iF_OO_ADT_CLASSRUN_OUT.
    METHODS day_one ABSTRACT IMPORTING ro_out TYPE REF TO iF_OO_ADT_CLASSRUN_OUT.
    METHODS day_two ABSTRACT IMPORTING ro_out TYPE REF TO iF_OO_ADT_CLASSRUN_OUT.
    METHODS day_three ABSTRACT IMPORTING ro_out TYPE REF TO iF_OO_ADT_CLASSRUN_OUT.
    METHODS transport_return ABSTRACT IMPORTING ro_out TYPE REF TO iF_OO_ADT_CLASSRUN_OUT.


  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_66_travel_9387 IMPLEMENTATION.
  METHOD travel.
    me->out = ro_out.
    transport_oneway( ro_out = out ).
    day_one( ro_out = out ).
    day_two( ro_out = out ).
    day_three( ro_out = out ).
    transport_return( ro_out = out ).


  ENDMETHOD.

ENDCLASS.
