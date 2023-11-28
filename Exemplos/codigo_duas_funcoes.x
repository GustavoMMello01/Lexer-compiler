func teste ( a )
{
    var d ;
    var c ;

    c = 2.0 ;
    d = 1.0 ;

    a = c + d ;
    print ( a ) ;

    for ( a <- c , d ) {
        print ( a )
    } ;
}

func teste2 ( a )
{
    print ( a ) ;
}

main 
{  
    var a ; 
    var b ;
    
    a = 2.0 ;
    b = 1.0 ;

    print ( "OLas" , a ) ;

    teste ( a ) ;
}