%{
    #include<stdio.h>
    #include<ctype.h>
void check(char*);
%}
pattern [0-9]{2}+[-]+(516604|292908|469904|015420)+[-]+[0-9]{6}[-][0-9]
%%
{pattern} check(yytext);
.* {printf("not valid");}
%%
int main(){
printf("Enter the IMEI number");
yylex();
}
void check(char* a)
{
int sum=0;
int i,x,j=0;
int len=17;
for(i=0;i<17;i++){
if (i==2|| i==9||i==16){
if (a[i]=='-')
continue;
}
else if (j%2==1){
x=(int)a[i]-(int)'0';
x*=2;
sum+=x%10;
x/=10;
sum+=x%10;
j++;
}
else{
sum+=(int)a[i]-(int)'0';
j++;

}
}
if( (((int)a[17]-(int)'0')+sum )%10==0){
    printf("Valid");
}
else{
    printf("Not valid");
}
}
int yyerror(){
return 1;
}
int yywrap(){
return 1;
}
