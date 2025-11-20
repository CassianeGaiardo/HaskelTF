{
module Parser where

import Lexer
}

%name parser
%tokentype { Token }
%error { parseError }

%left "||"
%left "&&"
%left '+'
%left '*'

%token
    num         { TokenNum $$ }
    true        { TokenTrue }
    false       { TokenFalse }
    if          { TokenIf }
    then        { TokenThen }
    else        { TokenElse }
    '\\'        { TokenLambda }
    ident       { TokenIdent $$ }
    ':'         { TokenColon }
    "->"        { TokenArrow }
    ','         { TokenV }
    '{'         { TokenLTupla }
    '}'         { TokenRTupla }
    fst         { TokenFst }
    snd         { TokenSnd }
    '+'         { TokenPlus }
    '*'         { TokenTimes }
    "&&"        { TokenAnd }
    "||"        { TokenOr }
    '('         { TokenLParen }
    ')'         { TokenRParen }
    TBool       { TokenTBool }
    TNum        { TokenTNum }

%%

Exp
      : num                     { Num $1 }
      | true                    { BTrue }
      | false                   { BFalse }
      | ident                   { Var $1 }
      | Exp '+' Exp             { Add $1 $3 }
      | Exp '*' Exp             { Times $1 $3 }
      | Exp "&&" Exp            { And $1 $3 }
      | Exp "||" Exp            { Or $1 $3 }
      | '(' Exp ')'             { Paren $2 }
      | '(' Exp ',' Exp ')'     { Tuple $2 $4 }
      | if Exp then Exp else Exp { If $2 $4 $6 }
      | '\\' ident ':' Type "->" Exp { Lam $2 $4 $6 }
      | '{' Exp ',' Exp '}'     { Tuple $2 $4 }
      | fst Exp                 { Fst $2 }
      | snd Exp                 { Snd $2 }

      -- aplicação
      | Exp Exp                 { App $1 $2 }

Type
      : TBool                   { TBool }
      | TNum                    { TNum }
      | '(' Type ',' Type ')'   { TTuple $2 $4 }
      | Type "->" Type          { TFun $1 $3 }


{
parseError :: [Token] -> a
parseError _ = error "Syntax error!"
}
