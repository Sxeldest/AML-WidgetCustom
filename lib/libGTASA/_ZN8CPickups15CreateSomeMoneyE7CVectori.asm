; =========================================================
; Game Engine Function: _ZN8CPickups15CreateSomeMoneyE7CVectori
; Address            : 0x320DF0 - 0x320F18
; =========================================================

320DF0:  PUSH            {R4-R7,LR}
320DF2:  ADD             R7, SP, #0xC
320DF4:  PUSH.W          {R8-R11}
320DF8:  SUB             SP, SP, #4
320DFA:  VPUSH           {D8-D11}
320DFE:  SUB             SP, SP, #0x20
320E00:  MOV             R5, R0
320E02:  MOVW            R0, #0x6667
320E06:  MOV             R10, R3
320E08:  MOVT            R0, #0x6666
320E0C:  SMMUL.W         R0, R10, R0
320E10:  MOV             R4, R1
320E12:  MOV             R11, R2
320E14:  ASRS            R1, R0, #3
320E16:  ADD.W           R0, R1, R0,LSR#31
320E1A:  ADD.W           R8, R0, #1
320E1E:  MOV             R0, R10
320E20:  CMP.W           R8, #7
320E24:  IT GE
320E26:  MOVGE.W         R8, #7
320E2A:  MOV             R1, R8
320E2C:  BLX             __aeabi_idiv
320E30:  CMN.W           R10, #0x13
320E34:  STR             R0, [SP,#0x60+var_48]
320E36:  BLT             loc_320F0A
320E38:  VMOV.F32        S18, #1.5
320E3C:  LDR             R0, =(MI_MONEY_ptr - 0x320E4A)
320E3E:  VMOV.F32        S20, #0.5
320E42:  VLDR            S16, =0.024544
320E46:  ADD             R0, PC; MI_MONEY_ptr
320E48:  MOV.W           R10, #0
320E4C:  MOV.W           R9, #0
320E50:  LDR             R0, [R0]; MI_MONEY
320E52:  STR             R0, [SP,#0x60+var_4C]
320E54:  BLX             rand
320E58:  UXTB            R0, R0
320E5A:  VMOV            S0, R0
320E5E:  VCVT.F32.S32    S0, S0
320E62:  VMUL.F32        S0, S0, S16
320E66:  VMOV            R0, S0; x
320E6A:  BLX             sinf
320E6E:  MOV             R6, R0
320E70:  BLX             rand
320E74:  UXTB            R0, R0
320E76:  VMOV            S22, R6
320E7A:  VMOV            S0, R0
320E7E:  VCVT.F32.S32    S0, S0
320E82:  VMUL.F32        S0, S0, S16
320E86:  VMOV            R0, S0; x
320E8A:  BLX             cosf
320E8E:  VMOV            S0, R0
320E92:  SUB.W           R3, R7, #-var_41; float
320E96:  VMUL.F32        S2, S22, S18
320E9A:  MOV             R2, R11; float
320E9C:  VMUL.F32        S0, S0, S18
320EA0:  STR.W           R10, [SP,#0x60+var_60]; bool *
320EA4:  VMOV            S4, R5
320EA8:  VMOV            S6, R4
320EAC:  VADD.F32        S2, S2, S4
320EB0:  VADD.F32        S0, S0, S6
320EB4:  VMOV            R5, S2
320EB8:  VMOV            R4, S0
320EBC:  MOV             R0, R5; this
320EBE:  MOV             R1, R4; float
320EC0:  BLX             j__ZN6CWorld21FindGroundZFor3DCoordEfffPbPP7CEntity; CWorld::FindGroundZFor3DCoord(float,float,float,bool *,CEntity **)
320EC4:  VMOV            S0, R0
320EC8:  LDRB.W          R0, [R7,#var_41]
320ECC:  VADD.F32        S0, S0, S20
320ED0:  CMP             R0, #0
320ED2:  VMOV            R11, S0
320ED6:  BEQ             loc_320F02
320ED8:  LDR             R0, [SP,#0x60+var_4C]
320EDA:  LDRH            R6, [R0]
320EDC:  BLX             rand
320EE0:  LDR             R1, [SP,#0x60+var_48]
320EE2:  AND.W           R0, R0, #3
320EE6:  MOV             R2, R11
320EE8:  MOV             R3, R6
320EEA:  ADD             R0, R1
320EEC:  MOVS            R1, #8
320EEE:  STRD.W          R1, R0, [SP,#0x60+var_60]
320EF2:  MOV             R0, R5
320EF4:  MOV             R1, R4
320EF6:  STRD.W          R10, R10, [SP,#0x60+var_58]
320EFA:  STR.W           R10, [SP,#0x60+var_50]
320EFE:  BLX             j__ZN8CPickups14GenerateNewOneE7CVectorjhjjbPc; CPickups::GenerateNewOne(CVector,uint,uchar,uint,uint,bool,char *)
320F02:  ADD.W           R9, R9, #1
320F06:  CMP             R9, R8
320F08:  BLT             loc_320E54
320F0A:  ADD             SP, SP, #0x20 ; ' '
320F0C:  VPOP            {D8-D11}
320F10:  ADD             SP, SP, #4
320F12:  POP.W           {R8-R11}
320F16:  POP             {R4-R7,PC}
