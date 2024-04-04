CLASS zcl_lab_68_package_b_9387 DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_66_travel_9387
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  PROTECTED SECTION.
    METHODS: transport_oneway REDEFINITION,
             day_one REDEFINITION,
             day_two REDEFINITION,
             day_three REDEFINITION,
             transport_return REDEFINITION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_68_package_b_9387 IMPLEMENTATION.
  METHOD day_one.
ro_out->write( 'Activity day one - package B' ).
  ENDMETHOD.

  METHOD day_three.
ro_out->write( 'Activity day three - package B' ).
  ENDMETHOD.

  METHOD day_two.
ro_out->write( 'Activity day two - package B' ).
  ENDMETHOD.

  METHOD transport_oneway.
ro_out->write( 'Transport_oneway package B' ).
  ENDMETHOD.

  METHOD transport_return.
ro_out->write( 'Transport_return package B' ).
  ENDMETHOD.

ENDCLASS.
