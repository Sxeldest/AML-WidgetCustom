; =========================================================
; Game Engine Function: _ZN8CCarCtrl28SlowCarDownForPedsSectorListER8CPtrListP8CVehicleffffPff
; Address            : 0x2EDB90 - 0x2EE154
; =========================================================

2EDB90:  PUSH            {R4-R7,LR}
2EDB92:  ADD             R7, SP, #0xC
2EDB94:  PUSH.W          {R8-R11}
2EDB98:  SUB             SP, SP, #4
2EDB9A:  VPUSH           {D8-D15}
2EDB9E:  SUB             SP, SP, #0x48; float
2EDBA0:  MOV             R4, R1
2EDBA2:  MOV             R5, R0
2EDBA4:  LDR             R0, [R4,#0x14]
2EDBA6:  MOV             R6, R3
2EDBA8:  LDRSH.W         R1, [R4,#0x26]
2EDBAC:  MOV             R8, R2
2EDBAE:  VLDR            S18, [R4,#0x48]
2EDBB2:  VLDR            S24, [R0,#0x10]
2EDBB6:  VLDR            S28, [R0,#0x14]
2EDBBA:  VLDR            S26, [R0,#0x18]
2EDBBE:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2EDBCA)
2EDBC2:  VLDR            S22, [R4,#0x4C]
2EDBC6:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2EDBC8:  VLDR            S20, [R4,#0x50]
2EDBCC:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
2EDBCE:  LDR.W           R0, [R0,R1,LSL#2]
2EDBD2:  MOVS            R1, #0; bool
2EDBD4:  LDR             R0, [R0,#0x2C]
2EDBD6:  VLDR            S16, [R0,#0xC]
2EDBDA:  MOV.W           R0, #0xFFFFFFFF; int
2EDBDE:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2EDBE2:  CMP             R0, R4
2EDBE4:  BEQ             loc_2EDC18
2EDBE6:  LDR.W           R1, [R4,#0x5A0]
2EDBEA:  CMP             R1, #6
2EDBEC:  BHI             loc_2EDBFA
2EDBEE:  MOVS            R0, #1
2EDBF0:  LSL.W           R1, R0, R1
2EDBF4:  TST.W           R1, #0x58
2EDBF8:  BNE             loc_2EDC1A
2EDBFA:  LDRB.W          R0, [R4,#0x3BD]
2EDBFE:  CMP             R0, #6
2EDC00:  IT NE
2EDC02:  CMPNE           R0, #0
2EDC04:  BNE             loc_2EDC18
2EDC06:  LDRB.W          R0, [R4,#0x3A]
2EDC0A:  AND.W           R1, R0, #0xF8
2EDC0E:  MOVS            R0, #0
2EDC10:  CMP             R1, #0x18
2EDC12:  IT EQ
2EDC14:  MOVEQ           R0, #1
2EDC16:  B               loc_2EDC1A
2EDC18:  MOVS            R0, #1
2EDC1A:  LDR             R5, [R5]
2EDC1C:  CMP             R5, #0
2EDC1E:  BEQ.W           loc_2EE146
2EDC22:  VMUL.F32        S0, S28, S22
2EDC26:  LDR.W           R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2EDC3A)
2EDC2A:  VMUL.F32        S2, S24, S18
2EDC2E:  VLDR            S28, [R7,#arg_4]
2EDC32:  VMUL.F32        S4, S26, S20
2EDC36:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2EDC38:  VMOV.F32        S6, #4.0
2EDC3C:  VLDR            S30, [R7,#arg_0]
2EDC40:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
2EDC42:  VMOV            S17, R6
2EDC46:  MOVS            R6, #1
2EDC48:  VMOV            S19, R8
2EDC4C:  VMOV.F32        S25, #6.0
2EDC50:  ADD.W           R9, R4, #4
2EDC54:  VMOV.F32        S27, #3.0
2EDC58:  VLDR            S22, =0.0
2EDC5C:  VADD.F32        S0, S2, S0
2EDC60:  VLDR            S2, =50.0
2EDC64:  VLDR            S26, =0.35
2EDC68:  VADD.F32        S0, S0, S4
2EDC6C:  VABS.F32        S18, S0
2EDC70:  VMUL.F32        S4, S0, S2
2EDC74:  VCMPE.F32       S0, #0.0
2EDC78:  VMRS            APSR_nzcv, FPSCR
2EDC7C:  VCMP.F32        S0, #0.0
2EDC80:  VMUL.F32        S2, S18, S2
2EDC84:  VSTR            S2, [SP,#0xA8+var_88]
2EDC88:  VMUL.F32        S2, S4, S6
2EDC8C:  VSTR            S2, [SP,#0xA8+var_7C]
2EDC90:  LDRSH.W         R2, [R4,#0x26]
2EDC94:  LDR.W           R1, [R1,R2,LSL#2]
2EDC98:  MOV.W           R2, #0
2EDC9C:  LDR             R1, [R1,#0x2C]
2EDC9E:  VLDR            S21, [R1,#0x10]
2EDCA2:  IT LT
2EDCA4:  MOVLT.W         R6, #0xFFFFFFFF
2EDCA8:  VMRS            APSR_nzcv, FPSCR
2EDCAC:  LDR.W           R1, =(_ZN33CVehiclePotentialCollisionScanner17ms_fMinAvoidSpeedE_ptr - 0x2EDCB4)
2EDCB0:  ADD             R1, PC; _ZN33CVehiclePotentialCollisionScanner17ms_fMinAvoidSpeedE_ptr
2EDCB2:  LDR             R1, [R1]; CVehiclePotentialCollisionScanner::ms_fMinAvoidSpeed ...
2EDCB4:  VLDR            S0, [R1]
2EDCB8:  IT NE
2EDCBA:  MOVNE           R2, #1
2EDCBC:  VSTR            S0, [SP,#0xA8+var_8C]
2EDCC0:  ANDS            R0, R2
2EDCC2:  STR             R0, [SP,#0xA8+var_78]
2EDCC4:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2EDCCC)
2EDCC8:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2EDCCA:  LDR.W           R8, [R0]; CWorld::ms_nCurrentScanCode ...
2EDCCE:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2EDCD6)
2EDCD2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2EDCD4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2EDCD6:  STR             R0, [SP,#0xA8+var_9C]
2EDCD8:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2EDCE0)
2EDCDC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2EDCDE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2EDCE0:  STR             R0, [SP,#0xA8+var_98]
2EDCE2:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x2EDCEA)
2EDCE6:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
2EDCE8:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
2EDCEA:  STR             R0, [SP,#0xA8+var_80]
2EDCEC:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x2EDCF4)
2EDCF0:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
2EDCF2:  LDR             R0, [R0]; CWorld::Players ...
2EDCF4:  STR             R0, [SP,#0xA8+var_84]
2EDCF6:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2EDCFE)
2EDCFA:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2EDCFC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2EDCFE:  STR             R0, [SP,#0xA8+var_90]
2EDD00:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2EDD08)
2EDD04:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2EDD06:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2EDD08:  STR             R0, [SP,#0xA8+var_94]
2EDD0A:  LDRD.W          R10, R5, [R5]
2EDD0E:  LDRH.W          R0, [R8]; CWorld::ms_nCurrentScanCode
2EDD12:  LDRH.W          R1, [R10,#0x30]
2EDD16:  CMP             R1, R0
2EDD18:  ITT NE
2EDD1A:  LDRBNE.W        R1, [R10,#0x1C]
2EDD1E:  MOVSNE.W        R1, R1,LSL#31
2EDD22:  BNE             loc_2EDD2A
2EDD24:  CMP             R5, #0
2EDD26:  BNE             loc_2EDD0A
2EDD28:  B               loc_2EE146
2EDD2A:  LDR.W           R1, [R10,#0x14]
2EDD2E:  ADD.W           R11, R10, #4
2EDD32:  STRH.W          R0, [R10,#0x30]
2EDD36:  CMP             R1, #0
2EDD38:  MOV             R0, R11
2EDD3A:  IT NE
2EDD3C:  ADDNE.W         R0, R1, #0x30 ; '0'
2EDD40:  VLDR            S20, [R0]
2EDD44:  VCMPE.F32       S20, S19
2EDD48:  VMRS            APSR_nzcv, FPSCR
2EDD4C:  BLE             loc_2EDD24
2EDD4E:  VCMPE.F32       S20, S30
2EDD52:  VMRS            APSR_nzcv, FPSCR
2EDD56:  BGE             loc_2EDD24
2EDD58:  VLDR            S24, [R0,#4]
2EDD5C:  VCMPE.F32       S24, S17
2EDD60:  VMRS            APSR_nzcv, FPSCR
2EDD64:  BLE             loc_2EDD24
2EDD66:  VCMPE.F32       S24, S28
2EDD6A:  VMRS            APSR_nzcv, FPSCR
2EDD6E:  BGE             loc_2EDD24
2EDD70:  VLDR            S31, [R0,#8]
2EDD74:  MOV             R1, R9
2EDD76:  LDR             R0, [R4,#0x14]
2EDD78:  CMP             R0, #0
2EDD7A:  IT NE
2EDD7C:  ADDNE.W         R1, R0, #0x30 ; '0'
2EDD80:  VLDR            S0, [R1,#8]
2EDD84:  VSUB.F32        S0, S31, S0
2EDD88:  VABS.F32        S0, S0
2EDD8C:  VCMPE.F32       S0, S25
2EDD90:  VMRS            APSR_nzcv, FPSCR
2EDD94:  BGE             loc_2EDD24
2EDD96:  LDRD.W          R2, R3, [R0,#0x10]; float
2EDD9A:  LDRD.W          R0, R1, [R1]; float
2EDD9E:  VSTR            S20, [SP,#0xA8+var_A8]
2EDDA2:  VSTR            S24, [SP,#0xA8+var_A4]
2EDDA6:  BLX             j__ZN10CCollision15DistAlongLine2DEffffff; CCollision::DistAlongLine2D(float,float,float,float,float,float)
2EDDAA:  VMOV            D2, D11
2EDDAE:  LDR             R1, [R4,#0x14]
2EDDB0:  VMOV            S2, R0
2EDDB4:  MOV             R0, R9
2EDDB6:  CMP             R1, #0
2EDDB8:  IT NE
2EDDBA:  ADDNE.W         R0, R1, #0x30 ; '0'
2EDDBE:  VLDR            S0, [R0,#8]
2EDDC2:  IT NE
2EDDC4:  VLDRNE          S4, [R1,#0x18]
2EDDC8:  VMUL.F32        S2, S2, S4
2EDDCC:  VADD.F32        S2, S0, S2
2EDDD0:  VSUB.F32        S2, S31, S2
2EDDD4:  VABS.F32        S2, S2
2EDDD8:  VCMPE.F32       S2, S27
2EDDDC:  VMRS            APSR_nzcv, FPSCR
2EDDE0:  BGE             loc_2EDD24
2EDDE2:  VLDR            S4, [R0,#4]
2EDDE6:  VSUB.F32        S31, S31, S0
2EDDEA:  VLDR            S2, [R0]
2EDDEE:  VSUB.F32        S29, S24, S4
2EDDF2:  VLDR            S4, [R1,#0x14]
2EDDF6:  VSUB.F32        S24, S20, S2
2EDDFA:  VLDR            S2, [R1,#0x10]
2EDDFE:  VLDR            S6, [R1,#0x18]
2EDE02:  LDRB.W          R0, [R4,#0x3BD]
2EDE06:  CMP             R0, #6
2EDE08:  VMUL.F32        S0, S29, S4
2EDE0C:  VMUL.F32        S2, S24, S2
2EDE10:  VMUL.F32        S4, S31, S6
2EDE14:  VADD.F32        S0, S2, S0
2EDE18:  VADD.F32        S20, S0, S4
2EDE1C:  BHI.W           loc_2EDFA0
2EDE20:  MOVS            R1, #1
2EDE22:  LSL.W           R0, R1, R0
2EDE26:  TST.W           R0, #0x53
2EDE2A:  BEQ.W           loc_2EDFA0
2EDE2E:  MOV.W           R0, #0xFFFFFFFF; int
2EDE32:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2EDE36:  VCMPE.F32       S20, S21
2EDE3A:  CMP             R10, R0
2EDE3C:  BEQ             loc_2EDE54
2EDE3E:  VMRS            APSR_nzcv, FPSCR
2EDE42:  BGT             loc_2EDE74
2EDE44:  B               loc_2EDFA0
2EDE46:  ALIGN 4
2EDE48:  DCFS 0.0
2EDE4C:  DCFS 50.0
2EDE50:  DCFS 0.35
2EDE54:  VMRS            APSR_nzcv, FPSCR
2EDE58:  BLE.W           loc_2EDFA0
2EDE5C:  LDR             R0, [SP,#0xA8+var_80]
2EDE5E:  MOV.W           R2, #0x194
2EDE62:  LDR             R1, [SP,#0xA8+var_84]
2EDE64:  LDR             R0, [R0]
2EDE66:  SMLABB.W        R0, R0, R2, R1
2EDE6A:  LDR.W           R0, [R0,#0xD8]
2EDE6E:  CMP             R0, R4
2EDE70:  BEQ.W           loc_2EDFA0
2EDE74:  VSUB.F32        S0, S20, S21
2EDE78:  VLDR            S2, [SP,#0xA8+var_7C]
2EDE7C:  VCMPE.F32       S0, S2
2EDE80:  VMRS            APSR_nzcv, FPSCR
2EDE84:  BGE.W           loc_2EDFA0
2EDE88:  VLDR            S2, =1.6
2EDE8C:  LDR.W           R0, [R4,#0x5A0]
2EDE90:  VMUL.F32        S2, S16, S2
2EDE94:  CMP             R0, #9
2EDE96:  IT EQ
2EDE98:  VMOVEQ.F32      S16, S2
2EDE9C:  VMOV.F32        S2, #13.0
2EDEA0:  VCMPE.F32       S0, S2
2EDEA4:  VMRS            APSR_nzcv, FPSCR
2EDEA8:  BGE             loc_2EDFA0
2EDEAA:  LDR             R0, [R4,#0x14]
2EDEAC:  VLDR            S2, [R0]
2EDEB0:  VLDR            S4, [R0,#4]
2EDEB4:  VMUL.F32        S2, S24, S2
2EDEB8:  VLDR            S6, [R0,#8]
2EDEBC:  VMUL.F32        S4, S29, S4
2EDEC0:  VMUL.F32        S6, S31, S6
2EDEC4:  VADD.F32        S2, S2, S4
2EDEC8:  VMOV.F32        S4, #0.5
2EDECC:  VADD.F32        S2, S2, S6
2EDED0:  VADD.F32        S4, S16, S4
2EDED4:  VABS.F32        S2, S2
2EDED8:  VCMPE.F32       S2, S4
2EDEDC:  VMRS            APSR_nzcv, FPSCR
2EDEE0:  BGT             loc_2EDFA0
2EDEE2:  VMOV.F32        S2, #-1.0
2EDEE6:  LDR             R0, [R7,#arg_8]
2EDEE8:  VMOV            D16, D11
2EDEEC:  VMOV.F32        S4, #13.0
2EDEF0:  VADD.F32        S2, S0, S2
2EDEF4:  VMAX.F32        D1, D1, D16
2EDEF8:  VDIV.F32        S2, S2, S4
2EDEFC:  VLDR            S4, [R7,#arg_C]
2EDF00:  VMUL.F32        S2, S2, S4
2EDF04:  VMOV.F32        S4, #1.0
2EDF08:  VMOV.F32        S10, S4
2EDF0C:  VMOV.F32        S4, S2
2EDF10:  VCMPE.F32       S2, S10
2EDF14:  VMRS            APSR_nzcv, FPSCR
2EDF18:  VMOV.F32        S8, S10
2EDF1C:  IT LT
2EDF1E:  VMOVLT.F32      S4, S10
2EDF22:  VLDR            S6, [R0]
2EDF26:  VCMPE.F32       S6, S4
2EDF2A:  VMRS            APSR_nzcv, FPSCR
2EDF2E:  VCMPE.F32       S2, S10
2EDF32:  IT LT
2EDF34:  VMOVLT.F32      S8, S6
2EDF38:  VMRS            APSR_nzcv, FPSCR
2EDF3C:  VCMPE.F32       S6, S4
2EDF40:  IT LT
2EDF42:  VMOVLT.F32      S2, S8
2EDF46:  VMRS            APSR_nzcv, FPSCR
2EDF4A:  IT LT
2EDF4C:  VMOVLT.F32      S2, S8
2EDF50:  VSTR            S2, [R0]
2EDF54:  VMOV.F32        S2, #4.0
2EDF58:  LDRH.W          R0, [R4,#0x3DF]
2EDF5C:  ORR.W           R0, R0, #2
2EDF60:  STRH.W          R0, [R4,#0x3DF]
2EDF64:  VCMPE.F32       S0, S2
2EDF68:  VMRS            APSR_nzcv, FPSCR
2EDF6C:  BGE             loc_2EDF80
2EDF6E:  MOVS            R0, #1
2EDF70:  STRB.W          R0, [R4,#0x3BF]
2EDF74:  LDR             R0, [SP,#0xA8+var_90]
2EDF76:  LDR             R0, [R0]
2EDF78:  ADD.W           R0, R0, #0xFA0
2EDF7C:  STR.W           R0, [R4,#0x3C0]
2EDF80:  VMOV.F32        S2, #2.5
2EDF84:  VCMPE.F32       S0, S2
2EDF88:  VMRS            APSR_nzcv, FPSCR
2EDF8C:  BGE             loc_2EDFA0
2EDF8E:  MOVS            R0, #0x18
2EDF90:  STRB.W          R0, [R4,#0x3BF]
2EDF94:  LDR             R0, [SP,#0xA8+var_94]
2EDF96:  LDR             R0, [R0]
2EDF98:  ADD.W           R0, R0, #0xFA0
2EDF9C:  STR.W           R0, [R4,#0x3C0]
2EDFA0:  LDRB.W          R0, [R10,#0x3A]
2EDFA4:  AND.W           R0, R0, #7
2EDFA8:  CMP             R0, #3
2EDFAA:  BNE.W           loc_2EDD24
2EDFAE:  MOV.W           R0, #0xFFFFFFFF; int
2EDFB2:  MOVS            R1, #0; bool
2EDFB4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2EDFB8:  CMP             R0, R4
2EDFBA:  BEQ             loc_2EE092
2EDFBC:  LDR             R0, [SP,#0xA8+var_78]
2EDFBE:  CMP             R0, #1
2EDFC0:  BNE.W           loc_2EDD24
2EDFC4:  VCMPE.F32       S20, #0.0
2EDFC8:  MOVS            R0, #1
2EDFCA:  VMRS            APSR_nzcv, FPSCR
2EDFCE:  IT LT
2EDFD0:  MOVLT.W         R0, #0xFFFFFFFF
2EDFD4:  CMP             R0, R6
2EDFD6:  BNE.W           loc_2EDD24
2EDFDA:  VABS.F32        S0, S20
2EDFDE:  VLDR            S4, [SP,#0xA8+var_88]
2EDFE2:  VSUB.F32        S2, S0, S21
2EDFE6:  VCMPE.F32       S2, S4
2EDFEA:  VMRS            APSR_nzcv, FPSCR
2EDFEE:  BGE.W           loc_2EDD24
2EDFF2:  VCMPE.F32       S0, S21
2EDFF6:  VMRS            APSR_nzcv, FPSCR
2EDFFA:  ITTT GT
2EDFFC:  VLDRGT          S0, [SP,#0xA8+var_8C]
2EE000:  VCMPEGT.F32     S18, S0
2EE004:  VMRSGT          APSR_nzcv, FPSCR
2EE008:  BLE.W           loc_2EDD24
2EE00C:  LDR             R0, [R4,#0x14]
2EE00E:  VLDR            S0, [R0]
2EE012:  VLDR            S2, [R0,#4]
2EE016:  VMUL.F32        S0, S24, S0
2EE01A:  VLDR            S4, [R0,#8]
2EE01E:  VMUL.F32        S2, S29, S2
2EE022:  VMUL.F32        S4, S31, S4
2EE026:  VADD.F32        S0, S0, S2
2EE02A:  VADD.F32        S2, S16, S26
2EE02E:  VADD.F32        S0, S0, S4
2EE032:  VABS.F32        S0, S0
2EE036:  VCMPE.F32       S0, S2
2EE03A:  VMRS            APSR_nzcv, FPSCR
2EE03E:  BGT.W           loc_2EDD24
2EE042:  ADD.W           R11, SP, #0xA8+var_74
2EE046:  MOV             R1, R4; CVehicle *
2EE048:  MOV             R0, R11; this
2EE04A:  BLX             j__ZN25CEventPotentialGetRunOverC2EP8CVehicle; CEventPotentialGetRunOver::CEventPotentialGetRunOver(CVehicle *)
2EE04E:  LDR.W           R0, [R10,#0x440]
2EE052:  MOV             R1, R11; CEvent *
2EE054:  MOVS            R2, #0; bool
2EE056:  ADDS            R0, #0x68 ; 'h'; this
2EE058:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
2EE05C:  LDR.W           R0, [R4,#0x464]; this
2EE060:  CMP             R0, #0
2EE062:  BEQ             loc_2EE13A
2EE064:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
2EE068:  CMP             R0, #1
2EE06A:  BNE             loc_2EE13A
2EE06C:  LDR.W           R0, [R10,#0x440]
2EE070:  LDRB.W          R1, [R0,#0x180]
2EE074:  CMP             R1, #0
2EE076:  BEQ             loc_2EE13A
2EE078:  LDRB.W          R1, [R0,#0x181]
2EE07C:  CMP             R1, #0
2EE07E:  BEQ             loc_2EE10C
2EE080:  LDR             R1, [SP,#0xA8+var_98]
2EE082:  MOVS            R2, #0
2EE084:  LDR             R1, [R1]
2EE086:  STRB.W          R2, [R0,#0x181]
2EE08A:  STR.W           R1, [R0,#0x178]
2EE08E:  MOV             R2, R1
2EE090:  B               loc_2EE114
2EE092:  LDR.W           R0, [R4,#0x524]
2EE096:  CMP             R0, #0
2EE098:  BEQ             loc_2EDFBC
2EE09A:  LDR             R0, [R4,#0x14]
2EE09C:  MOV             R2, R9
2EE09E:  LDR.W           R1, [R10,#0x14]
2EE0A2:  CMP             R0, #0
2EE0A4:  IT NE
2EE0A6:  ADDNE.W         R2, R0, #0x30 ; '0'
2EE0AA:  CMP             R1, #0
2EE0AC:  VLDR            S0, [R2]
2EE0B0:  IT NE
2EE0B2:  ADDNE.W         R11, R1, #0x30 ; '0'
2EE0B6:  VLDR            S2, [R11]
2EE0BA:  VLDR            D16, [R2,#4]
2EE0BE:  VSUB.F32        S0, S2, S0
2EE0C2:  VLDR            D17, [R11,#4]
2EE0C6:  VSUB.F32        D16, D17, D16
2EE0CA:  VMUL.F32        D1, D16, D16
2EE0CE:  VMUL.F32        S0, S0, S0
2EE0D2:  VADD.F32        S0, S0, S2
2EE0D6:  VADD.F32        S0, S0, S3
2EE0DA:  VLDR            S2, =49.0
2EE0DE:  VCMPE.F32       S0, S2
2EE0E2:  VMRS            APSR_nzcv, FPSCR
2EE0E6:  BGE.W           loc_2EDFBC
2EE0EA:  ADD.W           R11, SP, #0xA8+var_74
2EE0EE:  MOV             R1, R4; CVehicle *
2EE0F0:  MOV             R0, R11; this
2EE0F2:  BLX             j__ZN25CEventPotentialGetRunOverC2EP8CVehicle; CEventPotentialGetRunOver::CEventPotentialGetRunOver(CVehicle *)
2EE0F6:  LDR.W           R0, [R10,#0x440]
2EE0FA:  MOV             R1, R11; CEvent *
2EE0FC:  MOVS            R2, #0; bool
2EE0FE:  ADDS            R0, #0x68 ; 'h'; this
2EE100:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
2EE104:  MOV             R0, R11; this
2EE106:  BLX             j__ZN25CEventPotentialGetRunOverD2Ev; CEventPotentialGetRunOver::~CEventPotentialGetRunOver()
2EE10A:  B               loc_2EDFBC
2EE10C:  LDR             R1, [SP,#0xA8+var_9C]
2EE10E:  LDR.W           R2, [R0,#0x178]
2EE112:  LDR             R1, [R1]
2EE114:  LDR.W           R3, [R0,#0x17C]
2EE118:  ADD             R2, R3
2EE11A:  CMP             R2, R1
2EE11C:  BHI             loc_2EE13A
2EE11E:  STR.W           R1, [R0,#0x178]
2EE122:  MOVW            R1, #0xBB8
2EE126:  STR.W           R1, [R0,#0x17C]
2EE12A:  MOVS            R2, #1
2EE12C:  LDRB.W          R1, [R0,#0x174]
2EE130:  STRB.W          R2, [R0,#0x180]
2EE134:  ADDS            R1, #2
2EE136:  STRB.W          R1, [R0,#0x174]
2EE13A:  ADD             R0, SP, #0xA8+var_74; this
2EE13C:  BLX             j__ZN25CEventPotentialGetRunOverD2Ev; CEventPotentialGetRunOver::~CEventPotentialGetRunOver()
2EE140:  CMP             R5, #0
2EE142:  BNE.W           loc_2EDD0A
2EE146:  ADD             SP, SP, #0x48 ; 'H'
2EE148:  VPOP            {D8-D15}
2EE14C:  ADD             SP, SP, #4
2EE14E:  POP.W           {R8-R11}
2EE152:  POP             {R4-R7,PC}
