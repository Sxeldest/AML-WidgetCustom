; =========================================================
; Game Engine Function: png_longjmp
; Address            : 0x1F2FE8 - 0x1F300A
; =========================================================

1F2FE8:  PUSH            {R7,LR}
1F2FEA:  MOV             R7, SP
1F2FEC:  CMP             R0, #0
1F2FEE:  ITT NE
1F2FF0:  LDRNE.W         R2, [R0,#0x100]
1F2FF4:  CMPNE           R2, #0
1F2FF6:  BNE             loc_1F2FFC
1F2FF8:  BLX             abort
1F2FFC:  LDR.W           R0, [R0,#0x104]
1F3000:  CMP             R0, #0
1F3002:  IT NE
1F3004:  BLXNE           R2
1F3006:  BLX             abort
