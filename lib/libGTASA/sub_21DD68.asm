; =========================================================
; Game Engine Function: sub_21DD68
; Address            : 0x21DD68 - 0x21DD9C
; =========================================================

21DD68:  PUSH            {R7,LR}
21DD6A:  MOV             R7, SP
21DD6C:  LDR             R1, =(dword_6BD63C - 0x21DD7A)
21DD6E:  MOVS            R3, #0
21DD70:  LDR             R2, =(RwEngineInstance_ptr - 0x21DD80)
21DD72:  MOVW            LR, #0xFFFF
21DD76:  ADD             R1, PC; dword_6BD63C
21DD78:  LDR.W           R12, =(sub_21EBEC+1 - 0x21DD84)
21DD7C:  ADD             R2, PC; RwEngineInstance_ptr
21DD7E:  LDR             R1, [R1]
21DD80:  ADD             R12, PC; sub_21EBEC
21DD82:  LDR             R2, [R2]; RwEngineInstance
21DD84:  STR             R3, [R0,R1]
21DD86:  ADD             R1, R0
21DD88:  LDR             R2, [R2]
21DD8A:  LDR             R3, [R0,#0x10]
21DD8C:  LDRH            R2, [R2,#8]
21DD8E:  ADD             R2, LR
21DD90:  STRH.W          R2, [R0,#0x60]
21DD94:  STR             R3, [R1,#4]
21DD96:  STR.W           R12, [R0,#0x10]
21DD9A:  POP             {R7,PC}
