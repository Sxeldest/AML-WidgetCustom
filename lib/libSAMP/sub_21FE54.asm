; =========================================================
; Game Engine Function: sub_21FE54
; Address            : 0x21FE54 - 0x21FE6A
; =========================================================

21FE54:  PUSH            {R4,R6,R7,LR}
21FE56:  ADD             R7, SP, #8
21FE58:  LDR             R4, =(unk_384164 - 0x21FE60)
21FE5A:  CMP             R3, #0
21FE5C:  ADD             R4, PC; unk_384164
21FE5E:  IT EQ
21FE60:  MOVEQ           R3, R4
21FE62:  POP.W           {R4,R6,R7,LR}
21FE66:  B.W             sub_220100
