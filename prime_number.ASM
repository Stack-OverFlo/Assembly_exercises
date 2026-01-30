MOV AL, 52        ; nombre à tester
MOV DL, 2         ; diviseur

is_prime:
    CMP DL, AL
    JAE prime

    MOV BL, AL
    MOD BL, DL
    CMP BL, 0
    JZ not_prime

    INC DL
    JMP is_prime

not_prime:
    MOV AL, 0     ; 0 = pas premier
    JMP quit

prime:
    MOV AL, 1     ; 1 = premier

quit:
    END
