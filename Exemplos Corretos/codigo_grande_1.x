func teste ( a )
{
    var d ;
    var c ;

    c = 2.0 ;
    d = 1.0 ;

    a = c ;
    print ( a ) ;

    var rafa ;
    var gustavo ;


    for ( a <- c , d ) {
        print ( a ) ;
        if ( a < c ) 
        {
            rafa = 9.0 ;
        }
        elif ( a > c ) 
        {
            gustavo = 9.0 ; 
        }
        elif ( a == c ) 
        {
            print ( a ) ;
        }
        else 
        {
            gustavo = 10.0 ;
            rafa = 10.0 ;
        }
    } 
}

func teste2 ( a )
{
    print ( a ) ;
}

main 
{ 
    var a ;
    var b ;
    var c ;

    c = 2.0 ;
    b = 1.0 ; 
    a = 5.0 ;
    
    while ( a > b ) {
        if ( b > c ) {
            print ( b ) ;
            var teste ;
            teste = 1.0 ;
        }
        elif ( c > b ) {
            print ( c ) ;
        }
        else {
            print ( b ) ;
        }
    } 

    teste2 ( a ) ; 
    teste ( a ) ;

}