; =========================================================
; Game Engine Function: sub_80AC8
; Address            : 0x80AC8 - 0x80AEE
; =========================================================

80AC8:  PUSH            {R7,LR}
80ACA:  MOV             R7, SP
80ACC:  LDR             R1, =(byte_1A49E4 - 0x80AD6)
80ACE:  LDRB            R2, [R0,#4]
80AD0:  LDR             R0, [R0]
80AD2:  ADD             R1, PC; byte_1A49E4
80AD4:  CMP             R2, #0
80AD6:  IT NE
80AD8:  MOVNE           R2, #1
80ADA:  STRB            R2, [R1]
80ADC:  BL              sub_8271C
80AE0:  CBNZ            R0, loc_80AEA
80AE2:  LDR             R0, =(aSvInfPluginPac - 0x80AE8); "[sv:inf:plugin:packet:init] : failed in"... ...
80AE4:  ADD             R0, PC; "[sv:inf:plugin:packet:init] : failed in"...
80AE6:  BL              sub_80664
80AEA:  MOVS            R0, #1
80AEC:  POP             {R7,PC}
