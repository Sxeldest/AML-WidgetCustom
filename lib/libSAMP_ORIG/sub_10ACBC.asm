; =========================================================
; Game Engine Function: sub_10ACBC
; Address            : 0x10ACBC - 0x10AD14
; =========================================================

10ACBC:  PUSH            {R4-R6,R10,R11,LR}
10ACC0:  ADD             R11, SP, #0x10
10ACC4:  MOV             R6, R0
10ACC8:  LDR             R0, [R0]
10ACCC:  MOV             R4, R2
10ACD0:  MOV             R5, R1
10ACD4:  LDR             R2, [R0,#0x14]
10ACD8:  MOV             R0, R6
10ACDC:  BLX             R2
10ACE0:  CMP             R0, #0
10ACE4:  BEQ             loc_10AD08
10ACE8:  LDR             R0, [R6]
10ACEC:  MOV             R1, R5
10ACF0:  LDR             R2, [R0,#0x18]
10ACF4:  MOV             R0, R6
10ACF8:  BLX             R2
10ACFC:  STRD            R0, R1, [R4]
10AD00:  MOV             R0, #0
10AD04:  POP             {R4-R6,R10,R11,PC}
10AD08:  MOV             R0, #0xFFFFE672
10AD10:  POP             {R4-R6,R10,R11,PC}
