; =========================================================
; Game Engine Function: _ZN19CAESmoothFadeThread15SetBufferVolumeEP9OALSourcef
; Address            : 0x3A74DC - 0x3A7546
; =========================================================

3A74DC:  LDRB.W          R3, [R0,#0x810]
3A74E0:  VMOV            S0, R2
3A74E4:  CBNZ            R3, loc_3A7508
3A74E6:  ADD.W           R12, R0, #0x1C
3A74EA:  MOV.W           R3, #0xFFFFFFFF
3A74EE:  LDR.W           R0, [R12]
3A74F2:  CMP             R0, #1
3A74F4:  ITT EQ
3A74F6:  LDREQ.W         R0, [R12,#-0x18]
3A74FA:  CMPEQ           R0, R1
3A74FC:  BEQ             loc_3A7510
3A74FE:  ADDS            R3, #1
3A7500:  ADD.W           R12, R12, #0x20 ; ' '
3A7504:  CMP             R3, #0x3F ; '?'
3A7506:  BLT             loc_3A74EE
3A7508:  MOV             R0, R1; this
3A750A:  MOV             R1, R2; float
3A750C:  B.W             sub_195AE0
3A7510:  LDRB.W          R0, [R12,#-4]
3A7514:  CBNZ            R0, locret_3A7524
3A7516:  VLDR            S2, [R12,#-0x10]
3A751A:  VCMP.F32        S2, S0
3A751E:  VMRS            APSR_nzcv, FPSCR
3A7522:  BNE             loc_3A7526
3A7524:  BX              LR
3A7526:  VSUB.F32        S0, S2, S0
3A752A:  VLDR            S2, =0.01
3A752E:  VABS.F32        S0, S0
3A7532:  VCMPE.F32       S0, S2
3A7536:  VMRS            APSR_nzcv, FPSCR
3A753A:  IT LT
3A753C:  BXLT            LR
3A753E:  MOVS            R0, #2
3A7540:  STR.W           R0, [R12]
3A7544:  B               loc_3A7508
