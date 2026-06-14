; =========================================================
; Game Engine Function: sub_11AD7C
; Address            : 0x11AD7C - 0x11ADC4
; =========================================================

11AD7C:  PUSH            {R4,R5,R7,LR}
11AD7E:  ADD             R7, SP, #8
11AD80:  MOV             R4, R0
11AD82:  LDR             R0, [R0,#0x10]
11AD84:  MOV             R5, R1
11AD86:  MOVS            R1, #0
11AD88:  CMP             R4, R0
11AD8A:  STR             R1, [R4,#0x10]
11AD8C:  BEQ             loc_11AD94
11AD8E:  CBZ             R0, loc_11AD9E
11AD90:  MOVS            R1, #5
11AD92:  B               loc_11AD96
11AD94:  MOVS            R1, #4
11AD96:  LDR             R2, [R0]
11AD98:  LDR.W           R1, [R2,R1,LSL#2]
11AD9C:  BLX             R1
11AD9E:  LDR             R0, [R5,#0x10]
11ADA0:  CBZ             R0, loc_11ADAE
11ADA2:  CMP             R5, R0
11ADA4:  BEQ             loc_11ADB4
11ADA6:  STR             R0, [R4,#0x10]
11ADA8:  MOVS            R0, #0
11ADAA:  STR             R0, [R5,#0x10]
11ADAC:  B               loc_11ADC0
11ADAE:  MOVS            R0, #0
11ADB0:  STR             R0, [R4,#0x10]
11ADB2:  B               loc_11ADC0
11ADB4:  STR             R4, [R4,#0x10]
11ADB6:  LDR             R0, [R5,#0x10]
11ADB8:  LDR             R1, [R0]
11ADBA:  LDR             R2, [R1,#0xC]
11ADBC:  MOV             R1, R4
11ADBE:  BLX             R2
11ADC0:  MOV             R0, R4
11ADC2:  POP             {R4,R5,R7,PC}
