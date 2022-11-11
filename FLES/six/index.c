#include <stdio.h>
#include <string.h>

int check(char x[]){
    printf("%s",x);
    int state=1;
    int i=0; 
    int len=strlen(x);
    printf("%d",len);
    while (state!=4 && i<len){
        printf("state: %c ",x[i]);
        if (state==1){
            if (x[i]=='a'){
                state=2;
            }
        }
        else if(state ==2){
            if (x[i]=='b'){
                state=3;
            }            
        }
        else if (state==3){
            if (x[i]=='b'){
                state=4;
            }
            else {
                state=2;
            }
        }
        i+=1;
        
    }
    if(state==4){
        printf("Accepted");
    }
    else{
        printf("Not accepted");
    }
    return 0;
}

int main(){
    char x[20];
    printf("Enter the string: ");
    scanf("%s",x);
    check(x);
    return 0;
}