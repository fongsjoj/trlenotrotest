CLASS zsvss_class_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZSVSS_CLASS_ART_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: it_art TYPE STANDARD TABLE OF zsvss_tab_art.

    it_art = VALUE #(
     ( client = sy-mandt id_art = 1 descr = 'Mini colores' desc2 = 'Un mini estuche, con mini colores'
     color = 'varios' piezas = 12 stock = 10
     url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-mini-colores-estuche-01_700x.jpg?v=1676577703' )
     ( client = sy-mandt id_art = 2 descr = 'MONTHLY PLANNER' desc2 = 'deal para planificar tus metas y proyectos. Tiene un espacio para 24 meses'
     color = 'negro' piezas = 1 stock = 100
     url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-Libreta-MonthyPlanner-1_c5c1f533-8cbd-4cab-b7d8-8fe1125dff3c_700x.jpg?v=1700616264' )
     ( client = sy-mandt id_art = 3 descr = 'Marcadores' desc2 = 'Zebra MIKDLINER Colores Pasteles'
     color = 'varios' piezas = 5 stock = 20
     url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-zebra-mildliner-pasteles-01_700x.jpg?v=1711595335' )
     ( client = sy-mandt id_art = 4 descr = 'Lapiz' desc2 = 'TOMBOW 2558 #HB'
     color = 'negro' piezas = 1 stock = 10
     url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-tombow2558-1_700x.jpg?v=1711139173' )
    ).

    INSERT zsvss_tab_art FROM TABLE @it_art.
    IF sy-subrc = 0.
      out->write( 'Insert successful' ).
    ELSE.
      out->write( 'Insert wrong' ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
