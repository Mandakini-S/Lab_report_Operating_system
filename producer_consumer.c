

#include<stdio.h>
#include<stdlib.h>

//Initialize a mutex to 1
int mutex=1;
int full=0;

int empty=10, x=0;

void producer()
{

--mutex;
++full;
--empty;
x++;
printf("\n Producer produces"
"item %d",x);

++mutex;
}

void consumer(){

--mutex;
--full;
++empty;

printf("\n Consumer consumes" 
"item %d",
x);
x--;

++mutex;
}

//Driver code
int main(){

int n, i ;

printf("\n 1. Press 1 for Producer"
"\n 2. Press 2 for Consumer"
"\n 3. Exit");

#pragma omp critical 

for (i=1; i>0;i++){

printf("\n Enter your choice :");

scanf("%d", &n);

switch (n){
case 1:

if ((mutex==1)
&& (empty!=0)){
producer();
}

else{
printf("Buffer is full");
}
break;

case 2:

if ((mutex ==1)
&& (full != 0)){

consumer();
}

else{printf("Buffer is empty!");
}

break;

case 3:
exit(0);
break;
}
}}
