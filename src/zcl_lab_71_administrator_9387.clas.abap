CLASS zcl_lab_71_administrator_9387 DEFINITION INHERITING FROM zcl_lab_70_observer_9387
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  Data notification type string.
    METHODS: on_modified_article REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_71_administrator_9387 IMPLEMENTATION.
  METHOD on_modified_article.
me->notification = ev_article.
  ENDMETHOD.

ENDCLASS.
