; =========================================================
; Game Engine Function: sub_10ADC0
; Address            : 0x10ADC0 - 0x10ADE0
; =========================================================

10ADC0:  PUSH            {R11,LR}
10ADC4:  MOV             R11, SP
10ADC8:  LDR             R1, [R0]
10ADCC:  LDR             R1, [R1,#0x28]
10ADD0:  BLX             R1
10ADD4:  MOV             R0, #0xFFFFE674
10ADDC:  POP             {R11,PC}
