; =========================================================
; Game Engine Function: _ZN9CIplStore9RemoveIplEi
; Address            : 0x2806E8 - 0x28083E
; =========================================================

2806E8:  LDR             R1, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x2806F2)
2806EA:  MOV.W           R12, #0
2806EE:  ADD             R1, PC; _ZN9CIplStore8ms_pPoolE_ptr
2806F0:  LDR             R1, [R1]; CIplStore::ms_pPool ...
2806F2:  LDR             R3, [R1]; CIplStore::ms_pPool
2806F4:  LDR             R1, [R3,#4]
2806F6:  LDRSB           R1, [R1,R0]
2806F8:  CMP             R1, #0
2806FA:  BLT             loc_280706
2806FC:  MOVS            R1, #0x34 ; '4'
2806FE:  LDR             R3, [R3]
280700:  MLA.W           R2, R0, R1, R3
280704:  B               loc_280708
280706:  MOVS            R2, #0
280708:  PUSH            {R4-R7,LR}
28070A:  ADD             R7, SP, #0x14+var_8
28070C:  PUSH.W          {R8-R11}
280710:  SUB             SP, SP, #0xC
280712:  LDR             R6, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x28071C)
280714:  LDR             R1, =(_ZN6CPools16ms_pBuildingPoolE_ptr - 0x28071E)
280716:  LDR             R3, =(_ZN6CPools13ms_pDummyPoolE_ptr - 0x280720)
280718:  ADD             R6, PC; _ZN6CPools14ms_pObjectPoolE_ptr
28071A:  ADD             R1, PC; _ZN6CPools16ms_pBuildingPoolE_ptr
28071C:  ADD             R3, PC; _ZN6CPools13ms_pDummyPoolE_ptr
28071E:  LDR             R6, [R6]; CPools::ms_pObjectPool ...
280720:  LDR             R5, [R1]; CPools::ms_pBuildingPool ...
280722:  LDR             R4, [R3]; CPools::ms_pDummyPool ...
280724:  LDR.W           R11, [R6]; CPools::ms_pObjectPool
280728:  LDRSH.W         R1, [R2,#0x22]
28072C:  LDRSH.W         R3, [R2,#0x24]
280730:  LDR.W           R10, [R4]; CPools::ms_pDummyPool
280734:  LDR             R6, [R5]; CPools::ms_pBuildingPool
280736:  CMP             R1, R3
280738:  STR             R2, [SP,#0x30+var_2C]
28073A:  STRB.W          R12, [R2,#0x2D]
28073E:  STR             R0, [SP,#0x30+var_28]
280740:  BGT             loc_280788
280742:  RSB.W           R2, R1, R1,LSL#4
280746:  LSLS            R4, R2, #2
280748:  MOV             R8, R1
28074A:  LDR             R1, [R6,#4]
28074C:  LDRSB.W         R1, [R1,R8]
280750:  CMP             R1, #0
280752:  BLT             loc_28077C
280754:  LDR.W           R9, [R6]
280758:  ADDS.W          R5, R9, R4
28075C:  BEQ             loc_28077C
28075E:  LDRH.W          R1, [R5,#0x38]; CEntity *
280762:  CMP             R1, R0
280764:  BNE             loc_28077C
280766:  MOV             R0, R5; this
280768:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
28076C:  LDR.W           R0, [R9,R4]
280770:  LDR             R1, [R0,#4]
280772:  MOV             R0, R5
280774:  BLX             R1
280776:  LDRD.W          R1, R0, [SP,#0x30+var_2C]
28077A:  LDRH            R3, [R1,#0x24]
28077C:  ADDS            R4, #0x3C ; '<'
28077E:  ADD.W           R1, R8, #1
280782:  SXTH            R2, R3
280784:  CMP             R8, R2
280786:  BLT             loc_280748
280788:  LDR.W           R2, [R11,#8]
28078C:  CMP             R2, #1
28078E:  BLT             loc_2807DC
280790:  MOVS            R6, #0
280792:  MOVS            R4, #0
280794:  LDR.W           R1, [R11,#4]
280798:  LDRSB           R1, [R1,R4]
28079A:  CMP             R1, #0
28079C:  BLT             loc_2807D2
28079E:  LDR.W           R8, [R11]
2807A2:  ADDS.W          R5, R8, R6
2807A6:  BEQ             loc_2807D2
2807A8:  LDRH.W          R1, [R5,#0x38]; CEntity *
2807AC:  CMP             R1, R0
2807AE:  BNE             loc_2807D2
2807B0:  LDR.W           R0, [R5,#0x178]; this
2807B4:  CMP             R0, #0
2807B6:  IT NE
2807B8:  BLXNE           j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
2807BC:  MOV             R0, R5; this
2807BE:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
2807C2:  LDR.W           R0, [R8,R6]
2807C6:  LDR             R1, [R0,#4]
2807C8:  MOV             R0, R5
2807CA:  BLX             R1
2807CC:  LDR.W           R2, [R11,#8]
2807D0:  LDR             R0, [SP,#0x30+var_28]
2807D2:  ADDS            R4, #1
2807D4:  ADD.W           R6, R6, #0x1A4
2807D8:  CMP             R4, R2
2807DA:  BLT             loc_280794
2807DC:  LDR.W           R9, [SP,#0x30+var_2C]
2807E0:  LDRSH.W         R1, [R9,#0x26]
2807E4:  LDRSH.W         R3, [R9,#0x28]
2807E8:  CMP             R1, R3
2807EA:  BGT             loc_28082E
2807EC:  RSB.W           R2, R1, R1,LSL#4
2807F0:  LSLS            R4, R2, #2
2807F2:  MOV             R6, R1
2807F4:  LDR.W           R1, [R10,#4]
2807F8:  LDRSB           R1, [R1,R6]
2807FA:  CMP             R1, #0
2807FC:  BLT             loc_280824
2807FE:  LDR.W           R5, [R10]
280802:  ADDS.W          R8, R5, R4
280806:  BEQ             loc_280824
280808:  LDRH.W          R1, [R8,#0x38]; CEntity *
28080C:  CMP             R1, R0
28080E:  BNE             loc_280824
280810:  MOV             R0, R8; this
280812:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
280816:  LDR             R0, [R5,R4]
280818:  LDR             R1, [R0,#4]
28081A:  MOV             R0, R8
28081C:  BLX             R1
28081E:  LDR             R0, [SP,#0x30+var_28]
280820:  LDRH.W          R3, [R9,#0x28]
280824:  ADDS            R4, #0x3C ; '<'
280826:  ADDS            R1, R6, #1; unsigned __int8
280828:  SXTH            R2, R3
28082A:  CMP             R6, R2
28082C:  BLT             loc_2807F2
28082E:  UXTB            R0, R0; this
280830:  ADD             SP, SP, #0xC
280832:  POP.W           {R8-R11}
280836:  POP.W           {R4-R7,LR}
28083A:  B.W             j_j__ZN17CTheCarGenerators19RemoveCarGeneratorsEh; j_CTheCarGenerators::RemoveCarGenerators(uchar)
