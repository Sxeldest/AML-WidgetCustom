; =========================================================
; Game Engine Function: _Z29RwCameraForAllClumpsInFrustumP8RwCameraPv
; Address            : 0x21E690 - 0x21E7B0
; =========================================================

21E690:  PUSH            {R4-R7,LR}
21E692:  ADD             R7, SP, #0xC
21E694:  PUSH.W          {R8-R11}
21E698:  SUB             SP, SP, #0x24
21E69A:  MOV             R4, R0
21E69C:  LDR             R0, =(dword_6BD638 - 0x21E6A4)
21E69E:  MOV             R8, R1
21E6A0:  ADD             R0, PC; dword_6BD638
21E6A2:  LDR             R0, [R0]
21E6A4:  ADD             R0, R4
21E6A6:  LDR             R1, [R0,#0xC]
21E6A8:  CMP             R1, #0
21E6AA:  BEQ             loc_21E7A6
21E6AC:  LDR             R1, =(RwEngineInstance_ptr - 0x21E6B2)
21E6AE:  ADD             R1, PC; RwEngineInstance_ptr
21E6B0:  LDR             R1, [R1]; RwEngineInstance
21E6B2:  LDR             R1, [R1]
21E6B4:  LDRH            R2, [R1,#8]
21E6B6:  ADDS            R5, R2, #1
21E6B8:  STRH            R5, [R1,#8]
21E6BA:  STRH.W          R5, [R4,#0x94]
21E6BE:  LDR             R1, [R0,#8]
21E6C0:  CMP             R1, #0
21E6C2:  BEQ             loc_21E7A6
21E6C4:  LDR             R0, [R0]
21E6C6:  ADD.W           R11, SP, #0x40+var_34
21E6CA:  STR             R1, [SP,#0x40+var_3C]
21E6CC:  MOVS            R1, #0
21E6CE:  STR             R1, [SP,#0x40+var_20]
21E6D0:  STR             R1, [SP,#0x40+var_2C]
21E6D2:  STR             R0, [SP,#0x40+var_38]
21E6D4:  LDR.W           R10, [R0]
21E6D8:  MOV             R9, R10
21E6DA:  LDR.W           R0, [R9,#0x38]!
21E6DE:  CMP             R0, R9
21E6E0:  BEQ             loc_21E734
21E6E2:  LDR             R2, [R0,#8]
21E6E4:  LDR             R1, [R0]
21E6E6:  LDR             R6, [R2,#0x3C]
21E6E8:  STRD.W          R1, R0, [SP,#0x40+var_34]
21E6EC:  LDR             R1, [R0]
21E6EE:  CMP             R6, #0
21E6F0:  STR.W           R11, [R1,#4]
21E6F4:  STR.W           R11, [R0]
21E6F8:  ITTT NE
21E6FA:  LDRHNE          R1, [R6,#0x2C]
21E6FC:  UXTHNE          R2, R5
21E6FE:  CMPNE           R1, R2
21E700:  BEQ             loc_21E71E
21E702:  LDR             R0, [R0,#8]
21E704:  BLX             j__Z30RpAtomicGetWorldBoundingSphereP8RpAtomic; RpAtomicGetWorldBoundingSphere(RpAtomic *)
21E708:  MOV             R1, R0
21E70A:  MOV             R0, R4
21E70C:  BLX             j__Z25RwCameraFrustumTestSpherePK8RwCameraPK8RwSphere; RwCameraFrustumTestSphere(RwCamera const*,RwSphere const*)
21E710:  CBZ             R0, loc_21E71E
21E712:  LDR             R2, [R6,#0x28]
21E714:  MOV             R0, R6
21E716:  MOV             R1, R8
21E718:  STRH            R5, [R6,#0x2C]
21E71A:  BLX             R2
21E71C:  CBZ             R0, loc_21E79A
21E71E:  LDRD.W          R0, R1, [SP,#0x40+var_34]
21E722:  STR             R0, [R1]
21E724:  LDRD.W          R1, R2, [SP,#0x40+var_34]
21E728:  CMP             R0, R9
21E72A:  STR             R2, [R1,#4]
21E72C:  BNE             loc_21E6E2
21E72E:  LDR             R0, [SP,#0x40+var_38]
21E730:  LDR.W           R10, [R0]
21E734:  LDR.W           R0, [R10,#0x40]!
21E738:  CMP             R0, R10
21E73A:  BNE             loc_21E74E
21E73C:  B               loc_21E78C
21E73E:  LDRD.W          R0, R1, [SP,#0x40+var_34]
21E742:  STR             R0, [R1]
21E744:  LDRD.W          R1, R2, [SP,#0x40+var_34]
21E748:  STR             R2, [R1,#4]
21E74A:  CMP             R0, R10
21E74C:  BEQ             loc_21E78C
21E74E:  LDR             R2, [R0,#8]
21E750:  LDR             R1, [R0]
21E752:  LDR             R6, [R2,#0x3C]
21E754:  UXTH            R2, R5
21E756:  STRD.W          R1, R0, [SP,#0x40+var_34]
21E75A:  LDR             R1, [R0]
21E75C:  STR.W           R11, [R1,#4]
21E760:  STR.W           R11, [R0]
21E764:  LDRH            R1, [R6,#0x2C]
21E766:  CMP             R1, R2
21E768:  BEQ             loc_21E73E
21E76A:  LDR             R0, [R0,#8]
21E76C:  BLX             j__Z30RpAtomicGetWorldBoundingSphereP8RpAtomic; RpAtomicGetWorldBoundingSphere(RpAtomic *)
21E770:  MOV             R1, R0
21E772:  MOV             R0, R4
21E774:  BLX             j__Z25RwCameraFrustumTestSpherePK8RwCameraPK8RwSphere; RwCameraFrustumTestSphere(RwCamera const*,RwSphere const*)
21E778:  CMP             R0, #0
21E77A:  BEQ             loc_21E73E
21E77C:  LDR             R2, [R6,#0x28]
21E77E:  MOV             R0, R6
21E780:  MOV             R1, R8
21E782:  STRH            R5, [R6,#0x2C]
21E784:  BLX             R2
21E786:  CMP             R0, #0
21E788:  BNE             loc_21E73E
21E78A:  B               loc_21E79A
21E78C:  LDR             R1, [SP,#0x40+var_3C]
21E78E:  LDR             R0, [SP,#0x40+var_38]
21E790:  SUBS            R1, #1
21E792:  ADD.W           R0, R0, #4
21E796:  BNE             loc_21E6CA
21E798:  B               loc_21E7A6
21E79A:  LDRD.W          R0, R1, [SP,#0x40+var_34]
21E79E:  STR             R0, [R1]
21E7A0:  LDRD.W          R0, R1, [SP,#0x40+var_34]
21E7A4:  STR             R1, [R0,#4]
21E7A6:  MOV             R0, R4
21E7A8:  ADD             SP, SP, #0x24 ; '$'
21E7AA:  POP.W           {R8-R11}
21E7AE:  POP             {R4-R7,PC}
