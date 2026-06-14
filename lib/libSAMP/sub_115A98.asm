; =========================================================
; Game Engine Function: sub_115A98
; Address            : 0x115A98 - 0x115ABE
; =========================================================

115A98:  PUSH            {R4,R6,R7,LR}
115A9A:  ADD             R7, SP, #8
115A9C:  SUB             SP, SP, #8
115A9E:  MOV             R4, R0
115AA0:  BL              sub_115AC4
115AA4:  LDR             R0, =(unk_2634D8 - 0x115AAC)
115AA6:  STR             R4, [SP,#0x10+var_C]
115AA8:  ADD             R0, PC; unk_2634D8
115AAA:  LDR             R0, [R0,#(dword_2634E8 - 0x2634D8)]
115AAC:  CBZ             R0, loc_115ABA
115AAE:  LDR             R1, [R0]
115AB0:  LDR             R2, [R1,#0x18]
115AB2:  ADD             R1, SP, #0x10+var_C
115AB4:  BLX             R2
115AB6:  ADD             SP, SP, #8
115AB8:  POP             {R4,R6,R7,PC}
115ABA:  BL              sub_DC92C
