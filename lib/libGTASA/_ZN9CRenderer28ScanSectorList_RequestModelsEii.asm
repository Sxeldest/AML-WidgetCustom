; =========================================================
; Game Engine Function: _ZN9CRenderer28ScanSectorList_RequestModelsEii
; Address            : 0x4116EC - 0x411860
; =========================================================

4116EC:  PUSH            {R4-R7,LR}
4116EE:  ADD             R7, SP, #0xC
4116F0:  PUSH.W          {R8-R11}
4116F4:  SUB             SP, SP, #0xC
4116F6:  MOV             R10, R1
4116F8:  CMP.W           R10, #0x77 ; 'w'
4116FC:  IT LE
4116FE:  CMPLE           R0, #0x77 ; 'w'
411700:  BGT.W           loc_411858
411704:  ORR.W           R1, R10, R0
411708:  CMP             R1, #0
41170A:  BLT.W           loc_411858
41170E:  CMP             R0, #0
411710:  MOV.W           R3, #0
411714:  IT GT
411716:  MOVGT           R3, R0
411718:  MOVS            R6, #0x77 ; 'w'
41171A:  CMP             R3, #0x77 ; 'w'
41171C:  MOV.W           R2, #0
411720:  IT GE
411722:  MOVGE           R3, R6; float
411724:  CMP.W           R10, #0
411728:  LDR             R1, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x41173C)
41172A:  IT GT
41172C:  MOVGT           R2, R10
41172E:  CMP             R2, #0x77 ; 'w'
411730:  AND.W           R0, R0, #0xF
411734:  IT GE
411736:  MOVGE           R2, R6
411738:  ADD             R1, PC; _ZN6CWorld11ms_aSectorsE_ptr
41173A:  RSB.W           R2, R2, R2,LSL#4
41173E:  STR             R0, [SP,#0x28+var_20]
411740:  LDR             R1, [R1]; CWorld::ms_aSectors ...
411742:  ADD.W           R2, R3, R2,LSL#3
411746:  STR             R2, [SP,#0x28+var_24]
411748:  LDR.W           R4, [R1,R2,LSL#3]
41174C:  CMP             R4, #0
41174E:  BEQ             loc_41179A
411750:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x411758)
411752:  LDR             R1, =(_ZN9CRenderer20ms_vecCameraPositionE_ptr - 0x41175E)
411754:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
411756:  LDR.W           R9, =(dword_962E90 - 0x411762)
41175A:  ADD             R1, PC; _ZN9CRenderer20ms_vecCameraPositionE_ptr
41175C:  LDR             R5, [R0]; CWorld::ms_nCurrentScanCode ...
41175E:  ADD             R9, PC; dword_962E90
411760:  LDR             R0, =(_ZN9CRenderer16ms_fFarClipPlaneE_ptr - 0x41176A)
411762:  LDR.W           R11, [R1]; CRenderer::ms_vecCameraPosition ...
411766:  ADD             R0, PC; _ZN9CRenderer16ms_fFarClipPlaneE_ptr
411768:  LDR.W           R8, [R0]; CRenderer::ms_fFarClipPlane ...
41176C:  LDRD.W          R6, R4, [R4]
411770:  LDRH            R0, [R5]; CWorld::ms_nCurrentScanCode
411772:  LDRH            R1, [R6,#0x30]
411774:  CMP             R1, R0
411776:  BEQ             loc_411796
411778:  STRH            R0, [R6,#0x30]
41177A:  MOV             R0, R6; this
41177C:  LDR.W           R2, [R8]; CVector *
411780:  MOV             R1, R11; CEntity *
411782:  BLX             j__ZN9CRenderer21ShouldModelBeStreamedEP7CEntityRK7CVectorf; CRenderer::ShouldModelBeStreamed(CEntity *,CVector const&,float)
411786:  CMP             R0, #1
411788:  BNE             loc_411796
41178A:  LDRSH.W         R0, [R6,#0x26]; this
41178E:  LDR.W           R1, [R9]; int
411792:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
411796:  CMP             R4, #0
411798:  BNE             loc_41176C
41179A:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x4117A2)
41179C:  LDR             R1, [SP,#0x28+var_24]
41179E:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
4117A0:  LDR.W           R11, [SP,#0x28+var_20]
4117A4:  LDR             R0, [R0]; CWorld::ms_aSectors ...
4117A6:  BFI.W           R11, R10, #4, #4
4117AA:  ADD.W           R0, R0, R1,LSL#3
4117AE:  LDR             R6, [R0,#4]
4117B0:  CBZ             R6, loc_4117FC
4117B2:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4117BA)
4117B4:  LDR             R1, =(_ZN9CRenderer20ms_vecCameraPositionE_ptr - 0x4117C0)
4117B6:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4117B8:  LDR.W           R10, =(dword_962E90 - 0x4117C4)
4117BC:  ADD             R1, PC; _ZN9CRenderer20ms_vecCameraPositionE_ptr
4117BE:  LDR             R4, [R0]; CWorld::ms_nCurrentScanCode ...
4117C0:  ADD             R10, PC; dword_962E90
4117C2:  LDR             R0, =(_ZN9CRenderer16ms_fFarClipPlaneE_ptr - 0x4117CC)
4117C4:  LDR.W           R9, [R1]; CRenderer::ms_vecCameraPosition ...
4117C8:  ADD             R0, PC; _ZN9CRenderer16ms_fFarClipPlaneE_ptr
4117CA:  LDR.W           R8, [R0]; CRenderer::ms_fFarClipPlane ...
4117CE:  LDRD.W          R5, R6, [R6]
4117D2:  LDRH            R0, [R4]; CWorld::ms_nCurrentScanCode
4117D4:  LDRH            R1, [R5,#0x30]
4117D6:  CMP             R1, R0
4117D8:  BEQ             loc_4117F8
4117DA:  STRH            R0, [R5,#0x30]
4117DC:  MOV             R0, R5; this
4117DE:  LDR.W           R2, [R8]; CVector *
4117E2:  MOV             R1, R9; CEntity *
4117E4:  BLX             j__ZN9CRenderer21ShouldModelBeStreamedEP7CEntityRK7CVectorf; CRenderer::ShouldModelBeStreamed(CEntity *,CVector const&,float)
4117E8:  CMP             R0, #1
4117EA:  BNE             loc_4117F8
4117EC:  LDRSH.W         R0, [R5,#0x26]; this
4117F0:  LDR.W           R1, [R10]; int
4117F4:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
4117F8:  CMP             R6, #0
4117FA:  BNE             loc_4117CE
4117FC:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x411806)
4117FE:  ADD.W           R1, R11, R11,LSL#1
411802:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
411804:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
411806:  ADD.W           R0, R0, R1,LSL#2
41180A:  LDR             R6, [R0,#8]
41180C:  CBZ             R6, loc_411858
41180E:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x411816)
411810:  LDR             R1, =(_ZN9CRenderer20ms_vecCameraPositionE_ptr - 0x41181C)
411812:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
411814:  LDR.W           R10, =(dword_962E90 - 0x411820)
411818:  ADD             R1, PC; _ZN9CRenderer20ms_vecCameraPositionE_ptr
41181A:  LDR             R4, [R0]; CWorld::ms_nCurrentScanCode ...
41181C:  ADD             R10, PC; dword_962E90
41181E:  LDR             R0, =(_ZN9CRenderer16ms_fFarClipPlaneE_ptr - 0x411828)
411820:  LDR.W           R8, [R1]; CRenderer::ms_vecCameraPosition ...
411824:  ADD             R0, PC; _ZN9CRenderer16ms_fFarClipPlaneE_ptr
411826:  LDR.W           R9, [R0]; CRenderer::ms_fFarClipPlane ...
41182A:  LDRD.W          R5, R6, [R6]
41182E:  LDRH            R0, [R4]; CWorld::ms_nCurrentScanCode
411830:  LDRH            R1, [R5,#0x30]
411832:  CMP             R1, R0
411834:  BEQ             loc_411854
411836:  STRH            R0, [R5,#0x30]
411838:  MOV             R0, R5; this
41183A:  LDR.W           R2, [R9]; CVector *
41183E:  MOV             R1, R8; CEntity *
411840:  BLX             j__ZN9CRenderer21ShouldModelBeStreamedEP7CEntityRK7CVectorf; CRenderer::ShouldModelBeStreamed(CEntity *,CVector const&,float)
411844:  CMP             R0, #1
411846:  BNE             loc_411854
411848:  LDRSH.W         R0, [R5,#0x26]; this
41184C:  LDR.W           R1, [R10]; int
411850:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
411854:  CMP             R6, #0
411856:  BNE             loc_41182A
411858:  ADD             SP, SP, #0xC
41185A:  POP.W           {R8-R11}
41185E:  POP             {R4-R7,PC}
