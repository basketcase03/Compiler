
%{
int count =0;
%}

%%
                   
\".*\"		      {printf("%s :is a constant of type string\n",yytext);}
\'.\'                {printf("%s :is a constant of type char\n",yytext);}
 

[_*a-zA-Z][_a-zA-Z0-9]* {printf("%s : is an identifier\n",yytext);}
[0-9]*\.[0-9]+	        {printf("%s : is a float constant\n",yytext);}
[0-9][0-9]*             {printf("%s : is int constant\n",yytext);}

\+\+|\-\-|==|!=|>=|<=|&&|\|\||<<|>>                {printf("%s : is an operator\n",yytext);}
\+=|\-=|\*=|\/=|%=|<<==|>>==|&=|\^=|\|=|\?.*:.*	   {printf("%s : is an operator\n",yytext);}
\+|\-|\*|\\|%|,|\(|\)|<|>|\!|&|\||\^|~|=      {printf("%s : is an operator\n",yytext);}
;                                           {printf("%s : is a terminator\n",yytext);}

[ \t\n\r]+             ;

\/\/.*                {printf("It is a comment\n");}
\/\*.*                {printf("It is a comment\n");}

.                     {printf("%s is Unidentified token\n",yytext);}



%%

int yywrap(){}
int main()
{
yylex();
return 0;
}
