; =========================================================
; Game Engine Function: sub_21AB64
; Address            : 0x21AB64 - 0x21AB7C
; =========================================================

21AB64:  SUBS            R3, R1, R0
21AB66:  IT EQ
21AB68:  BXEQ            LR
21AB6A:  PUSH            {R4,R6,R7,LR}
21AB6C:  ADD             R7, SP, #0x10+var_8
21AB6E:  MOV             R4, R0
21AB70:  MOV             R0, R2; dest
21AB72:  MOV             R1, R4; src
21AB74:  MOV             R2, R3; n
21AB76:  BLX             j_memmove
21AB7A:  POP             {R4,R6,R7,PC}
