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


void start1(int[][] ar){
 for(int j=0;j<row1;j++){
 for(int i=0;i<col1;i++){ 
 ar[i][j]=0; } }
ar[col1/2][0]=1;  
}

int rule(int x, int y, int z){
 if(x==1&&y==1&&z==1){return 0;}
 else if(x==1&&y==1&&z==0){return 1;}
 else if(x==1&&y==0&&z==1){return 0;}
 else if(x==1&&y==0&&z==0){return 1;}
 else if(x==0&&y==1&&z==1){return 1;}
 else if(x==0&&y==1&&z==0){return 0;}
 else if(x==0&&y==0&&z==1){return 1;}
 else if(x==0&&y==0&&z==0){return 0;} 
  return 0;
}

void refig(int[][] ar){
for(int j=1;j<row1-1;j++){
  for(int i=1;i<col1-1;i++){
ar[i][j]=rule(ar[i-1][j-1],ar[i][j-1],ar[i+1][j-1]);  
 }}  
}

 void sir(int[][] ar){
start1(ar);refig(ar);
   rectMode(CENTER);
     for(int j=0;j<row1;j++){
 for(int i=0;i<col1;i++){
   if(ar[i][j]==0){fill(250,0,0);rect(2*i,2*j,2,2);}  
 if(ar[i][j]==1){fill(0,250,0);rect(2*i,2*j,2,2);}
 }}     
}
