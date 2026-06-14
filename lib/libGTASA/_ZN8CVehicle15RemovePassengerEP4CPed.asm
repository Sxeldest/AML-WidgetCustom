; =========================================================
; Game Engine Function: _ZN8CVehicle15RemovePassengerEP4CPed
; Address            : 0x5844D8 - 0x58458C
; =========================================================

5844D8:  PUSH            {R4,R5,R7,LR}
5844DA:  ADD             R7, SP, #8
5844DC:  MOV             R4, R0
5844DE:  CBZ             R1, locret_58454A
5844E0:  LDR.W           R0, [R4,#0x5A0]
5844E4:  CMP             R0, #6
5844E6:  BNE             loc_584530
5844E8:  LDR.W           R0, [R4,#0x468]
5844EC:  CMP             R0, R1
5844EE:  BEQ             loc_58454C
5844F0:  LDR.W           R0, [R4,#0x46C]
5844F4:  CMP             R0, R1
5844F6:  BEQ             loc_584552
5844F8:  LDR.W           R0, [R4,#0x470]
5844FC:  CMP             R0, R1
5844FE:  BEQ             loc_584558
584500:  LDR.W           R0, [R4,#0x474]
584504:  CMP             R0, R1
584506:  BEQ             loc_58455E
584508:  LDR.W           R0, [R4,#0x478]
58450C:  CMP             R0, R1
58450E:  BEQ             loc_584564
584510:  LDR.W           R0, [R4,#0x47C]
584514:  CMP             R0, R1
584516:  BEQ             loc_58456A
584518:  LDR.W           R0, [R4,#0x480]
58451C:  CMP             R0, R1
58451E:  BEQ             loc_584570
584520:  LDR.W           R0, [R4,#0x484]
584524:  CMP             R0, R1
584526:  IT NE
584528:  POPNE           {R4,R5,R7,PC}
58452A:  ADDW            R5, R4, #0x484
58452E:  B               loc_584574
584530:  LDRB.W          R0, [R4,#0x48C]
584534:  CBZ             R0, locret_58454A
584536:  ADD.W           R5, R4, #0x468
58453A:  MOVS            R2, #0
58453C:  LDR             R3, [R5]
58453E:  CMP             R3, R1
584540:  BEQ             loc_584574
584542:  ADDS            R2, #1
584544:  ADDS            R5, #4
584546:  CMP             R2, R0
584548:  BLT             loc_58453C
58454A:  POP             {R4,R5,R7,PC}
58454C:  ADD.W           R5, R4, #0x468
584550:  B               loc_584574
584552:  ADDW            R5, R4, #0x46C
584556:  B               loc_584574
584558:  ADD.W           R5, R4, #0x470
58455C:  B               loc_584574
58455E:  ADDW            R5, R4, #0x474
584562:  B               loc_584574
584564:  ADD.W           R5, R4, #0x478
584568:  B               loc_584574
58456A:  ADDW            R5, R4, #0x47C
58456E:  B               loc_584574
584570:  ADD.W           R5, R4, #0x480
584574:  MOV             R0, R1; this
584576:  MOV             R1, R5; CEntity **
584578:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
58457C:  MOVS            R0, #0
58457E:  STR             R0, [R5]
584580:  LDRB.W          R0, [R4,#0x488]
584584:  SUBS            R0, #1
584586:  STRB.W          R0, [R4,#0x488]
58458A:  POP             {R4,R5,R7,PC}
