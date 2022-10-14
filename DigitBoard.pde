class DigitBoard{

    int a = 0 ;
    DigitBoard (int  a ){
       this.a = a ;

    }

void add (int b ){

a = a + b ;

}

void min (int c ){

a= a  - c ;

}
void show (String d , int px ,int py ){

   String result= (d +":"+a);
    textSize(40);
text(result, px ,py  );
    }
}