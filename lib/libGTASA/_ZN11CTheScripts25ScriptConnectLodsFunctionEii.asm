; =========================================================
; Game Engine Function: _ZN11CTheScripts25ScriptConnectLodsFunctionEii
; Address            : 0x3356D0 - 0x335752
; =========================================================

3356D0:  PUSH            {R4,R6,R7,LR}
3356D2:  ADD             R7, SP, #8
3356D4:  LDR             R2, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x3356DC)
3356D6:  CMP             R0, #0
3356D8:  ADD             R2, PC; _ZN6CPools14ms_pObjectPoolE_ptr
3356DA:  LDR             R2, [R2]; CPools::ms_pObjectPool ...
3356DC:  LDR             R2, [R2]; CPools::ms_pObjectPool
3356DE:  BLT             loc_3356FC
3356E0:  LDR             R3, [R2,#4]
3356E2:  UXTB            R4, R0
3356E4:  LSRS            R0, R0, #8
3356E6:  LDRB            R3, [R3,R0]
3356E8:  CMP             R3, R4
3356EA:  BNE             loc_3356FC
3356EC:  MOV.W           R3, #0x1A4
3356F0:  LDR             R4, [R2]
3356F2:  MLA.W           R3, R0, R3, R4
3356F6:  CMP             R1, #0
3356F8:  BGE             loc_335702
3356FA:  B               loc_33574E
3356FC:  MOVS            R3, #0
3356FE:  CMP             R1, #0
335700:  BLT             loc_33574E
335702:  LDR             R0, [R2,#4]
335704:  UXTB            R4, R1
335706:  LSRS            R1, R1, #8
335708:  LDRB            R0, [R0,R1]
33570A:  CMP             R0, R4
33570C:  BNE             loc_33574E
33570E:  CMP             R3, #0
335710:  MOV.W           R0, #0
335714:  ITTTT NE
335716:  MOVNE.W         R4, #0x1A4
33571A:  LDRNE           R2, [R2]
33571C:  MLANE.W         R4, R1, R4, R2
335720:  CMPNE           R4, #0
335722:  BEQ             locret_33574C
335724:  MOV.W           R0, #0x1A4
335728:  STR             R4, [R3,#0x34]
33572A:  MLA.W           R0, R1, R0, R2
33572E:  LDRB.W          R1, [R0,#0x38]
335732:  ADDS            R1, #1; CEntity *
335734:  STRB.W          R1, [R0,#0x38]
335738:  MOV             R0, R4; this
33573A:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
33573E:  MOV             R0, R4; this
335740:  BLX             j__ZN7CEntity16SetupBigBuildingEv; CEntity::SetupBigBuilding(void)
335744:  MOV             R0, R4; this
335746:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
33574A:  MOVS            R0, #1
33574C:  POP             {R4,R6,R7,PC}
33574E:  MOVS            R0, #0
335750:  POP             {R4,R6,R7,PC}
