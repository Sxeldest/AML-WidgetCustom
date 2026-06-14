; =========================================================
; Game Engine Function: _Z20RpWorldStreamGetSizePK7RpWorld
; Address            : 0x212700 - 0x212790
; =========================================================

212700:  PUSH            {R4-R7,LR}
212702:  ADD             R7, SP, #0xC
212704:  PUSH.W          {R11}
212708:  MOV             R4, R0
21270A:  ADD.W           R0, R4, #0x10
21270E:  LDR             R6, [R4,#8]
212710:  BLX             j__Z28_rpMaterialListStreamGetSizePK14RpMaterialList; _rpMaterialListStreamGetSize(RpMaterialList const*)
212714:  LDR             R1, [R4,#0x1C]
212716:  MOV             R5, R0
212718:  LDR             R0, [R1]
21271A:  CMP.W           R0, #0xFFFFFFFF
21271E:  BLE             loc_21272E
212720:  MOV             R0, R1
212722:  MOV             R1, R4
212724:  MOV             R2, R6
212726:  BL              sub_212798
21272A:  MOV             R6, R0
21272C:  B               loc_212778
21272E:  LDRB            R0, [R4,#0xB]
212730:  LSLS            R0, R0, #0x1F
212732:  BNE             loc_21276A
212734:  LDRH.W          R0, [R1,#0x8A]
212738:  TST.W           R6, #0x10
21273C:  LDR             R2, [R4,#0x20]
21273E:  LDRH.W          R3, [R1,#0x8C]
212742:  MLA.W           R12, R2, R0, R3
212746:  ADD.W           R3, R0, R0,LSL#1
21274A:  MOV.W           R2, R3,LSL#2
21274E:  ADD.W           R2, R2, R0,LSL#2
212752:  IT EQ
212754:  LSLEQ           R2, R3, #2
212756:  TST.W           R6, #8
21275A:  ADD.W           R2, R2, #0x44 ; 'D'
21275E:  IT NE
212760:  ADDNE.W         R2, R2, R0,LSL#2
212764:  ADD.W           R6, R2, R12,LSL#3
212768:  B               loc_21276C
21276A:  MOVS            R6, #0x44 ; 'D'
21276C:  LDR             R0, =(sectorTKList_ptr - 0x212772)
21276E:  ADD             R0, PC; sectorTKList_ptr
212770:  LDR             R0, [R0]; sectorTKList
212772:  BLX             j__Z24_rwPluginRegistryGetSizePK16RwPluginRegistryPKv; _rwPluginRegistryGetSize(RwPluginRegistry const*,void const*)
212776:  ADD             R6, R0
212778:  LDR             R0, =(worldTKList_ptr - 0x212780)
21277A:  MOV             R1, R4
21277C:  ADD             R0, PC; worldTKList_ptr
21277E:  LDR             R0, [R0]; worldTKList
212780:  BLX             j__Z24_rwPluginRegistryGetSizePK16RwPluginRegistryPKv; _rwPluginRegistryGetSize(RwPluginRegistry const*,void const*)
212784:  ADDS            R1, R5, R6
212786:  ADD             R0, R1
212788:  ADDS            R0, #0x70 ; 'p'
21278A:  POP.W           {R11}
21278E:  POP             {R4-R7,PC}
