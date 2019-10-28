ORG C0 ; put HeLlo in the VBU
DB 48 ; H
ORG C1
DB 65 ; e
ORG C2
DB 4C ; L
ORG C3
DB 6C ; l
ORG C4
DB 4F ; O
ORG 0
MOV BL, C0 ; set register BL to C0
JMP cmp_char
cmp_char:
	MOV AL, 41 ; AL is "A"
	MOV CL, [BL]; stock the content of BL (not the index!)
	CMP CL, AL ; compare CL and "A"
	JNS check_uppercase ; if it's greater than A, go to the next check

check_lowercase_1:
	MOV AL, 61 ; AL is a
	CMP CL, AL ; compare CL and "a"
	JNS check_lowercase_2 ; if it's lesser than A, go to the next check

	JMP loop
check_lowercase_2:
	MOV AL, 7A ; AL is "z"
	CMP CL, AL ; if letter is lesser than "z"
	JS is_lowercase ; it is an uppercase letter, go to uppercase letter counter
	JMP loop
is_lowercase:
	SUB CL, 20
	JMP loop
check_uppercase:
	MOV AL, 5A ; AL is Z
	CMP CL, AL ; if letter is lesser than Z
	JS is_uppercase ; it is an uppercase letter, go to uppercase letter counter
	JNS check_lowercase_1 ; check if it's a lowercase
	JMP loop
is_uppercase:
	ADD CL, 20 ; Add 32 (A becomes a)
	JMP loop ; continue the loop
loop:
	INC BL ; C0, C1, C2...

	CMP BL, C5 ; loop until the end of the string at C4
	JNZ cmp_char ;start of the loop
END