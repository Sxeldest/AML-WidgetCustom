; =========================================================
; Game Engine Function: _ZN21CTaskSimpleCarJumpOut14SetPedPositionEP4CPed
; Address            : 0x503A88 - 0x503B4E
; =========================================================

503A88:  PUSH            {R4-R7,LR}
503A8A:  ADD             R7, SP, #0xC
503A8C:  PUSH.W          {R8}
503A90:  SUB             SP, SP, #0x10
503A92:  MOV             R4, R1
503A94:  MOV             R5, R0
503A96:  LDRB.W          R0, [R4,#0x485]
503A9A:  LSLS            R0, R0, #0x1F
503A9C:  BNE             loc_503AA2
503A9E:  MOVS            R0, #0
503AA0:  B               loc_503B46
503AA2:  MOV             R0, R4; this
503AA4:  BLX             j__ZN4CPed19SetPedPositionInCarEv; CPed::SetPedPositionInCar(void)
503AA8:  LDR             R0, [R5,#0xC]
503AAA:  CMP             R0, #0
503AAC:  BEQ             loc_503B44
503AAE:  LDR             R0, [R4,#0x14]
503AB0:  ADD.W           R8, R4, #4
503AB4:  LDR             R1, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x503AC4)
503AB6:  CMP             R0, #0
503AB8:  MOV             R2, R8
503ABA:  IT NE
503ABC:  ADDNE.W         R2, R0, #0x30 ; '0'
503AC0:  ADD             R1, PC; _ZN6CWorld13pIgnoreEntityE_ptr ; CVector *
503AC2:  VLDR            D16, [R2]
503AC6:  LDR             R0, [R2,#8]
503AC8:  LDR             R6, [R1]; CWorld::pIgnoreEntity ...
503ACA:  STR             R0, [SP,#0x20+var_18]
503ACC:  VSTR            D16, [SP,#0x20+var_20]
503AD0:  LDR             R0, [R5,#0x10]
503AD2:  STR             R0, [R6]; CWorld::pIgnoreEntity
503AD4:  MOV             R0, SP; this
503AD6:  BLX             j__ZN13CPedPlacement15FindZCoorForPedEP7CVector; CPedPlacement::FindZCoorForPed(CVector *)
503ADA:  MOVS            R0, #0
503ADC:  STR             R0, [R6]; CWorld::pIgnoreEntity
503ADE:  LDR             R0, [R5,#0x10]
503AE0:  LDR.W           R1, [R0,#0x5A0]
503AE4:  CMP             R1, #9
503AE6:  ITT NE
503AE8:  LDRNE.W         R0, [R0,#0x5A4]
503AEC:  CMPNE           R0, #2
503AEE:  BNE             loc_503AF6
503AF0:  VLDR            S0, =0.27
503AF4:  B               loc_503AFA
503AF6:  VLDR            S0, =0.07
503AFA:  LDR             R0, [R5,#0xC]
503AFC:  CBZ             R0, loc_503B44
503AFE:  LDRSH.W         R1, [R0,#0x2C]
503B02:  BIC.W           R1, R1, #1
503B06:  CMP.W           R1, #0x180
503B0A:  BNE             loc_503B44
503B0C:  LDR             R1, [R4,#0x14]
503B0E:  VLDR            S2, [SP,#0x20+var_18]
503B12:  CMP             R1, #0
503B14:  IT NE
503B16:  ADDNE.W         R8, R1, #0x30 ; '0'
503B1A:  VLDR            S4, [R8,#8]
503B1E:  VCMPE.F32       S2, S4
503B22:  VMRS            APSR_nzcv, FPSCR
503B26:  BLE             loc_503B44
503B28:  VLDR            S4, [R0,#0x20]
503B2C:  VDIV.F32        S0, S4, S0
503B30:  VLDR            S4, [R1,#0x38]
503B34:  VSUB.F32        S2, S2, S4
503B38:  VMUL.F32        S0, S2, S0
503B3C:  VADD.F32        S0, S4, S0
503B40:  VSTR            S0, [R1,#0x38]
503B44:  MOVS            R0, #1
503B46:  ADD             SP, SP, #0x10
503B48:  POP.W           {R8}
503B4C:  POP             {R4-R7,PC}
