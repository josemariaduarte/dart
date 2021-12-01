/*
 * using Futures with time of 3 seconds
 */
void main() {
  
  print('Iniciando');
  
  httpGet('https://github.com/josemariaduarte')
     .then( (data) {
       
       print( data.toUpperCase() );
       
     });
  
  
  print('Finalizando');
    
}



// allows asynchronous requests
Future<String> httpGet( String url ) {
  return Future.delayed( 
    Duration( seconds: 3 ), () =>'Hola Mundo - 3 segundos' 
  );
}





