#include <stdio.h>
#include <windows.h>

#define STACK_SIZE 1000

typedef struct {
    char text[STACK_SIZE];
    int top;
} stack;

void format_text(char *text);

void push(char *s, int top, char letter);

void push_text(char *s, int top, char input[], int border_a, int border_b, int order);

int cmp_stacks(stack a, stack b);

//A roza upala na lapu Azora
//Argentina manit negra
//Not New York, Roy went on
//Niagara o roar again

int main() {
    system("chcp 65001");

    puts("Insert text:");
    char input[STACK_SIZE];
    gets(input);
    format_text(input);
    int text_size = (int) strlen(input);

    stack frst_half = {{}, 0};
    stack scnd_half = {{}, 0};

    int border = text_size / 2;
    push_text(frst_half.text, frst_half.top, input, 0, border, 1);

    int is_even = (text_size % 2 == 0) ? 1 : 0;
    border = (is_even) ? (text_size / 2 - 1) : (text_size / 2);
    push_text(scnd_half.text, scnd_half.top, input, text_size - 1, border, 0);

    frst_half.top = scnd_half.top = text_size / 2;

    if(cmp_stacks(frst_half, scnd_half)) {
        puts("SYMMETRICAL");
    } else puts("NON-SYMMETRICAL");

    return 0;
}

void format_text(char *text) {
    if (text[strlen(text) - 1] == '.') text[strlen(text) - 1] = '\0';
    for (int i = 0; i < strlen(text); i++) {
        char s = text[i];
        if (s == ' ' || s == '.' || s == ',' || s == ';' || s == '-' || s == ':') {
            for (int j = i; j < strlen(text); j++)
                text[j] = text[j + 1];
            i--;
        } else if ('A' <= s && s <= 'Z')
            text[i] = (char)((int)text[i] + 32);
    }
}

void push(char *s, int top, char letter) {
    if (top != STACK_SIZE) {
        s[top] = letter;
    } else puts("Stack is full!");
}

void push_text(char *s, int top, char input[], int border_a, int border_b, int order) {
    if (order)
         for (int i = border_a; i < border_b; i++) {
            push(s, top, input[i]);
            top++;
         }
    else for (int i = border_a; i > border_b; i--) {
            push(s, top, input[i]);
            top++;
    }
}

int cmp_stacks(stack a, stack b) {
    for (int i = 0; i < a.top; i++)
        if (a.text[i] != b.text[i])
            return 0;
    return 1;
}