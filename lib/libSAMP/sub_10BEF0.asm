; =========================================================
; Game Engine Function: sub_10BEF0
; Address            : 0x10BEF0 - 0x10BF38
; =========================================================

10BEF0:  PUSH            {R4,R5,R7,LR}
10BEF2:  ADD             R7, SP, #8
10BEF4:  MOV             R4, R0
10BEF6:  LDR             R0, [R0,#0x10]
10BEF8:  MOV             R5, R1
10BEFA:  MOVS            R1, #0
10BEFC:  CMP             R4, R0
10BEFE:  STR             R1, [R4,#0x10]
10BF00:  BEQ             loc_10BF08
10BF02:  CBZ             R0, loc_10BF12
10BF04:  MOVS            R1, #5
10BF06:  B               loc_10BF0A
10BF08:  MOVS            R1, #4
10BF0A:  LDR             R2, [R0]
10BF0C:  LDR.W           R1, [R2,R1,LSL#2]
10BF10:  BLX             R1
10BF12:  LDR             R0, [R5,#0x10]
10BF14:  CBZ             R0, loc_10BF22
10BF16:  CMP             R5, R0
10BF18:  BEQ             loc_10BF28
10BF1A:  STR             R0, [R4,#0x10]
10BF1C:  MOVS            R0, #0
10BF1E:  STR             R0, [R5,#0x10]
10BF20:  B               loc_10BF34
10BF22:  MOVS            R0, #0
10BF24:  STR             R0, [R4,#0x10]
10BF26:  B               loc_10BF34
10BF28:  STR             R4, [R4,#0x10]
10BF2A:  LDR             R0, [R5,#0x10]
10BF2C:  LDR             R1, [R0]
10BF2E:  LDR             R2, [R1,#0xC]
10BF30:  MOV             R1, R4
10BF32:  BLX             R2
10BF34:  MOV             R0, R4
10BF36:  POP             {R4,R5,R7,PC}
