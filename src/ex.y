%{
#include <stdio.h>
%}

%token VERB,NOUN,PRONOUN,ADVERB,POSSESSIVE_ADJECTIVE,CONJUNCTION,PREPOSITION,ADJECTIVE
%%
sentence:   simple_sentence  { printf("Parsed a simple sentence.\n"); }
      |     compound_sentence { printf("Parsed a compound sentence.\n"); }
      ;

simple_sentence: subject object VERB
      ;

compound_sentence: 
      |     compound_sentence CONJUNCTION simple_sentence
      |     simple_sentence CONJUNCTION simple_sentence
      ;

subject:    NOUN
      |     PRONOUN
      ;

object:     
     |	    object ADVERB
     |      object POSSESSIVE_ADJECTIVE  
     |      object ADJECTIVE     
     |      object NOUN
     |      PRONOUN
     |      PREPOSITION   
     ;

%%

extern FILE *yyin,*yyout;

main()
{
 yyin= fopen("op.txt" , "r");
 yyout=fopen("FianlOutput.txt" , "w");
     do
       {
           yyparse();
     }
        while (!feof(yyin));
}

yyerror(s)
char *s;
{
    fprintf(stderr, "%s\n", s);
}
