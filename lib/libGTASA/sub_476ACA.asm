; =========================================================
; Game Engine Function: sub_476ACA
; Address            : 0x476ACA - 0x476B1A
; =========================================================

476ACA:  PUSH            {R4-R7,LR}
476ACC:  ADD             R7, SP, #0xC
476ACE:  PUSH.W          {R8,R9,R11}
476AD2:  LDR.W           R12, [R7,#arg_0]
476AD6:  CMP.W           R12, #1
476ADA:  BLT             loc_476B14
476ADC:  LDR.W           LR, [R0,#0x1C]
476AE0:  LDR.W           R9, [R0,#0x24]
476AE4:  MOV             R5, R3
476AE6:  MOV             R4, R1
476AE8:  MOV             R8, R12
476AEA:  ADDS            R3, R5, #1
476AEC:  ADDS            R1, R4, #4
476AEE:  SUB.W           R12, R8, #1
476AF2:  CMP.W           LR, #0
476AF6:  BEQ             loc_476B0E
476AF8:  LDR             R6, [R2]
476AFA:  LDR.W           R5, [R6,R5,LSL#2]
476AFE:  LDR             R6, [R4]
476B00:  MOV             R4, LR
476B02:  LDRB            R0, [R6]
476B04:  ADD             R6, R9
476B06:  STRB.W          R0, [R5],#1
476B0A:  SUBS            R4, #1
476B0C:  BNE             loc_476B02
476B0E:  CMP.W           R8, #2
476B12:  BGE             loc_476AE4
476B14:  POP.W           {R8,R9,R11}
476B18:  POP             {R4-R7,PC}
