; =========================================================
; Game Engine Function: sub_1D55CC
; Address            : 0x1D55CC - 0x1D5620
; =========================================================

1D55CC:  PUSH            {R4-R7,LR}
1D55CE:  ADD             R7, SP, #0xC
1D55D0:  PUSH.W          {R11}
1D55D4:  SUB             SP, SP, #8
1D55D6:  MOV             R5, R0
1D55D8:  LDR             R0, =(RwEngineInstance_ptr - 0x1D55E2)
1D55DA:  MOV             R4, R1
1D55DC:  MOV             R1, R5
1D55DE:  ADD             R0, PC; RwEngineInstance_ptr
1D55E0:  MOVS            R2, #0
1D55E2:  MOVS            R6, #0
1D55E4:  LDR             R0, [R0]; RwEngineInstance
1D55E6:  LDR             R0, [R0]
1D55E8:  LDR.W           R3, [R0,#0xAC]
1D55EC:  ADD             R0, SP, #0x18+var_14
1D55EE:  BLX             R3
1D55F0:  CBZ             R0, loc_1D5614
1D55F2:  LDR             R0, =(textureTKList_ptr - 0x1D55FA)
1D55F4:  LDR             R1, [SP,#0x18+var_14]
1D55F6:  ADD             R0, PC; textureTKList_ptr
1D55F8:  LDR             R2, [R4]
1D55FA:  ADD             R1, R2
1D55FC:  LDR             R0, [R0]; textureTKList
1D55FE:  ADDS            R1, #0xC
1D5600:  STR             R1, [R4]
1D5602:  MOV             R1, R5
1D5604:  BLX             j__Z24_rwPluginRegistryGetSizePK16RwPluginRegistryPKv; _rwPluginRegistryGetSize(RwPluginRegistry const*,void const*)
1D5608:  LDR             R1, [R4]
1D560A:  MOV             R6, R5
1D560C:  ADD             R0, R1
1D560E:  ADDS            R0, #0xC
1D5610:  STR             R0, [R4]
1D5612:  B               loc_1D5616
1D5614:  STR             R6, [R4,#4]
1D5616:  MOV             R0, R6
1D5618:  ADD             SP, SP, #8
1D561A:  POP.W           {R11}
1D561E:  POP             {R4-R7,PC}
