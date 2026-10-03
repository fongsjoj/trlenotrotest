CLASS zcl_ejecutar_pahijo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_EJECUTAR_PAHIJO IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA(lo_hijo1) = NEW zcl_h1_pahijo(  ).
    DATA(lo_hijo2) = NEW zcl_h2_pahijo(  ).

    out->write( 'Objeto hijo1' ).
    out->write( lo_hijo1->sumar(  ) ).
    out->write( lo_hijo1->sumar(  ) ).

    out->write( '---------------' ).

    out->write( 'Objeto hijo2' ).
    out->write( lo_hijo2->sumar(  ) ).
  ENDMETHOD.
ENDCLASS.
