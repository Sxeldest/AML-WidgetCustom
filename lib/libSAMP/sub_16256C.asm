; =========================================================
; Game Engine Function: sub_16256C
; Address            : 0x16256C - 0x162692
; =========================================================

16256C:  PUSH            {R4,R5,R7,LR}
16256E:  ADD             R7, SP, #8
162570:  LDR             R4, =(byte_8F794 - 0x16257A)
162572:  MOVS            R0, #3; int
162574:  MOVS            R2, #0
162576:  ADD             R4, PC; byte_8F794
162578:  MOV             R1, R4; text
16257A:  BL              sub_ED4F8
16257E:  MOVS            R0, #3; int
162580:  MOV             R1, R4; text
162582:  MOVS            R2, #0
162584:  BL              sub_ED4F8
162588:  LDR             R1, =(aPools - 0x162592); "=============== POOLS ===============" ...
16258A:  MOVS            R0, #3; int
16258C:  MOVS            R2, #0x25 ; '%'
16258E:  ADD             R1, PC; "=============== POOLS ==============="
162590:  BL              sub_ED4F8
162594:  LDR             R0, =(off_23494C - 0x1625A2)
162596:  MOV             R5, #0x95AC38
16259E:  ADD             R0, PC; off_23494C
1625A0:  LDR             R4, [R0]; dword_23DF24
1625A2:  LDR             R0, [R4]
1625A4:  LDR             R1, =(aPtrnodesinglel - 0x1625AC); "PtrNodeSingleLink" ...
1625A6:  LDR             R0, [R0,R5]
1625A8:  ADD             R1, PC; "PtrNodeSingleLink"
1625AA:  BL              sub_1626E4
1625AE:  LDR             R0, [R4]
1625B0:  LDR             R1, =(aPtrnodedoublel - 0x1625B8); "PtrNodeDoubleLink" ...
1625B2:  ADD             R0, R5
1625B4:  ADD             R1, PC; "PtrNodeDoubleLink"
1625B6:  LDR             R0, [R0,#4]
1625B8:  BL              sub_1626E4
1625BC:  LDR             R0, [R4]
1625BE:  LDR             R1, =(aEntryinfonode - 0x1625C6); "EntryInfoNode" ...
1625C0:  ADD             R0, R5
1625C2:  ADD             R1, PC; "EntryInfoNode"
1625C4:  LDR             R0, [R0,#8]
1625C6:  BL              sub_1626E4
1625CA:  LDR             R0, [R4]
1625CC:  LDR             R1, =(aPed_0 - 0x1625D4); "Ped" ...
1625CE:  ADD             R0, R5
1625D0:  ADD             R1, PC; "Ped"
1625D2:  LDR             R0, [R0,#0xC]
1625D4:  BL              sub_1626E4
1625D8:  LDR             R0, [R4]
1625DA:  LDR             R1, =(aVehicle_1 - 0x1625E2); "Vehicle" ...
1625DC:  ADD             R0, R5
1625DE:  ADD             R1, PC; "Vehicle"
1625E0:  LDR             R0, [R0,#0x10]
1625E2:  BL              sub_1626E4
1625E6:  LDR             R0, [R4]
1625E8:  LDR             R1, =(aBuilding_0 - 0x1625F0); "Building" ...
1625EA:  ADD             R0, R5
1625EC:  ADD             R1, PC; "Building"
1625EE:  LDR             R0, [R0,#0x14]
1625F0:  BL              sub_1626E4
1625F4:  LDR             R0, [R4]
1625F6:  LDR             R1, =(aObject_1 - 0x1625FE); "Object" ...
1625F8:  ADD             R0, R5
1625FA:  ADD             R1, PC; "Object"
1625FC:  LDR             R0, [R0,#0x18]
1625FE:  BL              sub_1626E4
162602:  LDR             R0, [R4]
162604:  LDR             R1, =(aDummy_0 - 0x16260C); "Dummy" ...
162606:  ADD             R0, R5
162608:  ADD             R1, PC; "Dummy"
16260A:  LDR             R0, [R0,#0x1C]
16260C:  BL              sub_1626E4
162610:  LDR             R0, [R4]
162612:  LDR             R1, =(aColmodel - 0x16261A); "ColModel" ...
162614:  ADD             R0, R5
162616:  ADD             R1, PC; "ColModel"
162618:  LDR             R0, [R0,#0x20]
16261A:  BL              sub_1626E4
16261E:  LDR             R0, [R4]
162620:  LDR             R1, =(aTask - 0x162628); "Task" ...
162622:  ADD             R0, R5
162624:  ADD             R1, PC; "Task"
162626:  LDR             R0, [R0,#0x24]
162628:  BL              sub_1626E4
16262C:  LDR             R0, [R4]
16262E:  LDR             R1, =(aEvent - 0x162636); "Event" ...
162630:  ADD             R0, R5
162632:  ADD             R1, PC; "Event"
162634:  LDR             R0, [R0,#0x28]
162636:  BL              sub_1626E4
16263A:  LDR             R0, [R4]
16263C:  LDR             R1, =(aPointroute - 0x162644); "PointRoute" ...
16263E:  ADD             R0, R5
162640:  ADD             R1, PC; "PointRoute"
162642:  LDR             R0, [R0,#0x2C]
162644:  BL              sub_1626E4
162648:  LDR             R0, [R4]
16264A:  LDR             R1, =(aPatrolroute - 0x162652); "PatrolRoute" ...
16264C:  ADD             R0, R5
16264E:  ADD             R1, PC; "PatrolRoute"
162650:  LDR             R0, [R0,#0x30]
162652:  BL              sub_1626E4
162656:  LDR             R0, [R4]
162658:  LDR             R1, =(aNoderoute - 0x162660); "NodeRoute" ...
16265A:  ADD             R0, R5
16265C:  ADD             R1, PC; "NodeRoute"
16265E:  LDR             R0, [R0,#0x34]
162660:  BL              sub_1626E4
162664:  LDR             R0, [R4]
162666:  LDR             R1, =(aTaskallocator - 0x16266E); "TaskAllocator" ...
162668:  ADD             R0, R5
16266A:  ADD             R1, PC; "TaskAllocator"
16266C:  LDR             R0, [R0,#0x38]
16266E:  BL              sub_1626E4
162672:  LDR             R0, [R4]
162674:  LDR             R1, =(aPedintelligenc - 0x16267C); "PedIntelligence" ...
162676:  ADD             R0, R5
162678:  ADD             R1, PC; "PedIntelligence"
16267A:  LDR             R0, [R0,#0x3C]
16267C:  BL              sub_1626E4
162680:  LDR             R0, [R4]
162682:  LDR             R1, =(aPedattractor - 0x16268A); "PedAttractor" ...
162684:  ADD             R0, R5
162686:  ADD             R1, PC; "PedAttractor"
162688:  LDR             R0, [R0,#0x40]
16268A:  BL              sub_1626E4
16268E:  MOVS            R0, #2
162690:  POP             {R4,R5,R7,PC}
