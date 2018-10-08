int[][] demo;
int col=20;int row=15;//use only even numbers.


void start(int[][] ar){
   for(int j=0;j<row;j++){
 for(int i=0;i<col;i++){
   ar[i][j]=i+j*col;  }  }  }
  
void display_Numbers(int[][] ar){
 for(int j=0;j<row;j++){
   for(int i=0;i<col;i++){
  fill(250,0,0);
   text(ar[i][j],25+30*i,35+30*j);  }}}
   
   void grid(int[][] ar){
rectMode(CENTER);start(ar);
    for(int j=0;j<row;j++){
       for(int i=0;i<col;i++){
   if(ar[i][j]%3==0){fill(200,200,0);rect(30+30*i,30+30*j,30,30);}  
 if(ar[i][j]%3==1){fill(0,250,0);rect(30+30*i,30+30*j,30,30);}
 if(ar[i][j]%3==2){fill(0,0,250);rect(30+30*i,30+30*j,30,30);}
 }}     
display_Numbers(ar);
}
