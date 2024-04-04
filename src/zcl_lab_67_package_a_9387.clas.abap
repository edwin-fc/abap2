CLASS zcl_lab_67_package_a_9387 DEFINITION INHERITING FROM zcl_lab_66_travel_9387
  PUBLIC
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



CLASS zcl_lab_67_package_a_9387 IMPLEMENTATION.
  METHOD day_one.
ro_out->write( 'Activity day one - package A' ).
  ENDMETHOD.

  METHOD day_three.
ro_out->write( 'Activity day three - package A' ).
  ENDMETHOD.

  METHOD day_two.
ro_out->write( 'Activity day two - package A' ).
  ENDMETHOD.

  METHOD transport_oneway.
ro_out->write( 'Transport_oneway package A' ).
  ENDMETHOD.

  METHOD transport_return.
ro_out->write( 'Transport_return package A' ).
  ENDMETHOD.

ENDCLASS.
