int i = 0;
int j = 0;

size (400,400);
 for( i = 0; i<8; i++){
   for(j = 0; j<8; j++){
   if ( (i+j) % 2==0){
   fill(0);
   } else {
     fill(255);
   }
   rect(j*50,i*50,50,50);
   }
   }
 
