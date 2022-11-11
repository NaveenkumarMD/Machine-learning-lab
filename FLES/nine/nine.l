%{
    #include "nine.tab.h"

%}
%%
[1] {
    return ONE;
}
[0] {
    return ZERO;
}
[\n] {
    return NL;
}
%%
int yywrap(){
    return 1;
}