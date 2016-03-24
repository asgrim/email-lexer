%option noyywrap

digit     [0-9]
letter    [a-zA-Z]
hdr       ({digit}|{letter}|-)
hdrtail   {hdr}+
nl        \n
header    {hdrtail}\:\ .+{nl}

%{
%}

%s ST_IN_HEADER
%x ST_IN_CONTENT

%%
<ST_IN_HEADER>{header}      printf(" == Valid header == %s", yytext);
<ST_IN_HEADER>{nl}          printf(" == Beginning content...\n"); BEGIN(ST_IN_CONTENT);
<ST_IN_HEADER>.             printf(" == Invalid header.\n"); exit(1);
<ST_IN_CONTENT>{nl}\.{nl}       printf("\n == End of content.\n"); exit(0);
<ST_IN_CONTENT>.	        printf("%s", yytext);
%%

int main()
{
  BEGIN(ST_IN_HEADER);
  yylex();
}
