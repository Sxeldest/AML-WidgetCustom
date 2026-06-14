; =========================================================
; Game Engine Function: _ZN19CTaskComplexInWater17CreateNextSubTaskEP4CPed
; Address            : 0x4F136C - 0x4F1400
; =========================================================

4F136C:  PUSH            {R4-R7,LR}
4F136E:  ADD             R7, SP, #0xC
4F1370:  PUSH.W          {R11}
4F1374:  VPUSH           {D8-D9}
4F1378:  SUB             SP, SP, #0x10
4F137A:  MOV             R4, R0
4F137C:  MOV             R5, R1
4F137E:  LDR             R0, [R4,#8]
4F1380:  LDR             R1, [R0]
4F1382:  LDR             R1, [R1,#0x14]
4F1384:  BLX             R1
4F1386:  CMP.W           R0, #0x518
4F138A:  BNE             loc_4F13F0
4F138C:  LDR             R6, [R4,#8]
4F138E:  MOVS            R4, #0
4F1390:  LDR             R0, [R6,#0x3C]
4F1392:  CBZ             R0, loc_4F13F2
4F1394:  LDR.W           R0, [R5,#0x484]
4F1398:  LDR             R1, =(_ZN16CTaskSimpleClimb21ms_fMinForStretchGrabE_ptr - 0x4F13A4)
4F139A:  LDR             R2, [R5,#0x14]
4F139C:  ORR.W           R0, R0, #0x200
4F13A0:  ADD             R1, PC; _ZN16CTaskSimpleClimb21ms_fMinForStretchGrabE_ptr
4F13A2:  STR.W           R0, [R5,#0x484]
4F13A6:  ADD.W           R0, R2, #0x30 ; '0'
4F13AA:  CMP             R2, #0
4F13AC:  VLDR            S0, [R6,#0x48]
4F13B0:  IT EQ
4F13B2:  ADDEQ           R0, R5, #4
4F13B4:  LDR             R1, [R1]; unsigned int
4F13B6:  VLDR            S2, [R0,#8]
4F13BA:  MOVS            R0, #word_30; this
4F13BC:  VLDR            S16, [R1]
4F13C0:  VSUB.F32        S18, S0, S2
4F13C4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F13C8:  VCMPE.F32       S18, S16
4F13CC:  MOVS            R5, #1
4F13CE:  VMRS            APSR_nzcv, FPSCR
4F13D2:  LDR             R1, [R6,#0x3C]; CEntity *
4F13D4:  LDR             R3, [R6,#0x4C]; float
4F13D6:  LDRB.W          R2, [R6,#0x50]
4F13DA:  IT LT
4F13DC:  MOVLT           R5, #2
4F13DE:  STRD.W          R2, R5, [SP,#0x30+var_30]; unsigned __int8
4F13E2:  ADD.W           R2, R6, #0x40 ; '@'; CVector *
4F13E6:  STR             R4, [SP,#0x30+var_28]; bool
4F13E8:  BLX             j__ZN16CTaskSimpleClimbC2EP7CEntityRK7CVectorfhab; CTaskSimpleClimb::CTaskSimpleClimb(CEntity *,CVector const&,float,uchar,signed char,bool)
4F13EC:  MOV             R4, R0
4F13EE:  B               loc_4F13F2
4F13F0:  MOVS            R4, #0
4F13F2:  MOV             R0, R4
4F13F4:  ADD             SP, SP, #0x10
4F13F6:  VPOP            {D8-D9}
4F13FA:  POP.W           {R11}
4F13FE:  POP             {R4-R7,PC}
