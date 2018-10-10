void start1(int[][] ar){
 for(int j=0;j<row1;j++){
 for(int i=0;i<col1;i++){ 
 ar[i][j]=0; } }
ar[col1/2][0]=1;  
}

int rule(int x, int y, int z){
 if(x==1&&y==1&&z==1){return list[0];}
 else if(x==1&&y==1&&z==0){return list[1];}
 else if(x==1&&y==0&&z==1){return list[2];}
 else if(x==1&&y==0&&z==0){return list[3];}
 else if(x==0&&y==1&&z==1){return list[4];}
 else if(x==0&&y==1&&z==0){return list[5];}
 else if(x==0&&y==0&&z==1){return list[6];}
 else if(x==0&&y==0&&z==0){return list[7];} 
  return 1;
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

int[] conToList(String str){
  for(int j=0;j<8;j++){
 list[j]=str.charAt(j)-48;   
  }
 return list; 
}
