; =========================================================
; Game Engine Function: _ZN11CTheScripts12IsPedStoppedEP4CPed
; Address            : 0x34AD44 - 0x34ADFA
; =========================================================

34AD44:  PUSH            {R4,R6,R7,LR}
34AD46:  ADD             R7, SP, #8
34AD48:  MOV             R4, R0
34AD4A:  LDRB.W          R0, [R4,#0x485]
34AD4E:  LSLS            R0, R0, #0x1F
34AD50:  ITT NE
34AD52:  LDRNE.W         R0, [R4,#0x590]
34AD56:  CMPNE           R0, #0
34AD58:  BNE             loc_34ADD2
34AD5A:  MOV             R0, R4; this
34AD5C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
34AD60:  CMP             R0, #1
34AD62:  BNE             loc_34AD8C
34AD64:  LDR             R0, [R4,#0x18]
34AD66:  MOVS            R1, #6
34AD68:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
34AD6C:  CBNZ            R0, loc_34ADCE
34AD6E:  LDR             R0, [R4,#0x18]
34AD70:  MOVS            R1, #7
34AD72:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
34AD76:  CBNZ            R0, loc_34ADCE
34AD78:  LDR             R0, [R4,#0x18]
34AD7A:  MOVS            R1, #0x74 ; 't'
34AD7C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
34AD80:  CBNZ            R0, loc_34ADCE
34AD82:  LDR             R0, [R4,#0x18]
34AD84:  MOVS            R1, #0x76 ; 'v'
34AD86:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
34AD8A:  CBNZ            R0, loc_34ADCE
34AD8C:  LDR.W           R0, [R4,#0x450]
34AD90:  CMP             R0, #3
34AD92:  BGT             loc_34ADCE
34AD94:  ADDW            R0, R4, #0x484
34AD98:  MOVW            R1, #0x601
34AD9C:  LDR             R0, [R0]
34AD9E:  ANDS            R0, R1
34ADA0:  TEQ.W           R0, #1
34ADA4:  BNE             loc_34ADCE
34ADA6:  ADDW            R0, R4, #0x4E4
34ADAA:  VLDR            S0, [R0]
34ADAE:  VCMP.F32        S0, #0.0
34ADB2:  VMRS            APSR_nzcv, FPSCR
34ADB6:  BNE             loc_34ADCE
34ADB8:  ADD.W           R0, R4, #0x4E8
34ADBC:  VLDR            S0, [R0]
34ADC0:  VCMP.F32        S0, #0.0
34ADC4:  VMRS            APSR_nzcv, FPSCR
34ADC8:  ITT EQ
34ADCA:  MOVEQ           R0, #1
34ADCC:  POPEQ           {R4,R6,R7,PC}
34ADCE:  MOVS            R0, #0
34ADD0:  POP             {R4,R6,R7,PC}
34ADD2:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x34ADDC)
34ADD4:  VLDR            S0, =0.01
34ADD8:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
34ADDA:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
34ADDC:  VLDR            S2, [R1]
34ADE0:  VMUL.F32        S0, S2, S0
34ADE4:  VLDR            S2, [R0,#0xD8]
34ADE8:  VCMPE.F32       S2, S0
34ADEC:  VMRS            APSR_nzcv, FPSCR
34ADF0:  ITT LE
34ADF2:  MOVLE           R0, #1
34ADF4:  POPLE           {R4,R6,R7,PC}
34ADF6:  MOVS            R0, #0
34ADF8:  POP             {R4,R6,R7,PC}
