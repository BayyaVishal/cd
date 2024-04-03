%{
     int vow_count=0;
     int const_count=0;
%}
%%
[aeiouAEIOU] {vow_count++;}
[a-z A-Z] {const_count++;}
%%
int yywrap(){}
int main()
{
   printf("enter the string of vowels and consonants");
   yylex();
   printf("no of vowels=%d\n no of consonants=%d\n",vow_count,const_count);
   return 0;
  }
   
