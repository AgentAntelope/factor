USING: peg.ebnf help.syntax help.markup strings peg.ebnf.private ;
IN: peg-lexer

HELP: ON-BNF:
{ $syntax "ON-BNF: word ... ;ON-BNF" }
{ $description "Creates a parsing word using a parser for lexer control, adding the resulting ast to the stack.  Parser syntax is as in " { $link POSTPONE: EBNF: } } ;

HELP: create-bnf
{ $values { "name" string } { "parser" parser } }
{ $description "Runtime equivalent of " { $link POSTPONE: ON-BNF: } " also useful with manually constructed parsers." } ;