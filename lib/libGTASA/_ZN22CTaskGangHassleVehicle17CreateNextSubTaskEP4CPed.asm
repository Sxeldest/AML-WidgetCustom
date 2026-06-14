; =========================================================
; Game Engine Function: _ZN22CTaskGangHassleVehicle17CreateNextSubTaskEP4CPed
; Address            : 0x5185C8 - 0x5186D4
; =========================================================

5185C8:  PUSH            {R4-R7,LR}
5185CA:  ADD             R7, SP, #0xC
5185CC:  PUSH.W          {R8,R9,R11}
5185D0:  SUB             SP, SP, #0x10
5185D2:  MOV             R4, R0
5185D4:  LDR             R1, [R4,#0x10]
5185D6:  CMP             R1, #0
5185D8:  BEQ             loc_518664
5185DA:  LDR             R0, [R4,#8]
5185DC:  CBZ             R0, loc_5185EE
5185DE:  LDR             R1, [R0]
5185E0:  LDR             R1, [R1,#0x14]
5185E2:  BLX             R1
5185E4:  MOVW            R1, #0x38F
5185E8:  CMP             R0, R1
5185EA:  BEQ             loc_518664
5185EC:  LDR             R1, [R4,#0x10]; unsigned int
5185EE:  ADDW            R0, R1, #0x4CC
5185F2:  VLDR            S0, =250.0
5185F6:  VLDR            S2, [R0]
5185FA:  VCMPE.F32       S2, S0
5185FE:  VMRS            APSR_nzcv, FPSCR
518602:  BGE             loc_518640
518604:  MOVS            R0, #dword_40; this
518606:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51860A:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x518616)
51860C:  MOV             R5, R0
51860E:  LDR             R0, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x518618)
518610:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x51861A)
518612:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
518614:  ADD             R0, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
518616:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
518618:  LDR             R3, [R1]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
51861A:  LDR             R0, [R0]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
51861C:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
51861E:  LDR             R1, [R4,#0x10]; CEntity *
518620:  VLDR            S0, [R0]
518624:  LDR             R0, [R2]; CTaskComplexSmartFleeEntity::ms_iFleeTime
518626:  LDR             R2, [R3]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
518628:  MOVS            R3, #0x41F00000; float
51862E:  STRD.W          R0, R2, [SP,#0x28+var_28]; int
518632:  MOV             R0, R5; this
518634:  MOVS            R2, #0; bool
518636:  VSTR            S0, [SP,#0x28+var_20]
51863A:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
51863E:  B               loc_518666
518640:  LDR             R0, [R4,#8]
518642:  CBZ             R0, loc_518670
518644:  LDR             R1, [R0]
518646:  LDR             R1, [R1,#0x14]
518648:  BLX             R1
51864A:  MOVW            R1, #0x4BC
51864E:  CMP             R0, R1
518650:  BEQ             loc_518664
518652:  LDR             R0, [R4,#8]
518654:  CBZ             R0, loc_518670
518656:  LDR             R1, [R0]
518658:  LDR             R1, [R1,#0x14]
51865A:  BLX             R1
51865C:  MOVW            R1, #0x39D
518660:  CMP             R0, R1
518662:  BNE             loc_518670
518664:  MOVS            R5, #0
518666:  MOV             R0, R5
518668:  ADD             SP, SP, #0x10
51866A:  POP.W           {R8,R9,R11}
51866E:  POP             {R4-R7,PC}
518670:  MOVS            R0, #dword_58; this
518672:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
518676:  LDR.W           R8, [R4,#0x10]
51867A:  MOV             R5, R0
51867C:  LDRD.W          R6, R9, [R4,#0x24]
518680:  LDR             R4, [R4,#0x2C]
518682:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
518686:  LDR             R0, =(_ZTV23CTaskComplexTrackEntity_ptr - 0x518692)
518688:  MOVS            R1, #0
51868A:  MOVS            R3, #0
51868C:  STRH            R1, [R5,#0x38]
51868E:  ADD             R0, PC; _ZTV23CTaskComplexTrackEntity_ptr
518690:  STRD.W          R6, R9, [R5,#0x10]
518694:  MOVS            R6, #0
518696:  MOV.W           R2, #0xFFFFFFFF
51869A:  MOVT            R3, #0x4120
51869E:  MOVT            R6, #0x4220
5186A2:  ADD.W           R12, R5, #0x20 ; ' '
5186A6:  LDR             R0, [R0]; `vtable for'CTaskComplexTrackEntity ...
5186A8:  STR             R4, [R5,#0x18]
5186AA:  STM.W           R12, {R2,R3,R6}
5186AE:  MOVS            R2, #1
5186B0:  ADDS            R0, #8
5186B2:  STRB            R2, [R5,#0x1C]
5186B4:  STRB.W          R2, [R5,#0x2C]
5186B8:  STRD.W          R1, R1, [R5,#0x30]
5186BC:  MOV             R1, R5
5186BE:  STR             R0, [R5]
5186C0:  MOV             R0, R8; this
5186C2:  STR.W           R8, [R1,#0xC]!; CEntity **
5186C6:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5186CA:  MOVS            R0, #0xBF800000
5186D0:  STR             R0, [R5,#0x3C]
5186D2:  B               loc_518666
