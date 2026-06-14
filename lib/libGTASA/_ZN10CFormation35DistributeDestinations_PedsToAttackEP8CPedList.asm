; =========================================================
; Game Engine Function: _ZN10CFormation35DistributeDestinations_PedsToAttackEP8CPedList
; Address            : 0x5490F4 - 0x5492A6
; =========================================================

5490F4:  PUSH            {R4-R7,LR}
5490F6:  ADD             R7, SP, #0xC
5490F8:  PUSH.W          {R8-R11}
5490FC:  SUB             SP, SP, #0x94
5490FE:  MOV             R1, R0; void *
549100:  LDR             R0, =(_ZN10CFormation6m_PedsE_ptr - 0x549108)
549102:  MOV             R2, R1
549104:  ADD             R0, PC; _ZN10CFormation6m_PedsE_ptr
549106:  STR             R2, [SP,#0xB0+var_A4]
549108:  MOVS            R2, #0x7C ; '|'; size_t
54910A:  LDR             R5, [R0]; CFormation::m_Peds ...
54910C:  MOV             R0, R5; void *
54910E:  BLX             memcpy_0
549112:  LDR             R0, [R5]; CFormation::m_Peds
549114:  CMP             R0, #0
549116:  BEQ.W           loc_54929E
54911A:  LDR             R0, =(_ZN10CFormation29m_aFinalPedLinkToDestinationsE_ptr - 0x549126)
54911C:  MOV.W           R2, #0xFFFFFFFF
549120:  LDR             R1, =(_ZN10CFormation17m_DestinationPedsE_ptr - 0x549128)
549122:  ADD             R0, PC; _ZN10CFormation29m_aFinalPedLinkToDestinationsE_ptr
549124:  ADD             R1, PC; _ZN10CFormation17m_DestinationPedsE_ptr
549126:  LDR             R0, [R0]; CFormation::m_aFinalPedLinkToDestinations ...
549128:  LDR             R1, [R1]; CFormation::m_DestinationPeds ...
54912A:  STRD.W          R2, R2, [R0]; CFormation::m_aFinalPedLinkToDestinations
54912E:  STRD.W          R2, R2, [R0,#(dword_9FFB70 - 0x9FFB68)]
549132:  STRD.W          R2, R2, [R0,#(dword_9FFB78 - 0x9FFB68)]
549136:  STRD.W          R2, R2, [R0,#(dword_9FFB80 - 0x9FFB68)]
54913A:  LDR             R0, [SP,#0xB0+var_A4]
54913C:  LDR.W           R10, [R1]; CFormation::m_DestinationPeds
549140:  LDR             R4, [R0]
549142:  VMOV            S0, R10
549146:  VMOV            S2, R4
54914A:  VCVT.F32.S32    S0, S0
54914E:  VCVT.F32.S32    S2, S2
549152:  VDIV.F32        S0, S2, S0
549156:  VMOV            R0, S0; x
54915A:  BLX             ceilf
54915E:  VMOV            S0, R0
549162:  VCVT.S32.F32    S0, S0
549166:  VMOV            R0, S0
54916A:  CMP             R0, #2
54916C:  IT LE
54916E:  MOVLE           R0, #2
549170:  CMP.W           R10, #1
549174:  BLT             loc_5491A6
549176:  CMP.W           R10, #3
54917A:  BLS             loc_549198
54917C:  BIC.W           R1, R10, #3
549180:  CBZ             R1, loc_549198
549182:  VDUP.32         Q8, R0
549186:  ADD             R2, SP, #0xB0+var_94
549188:  MOV             R3, R1
54918A:  VST1.32         {D16-D17}, [R2]!
54918E:  SUBS            R3, #4
549190:  BNE             loc_54918A
549192:  CMP             R10, R1
549194:  BNE             loc_54919A
549196:  B               loc_5491A6
549198:  MOVS            R1, #0
54919A:  ADD             R2, SP, #0xB0+var_94
54919C:  STR.W           R0, [R2,R1,LSL#2]
5491A0:  ADDS            R1, #1
5491A2:  CMP             R1, R10
5491A4:  BLT             loc_54919C
5491A6:  CMP             R4, #1
5491A8:  BLT             loc_54929E
5491AA:  CMP.W           R10, #1
5491AE:  MOV.W           R0, #0
5491B2:  IT LT
5491B4:  MOVLT           R0, #1
5491B6:  LDR             R1, =(_ZN10CFormation29m_aFinalPedLinkToDestinationsE_ptr - 0x5491C2)
5491B8:  STR             R0, [SP,#0xB0+var_9C]
5491BA:  MOVS            R2, #0
5491BC:  LDR             R0, =(_ZN10CFormation29m_aFinalPedLinkToDestinationsE_ptr - 0x5491C8)
5491BE:  ADD             R1, PC; _ZN10CFormation29m_aFinalPedLinkToDestinationsE_ptr
5491C0:  VLDR            S0, =1000000.0
5491C4:  ADD             R0, PC; _ZN10CFormation29m_aFinalPedLinkToDestinationsE_ptr
5491C6:  LDR             R0, [R0]; CFormation::m_aFinalPedLinkToDestinations ...
5491C8:  STR             R0, [SP,#0xB0+var_A0]
5491CA:  LDR             R0, =(_ZN10CFormation17m_DestinationPedsE_ptr - 0x5491D0)
5491CC:  ADD             R0, PC; _ZN10CFormation17m_DestinationPedsE_ptr
5491CE:  LDR.W           R9, [R0]; CFormation::m_DestinationPeds ...
5491D2:  LDR             R0, [R1]; CFormation::m_aFinalPedLinkToDestinations ...
5491D4:  STR             R0, [SP,#0xB0+var_AC]
5491D6:  CMP             R4, #1
5491D8:  STR             R2, [SP,#0xB0+var_A8]
5491DA:  BLT             loc_549280
5491DC:  VMOV            D1, D0
5491E0:  MOVS            R1, #0
5491E2:  STR             R4, [SP,#0xB0+var_98]
5491E4:  LDR             R0, [SP,#0xB0+var_A0]
5491E6:  LDR.W           R2, [R0,R1,LSL#2]
5491EA:  CMP.W           R2, #0xFFFFFFFF
5491EE:  MOV.W           R2, #0
5491F2:  IT GT
5491F4:  MOVGT           R2, #1
5491F6:  LDR             R0, [SP,#0xB0+var_9C]
5491F8:  ORRS            R2, R0
5491FA:  BNE             loc_549278
5491FC:  LDR             R0, [SP,#0xB0+var_A4]
5491FE:  MOV.W           LR, #0
549202:  ADD.W           R2, R0, R1,LSL#2
549206:  ADD.W           R11, R2, #4
54920A:  ADD             R0, SP, #0xB0+var_94
54920C:  LDR.W           R12, [R0,LR,LSL#2]
549210:  CMP.W           R12, #1
549214:  BLT             loc_549270
549216:  ADD.W           R5, R9, LR,LSL#2
54921A:  LDR.W           R3, [R11]
54921E:  LDR             R5, [R5,#4]
549220:  LDR             R0, [R3,#0x14]
549222:  LDR             R4, [R5,#0x14]
549224:  ADD.W           R2, R0, #0x30 ; '0'
549228:  CMP             R0, #0
54922A:  IT EQ
54922C:  ADDEQ           R2, R3, #4
54922E:  ADD.W           R0, R4, #0x30 ; '0'
549232:  CMP             R4, #0
549234:  VLDR            D16, [R2]
549238:  IT EQ
54923A:  ADDEQ           R0, R5, #4
54923C:  VLDR            D17, [R0]
549240:  VSUB.F32        D16, D16, D17
549244:  VMUL.F32        D2, D16, D16
549248:  VADD.F32        S4, S4, S5
54924C:  VSQRT.F32       S4, S4
549250:  VCMPE.F32       S4, S2
549254:  VMRS            APSR_nzcv, FPSCR
549258:  VCMPE.F32       S4, S2
54925C:  VMIN.F32        D3, D2, D1
549260:  VMOV            D1, D3
549264:  IT LT
549266:  MOVLT           R8, LR
549268:  VMRS            APSR_nzcv, FPSCR
54926C:  IT LT
54926E:  MOVLT           R6, R1
549270:  ADD.W           LR, LR, #1
549274:  CMP             R10, LR
549276:  BNE             loc_54920A
549278:  LDR             R4, [SP,#0xB0+var_98]
54927A:  ADDS            R1, #1
54927C:  CMP             R1, R4
54927E:  BLT             loc_5491E4
549280:  LDR             R0, [SP,#0xB0+var_AC]
549282:  LDR             R2, [SP,#0xB0+var_A8]
549284:  STR.W           R8, [R0,R6,LSL#2]
549288:  ADD             R0, SP, #0xB0+var_94
54928A:  ADDS            R2, #1
54928C:  LDR.W           R1, [R0,R8,LSL#2]
549290:  SUBS            R1, #1
549292:  STR.W           R1, [R0,R8,LSL#2]
549296:  LDR             R0, [SP,#0xB0+var_A4]
549298:  LDR             R4, [R0]
54929A:  CMP             R2, R4
54929C:  BLT             loc_5491D6
54929E:  ADD             SP, SP, #0x94
5492A0:  POP.W           {R8-R11}
5492A4:  POP             {R4-R7,PC}
