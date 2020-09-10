
%{
int count =0;
%}

%%


\".*\"                {printf("Token is: %s and current token count is: %d\n",yytext,++count);}
\'.*\'                {printf("Token is: %s and current token count is: %d\n",yytext,++count);}

[_*a-zA-Z][_a-zA-Z0-9]* {printf("Token is: %s and current token count is: %d\n",yytext,++count);}
[0-9]*\.[0-9]+          {printf("Token is: %s and current token count is: %d\n",yytext,++count);}
[0-9][0-9]*             {printf("Token is: %s and current token count is: %d\n",yytext,++count);}

\+\+|\-\-|==|!=|>=|<=|&&|\|\||<<|>>                     {printf("Token is: %s and current token count is: %d\n",yytext,++count);}
\+=|\-=|\*=|\/=|%=|<<==|>>==|&=|\^=|\|=|\?:             {printf("Token is: %s and current token count is: %d\n",yytext,++count);}
[ \t\n\r]+             ;
.                     {printf("Token is: %s and current token count is: %d\n",yytext,++count);}

%%

int yywrap(){}
int main()
{
yylex();
printf("answer- %d\n",count);
return 0;
}

