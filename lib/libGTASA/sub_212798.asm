; =========================================================
; Game Engine Function: sub_212798
; Address            : 0x212798 - 0x212874
; =========================================================

212798:  PUSH            {R4-R7,LR}
21279A:  ADD             R7, SP, #0xC
21279C:  PUSH.W          {R8}
2127A0:  MOV             R6, R0
2127A2:  MOV             R5, R1
2127A4:  LDR             R1, [R6,#8]
2127A6:  MOV             R4, R2
2127A8:  LDR             R0, [R1]
2127AA:  CMP.W           R0, #0xFFFFFFFF
2127AE:  BLE             loc_2127BE
2127B0:  MOV             R0, R1
2127B2:  MOV             R1, R5
2127B4:  MOV             R2, R4
2127B6:  BL              sub_212798
2127BA:  MOV             R8, R0
2127BC:  B               loc_21280A
2127BE:  LDRB            R0, [R5,#0xB]
2127C0:  LSLS            R0, R0, #0x1F
2127C2:  BNE             loc_2127FA
2127C4:  LDRH.W          R0, [R1,#0x8A]
2127C8:  TST.W           R4, #0x10
2127CC:  LDR             R2, [R5,#0x20]
2127CE:  LDRH.W          R3, [R1,#0x8C]
2127D2:  MLA.W           R12, R2, R0, R3
2127D6:  ADD.W           R3, R0, R0,LSL#1
2127DA:  MOV.W           R2, R3,LSL#2
2127DE:  ADD.W           R2, R2, R0,LSL#2
2127E2:  IT EQ
2127E4:  LSLEQ           R2, R3, #2
2127E6:  TST.W           R4, #8
2127EA:  ADD.W           R2, R2, #0x44 ; 'D'
2127EE:  IT NE
2127F0:  ADDNE.W         R2, R2, R0,LSL#2
2127F4:  ADD.W           R8, R2, R12,LSL#3
2127F8:  B               loc_2127FE
2127FA:  MOV.W           R8, #0x44 ; 'D'
2127FE:  LDR             R0, =(sectorTKList_ptr - 0x212804)
212800:  ADD             R0, PC; sectorTKList_ptr
212802:  LDR             R0, [R0]; sectorTKList
212804:  BLX             j__Z24_rwPluginRegistryGetSizePK16RwPluginRegistryPKv; _rwPluginRegistryGetSize(RwPluginRegistry const*,void const*)
212808:  ADD             R8, R0
21280A:  LDR             R1, [R6,#0xC]
21280C:  LDR             R0, [R1]
21280E:  CMP.W           R0, #0xFFFFFFFF
212812:  BLE             loc_212820
212814:  MOV             R0, R1
212816:  MOV             R1, R5
212818:  MOV             R2, R4
21281A:  BL              sub_212798
21281E:  B               loc_21286A
212820:  LDRB            R0, [R5,#0xB]
212822:  LSLS            R0, R0, #0x1F
212824:  BNE             loc_21285C
212826:  LDRH.W          R0, [R1,#0x8A]
21282A:  TST.W           R4, #0x10
21282E:  LDR             R2, [R5,#0x20]
212830:  LDRH.W          R3, [R1,#0x8C]
212834:  MLA.W           R2, R2, R0, R3
212838:  ADD.W           R3, R0, R0,LSL#1
21283C:  MOV.W           R6, R3,LSL#2
212840:  ADD.W           R6, R6, R0,LSL#2
212844:  IT EQ
212846:  LSLEQ           R6, R3, #2
212848:  TST.W           R4, #8
21284C:  ADD.W           R3, R6, #0x44 ; 'D'
212850:  IT NE
212852:  ADDNE.W         R3, R3, R0,LSL#2
212856:  ADD.W           R4, R3, R2,LSL#3
21285A:  B               loc_21285E
21285C:  MOVS            R4, #0x44 ; 'D'
21285E:  LDR             R0, =(sectorTKList_ptr - 0x212864)
212860:  ADD             R0, PC; sectorTKList_ptr
212862:  LDR             R0, [R0]; sectorTKList
212864:  BLX             j__Z24_rwPluginRegistryGetSizePK16RwPluginRegistryPKv; _rwPluginRegistryGetSize(RwPluginRegistry const*,void const*)
212868:  ADD             R0, R4
21286A:  ADD             R0, R8
21286C:  ADDS            R0, #0x3C ; '<'
21286E:  POP.W           {R8}
212872:  POP             {R4-R7,PC}
