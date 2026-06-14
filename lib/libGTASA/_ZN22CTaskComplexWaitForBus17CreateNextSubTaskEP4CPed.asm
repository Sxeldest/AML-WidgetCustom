; =========================================================
; Game Engine Function: _ZN22CTaskComplexWaitForBus17CreateNextSubTaskEP4CPed
; Address            : 0x4EE514 - 0x4EE58E
; =========================================================

4EE514:  PUSH            {R4,R5,R7,LR}
4EE516:  ADD             R7, SP, #8
4EE518:  MOV             R4, R0
4EE51A:  MOV             R5, R1
4EE51C:  LDR             R0, [R4,#8]
4EE51E:  LDR             R1, [R0]
4EE520:  LDR             R1, [R1,#0x14]
4EE522:  BLX             R1
4EE524:  CMP.W           R0, #0x2BC
4EE528:  BEQ             loc_4EE546
4EE52A:  CMP             R0, #0xEE
4EE52C:  BNE             loc_4EE58A
4EE52E:  LDR             R0, [R4,#8]
4EE530:  LDR             R0, [R0,#8]
4EE532:  STR             R0, [R4,#0xC]
4EE534:  MOVS            R0, #dword_50; this
4EE536:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EE53A:  LDR             R1, [R4,#0xC]; CVehicle *
4EE53C:  MOVS            R2, #0; int
4EE53E:  MOVS            R3, #0; bool
4EE540:  BLX             j__ZN31CTaskComplexEnterCarAsPassengerC2EP8CVehicleib; CTaskComplexEnterCarAsPassenger::CTaskComplexEnterCarAsPassenger(CVehicle *,int,bool)
4EE544:  POP             {R4,R5,R7,PC}
4EE546:  LDR             R0, [R5,#0x1C]
4EE548:  LDR.W           R1, [R5,#0x484]
4EE54C:  ORR.W           R0, R0, #0x800
4EE550:  STR             R0, [R5,#0x1C]
4EE552:  ORR.W           R0, R1, #0x20000000
4EE556:  STR.W           R0, [R5,#0x484]
4EE55A:  MOV.W           R0, #0xFFFFFFFF; int
4EE55E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4EE562:  MOV             R5, R0
4EE564:  CBZ             R5, loc_4EE58A
4EE566:  LDR             R0, [R4,#0xC]; this
4EE568:  MOV             R1, R5; CPed *
4EE56A:  BLX             j__ZNK8CVehicle11IsPassengerEPK4CPed; CVehicle::IsPassenger(CPed const*)
4EE56E:  CBNZ            R0, loc_4EE57C
4EE570:  LDR             R0, [R4,#0xC]; this
4EE572:  MOV             R1, R5; CPed *
4EE574:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
4EE578:  CMP             R0, #1
4EE57A:  BNE             loc_4EE58A
4EE57C:  LDR.W           R0, [R5,#0x444]
4EE580:  LDR.W           R1, [R0,#0x80]
4EE584:  ADDS            R1, #5
4EE586:  STR.W           R1, [R0,#0x80]
4EE58A:  MOVS            R0, #0
4EE58C:  POP             {R4,R5,R7,PC}
