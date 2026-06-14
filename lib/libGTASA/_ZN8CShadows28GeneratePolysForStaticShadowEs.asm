; =========================================================
; Game Engine Function: _ZN8CShadows28GeneratePolysForStaticShadowEs
; Address            : 0x5B8FF8 - 0x5B9242
; =========================================================

5B8FF8:  PUSH            {R4-R7,LR}
5B8FFA:  ADD             R7, SP, #0xC
5B8FFC:  PUSH.W          {R8-R11}
5B9000:  SUB             SP, SP, #4
5B9002:  VPUSH           {D8-D14}
5B9006:  SUB             SP, SP, #0x78; float
5B9008:  MOV             R8, R0
5B900A:  LDR             R0, =(_ZN8CShadows14aStaticShadowsE_ptr - 0x5B9014)
5B900C:  VLDR            S24, =50.0
5B9010:  ADD             R0, PC; _ZN8CShadows14aStaticShadowsE_ptr
5B9012:  VLDR            S26, =60.0
5B9016:  LDR             R0, [R0]; CShadows::aStaticShadows ...
5B9018:  ADD.W           R4, R0, R8,LSL#6
5B901C:  VLDR            S0, [R4,#0x18]
5B9020:  VLDR            S4, [R4,#0x20]
5B9024:  VABS.F32        S0, S0
5B9028:  VLDR            D16, [R4,#0xC]
5B902C:  VABS.F32        S4, S4
5B9030:  VLDR            S2, [R4,#0x1C]
5B9034:  VSTR            D16, [SP,#0xD0+var_68]
5B9038:  VLDR            S6, [R4,#0x24]
5B903C:  VABS.F32        S2, S2
5B9040:  VLDR            S8, [SP,#0xD0+var_68+4]
5B9044:  VABS.F32        S6, S6
5B9048:  VADD.F32        S0, S0, S4
5B904C:  VLDR            S4, [SP,#0xD0+var_68]
5B9050:  VADD.F32        S2, S2, S6
5B9054:  VSUB.F32        S18, S4, S0
5B9058:  VADD.F32        S22, S0, S4
5B905C:  VSUB.F32        S20, S8, S2
5B9060:  VADD.F32        S16, S2, S8
5B9064:  VDIV.F32        S10, S18, S24
5B9068:  VADD.F32        S10, S10, S26
5B906C:  VMOV            R0, S10; x
5B9070:  BLX.W           floorf
5B9074:  VDIV.F32        S0, S20, S24
5B9078:  MOV             R5, R0
5B907A:  VADD.F32        S0, S0, S26
5B907E:  VMOV            R0, S0; x
5B9082:  BLX.W           floorf
5B9086:  VDIV.F32        S0, S22, S24
5B908A:  VADD.F32        S0, S0, S26
5B908E:  VDIV.F32        S2, S16, S24
5B9092:  VMOV            R1, S0
5B9096:  VADD.F32        S2, S2, S26
5B909A:  VMOV            S24, R0
5B909E:  VMOV            R6, S2
5B90A2:  MOV             R0, R1; x
5B90A4:  BLX.W           floorf
5B90A8:  VMOV            S26, R0
5B90AC:  MOV             R0, R6; x
5B90AE:  VMOV            S28, R5
5B90B2:  BLX.W           floorf
5B90B6:  VMOV            S0, R0
5B90BA:  LDR             R0, [R4,#0x14]
5B90BC:  VCVT.S32.F32    S2, S28
5B90C0:  STR             R0, [SP,#0xD0+var_60]
5B90C2:  VCVT.S32.F32    S0, S0
5B90C6:  MOV.W           R10, #0x77 ; 'w'
5B90CA:  VCVT.S32.F32    S4, S26
5B90CE:  MOVS            R1, #0
5B90D0:  VCVT.S32.F32    S6, S24
5B90D4:  VMOV            R0, S0
5B90D8:  CMP             R0, #0x77 ; 'w'
5B90DA:  IT GE
5B90DC:  MOVGE           R0, R10
5B90DE:  STR             R0, [SP,#0xD0+var_94]
5B90E0:  VMOV            R0, S4
5B90E4:  CMP             R0, #0x77 ; 'w'
5B90E6:  IT LT
5B90E8:  MOVLT           R10, R0
5B90EA:  VMOV            R0, S6
5B90EE:  CMP             R0, #0
5B90F0:  IT LE
5B90F2:  MOVLE           R0, R1
5B90F4:  STR             R0, [SP,#0xD0+var_8C]
5B90F6:  VMOV            R0, S2
5B90FA:  CMP             R0, #0
5B90FC:  IT GT
5B90FE:  MOVGT           R1, R0
5B9100:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x5B910C)
5B9102:  STR             R1, [SP,#0xD0+var_90]
5B9104:  MOVW            R1, #0xFFFF
5B9108:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
5B910A:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
5B910C:  LDRH            R0, [R0]; this
5B910E:  CMP             R0, R1
5B9110:  BEQ             loc_5B9116
5B9112:  ADDS            R0, #1
5B9114:  B               loc_5B911E
5B9116:  MOV             R5, R10
5B9118:  BLX.W           j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
5B911C:  MOVS            R0, #1
5B911E:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x5B9124)
5B9120:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
5B9122:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
5B9124:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
5B9126:  LDR             R0, [SP,#0xD0+var_94]
5B9128:  LDR             R1, [SP,#0xD0+var_8C]
5B912A:  CMP             R1, R0
5B912C:  BGT.W           loc_5B9234
5B9130:  VMOV            R1, S18
5B9134:  LDR             R0, =(_ZN8CShadows14aStaticShadowsE_ptr - 0x5B9142)
5B9136:  ADD.W           R5, R4, #0x24 ; '$'
5B913A:  ADD.W           R6, R4, #0x1C
5B913E:  ADD             R0, PC; _ZN8CShadows14aStaticShadowsE_ptr
5B9140:  ADD.W           R12, R4, #0x20 ; ' '
5B9144:  ADD.W           LR, R4, #0x18
5B9148:  MOVS            R3, #0
5B914A:  LDR             R0, [R0]; CShadows::aStaticShadows ...
5B914C:  ADD.W           R0, R0, R8,LSL#6
5B9150:  ADD.W           R11, R0, #4
5B9154:  ADD.W           R9, R0, #0x3D ; '='
5B9158:  ADD.W           R2, R0, #0x2C ; ','
5B915C:  ADD.W           R4, R0, #0x28 ; '('
5B9160:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x5B916A)
5B9162:  STR.W           R11, [SP,#0xD0+var_70]
5B9166:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
5B9168:  LDR             R0, [R0]; CWorld::ms_aSectors ...
5B916A:  STR             R0, [SP,#0xD0+var_88]
5B916C:  STR             R1, [SP,#0xD0+var_7C]
5B916E:  VMOV            R1, S20
5B9172:  STR             R1, [SP,#0xD0+var_80]
5B9174:  VMOV            R1, S22
5B9178:  STR             R1, [SP,#0xD0+var_84]
5B917A:  STRD.W          R4, R2, [SP,#0xD0+var_78]
5B917E:  LDR             R0, [SP,#0xD0+var_90]
5B9180:  CMP             R0, R10
5B9182:  BGT             loc_5B9224
5B9184:  LDR             R1, [SP,#0xD0+var_8C]
5B9186:  MOVS            R0, #0x77 ; 'w'
5B9188:  CMP             R1, #0x77 ; 'w'
5B918A:  IT LT
5B918C:  MOVLT           R0, R1
5B918E:  LDR.W           R8, [SP,#0xD0+var_90]
5B9192:  RSB.W           R0, R0, R0,LSL#4
5B9196:  LSLS            R0, R0, #3
5B9198:  STR             R0, [SP,#0xD0+var_6C]
5B919A:  ADD             R0, SP, #0xD0+var_68
5B919C:  VLDR            S8, [R4]
5B91A0:  CMP.W           R8, #0x77 ; 'w'
5B91A4:  VLDR            S0, [LR]
5B91A8:  MOV             R4, R10
5B91AA:  VLDR            S2, [R6]
5B91AE:  MOV             R10, R12
5B91B0:  VLDR            S4, [R12]
5B91B4:  VLDR            S6, [R5]
5B91B8:  VLDR            S10, [R2]
5B91BC:  STRD.W          R11, R9, [SP,#0xD0+var_A0]; int
5B91C0:  MOV             R11, LR
5B91C2:  STR             R3, [SP,#0xD0+var_98]; int
5B91C4:  VSTR            S8, [SP,#0xD0+var_A8]
5B91C8:  VSTR            S10, [SP,#0xD0+var_A4]
5B91CC:  STRD.W          R3, R3, [SP,#0xD0+var_B8]; int
5B91D0:  STRD.W          R3, R3, [SP,#0xD0+var_B0]; int
5B91D4:  VSTR            S0, [SP,#0xD0+var_C8]
5B91D8:  VSTR            S2, [SP,#0xD0+var_C4]
5B91DC:  VSTR            S4, [SP,#0xD0+var_C0]
5B91E0:  VSTR            S6, [SP,#0xD0+var_BC]
5B91E4:  STR             R0, [SP,#0xD0+var_CC]; int
5B91E6:  MOV.W           R0, #0x77 ; 'w'
5B91EA:  VSTR            S16, [SP,#0xD0+var_D0]
5B91EE:  IT LT
5B91F0:  MOVLT           R0, R8
5B91F2:  LDR             R1, [SP,#0xD0+var_6C]
5B91F4:  ADD             R0, R1
5B91F6:  LDR             R1, [SP,#0xD0+var_88]
5B91F8:  ADD.W           R0, R1, R0,LSL#3; int
5B91FC:  LDR             R1, [SP,#0xD0+var_7C]; int
5B91FE:  LDRD.W          R3, R2, [SP,#0xD0+var_84]; int
5B9202:  BLX.W           j__ZN8CShadows20CastShadowSectorListER8CPtrListffffP7CVectorffffshhhffPP10CPolyBunchPhi; CShadows::CastShadowSectorList(CPtrList &,float,float,float,float,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,float,CPolyBunch **,uchar *,int)
5B9206:  ADD.W           R0, R8, #1
5B920A:  MOV             R12, R10
5B920C:  MOV             R10, R4
5B920E:  MOV             LR, R11
5B9210:  LDRD.W          R4, R2, [SP,#0xD0+var_78]
5B9214:  CMP             R8, R10
5B9216:  LDR.W           R11, [SP,#0xD0+var_70]
5B921A:  MOV             R8, R0
5B921C:  ADD             R0, SP, #0xD0+var_68
5B921E:  MOV.W           R3, #0
5B9222:  BLT             loc_5B919C
5B9224:  LDR             R0, [SP,#0xD0+var_8C]
5B9226:  LDR             R1, [SP,#0xD0+var_94]
5B9228:  ADD.W           R8, R0, #1
5B922C:  STR.W           R8, [SP,#0xD0+var_8C]
5B9230:  CMP             R0, R1
5B9232:  BLT             loc_5B917E
5B9234:  ADD             SP, SP, #0x78 ; 'x'
5B9236:  VPOP            {D8-D14}
5B923A:  ADD             SP, SP, #4
5B923C:  POP.W           {R8-R11}
5B9240:  POP             {R4-R7,PC}
