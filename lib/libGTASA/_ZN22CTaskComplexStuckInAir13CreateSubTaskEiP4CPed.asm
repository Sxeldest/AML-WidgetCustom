; =========================================================
; Game Engine Function: _ZN22CTaskComplexStuckInAir13CreateSubTaskEiP4CPed
; Address            : 0x5323E0 - 0x532552
; =========================================================

5323E0:  PUSH            {R4,R6,R7,LR}
5323E2:  ADD             R7, SP, #8
5323E4:  VPUSH           {D8-D11}
5323E8:  SUB             SP, SP, #0x10
5323EA:  MOV             R4, R2
5323EC:  MOVS            R0, #0
5323EE:  CMP             R1, #0xD2
5323F0:  BGT             loc_532428
5323F2:  CMP             R1, #0xCB
5323F4:  BEQ             loc_5324BE
5323F6:  CMP             R1, #0xD0
5323F8:  BNE.W           loc_53254A
5323FC:  LDR.W           R0, [R4,#0x440]
532400:  MOVS            R4, #0
532402:  STR.W           R4, [R0,#0x274]
532406:  MOVS            R0, #off_18; this
532408:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53240C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
532410:  LDR             R1, =(_ZTV24CTaskComplexFallAndGetUp_ptr - 0x532418)
532412:  MOVS            R2, #0x1A
532414:  ADD             R1, PC; _ZTV24CTaskComplexFallAndGetUp_ptr
532416:  LDR             R1, [R1]; `vtable for'CTaskComplexFallAndGetUp ...
532418:  ADDS            R1, #8
53241A:  STR             R1, [R0]
53241C:  MOV.W           R1, #0x3E8
532420:  STRD.W          R2, R4, [R0,#0xC]
532424:  STR             R1, [R0,#0x14]
532426:  B               loc_53254A
532428:  CMP             R1, #0xD3
53242A:  BEQ             loc_5324E4
53242C:  CMP.W           R1, #0x38C
532430:  BNE.W           loc_53254A
532434:  LDR.W           R0, [R4,#0x484]
532438:  VMOV.F32        S22, #0.5
53243C:  ORR.W           R0, R0, #1
532440:  STR.W           R0, [R4,#0x484]
532444:  LDR             R0, [R4,#0x14]
532446:  ADD.W           R1, R0, #0x30 ; '0'
53244A:  CMP             R0, #0
53244C:  VLDR            S0, [R0,#0x10]
532450:  VLDR            S2, [R0,#0x14]
532454:  VLDR            S4, [R0,#0x18]
532458:  VMUL.F32        S0, S0, S22
53245C:  VMUL.F32        S2, S2, S22
532460:  IT EQ
532462:  ADDEQ           R1, R4, #4
532464:  VMUL.F32        S4, S4, S22
532468:  VLDR            S6, [R1]
53246C:  VLDR            S8, [R1,#4]
532470:  VLDR            S10, [R1,#8]
532474:  VSUB.F32        S18, S6, S0
532478:  VSUB.F32        S20, S8, S2
53247C:  VSUB.F32        S16, S10, S4
532480:  VSTR            S20, [SP,#0x38+var_30]
532484:  VSTR            S18, [SP,#0x38+var_34]
532488:  VSTR            S16, [SP,#0x38+var_2C]
53248C:  BLX             rand
532490:  LDR             R1, [R4,#0x14]; unsigned int
532492:  TST.W           R0, #1
532496:  VLDR            S2, [R1]
53249A:  VLDR            S4, [R1,#4]
53249E:  VLDR            S0, [R1,#8]
5324A2:  VMUL.F32        S2, S2, S22
5324A6:  VMUL.F32        S4, S4, S22
5324AA:  VMUL.F32        S0, S0, S22
5324AE:  BNE             loc_532518
5324B0:  VSUB.F32        S4, S20, S4
5324B4:  VSUB.F32        S2, S18, S2
5324B8:  VSUB.F32        S0, S16, S0
5324BC:  B               loc_532524
5324BE:  LDR.W           R0, [R4,#0x484]
5324C2:  ORR.W           R0, R0, #1
5324C6:  STR.W           R0, [R4,#0x484]
5324CA:  MOVS            R0, #dword_20; this
5324CC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5324D0:  MOV.W           R1, #0x41000000
5324D4:  MOVS            R2, #0; bool
5324D6:  STR             R1, [SP,#0x38+var_38]; float
5324D8:  MOVW            R1, #0x1388; int
5324DC:  MOVS            R3, #0; bool
5324DE:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
5324E2:  B               loc_53254A
5324E4:  LDR.W           R1, [R4,#0x484]
5324E8:  LDR.W           R0, [R4,#0x440]
5324EC:  ORR.W           R1, R1, #1; unsigned int
5324F0:  STR.W           R1, [R4,#0x484]
5324F4:  MOVS            R4, #0
5324F6:  STR.W           R4, [R0,#0x274]
5324FA:  MOVS            R0, #dword_14; this
5324FC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
532500:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
532504:  LDR             R1, =(_ZTV16CTaskComplexJump_ptr - 0x532510)
532506:  MOV.W           R2, #0xFFFFFFFF
53250A:  STR             R2, [R0,#0xC]
53250C:  ADD             R1, PC; _ZTV16CTaskComplexJump_ptr
53250E:  LDR             R1, [R1]; `vtable for'CTaskComplexJump ...
532510:  ADDS            R1, #8
532512:  STR             R1, [R0]
532514:  STRB            R4, [R0,#0x10]
532516:  B               loc_53254A
532518:  VADD.F32        S4, S4, S20
53251C:  VADD.F32        S2, S2, S18
532520:  VADD.F32        S0, S0, S16
532524:  MOVS            R0, #off_3C; this
532526:  VSTR            S4, [SP,#0x38+var_30]
53252A:  VSTR            S2, [SP,#0x38+var_34]
53252E:  VSTR            S0, [SP,#0x38+var_2C]
532532:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
532536:  MOVW            R1, #0x2710
53253A:  MOVS            R3, #0
53253C:  STR             R1, [SP,#0x38+var_38]; int
53253E:  ADD             R1, SP, #0x38+var_34; CVector *
532540:  MOVT            R3, #0x40A0; float
532544:  MOVS            R2, #0; bool
532546:  BLX             j__ZN21CTaskComplexFleePointC2ERK7CVectorbfi; CTaskComplexFleePoint::CTaskComplexFleePoint(CVector const&,bool,float,int)
53254A:  ADD             SP, SP, #0x10
53254C:  VPOP            {D8-D11}
532550:  POP             {R4,R6,R7,PC}
