; =========================================================
; Game Engine Function: sub_10AD8C
; Address            : 0x10AD8C - 0x10ADC0
; =========================================================

10AD8C:  PUSH            {R4,R10,R11,LR}
10AD90:  ADD             R11, SP, #8
10AD94:  MOV             R4, R1
10AD98:  LDR             R1, [R0]
10AD9C:  LDR             R2, [R1,#0x24]
10ADA0:  MOV             R1, R4
10ADA4:  BLX             R2
10ADA8:  LDR             R1, [R4,#4]
10ADAC:  MOV             R0, #0
10ADB0:  CMP             R1, #0
10ADB4:  MOVEQ           R0, #0xFFFFE66B
10ADBC:  POP             {R4,R10,R11,PC}
