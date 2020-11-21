%{
#include <stdio.h>
#include "y.tab.h"
%}
%%

[\t ]+                    /* ignore whitespace */ ;

बोल |
खेळ |
खा |
जेव |
झोप |
पहा |
बघ  |
आहे |
होते |
काढते |
होती |
झाले |
केले    {  printf("%s: is a verb\n", yytext);
       fprintf(yyout, "%s: is a Verb", yytext);
      return VERB;}

खूप |
अतिशय |
फार |
फारच |
जास्त |
हळूवारपणे |
शांतपणे |
चिडून |
संतापून |
रागाने |
काल | 
अाज |
उद्या |
लवकरच |
कधीकधी |
नेहमी { printf("%s: is a Adverb\n", yytext);
     fprintf(yyout, "%s: is a Adverb", yytext);
     return ADVERB; }


वर |
भाोवती |
खाली |
अात |
जवळ  {printf("%s: is a Preposition\n", yytext); 
     fprintf(yyout, "%s: is a Preposition", yytext);
     return PREPOSITION; }


तर |
जर |
की |
मग |
तेव्हा |
त्यानंतर |
आणि |
तसेच |
शिवाय |
खेरीज |
आणखी |
पाठोपाठ |
यानंतर |
परंतु |
पण |
किंवा |
अथवा       {printf("%s: is a Conjuntion\n", yytext);
        fprintf(yyout, "%s: is a Conjunction", yytext);
         return CONJUNCTION; }



त्यांचे |
त्यांचा |
त्यांची |
माझे |
तुझे |
तुझा |
तुमचा |
तुमचे |
त्याचे |
त्याचा |
त्यांच्या |
तिच्या |
त्याची      {printf("%s: is a Possessie Adjective\n", yytext);
	fprintf(yyout, "%s: is a Possessie Adjective", yytext);
        return POSSESSIVE_ADJECTIVE; }
        
सुंदर       {printf("%s: is an Adjective\n", yytext);
	fprintf(yyout, "%s: is an Adjective", yytext);
        return ADJECTIVE; }

मी |
तू |
तुम्ही |
आपण |
कोणीही |
तो |
ती  |
आम्ही  |
ते |
त्या       { printf("%s: is a Pronoun\n", yytext);
	fprintf(yyout, "%s: is a Pronoun", yytext);
       return PRONOUN;}


(.)*  {printf("%s: is a Noun\n", yytext);
       fprintf(yyout, "%s: is a Noun", yytext);
       return NOUN;
      }

%%
int yywrap() { return 1; }
    

