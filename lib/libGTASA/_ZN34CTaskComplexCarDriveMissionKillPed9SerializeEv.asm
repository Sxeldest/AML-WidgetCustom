; =========================================================
; Game Engine Function: _ZN34CTaskComplexCarDriveMissionKillPed9SerializeEv
; Address            : 0x38471C - 0x38489C
; =========================================================

38471C:  PUSH            {R4-R7,LR}
38471E:  ADD             R7, SP, #0xC
384720:  PUSH.W          {R11}
384724:  MOV             R4, R0
384726:  LDR             R0, [R4]
384728:  LDR             R1, [R0,#0x14]
38472A:  MOV             R0, R4
38472C:  BLX             R1
38472E:  MOV             R5, R0
384730:  LDR             R0, =(UseDataFence_ptr - 0x384736)
384732:  ADD             R0, PC; UseDataFence_ptr
384734:  LDR             R0, [R0]; UseDataFence
384736:  LDRB            R0, [R0]
384738:  CMP             R0, #0
38473A:  IT NE
38473C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
384740:  MOVS            R0, #4; byte_count
384742:  BLX             malloc
384746:  MOV             R6, R0
384748:  MOVS            R1, #byte_4; void *
38474A:  STR             R5, [R6]
38474C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
384750:  MOV             R0, R6; p
384752:  BLX             free
384756:  LDR             R0, [R4]
384758:  LDR             R1, [R0,#0x14]
38475A:  MOV             R0, R4
38475C:  BLX             R1
38475E:  MOVW            R1, #0x2D9
384762:  CMP             R0, R1
384764:  BNE             loc_384794
384766:  LDR             R0, [R4,#0xC]; CVehicle *
384768:  CBZ             R0, loc_3847AE
38476A:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
38476E:  MOV             R5, R0
384770:  LDR             R0, =(UseDataFence_ptr - 0x384776)
384772:  ADD             R0, PC; UseDataFence_ptr
384774:  LDR             R0, [R0]; UseDataFence
384776:  LDRB            R0, [R0]
384778:  CMP             R0, #0
38477A:  IT NE
38477C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
384780:  MOVS            R0, #4; byte_count
384782:  BLX             malloc
384786:  MOV             R6, R0
384788:  MOVS            R1, #byte_4; void *
38478A:  STR             R5, [R6]
38478C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
384790:  MOV             R0, R6
384792:  B               loc_3847D6
384794:  LDR             R0, [R4]
384796:  LDR             R1, [R0,#0x14]
384798:  MOV             R0, R4
38479A:  BLX             R1
38479C:  MOV             R1, R0; int
38479E:  MOVW            R0, #0x2D9; int
3847A2:  POP.W           {R11}
3847A6:  POP.W           {R4-R7,LR}
3847AA:  B.W             sub_1941D4
3847AE:  LDR             R0, =(UseDataFence_ptr - 0x3847B4)
3847B0:  ADD             R0, PC; UseDataFence_ptr
3847B2:  LDR             R0, [R0]; UseDataFence
3847B4:  LDRB            R0, [R0]
3847B6:  CMP             R0, #0
3847B8:  IT NE
3847BA:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
3847BE:  MOVS            R0, #4; byte_count
3847C0:  BLX             malloc
3847C4:  MOV             R5, R0
3847C6:  MOV.W           R0, #0xFFFFFFFF
3847CA:  STR             R0, [R5]
3847CC:  MOV             R0, R5; this
3847CE:  MOVS            R1, #byte_4; void *
3847D0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
3847D4:  MOV             R0, R5; p
3847D6:  BLX             free
3847DA:  LDR             R0, [R4,#0x24]
3847DC:  CBZ             R0, loc_384834
3847DE:  LDR             R1, =(UseDataFence_ptr - 0x3847E8)
3847E0:  LDRB.W          R0, [R0,#0x3A]
3847E4:  ADD             R1, PC; UseDataFence_ptr
3847E6:  AND.W           R6, R0, #7
3847EA:  LDR             R1, [R1]; UseDataFence
3847EC:  LDRB            R1, [R1]
3847EE:  CMP             R1, #0
3847F0:  IT NE
3847F2:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
3847F6:  MOVS            R0, #4; byte_count
3847F8:  BLX             malloc
3847FC:  MOV             R5, R0
3847FE:  MOVS            R1, #byte_4; void *
384800:  STR             R6, [R5]
384802:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
384806:  MOV             R0, R5; p
384808:  BLX             free
38480C:  LDR             R0, [R4,#0x24]; CObject *
38480E:  LDRB.W          R1, [R0,#0x3A]
384812:  AND.W           R1, R1, #7
384816:  CMP             R1, #2
384818:  BEQ             loc_38485C
38481A:  CMP             R1, #4
38481C:  BEQ             loc_384868
38481E:  CMP             R1, #3
384820:  ITT NE
384822:  POPNE.W         {R11}
384826:  POPNE           {R4-R7,PC}
384828:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
38482C:  MOV             R4, R0
38482E:  LDR             R0, =(UseDataFence_ptr - 0x384834)
384830:  ADD             R0, PC; UseDataFence_ptr
384832:  B               loc_384872
384834:  LDR             R0, =(UseDataFence_ptr - 0x38483A)
384836:  ADD             R0, PC; UseDataFence_ptr
384838:  LDR             R0, [R0]; UseDataFence
38483A:  LDRB            R0, [R0]
38483C:  CMP             R0, #0
38483E:  IT NE
384840:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
384844:  MOVS            R0, #4; byte_count
384846:  BLX             malloc
38484A:  MOV             R4, R0
38484C:  MOVS            R0, #0
38484E:  STR             R0, [R4]
384850:  MOV             R0, R4; this
384852:  MOVS            R1, #byte_4; void *
384854:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
384858:  MOV             R0, R4
38485A:  B               loc_384890
38485C:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
384860:  MOV             R4, R0
384862:  LDR             R0, =(UseDataFence_ptr - 0x384868)
384864:  ADD             R0, PC; UseDataFence_ptr
384866:  B               loc_384872
384868:  BLX             j__Z14GettPoolObjRefP7CObject; GettPoolObjRef(CObject *)
38486C:  MOV             R4, R0
38486E:  LDR             R0, =(UseDataFence_ptr - 0x384874)
384870:  ADD             R0, PC; UseDataFence_ptr
384872:  LDR             R0, [R0]; UseDataFence
384874:  LDRB            R0, [R0]
384876:  CMP             R0, #0
384878:  IT NE
38487A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
38487E:  MOVS            R0, #4; byte_count
384880:  BLX             malloc
384884:  MOV             R5, R0
384886:  MOVS            R1, #byte_4; void *
384888:  STR             R4, [R5]
38488A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
38488E:  MOV             R0, R5; p
384890:  POP.W           {R11}
384894:  POP.W           {R4-R7,LR}
384898:  B.W             j_free
