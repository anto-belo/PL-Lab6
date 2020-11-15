#include <stdio.h>
#include <windows.h>

struct stack {
    char val;
    struct stack *next;
};

struct stack *init_stack();

void format_text(char *text);

void push(struct stack *s, char l);

void push_text(struct stack *s, char input[], int border_a, int border_b, int order);

int cmp_stacks(struct stack a, struct stack b);

//A roza upala na lapu Azora
//Argentina manit negra
//Not New York, Roy went on
//Niagara o roar again

int main() {
    //system("chcp 65001"); //"Русификация" консоли

    puts("Insert text:");
    char input[200];
    gets(input);
    format_text(input);
    int text_size = (int) strlen(input);

    struct stack *frst_half = init_stack();
    struct stack *scnd_half = init_stack();

    int border = text_size / 2;
    push_text(frst_half, input, 0, border, 1);

    int is_even = (text_size % 2 == 0) ? 1 : 0;
    border = (is_even) ? (text_size / 2 - 1) : (text_size / 2);
    push_text(scnd_half, input, text_size - 1, border, 0);

    if (cmp_stacks(*frst_half, *scnd_half)) {
        puts("SYMMETRICAL");
    } else puts("NON-SYMMETRICAL");

    return 0;
}

struct stack *init_stack() {
    struct stack *s = (struct stack *) malloc(sizeof(struct stack));
    s->val = '\0';
    s->next = NULL;
    return s;
}

void format_text(char *text) {
    for (int i = 0; i < strlen(text); i++) {
        char s = text[i];
        if (s == ' ' || s == '.' || s == ',' || s == ';' || s == '-' || s == ':') {
            for (int j = i; j < strlen(text); j++)
                text[j] = text[j + 1];
            i--;
        } else if ('A' <= s && s <= 'Z')
            text[i] += 32;
    }
}

void push(struct stack *s, char l) {
    struct stack *temp = (struct stack *) malloc(sizeof(struct stack));
    while (s->next != NULL) s = s->next;
    temp->val = l;
    temp->next = NULL;
    s->next = temp;
}

void push_text(struct stack *s, char input[], int border_a, int border_b, int order) {
    if (order)
        for (int i = border_a; i < border_b; i++)
            push(s, input[i]);
    else
        for (int i = border_a; i > border_b; i--)
            push(s, input[i]);
}

int cmp_stacks(struct stack a, struct stack b) {
    struct stack *x = a.next, *y = b.next;
    while (x->next != NULL && y->next != NULL) {
        if (x->val != y->val)
            return 0;
        x = x->next;
        y = y->next;
    }
    return 1;
}