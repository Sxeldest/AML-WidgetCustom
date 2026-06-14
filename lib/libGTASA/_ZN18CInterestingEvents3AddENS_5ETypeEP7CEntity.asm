; =========================================================
; Game Engine Function: _ZN18CInterestingEvents3AddENS_5ETypeEP7CEntity
; Address            : 0x4BD070 - 0x4BD2F6
; =========================================================

4BD070:  PUSH            {R4-R7,LR}
4BD072:  ADD             R7, SP, #0xC
4BD074:  PUSH.W          {R8-R11}
4BD078:  SUB             SP, SP, #0x2C
4BD07A:  MOV             R9, R2
4BD07C:  MOV             R5, R0
4BD07E:  CMP.W           R9, #0
4BD082:  ITT NE
4BD084:  LDRBNE.W        R0, [R5,#0x12C]
4BD088:  ANDSNE.W        R0, R0, #1
4BD08C:  BEQ.W           loc_4BD2EE
4BD090:  LDR             R0, =(TheCamera_ptr - 0x4BD098)
4BD092:  STR             R1, [SP,#0x48+var_2C]
4BD094:  ADD             R0, PC; TheCamera_ptr
4BD096:  LDR             R1, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x4BD09E)
4BD098:  LDR             R0, [R0]; TheCamera
4BD09A:  ADD             R1, PC; _ZN6CTimer14m_FrameCounterE_ptr
4BD09C:  LDR             R1, [R1]; CTimer::m_FrameCounter ...
4BD09E:  LDRB.W          R2, [R0,#(byte_951FFF - 0x951FA8)]
4BD0A2:  ADD.W           R2, R2, R2,LSL#5
4BD0A6:  ADD.W           R0, R0, R2,LSL#4
4BD0AA:  VLDR            D16, [R0,#0x2E4]
4BD0AE:  LDR.W           R2, [R0,#0x2EC]
4BD0B2:  STR             R2, [SP,#0x48+var_20]
4BD0B4:  VSTR            D16, [SP,#0x48+var_28]
4BD0B8:  LDR             R0, [R1]; CTimer::m_FrameCounter
4BD0BA:  LDR.W           R1, [R5,#0x130]
4BD0BE:  CMP             R1, R0
4BD0C0:  BNE             loc_4BD0D0
4BD0C2:  VLDR            S0, [R5,#0x138]
4BD0C6:  VLDR            S4, [R5,#0x13C]
4BD0CA:  VLDR            S8, [R5,#0x140]
4BD0CE:  B               loc_4BD18C
4BD0D0:  STR.W           R0, [R5,#0x130]
4BD0D4:  MOV.W           R0, #0xFFFFFFFF; int
4BD0D8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4BD0DC:  MOV             R10, R0
4BD0DE:  ADD.W           R4, R10, #4
4BD0E2:  LDR.W           R0, [R10,#0x14]
4BD0E6:  ADD.W           R6, R5, #0x148
4BD0EA:  MOV             R1, R4
4BD0EC:  VLDR            S0, [SP,#0x48+var_28]
4BD0F0:  CMP             R0, #0
4BD0F2:  VLDR            S2, [SP,#0x48+var_28+4]
4BD0F6:  IT NE
4BD0F8:  ADDNE.W         R1, R0, #0x30 ; '0'
4BD0FC:  MOVS            R0, #0
4BD0FE:  VLDR            S4, [R1]
4BD102:  VLDR            S6, [R1,#4]
4BD106:  VSUB.F32        S0, S4, S0
4BD10A:  STR.W           R0, [R5,#0x150]
4BD10E:  VSUB.F32        S2, S6, S2
4BD112:  MOV             R0, R6; this
4BD114:  VSTR            S0, [R5,#0x148]
4BD118:  VSTR            S2, [R5,#0x14C]
4BD11C:  BLX             j__ZN7CVector15NormaliseAndMagEv; CVector::NormaliseAndMag(void)
4BD120:  VMOV            S0, R0
4BD124:  VCMP.F32        S0, #0.0
4BD128:  VMRS            APSR_nzcv, FPSCR
4BD12C:  ITTTT EQ
4BD12E:  LDREQ.W         R0, [R10,#0x14]
4BD132:  VLDREQ          D16, [R0,#0x10]
4BD136:  LDREQ           R0, [R0,#0x18]
4BD138:  STREQ           R0, [R6,#8]
4BD13A:  IT EQ
4BD13C:  VSTREQ          D16, [R6]
4BD140:  VLDR            S0, [R5,#0x138]
4BD144:  VLDR            S2, [R5,#0x148]
4BD148:  VLDR            S6, [R5,#0x150]
4BD14C:  VLDR            S4, [R5,#0x14C]
4BD150:  VMUL.F32        S2, S0, S2
4BD154:  VMUL.F32        S6, S0, S6
4BD158:  LDR.W           R0, [R10,#0x14]
4BD15C:  VMUL.F32        S8, S0, S4
4BD160:  CMP             R0, #0
4BD162:  IT NE
4BD164:  ADDNE.W         R4, R0, #0x30 ; '0'
4BD168:  VLDR            S4, [R4]
4BD16C:  VLDR            S10, [R4,#4]
4BD170:  VLDR            S12, [R4,#8]
4BD174:  VADD.F32        S4, S2, S4
4BD178:  VADD.F32        S8, S8, S10
4BD17C:  VADD.F32        S2, S6, S12
4BD180:  VSTR            S4, [R5,#0x13C]
4BD184:  VSTR            S8, [R5,#0x140]
4BD188:  VSTR            S2, [R5,#0x144]
4BD18C:  LDR.W           R0, [R9,#0x14]
4BD190:  VMUL.F32        S0, S0, S0
4BD194:  ADD.W           R1, R0, #0x30 ; '0'
4BD198:  CMP             R0, #0
4BD19A:  IT EQ
4BD19C:  ADDEQ.W         R1, R9, #4; CVector *
4BD1A0:  VLDR            S2, [R1]
4BD1A4:  VLDR            S6, [R1,#4]
4BD1A8:  VSUB.F32        S4, S4, S2
4BD1AC:  VSUB.F32        S8, S8, S6
4BD1B0:  VMUL.F32        S4, S4, S4
4BD1B4:  VMUL.F32        S8, S8, S8
4BD1B8:  VADD.F32        S4, S4, S8
4BD1BC:  VCMPE.F32       S4, S0
4BD1C0:  VMRS            APSR_nzcv, FPSCR
4BD1C4:  BGT.W           loc_4BD2EE
4BD1C8:  LDRB.W          R0, [R5,#0x12C]
4BD1CC:  LSLS            R0, R0, #0x1E
4BD1CE:  BPL             loc_4BD222
4BD1D0:  VLDR            S12, [R5,#0x148]
4BD1D4:  VLDR            S4, [SP,#0x48+var_28]
4BD1D8:  VLDR            S14, [R5,#0x14C]
4BD1DC:  VMUL.F32        S2, S2, S12
4BD1E0:  VLDR            S8, [SP,#0x48+var_28+4]
4BD1E4:  VMUL.F32        S4, S12, S4
4BD1E8:  VMUL.F32        S6, S6, S14
4BD1EC:  VLDR            S0, [R1,#8]
4BD1F0:  VMUL.F32        S8, S14, S8
4BD1F4:  VLDR            S1, [R5,#0x150]
4BD1F8:  VLDR            S10, [SP,#0x48+var_20]
4BD1FC:  VMUL.F32        S0, S0, S1
4BD200:  VMUL.F32        S10, S1, S10
4BD204:  VADD.F32        S2, S2, S6
4BD208:  VADD.F32        S4, S4, S8
4BD20C:  VADD.F32        S0, S2, S0
4BD210:  VADD.F32        S4, S4, S10
4BD214:  VSUB.F32        S0, S0, S4
4BD218:  VCMPE.F32       S0, #0.0
4BD21C:  VMRS            APSR_nzcv, FPSCR
4BD220:  BLT             loc_4BD2EE
4BD222:  MOV.W           R10, #0
4BD226:  MOVS            R0, #1
4BD228:  STRD.W          R10, R10, [SP,#0x48+var_48]; bool
4BD22C:  MOVS            R2, #(stderr+1); CVector *
4BD22E:  STRD.W          R10, R0, [SP,#0x48+var_40]; bool
4BD232:  ADD             R0, SP, #0x48+var_28; this
4BD234:  MOVS            R3, #0; bool
4BD236:  STR.W           R10, [SP,#0x48+var_38]; bool
4BD23A:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
4BD23E:  CMP             R0, #1
4BD240:  BNE             loc_4BD2EE
4BD242:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BD24E)
4BD244:  ADD.W           R4, R5, #8
4BD248:  LDR             R2, [SP,#0x48+var_2C]
4BD24A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BD24C:  LDRSB.W         LR, [R5,#0x154]
4BD250:  ADDS            R1, R5, R2
4BD252:  ADD.W           R2, R5, R2,LSL#2
4BD256:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4BD258:  LDR.W           R12, [R2,#0xB8]!
4BD25C:  STR             R2, [SP,#0x48+var_30]
4BD25E:  LDRB.W          R8, [R1,#0x60]
4BD262:  LDR.W           R11, [R0]; CTimer::m_snTimeInMilliseconds
4BD266:  LDR             R0, [R4]; this
4BD268:  MOV             R6, R10
4BD26A:  CBZ             R0, loc_4BD2BA
4BD26C:  LDR.W           R1, [R4,#-8]
4BD270:  CBZ             R1, loc_4BD2B2
4BD272:  ADD.W           R3, R5, R1,LSL#1
4BD276:  ADD             R1, R5
4BD278:  LDR.W           R2, [R4,#-4]
4BD27C:  LDRH.W          R3, [R3,#0x7E]
4BD280:  LDRB.W          R1, [R1,#0x60]
4BD284:  ADD             R2, R3
4BD286:  CMP             R11, R2
4BD288:  MOV.W           R2, #0
4BD28C:  IT LS
4BD28E:  MOVLS           R2, #1
4BD290:  CMP             R8, R1
4BD292:  MOV.W           R1, #0
4BD296:  IT CC
4BD298:  MOVCC           R1, #1
4BD29A:  CMP             LR, R6
4BD29C:  IT NE
4BD29E:  CMPNE           R11, R12
4BD2A0:  BLS             loc_4BD2A6
4BD2A2:  ANDS            R1, R2
4BD2A4:  BEQ             loc_4BD2B2
4BD2A6:  ADDS            R4, #0xC
4BD2A8:  ADD.W           R10, R6, #1
4BD2AC:  CMP             R6, #6
4BD2AE:  BLE             loc_4BD266
4BD2B0:  B               loc_4BD2EE
4BD2B2:  MOV             R1, R4; CEntity **
4BD2B4:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4BD2B8:  B               loc_4BD2C2
4BD2BA:  MOVS            R0, #0
4BD2BC:  STR             R0, [R4]
4BD2BE:  STR.W           R0, [R4,#-8]
4BD2C2:  LDR             R6, [SP,#0x48+var_2C]
4BD2C4:  MOV             R0, R9; this
4BD2C6:  MOV             R1, R4; CEntity **
4BD2C8:  STRD.W          R6, R11, [R4,#-8]
4BD2CC:  STR.W           R9, [R4]
4BD2D0:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4BD2D4:  LDRB.W          R0, [R5,#0x12C]
4BD2D8:  LSLS            R0, R0, #0x1C
4BD2DA:  ITTT MI
4BD2DC:  ADDMI.W         R0, R5, R6,LSL#1
4BD2E0:  LDRHMI.W        R0, [R0,#0x7E]
4BD2E4:  ADDMI.W         R11, R11, R0,LSR#1
4BD2E8:  LDR             R0, [SP,#0x48+var_30]
4BD2EA:  STR.W           R11, [R0]
4BD2EE:  ADD             SP, SP, #0x2C ; ','
4BD2F0:  POP.W           {R8-R11}
4BD2F4:  POP             {R4-R7,PC}
