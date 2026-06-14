; =========================================================
; Game Engine Function: sub_127EB0
; Address            : 0x127EB0 - 0x127ED0
; =========================================================

127EB0:  PUSH            {R7,LR}
127EB2:  MOV             R7, SP
127EB4:  SUB             SP, SP, #8
127EB6:  LDR             R0, [R0,#0x10]
127EB8:  STR             R2, [SP,#0x10+var_10]
127EBA:  STR             R1, [SP,#0x10+var_C]
127EBC:  CBZ             R0, loc_127ECC
127EBE:  LDR             R1, [R0]
127EC0:  MOV             R2, SP
127EC2:  LDR             R3, [R1,#0x18]
127EC4:  ADD             R1, SP, #0x10+var_C
127EC6:  BLX             R3
127EC8:  ADD             SP, SP, #8
127ECA:  POP             {R7,PC}
127ECC:  BL              sub_DC92C
