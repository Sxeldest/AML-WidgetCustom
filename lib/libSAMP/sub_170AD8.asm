; =========================================================
; Game Engine Function: sub_170AD8
; Address            : 0x170AD8 - 0x170B0C
; =========================================================

170AD8:  PUSH            {R4,R6,R7,LR}
170ADA:  ADD             R7, SP, #8
170ADC:  LDR             R0, =(dword_381B58 - 0x170AE8)
170ADE:  MOVW            R1, #0x19AC
170AE2:  MOVS            R2, #0
170AE4:  ADD             R0, PC; dword_381B58
170AE6:  LDR             R0, [R0]
170AE8:  LDR             R0, [R0,R1]
170AEA:  LDR.W           R1, [R0,#0x27C]
170AEE:  LDR.W           R4, [R0,#0x1C0]
170AF2:  ADD.W           R0, R1, #0x64 ; 'd'
170AF6:  BL              sub_174F42
170AFA:  ADD.W           R0, R4, #0x2C ; ','
170AFE:  ADD.W           R1, R4, #0x34 ; '4'
170B02:  MOVS            R2, #0
170B04:  POP.W           {R4,R6,R7,LR}
170B08:  B.W             sub_16DDF0
