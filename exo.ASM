ORG C0
DB 'H','e','L','l','O'

ORG 0
MOV BL, C0

loop:
    MOV CL, [BL]
    CMP CL, 'A'
    JB next
    CMP CL, 'Z'
    JA check_lower
    ADD CL, 20h
    JMP store

check_lower:
    CMP CL, 'a'
    JB next
    CMP CL, 'z'
    JA next
    SUB CL, 20h

store:
    MOV [BL], CL

next:
    INC BL
    CMP BL, C5
    JNZ loop

END
