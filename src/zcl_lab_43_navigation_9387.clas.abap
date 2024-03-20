CLASS zcl_lab_43_navigation_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  Data log type string.
  METHODS on_touch_screen for event touch_screen of zcl_lab_42_screen_9387
                                    importing ev_pos_horizontal
                                              ev_pos_vertical
                                              sender.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_43_navigation_9387 IMPLEMENTATION.
  METHOD on_touch_screen.

me->log = | Log touch screen... Posicion horizontal: { ev_pos_horizontal }  - Posicion vertical { ev_pos_vertical } - Screen Type: { sender->screen_type }|.
  ENDMETHOD.

ENDCLASS.
