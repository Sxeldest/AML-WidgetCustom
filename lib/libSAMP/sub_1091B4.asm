; =========================================================
; Game Engine Function: sub_1091B4
; Address            : 0x1091B4 - 0x1091D8
; =========================================================

1091B4:  PUSH            {R7,LR}
1091B6:  MOV             R7, SP
1091B8:  LDR             R2, =(off_23494C - 0x1091C6)
1091BA:  MOV             R3, #0x38DFE9
1091C2:  ADD             R2, PC; off_23494C
1091C4:  LDR             R2, [R2]; dword_23DF24
1091C6:  LDR             R2, [R2]
1091C8:  ADD             R2, R3
1091CA:  BLX             R2
1091CC:  CMP             R0, #0
1091CE:  ITEE EQ
1091D0:  MOVEQ           R0, #0
1091D2:  LDRNE           R0, [R0,#word_10]
1091D4:  LDRNE           R0, [R0]
1091D6:  POP             {R7,PC}
