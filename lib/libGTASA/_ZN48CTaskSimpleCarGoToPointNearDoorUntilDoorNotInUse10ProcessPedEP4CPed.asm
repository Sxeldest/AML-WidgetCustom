; =========================================================
; Game Engine Function: _ZN48CTaskSimpleCarGoToPointNearDoorUntilDoorNotInUse10ProcessPedEP4CPed
; Address            : 0x502528 - 0x50262E
; =========================================================

502528:  PUSH            {R4,R5,R7,LR}
50252A:  ADD             R7, SP, #8
50252C:  SUB             SP, SP, #0x28
50252E:  MOV             R5, R0
502530:  MOV             R4, R1
502532:  LDR             R0, [R5,#0xC]
502534:  LDRD.W          R1, R2, [R0,#8]; int
502538:  ADD             R0, SP, #0x30+var_28; this
50253A:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
50253E:  LDR             R0, [R5,#0xC]
502540:  VLDR            S0, [SP,#0x30+var_28]
502544:  VLDR            S2, [SP,#0x30+var_24]
502548:  LDR             R0, [R0,#8]
50254A:  VLDR            S4, [SP,#0x30+var_20]
50254E:  LDR             R1, [R0,#0x14]
502550:  ADD.W           R2, R1, #0x30 ; '0'
502554:  CMP             R1, #0
502556:  IT EQ
502558:  ADDEQ           R2, R0, #4
50255A:  LDR             R0, =(_ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr - 0x502568)
50255C:  VLDR            S6, [R2]
502560:  VLDR            S8, [R2,#4]
502564:  ADD             R0, PC; _ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr
502566:  VSUB.F32        S0, S0, S6
50256A:  VLDR            S10, [R2,#8]
50256E:  VSUB.F32        S2, S2, S8
502572:  LDR             R1, [R0]; CTaskSimpleGoTo::ms_fTargetRadius ...
502574:  VSUB.F32        S4, S4, S10
502578:  LDR             R0, [R5,#8]
50257A:  VADD.F32        S0, S0, S0
50257E:  VADD.F32        S12, S2, S2
502582:  VADD.F32        S4, S4, S4
502586:  VADD.F32        S0, S6, S0
50258A:  VADD.F32        S6, S8, S12
50258E:  VLDR            S8, [R0,#0xC]
502592:  VADD.F32        S2, S10, S4
502596:  VLDR            S4, [R1]
50259A:  VCMP.F32        S8, S0
50259E:  VMRS            APSR_nzcv, FPSCR
5025A2:  BNE             loc_5025CE
5025A4:  VLDR            S8, [R0,#0x10]
5025A8:  VCMP.F32        S8, S6
5025AC:  VMRS            APSR_nzcv, FPSCR
5025B0:  ITTT EQ
5025B2:  VLDREQ          S8, [R0,#0x14]
5025B6:  VCMPEQ.F32      S8, S2
5025BA:  VMRSEQ          APSR_nzcv, FPSCR
5025BE:  BNE             loc_5025CE
5025C0:  VLDR            S8, [R0,#0x18]
5025C4:  VCMP.F32        S8, S4
5025C8:  VMRS            APSR_nzcv, FPSCR
5025CC:  BEQ             loc_5025EC
5025CE:  LDRB            R1, [R0,#0x1C]
5025D0:  VSTR            S0, [R0,#0xC]
5025D4:  AND.W           R1, R1, #0xD0
5025D8:  VSTR            S6, [R0,#0x10]
5025DC:  VSTR            S2, [R0,#0x14]
5025E0:  ORR.W           R1, R1, #0x20 ; ' '
5025E4:  VSTR            S4, [R0,#0x18]
5025E8:  STRB            R1, [R0,#0x1C]
5025EA:  LDR             R0, [R5,#8]
5025EC:  LDR             R1, [R0]
5025EE:  LDR             R2, [R1,#0x24]
5025F0:  MOV             R1, R4
5025F2:  BLX             R2
5025F4:  CMP             R0, #1
5025F6:  BNE             loc_502620
5025F8:  ADD             R5, SP, #0x30+var_28
5025FA:  MOV.W           R0, #0x41000000
5025FE:  STR             R0, [SP,#0x30+var_30]; float
502600:  MOV.W           R1, #0xFFFFFFFF; int
502604:  MOV             R0, R5; this
502606:  MOVS            R2, #0; bool
502608:  MOVS            R3, #0; bool
50260A:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
50260E:  MOV             R1, R4; CPed *
502610:  BLX             j__ZN21CTaskSimpleStandStill10ProcessPedEP4CPed; CTaskSimpleStandStill::ProcessPed(CPed *)
502614:  MOV             R0, R5; this
502616:  BLX             j__ZN21CTaskSimpleStandStillD2Ev; CTaskSimpleStandStill::~CTaskSimpleStandStill()
50261A:  MOVS            R0, #1
50261C:  ADD             SP, SP, #0x28 ; '('
50261E:  POP             {R4,R5,R7,PC}
502620:  LDR             R0, [R5,#0xC]
502622:  LDR             R1, [R0]
502624:  LDR             R2, [R1,#0x24]
502626:  MOV             R1, R4
502628:  BLX             R2
50262A:  ADD             SP, SP, #0x28 ; '('
50262C:  POP             {R4,R5,R7,PC}
