; =========================================================
; Game Engine Function: sub_11ED5C
; Address            : 0x11ED5C - 0x11EDBA
; =========================================================

11ED5C:  PUSH            {R4,R5,R7,LR}
11ED5E:  ADD             R7, SP, #8
11ED60:  MOV             R4, R0
11ED62:  LDR             R0, =(off_23494C - 0x11ED6C)
11ED64:  MOVW            R1, #0xA110
11ED68:  ADD             R0, PC; off_23494C
11ED6A:  MOVT            R1, #0x67 ; 'g'
11ED6E:  LDR             R0, [R0]; dword_23DF24
11ED70:  LDR             R0, [R0]
11ED72:  LDR             R5, [R0,R1]
11ED74:  LDR.W           R0, [R5,#0x220]
11ED78:  CMP.W           R0, #0xFFFFFFFF
11ED7C:  BGT             loc_11ED92
11ED7E:  LDR             R1, =(aMatriciesStack_0 - 0x11ED8A); "{}: matricies stack underflow" ...
11ED80:  MOVS            R0, #3
11ED82:  LDR             R3, =(aEmuGlpopmatrix - 0x11ED8C); "emu_glPopMatrix" ...
11ED84:  MOVS            R2, #0x1D
11ED86:  ADD             R1, PC; "{}: matricies stack underflow"
11ED88:  ADD             R3, PC; "emu_glPopMatrix"
11ED8A:  BL              sub_11F608
11ED8E:  LDR.W           R0, [R5,#0x220]
11ED92:  CMP             R0, #7
11ED94:  BGT             loc_11ED9E
11ED96:  LDR             R0, [R4,#8]
11ED98:  POP.W           {R4,R5,R7,LR}
11ED9C:  BX              R0
11ED9E:  SUBS            R0, #1
11EDA0:  MOVS            R1, #1
11EDA2:  CMP             R0, #8
11EDA4:  IT EQ
11EDA6:  MOVEQ           R0, #7
11EDA8:  STR.W           R0, [R5,#0x220]
11EDAC:  ADD.W           R0, R0, R0,LSL#4
11EDB0:  ADD.W           R0, R5, R0,LSL#2
11EDB4:  STRB.W          R1, [R0,#0x40]
11EDB8:  POP             {R4,R5,R7,PC}
