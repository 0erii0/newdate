;输出年
PUBLIC M1

DATASEG SEGMENT
DATASEG ENDS

STACKSEG SEGMENT
STACKSEG ENDS

CODESEG SEGMENT
    ASSUME CS:CODESEG,DS:DATASEG,SS:STACKSEG
START:
M1 PROC
    MOV DL,DS:[8]
    MOV AH,02H
    INT 21H

    MOV DL,DS:[9]
    MOV AH,02H
    INT 21H

    MOV DL,DS:[10]
    MOV AH,02H
    INT 21H

    MOV DL,DS:[11]
    MOV AH,02H
    INT 21H
    
    RETF
M1 ENDP

CODESEG ENDS
    END START
