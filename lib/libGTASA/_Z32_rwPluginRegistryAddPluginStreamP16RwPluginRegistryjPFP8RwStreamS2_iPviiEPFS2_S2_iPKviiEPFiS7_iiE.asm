; =========================================================
; Game Engine Function: _Z32_rwPluginRegistryAddPluginStreamP16RwPluginRegistryjPFP8RwStreamS2_iPviiEPFS2_S2_iPKviiEPFiS7_iiE
; Address            : 0x1E5ADC - 0x1E5B1A
; =========================================================

1E5ADC:  PUSH            {R7,LR}
1E5ADE:  MOV             R7, SP
1E5AE0:  LDR.W           R12, [R0,#0x10]
1E5AE4:  CMP.W           R12, #0
1E5AE8:  ITT EQ
1E5AEA:  MOVEQ.W         R0, #0xFFFFFFFF
1E5AEE:  POPEQ           {R7,PC}
1E5AF0:  LDR.W           LR, [R7,#8]
1E5AF4:  LDR.W           R0, [R12,#8]
1E5AF8:  CMP             R0, R1
1E5AFA:  BEQ             loc_1E5B0C
1E5AFC:  LDR.W           R12, [R12,#0x30]
1E5B00:  CMP.W           R12, #0
1E5B04:  BNE             loc_1E5AF4
1E5B06:  MOV.W           R0, #0xFFFFFFFF
1E5B0A:  POP             {R7,PC}
1E5B0C:  LDR.W           R0, [R12]
1E5B10:  ADD.W           R1, R12, #0xC
1E5B14:  STM.W           R1, {R2,R3,LR}
1E5B18:  POP             {R7,PC}
