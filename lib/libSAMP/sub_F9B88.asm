; =========================================================
; Game Engine Function: sub_F9B88
; Address            : 0xF9B88 - 0xF9BB0
; =========================================================

F9B88:  PUSH            {R7,LR}
F9B8A:  MOV             R7, SP
F9B8C:  SUB             SP, SP, #8
F9B8E:  MOV             R0, R1
F9B90:  LDR             R1, =(off_23494C - 0xF9B9C)
F9B92:  STR             R2, [SP,#0x10+var_C]
F9B94:  MOVW            R2, #0x3C11
F9B98:  ADD             R1, PC; off_23494C
F9B9A:  MOV             R12, R3
F9B9C:  MOVT            R2, #0x44 ; 'D'
F9BA0:  LDR             R1, [R1]; dword_23DF24
F9BA2:  LDR             R1, [R1]
F9BA4:  ADDS            R3, R1, R2
F9BA6:  ADD             R1, SP, #0x10+var_C
F9BA8:  MOV             R2, R12
F9BAA:  BLX             R3
F9BAC:  ADD             SP, SP, #8
F9BAE:  POP             {R7,PC}
