CLASS zsvssclassarttestup_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZSVSSCLASSARTTESTUP_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: it_art TYPE STANDARD TABLE OF zsvss_tab_art.

    UPDATE zsvss_tab_art
    SET stock = 1
    WHERE id_art = 4.

    IF sy-subrc = 0.
      out->write( 'actualizado correctamente'  ).
    ELSE.
      out->write( 'No existe el artículo'  ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
