CLASS zcl_lab_69_blog_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS: set_article IMPORTING iv_article TYPE string,
           get_article RETURNING VALUE(rv_article) type string.
EVENTS new_article EXPORTING VALUE(ev_article) type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
  Data current_article TYPE string.
ENDCLASS.

CLASS zcl_lab_69_blog_9387 IMPLEMENTATION.
  METHOD get_article.
rv_article = me->current_article.
  ENDMETHOD.

  METHOD set_article.
me->current_article = iv_article.
RAISE EVENT new_article EXPORTING ev_article = me->current_article.
  ENDMETHOD.

ENDCLASS.
