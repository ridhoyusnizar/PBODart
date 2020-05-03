
void main(List<String> arguments) {
int i,x,y;
for(i = 1;i <= 5 ; i++){
  print('b');
}

print('=================================');

// ignore: omit_local_variable_types
x = 0;
while(x < 5){
  print('bud' + x.toString());
  x+= 1;
}

print('=================================');

// ignore: omit_local_variable_types
y = 0;
do{
  print('bud ke - ' + y.toString());
  y++;
}while(y < 5);
}