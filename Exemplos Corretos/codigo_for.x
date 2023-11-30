main 
{  
    var a ; 
    var b ;
    
    a = 2.0 ;
    b = 1.0 ;

    var c ; 
    c = 3.0 ;

    for ( a <- b , c ) {
        print ( a ) ;
    } 

    for ( a -> b , c ) {
        print ( a ) ;
    } 

}