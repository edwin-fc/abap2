CLASS zcl_lab_51_wz_friend_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_helper.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_51_wz_friend_9387 IMPLEMENTATION.
  METHOD get_helper.
    DATA(lo_work_zone) = NEW zcl_lab_50_work_zone_9387( ).

lo_work_zone->rf_helper->get_work_zone( ).

      endmethod.

ENDCLASS.
