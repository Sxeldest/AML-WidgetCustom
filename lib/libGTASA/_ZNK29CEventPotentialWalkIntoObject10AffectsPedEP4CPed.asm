; =========================================================
; Game Engine Function: _ZNK29CEventPotentialWalkIntoObject10AffectsPedEP4CPed
; Address            : 0x3741C4 - 0x37429A
; =========================================================

3741C4:  PUSH            {R4,R5,R7,LR}
3741C6:  ADD             R7, SP, #8
3741C8:  MOV             R5, R1
3741CA:  MOV             R4, R0
3741CC:  MOV             R0, R5; this
3741CE:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3741D2:  CBNZ            R0, loc_3741F0
3741D4:  MOV             R0, R5; this
3741D6:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
3741DA:  CMP             R0, #1
3741DC:  BNE             loc_3741F0
3741DE:  LDR             R0, [R4,#0x10]
3741E0:  CMP             R0, #0
3741E2:  ITT NE
3741E4:  LDRNE           R1, [R4,#0x14]
3741E6:  CMPNE           R1, #1
3741E8:  BEQ             loc_3741F0
3741EA:  LDR.W           R1, [R5,#0x100]
3741EE:  CBZ             R1, loc_3741F4
3741F0:  MOVS            R0, #0
3741F2:  POP             {R4,R5,R7,PC}
3741F4:  LDR.W           R1, [R0,#0x100]
3741F8:  CMP             R1, R5
3741FA:  BEQ             loc_3741F0
3741FC:  LDRB.W          R1, [R0,#0x44]
374200:  LSLS            R1, R1, #0x1A
374202:  BMI             loc_3741F0
374204:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x37420E)
374206:  LDRSH.W         R0, [R0,#0x26]
37420A:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
37420C:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
37420E:  LDR.W           R0, [R1,R0,LSL#2]
374212:  LDR             R0, [R0,#0x2C]
374214:  VLDR            S0, [R0]
374218:  VLDR            S2, [R0,#0xC]
37421C:  VSUB.F32        S2, S2, S0
374220:  VLDR            S0, =0.01
374224:  VCMPE.F32       S2, S0
374228:  VMRS            APSR_nzcv, FPSCR
37422C:  BLT             loc_3741F0
37422E:  VLDR            S2, [R0,#4]
374232:  VLDR            S4, [R0,#0x10]
374236:  VSUB.F32        S2, S4, S2
37423A:  VCMPE.F32       S2, S0
37423E:  VMRS            APSR_nzcv, FPSCR
374242:  BLT             loc_3741F0
374244:  VLDR            S2, [R0,#8]
374248:  VLDR            S4, [R0,#0x14]
37424C:  VSUB.F32        S2, S4, S2
374250:  VCMPE.F32       S2, S0
374254:  VMRS            APSR_nzcv, FPSCR
374258:  BLT             loc_3741F0
37425A:  LDR.W           R0, [R5,#0x440]
37425E:  ADDS            R0, #4; this
374260:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
374264:  MOV             R5, R0
374266:  CBZ             R5, loc_374296
374268:  LDR             R0, [R5]
37426A:  LDR             R1, [R0,#0x14]
37426C:  MOV             R0, R5
37426E:  BLX             R1
374270:  MOVW            R1, #0x3AB
374274:  CMP             R0, R1
374276:  BNE             loc_374280
374278:  LDR             R0, [R4,#0x10]
37427A:  LDR             R1, [R5,#0xC]
37427C:  CMP             R1, R0
37427E:  BEQ             loc_3741F0
374280:  LDR             R0, [R5]
374282:  LDR             R1, [R0,#0x14]
374284:  MOV             R0, R5
374286:  BLX             R1
374288:  CMP.W           R0, #0x1FE
37428C:  BNE             loc_374296
37428E:  LDR             R0, [R4,#0x10]
374290:  LDR             R1, [R5,#0x1C]
374292:  CMP             R1, R0
374294:  BEQ             loc_3741F0
374296:  MOVS            R0, #1
374298:  POP             {R4,R5,R7,PC}
