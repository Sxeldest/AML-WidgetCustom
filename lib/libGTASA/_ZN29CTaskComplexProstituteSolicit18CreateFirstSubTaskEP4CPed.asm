; =========================================================
; Game Engine Function: _ZN29CTaskComplexProstituteSolicit18CreateFirstSubTaskEP4CPed
; Address            : 0x51B616 - 0x51B6AC
; =========================================================

51B616:  PUSH            {R4,R5,R7,LR}
51B618:  ADD             R7, SP, #8
51B61A:  MOV             R4, R0
51B61C:  MOV             R5, R1
51B61E:  LDR             R1, [R4,#0xC]; CPed *
51B620:  MOV             R0, R5; this
51B622:  BLX             j__ZN29CTaskComplexProstituteSolicit11IsTaskValidEP4CPedS1_; CTaskComplexProstituteSolicit::IsTaskValid(CPed *,CPed *)
51B626:  CMP             R0, #1
51B628:  BNE             loc_51B6A0
51B62A:  LDR             R0, [R4,#0xC]
51B62C:  LDR.W           R1, [R0,#0x590]
51B630:  LDR             R2, [R1,#0x14]
51B632:  ADD.W           R3, R2, #0x30 ; '0'
51B636:  CMP             R2, #0
51B638:  IT EQ
51B63A:  ADDEQ           R3, R1, #4
51B63C:  VLDR            D16, [R3]
51B640:  LDR             R1, [R3,#8]
51B642:  STR             R1, [R4,#0x18]
51B644:  VSTR            D16, [R4,#0x10]
51B648:  LDR.W           R0, [R0,#0x444]
51B64C:  STR.W           R5, [R0,#0xA4]
51B650:  MOV.W           R0, #0xFFFFFFFF; int
51B654:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
51B658:  LDR.W           R1, [R0,#0x444]
51B65C:  LDR.W           R0, [R1,#0xA4]!; CEntity **
51B660:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51B664:  LDR             R0, [R4,#0xC]
51B666:  LDR.W           R2, [R0,#0x444]
51B66A:  MOV             R1, R2
51B66C:  LDR.W           R0, [R1,#0xA8]!; CEntity **
51B670:  CMP             R0, R5
51B672:  BEQ             loc_51B692
51B674:  CBZ             R0, loc_51B680
51B676:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
51B67A:  LDR             R0, [R4,#0xC]
51B67C:  LDR.W           R2, [R0,#0x444]
51B680:  STR.W           R5, [R2,#0xA8]
51B684:  LDR             R0, [R4,#0xC]
51B686:  LDR.W           R1, [R0,#0x444]
51B68A:  LDR.W           R0, [R1,#0xA8]!; CEntity **
51B68E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51B692:  MOV             R0, R4; this
51B694:  MOVW            R1, #0x38B; int
51B698:  MOV             R2, R5; CPed *
51B69A:  POP.W           {R4,R5,R7,LR}
51B69E:  B               _ZN29CTaskComplexProstituteSolicit13CreateSubTaskEiP4CPed; CTaskComplexProstituteSolicit::CreateSubTask(int,CPed *)
51B6A0:  LDRH            R0, [R4,#0x2C]
51B6A2:  ORR.W           R0, R0, #4
51B6A6:  STRH            R0, [R4,#0x2C]
51B6A8:  MOVS            R0, #0
51B6AA:  POP             {R4,R5,R7,PC}
