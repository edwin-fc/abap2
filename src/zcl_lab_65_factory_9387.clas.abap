CLASS zcl_lab_65_factory_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS create_file IMPORTING iv_file TYPE string
                        RETURNING VALUE(ro_file) TYPE REF TO zif_lab_06_file_9387.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_65_factory_9387 IMPLEMENTATION.
  METHOD create_file.

    CASE iv_file.
      WHEN 'Work File'.
        ro_file = NEW zcl_lab_63_work_file_9387( ).

      WHEN 'Supply File'.
        ro_file = NEW zcl_lab_64_supply_file_9387( ).

    ENDCASE.

  ENDMETHOD.

ENDCLASS.
