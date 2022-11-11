%{
    #include "nine.tab.h"

%}
%%
letter [a-zA-Z]
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