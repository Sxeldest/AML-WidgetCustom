; =========================================================
; Game Engine Function: sub_110C10
; Address            : 0x110C10 - 0x110C30
; =========================================================

110C10:  PUSH            {R7,LR}
110C12:  MOV             R7, SP
110C14:  SUB             SP, SP, #8
110C16:  LDR             R0, [R0,#0x10]
110C18:  STR             R2, [SP,#0x10+var_10]
110C1A:  STR             R1, [SP,#0x10+var_C]
110C1C:  CBZ             R0, loc_110C2C
110C1E:  LDR             R1, [R0]
110C20:  MOV             R2, SP
110C22:  LDR             R3, [R1,#0x18]
110C24:  ADD             R1, SP, #0x10+var_C
110C26:  BLX             R3
110C28:  ADD             SP, SP, #8
110C2A:  POP             {R7,PC}
110C2C:  BL              sub_DC92C
