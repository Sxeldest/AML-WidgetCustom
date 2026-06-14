; =========================================================
; Game Engine Function: _ZNK11CAutomobile22RcbanditCheckHitWheelsEv
; Address            : 0x558A0C - 0x558B6E
; =========================================================

558A0C:  PUSH            {R4-R7,LR}
558A0E:  ADD             R7, SP, #0xC
558A10:  PUSH.W          {R8-R11}
558A14:  SUB             SP, SP, #4
558A16:  VPUSH           {D8-D12}
558A1A:  SUB             SP, SP, #0x10
558A1C:  VMOV.F32        S0, #-2.0
558A20:  LDR             R2, [R0,#0x14]
558A22:  STR             R0, [SP,#0x58+var_4C]
558A24:  ADD.W           R1, R2, #0x30 ; '0'
558A28:  CMP             R2, #0
558A2A:  IT EQ
558A2C:  ADDEQ           R1, R0, #4
558A2E:  VLDR            S16, =50.0
558A32:  VLDR            S2, [R1]
558A36:  VLDR            S4, [R1,#4]
558A3A:  VLDR            S18, =60.0
558A3E:  VADD.F32        S6, S2, S0
558A42:  VADD.F32        S0, S4, S0
558A46:  VDIV.F32        S6, S6, S16
558A4A:  VDIV.F32        S0, S0, S16
558A4E:  VADD.F32        S6, S6, S18
558A52:  VADD.F32        S0, S0, S18
558A56:  VMOV            R0, S6; x
558A5A:  VMOV            R5, S0
558A5E:  VMOV.F32        S0, #2.0
558A62:  VADD.F32        S20, S2, S0
558A66:  VADD.F32        S22, S4, S0
558A6A:  BLX             floorf
558A6E:  VMOV            S24, R0
558A72:  MOV             R0, R5; x
558A74:  BLX             floorf
558A78:  VDIV.F32        S0, S20, S16
558A7C:  MOV             R5, R0
558A7E:  VADD.F32        S0, S0, S18
558A82:  VMOV            R0, S0; x
558A86:  BLX             floorf
558A8A:  VDIV.F32        S0, S22, S16
558A8E:  LDR             R4, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x558A94)
558A90:  ADD             R4, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
558A92:  VADD.F32        S0, S0, S18
558A96:  VMOV            S16, R0
558A9A:  VMOV            R1, S0
558A9E:  MOV             R0, R1; x
558AA0:  BLX             floorf
558AA4:  VMOV            S0, R0
558AA8:  LDR             R0, [R4]; CWorld::ms_nCurrentScanCode ...
558AAA:  VCVT.S32.F32    S4, S24
558AAE:  MOV.W           R11, #0x77 ; 'w'
558AB2:  VCVT.S32.F32    S0, S0
558AB6:  LDRH            R0, [R0]; this
558AB8:  VCVT.S32.F32    S6, S16
558ABC:  VMOV            S2, R5
558AC0:  MOVS            R5, #0
558AC2:  VCVT.S32.F32    S2, S2
558AC6:  VMOV            R6, S0
558ACA:  VMOV            R1, S6
558ACE:  VMOV            R9, S2
558AD2:  CMP             R6, #0x77 ; 'w'
558AD4:  IT GE
558AD6:  MOVGE           R6, R11
558AD8:  CMP             R1, #0x77 ; 'w'
558ADA:  IT LT
558ADC:  MOVLT           R11, R1
558ADE:  VMOV            R1, S4
558AE2:  CMP.W           R9, #0
558AE6:  IT LE
558AE8:  MOVLE           R9, R5
558AEA:  CMP             R1, #0
558AEC:  IT GT
558AEE:  MOVGT           R5, R1
558AF0:  MOVW            R1, #0xFFFF
558AF4:  CMP             R0, R1
558AF6:  BEQ             loc_558AFC
558AF8:  ADDS            R0, #1
558AFA:  B               loc_558B02
558AFC:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
558B00:  MOVS            R0, #1
558B02:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x558B0A)
558B04:  CMP             R9, R6
558B06:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
558B08:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
558B0A:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
558B0C:  BLE             loc_558B12
558B0E:  MOVS            R0, #0
558B10:  B               loc_558B60
558B12:  SUBS            R0, R5, #1
558B14:  STR             R0, [SP,#0x58+var_54]
558B16:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x558B1E)
558B18:  STR             R5, [SP,#0x58+var_50]
558B1A:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
558B1C:  LDR             R4, [R0]; CWorld::ms_aRepeatSectors ...
558B1E:  CMP             R5, R11
558B20:  LDR             R5, [SP,#0x58+var_4C]
558B22:  BGT             loc_558B50
558B24:  MOV.W           R0, R9,LSL#4
558B28:  LDR.W           R8, [SP,#0x58+var_54]
558B2C:  UXTB.W          R10, R0
558B30:  ADD.W           R8, R8, #1
558B34:  AND.W           R0, R8, #0xF
558B38:  ORR.W           R0, R0, R10
558B3C:  ADD.W           R0, R0, R0,LSL#1
558B40:  ADD.W           R1, R4, R0,LSL#2; CPtrList *
558B44:  MOV             R0, R5; this
558B46:  BLX             j__ZNK11CAutomobile23RcbanditCheck1CarWheelsER8CPtrList; CAutomobile::RcbanditCheck1CarWheels(CPtrList &)
558B4A:  CBNZ            R0, loc_558B5E
558B4C:  CMP             R8, R11
558B4E:  BLT             loc_558B30
558B50:  ADD.W           R0, R9, #1
558B54:  LDR             R5, [SP,#0x58+var_50]
558B56:  CMP             R9, R6
558B58:  MOV             R9, R0
558B5A:  BLT             loc_558B1E
558B5C:  B               loc_558B0E
558B5E:  MOVS            R0, #1
558B60:  ADD             SP, SP, #0x10
558B62:  VPOP            {D8-D12}
558B66:  ADD             SP, SP, #4
558B68:  POP.W           {R8-R11}
558B6C:  POP             {R4-R7,PC}
