CLASS zcl_lab_45_chrome_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  Data log type string.
    METHODS on_close_window FOR EVENT close_window OF zif_lab_05_browser_9387 IMPORTING sender.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_45_chrome_9387 IMPLEMENTATION.
  METHOD on_close_window.
me->log = sender->log_interface.
  ENDMETHOD.

ENDCLASS.
