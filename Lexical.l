%{
int count =0;
%}

%%

\#include[\t\r]*".*"|\#include[\t\r]*<.*>|\#define[\t\r]*.*  {printf("%s :is a preprocessor directive\n",yytext);}

auto|double|int|struct|break|else|long|switch|case|unsigned {printf("%s :is a keyword and token count is %d\n",yytext,++count);}
short|float|const|volatile|sizeof|while|goto|default|static {printf("%s :is a keyword and token count is %d\n",yytext,++count);}
if|void|union|typedef|do|signed|for|enum|continue           {printf("%s :is a keyword and token count is %d\n",yytext,++count);}
return|extern|register|char                                 {printf("%s :is a keyword and token count is %d\n",yytext,++count);}

\".*\"                {printf("%s :is a constant of type string and token count is %d\n",yytext,++count);}
\'.\'                {printf("%s :is a constant of type char and token count is %d\n",yytext,++count);}


[_*a-zA-Z][_a-zA-Z0-9]* {printf("%s :is identifier and token count is %d\n",yytext,++count);}
[0-9]*\.[0-9]+          {printf("%s :is a float constant and token count is %d\n",yytext,++count);}
[0-9][0-9]*             {printf("%s :is a constant of type string and token count is %d\n",yytext,++count);}

\+\+|\-\-|==|!=|>=|<=|&&|\|\||<<|>>                {printf("%s :is an operator and token count is %d\n",yytext,++count);}
\+=|\-=|\*=|\/=|%=|<<==|>>==|&=|\^=|\|=|\?.*:.*    {printf("%s :is an operator and token count is %d\n",yytext,++count);}
\+|\-|\*|\\|%|,|\(|\)|<|>|\!|&|\||\^|~|=|\[|\]|\{|\}      {printf("%s :is an operator and token count is %d\n",yytext,++count);}
;                                           {printf("%s :is a terminator and token count is %d\n",yytext,++count);}

[ \t\n\r]+             ;

\/\/.*                {printf("It is a comment\n");}
\/\*.*                {printf("It is a comment\n");}

.                     {printf("%s is Unidentified token\n",yytext);}



%%

int yywrap(){}
int main()
{
yylex();
printf("Total number of tokens is- %d\n",count);
return 0;
}

