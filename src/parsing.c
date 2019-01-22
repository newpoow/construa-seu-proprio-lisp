#include <stdio.h>
#include "../include/mpc.h"

static char input[2048];

int main(int argc, char** argv)
{
    mpc_parser_t* Number   = mpc_new("number");
    mpc_parser_t* Operator = mpc_new("operator");
    mpc_parser_t* Expr     = mpc_new("expr");
    mpc_parser_t* Lispy    = mpc_new("lispy");

    mpca_lang(MPCA_LANG_DEFAULT, " \
        number   : /-?[0-9]+/ ; \
        operator : '+' | '-' | '*' | '/' ; \
        expr     : <number> | '(' <operator> <expr>+ ')' ; \
        lispy    : /^/ <operator> <expr>+ /$/ ; \
    ", Number, Operator, Expr, Lispy);

    puts("Lispy v0.0.1");
    puts("Aperte Ctrl+c para sair\n");

    while (1) {
        fputs("$> ", stdout);
        fgets(input, 2048, stdin);

        mpc_result_t r;
        if (mpc_parse("<stdin>", input, Lispy, &r)) {
            mpc_ast_print(r.output);
            mpc_ast_delete(r.output);
        } else {
            mpc_err_print(r.error);
            mpc_err_delete(r.error);
        }
        free(input);
    }

    mpc_cleanup(4, Number, Operator, Expr, Lispy);
    return 0;
}