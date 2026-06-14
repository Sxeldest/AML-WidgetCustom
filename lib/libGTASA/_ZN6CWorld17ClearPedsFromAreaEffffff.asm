; =========================================================
; Game Engine Function: _ZN6CWorld17ClearPedsFromAreaEffffff
; Address            : 0x42C304 - 0x42C3D0
; =========================================================

42C304:  PUSH            {R4-R7,LR}
42C306:  ADD             R7, SP, #0xC
42C308:  PUSH.W          {R8,R9,R11}
42C30C:  VPUSH           {D8-D13}
42C310:  LDR             R6, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x42C316)
42C312:  ADD             R6, PC; _ZN6CPools11ms_pPedPoolE_ptr
42C314:  LDR             R6, [R6]; CPools::ms_pPedPool ...
42C316:  LDR.W           R9, [R6]; CPools::ms_pPedPool
42C31A:  LDR.W           R8, [R9,#8]
42C31E:  CMP.W           R8, #1
42C322:  BLT             loc_42C3C6
42C324:  VLDR            S16, [R7,#arg_4]
42C328:  VMOV            S20, R3
42C32C:  VLDR            S18, [R7,#arg_0]
42C330:  VMOV            S22, R2
42C334:  VMOV            S24, R1
42C338:  MOVS            R6, #0
42C33A:  VMOV            S26, R0
42C33E:  MOVS            R5, #0
42C340:  LDR.W           R0, [R9,#4]
42C344:  LDRSB           R0, [R0,R5]
42C346:  CMP             R0, #0
42C348:  BLT             loc_42C3BC
42C34A:  LDR.W           R0, [R9]
42C34E:  ADDS            R4, R0, R6
42C350:  BEQ             loc_42C3BC
42C352:  MOV             R0, R4; this
42C354:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
42C358:  CBNZ            R0, loc_42C3BC
42C35A:  MOV             R0, R4; this
42C35C:  BLX             j__ZN4CPed12CanBeDeletedEv; CPed::CanBeDeleted(void)
42C360:  CBZ             R0, loc_42C3BC
42C362:  LDR             R1, [R4,#0x14]; CPed *
42C364:  ADD.W           R0, R1, #0x30 ; '0'
42C368:  CMP             R1, #0
42C36A:  IT EQ
42C36C:  ADDEQ           R0, R4, #4
42C36E:  VLDR            S0, [R0]
42C372:  VCMPE.F32       S0, S26
42C376:  VMRS            APSR_nzcv, FPSCR
42C37A:  BLT             loc_42C3BC
42C37C:  VCMPE.F32       S0, S20
42C380:  VMRS            APSR_nzcv, FPSCR
42C384:  BGT             loc_42C3BC
42C386:  VLDR            S0, [R0,#4]
42C38A:  VCMPE.F32       S0, S24
42C38E:  VMRS            APSR_nzcv, FPSCR
42C392:  BLT             loc_42C3BC
42C394:  VCMPE.F32       S0, S18
42C398:  VMRS            APSR_nzcv, FPSCR
42C39C:  BGT             loc_42C3BC
42C39E:  VLDR            S0, [R0,#8]
42C3A2:  VCMPE.F32       S0, S22
42C3A6:  VMRS            APSR_nzcv, FPSCR
42C3AA:  BLT             loc_42C3BC
42C3AC:  VCMPE.F32       S0, S16
42C3B0:  VMRS            APSR_nzcv, FPSCR
42C3B4:  ITT LE
42C3B6:  MOVLE           R0, R4; this
42C3B8:  BLXLE           j__ZN11CPopulation9RemovePedEP4CPed; CPopulation::RemovePed(CPed *)
42C3BC:  ADDS            R5, #1
42C3BE:  ADDW            R6, R6, #0x7CC
42C3C2:  CMP             R8, R5
42C3C4:  BNE             loc_42C340
42C3C6:  VPOP            {D8-D13}
42C3CA:  POP.W           {R8,R9,R11}
42C3CE:  POP             {R4-R7,PC}
