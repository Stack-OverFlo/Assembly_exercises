MOV AL, 52 ; my number
MOV DL, 2 ; index
PUSH AL
POP BL
JMP is_prime

is_prime:
	CMP DL, AL
	JS compare
	JNS quit
compare:
	PUSH BL ;save BL value
	MOD BL, DL

	CMP BL, 0
	JZ is_not_prime

	POP BL
	INC DL
	JMP is_prime
is_not_prime:
	MOV AL, 0
	JMP quit 
quit:
	END
END