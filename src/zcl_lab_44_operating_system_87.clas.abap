CLASS zcl_lab_44_operating_system_87 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  Data log_os type string.
  INTERFACES zif_lab_05_browser_9387.

  METHODS mouse_movement RETURNING VALUE(rv_mouse_movement) type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_44_operating_system_87 IMPLEMENTATION.
  METHOD mouse_movement.

  me->log_os = 'Log event for OS...'.
  rv_mouse_movement = me->log_os.
RAISE EVENT zif_lab_05_browser_9387~close_window.
  ENDMETHOD.

ENDCLASS.
