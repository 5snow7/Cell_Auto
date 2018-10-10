
int[][] demo1; int col1=500;int row1=350;
int numlist=0;int num=0;
int[] list;

void setup(){
size(1000,700);
demo1=new int[col1][row1];
list=new int[8];

textSize(24);fill(0,0,250);
text("click mouse on screen to start then enter 8 0's or 1's", 50,20);
}

void draw(){}

int m=0;
void keyPressed(){
  int k=key;
  if(m<8&&(k-48==0||k-48==1)){list[m]=k-48;
  text(" array # is " +m+" array value is "+(k-48),40,40+40*m);
m++;}
  else{m=0;sir(demo1);}
}
 

  
