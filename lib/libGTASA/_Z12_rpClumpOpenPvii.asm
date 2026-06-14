; =========================================================
; Game Engine Function: _Z12_rpClumpOpenPvii
; Address            : 0x213C4C - 0x213D00
; =========================================================

213C4C:  PUSH            {R4-R7,LR}
213C4E:  ADD             R7, SP, #0xC
213C50:  PUSH.W          {R8}
213C54:  SUB             SP, SP, #8
213C56:  LDR             R2, =(dword_683B38 - 0x213C62)
213C58:  MOV             R8, R0
213C5A:  LDR             R0, =(dword_683B3C - 0x213C66)
213C5C:  LDR             R4, =(dword_683B48 - 0x213C68)
213C5E:  ADD             R2, PC; dword_683B38
213C60:  LDR             R6, =(dword_6BD598 - 0x213C6C)
213C62:  ADD             R0, PC; dword_683B3C
213C64:  ADD             R4, PC; dword_683B48
213C66:  LDR             R2, [R2]
213C68:  ADD             R6, PC; dword_6BD598
213C6A:  LDR             R3, [R0]
213C6C:  LDR             R0, [R4]
213C6E:  LDR             R5, =(unk_6BD548 - 0x213C7A)
213C70:  STR             R1, [R6]
213C72:  MOV             R1, R2
213C74:  MOVS            R2, #4
213C76:  ADD             R5, PC; unk_6BD548
213C78:  STR             R5, [SP,#0x18+var_18]
213C7A:  BLX             j__Z35RwFreeListCreateAndPreallocateSpaceiiiiP10RwFreeList; RwFreeListCreateAndPreallocateSpace(int,int,int,int,RwFreeList *)
213C7E:  LDR             R1, =(RwEngineInstance_ptr - 0x213C86)
213C80:  LDR             R2, [R6]
213C82:  ADD             R1, PC; RwEngineInstance_ptr
213C84:  LDR             R1, [R1]; RwEngineInstance
213C86:  LDR             R3, [R1]
213C88:  STR             R0, [R3,R2]
213C8A:  LDR             R0, [R1]
213C8C:  LDR             R0, [R0,R2]
213C8E:  CBZ             R0, loc_213CD4
213C90:  LDR             R0, =(dword_683B44 - 0x213C9A)
213C92:  LDR             R2, =(dword_683B60 - 0x213C9C)
213C94:  LDR             R1, =(dword_683B40 - 0x213C9E)
213C96:  ADD             R0, PC; dword_683B44
213C98:  ADD             R2, PC; dword_683B60
213C9A:  ADD             R1, PC; dword_683B40
213C9C:  LDR             R3, [R0]
213C9E:  LDR             R0, [R2]
213CA0:  LDR             R2, =(unk_6BD56C - 0x213CA8)
213CA2:  LDR             R1, [R1]
213CA4:  ADD             R2, PC; unk_6BD56C
213CA6:  STR             R2, [SP,#0x18+var_18]
213CA8:  MOVS            R2, #4
213CAA:  BLX             j__Z35RwFreeListCreateAndPreallocateSpaceiiiiP10RwFreeList; RwFreeListCreateAndPreallocateSpace(int,int,int,int,RwFreeList *)
213CAE:  LDR             R1, =(RwEngineInstance_ptr - 0x213CB6)
213CB0:  LDR             R2, =(dword_6BD598 - 0x213CB8)
213CB2:  ADD             R1, PC; RwEngineInstance_ptr
213CB4:  ADD             R2, PC; dword_6BD598
213CB6:  LDR             R1, [R1]; RwEngineInstance
213CB8:  LDR             R2, [R2]
213CBA:  LDR             R3, [R1]
213CBC:  ADD             R3, R2
213CBE:  STR             R0, [R3,#4]
213CC0:  LDR             R0, [R1]
213CC2:  ADD             R0, R2
213CC4:  LDR             R1, [R0,#4]
213CC6:  CBZ             R1, loc_213CDA
213CC8:  LDR             R0, =(dword_6BD59C - 0x213CCE)
213CCA:  ADD             R0, PC; dword_6BD59C
213CCC:  LDR             R1, [R0]
213CCE:  ADDS            R1, #1
213CD0:  STR             R1, [R0]
213CD2:  B               loc_213CF6
213CD4:  MOV.W           R8, #0
213CD8:  B               loc_213CF6
213CDA:  LDR             R0, [R0]
213CDC:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
213CE0:  LDR             R0, =(RwEngineInstance_ptr - 0x213CEC)
213CE2:  MOV.W           R8, #0
213CE6:  LDR             R1, =(dword_6BD598 - 0x213CEE)
213CE8:  ADD             R0, PC; RwEngineInstance_ptr
213CEA:  ADD             R1, PC; dword_6BD598
213CEC:  LDR             R0, [R0]; RwEngineInstance
213CEE:  LDR             R1, [R1]
213CF0:  LDR             R0, [R0]
213CF2:  STR.W           R8, [R0,R1]
213CF6:  MOV             R0, R8
213CF8:  ADD             SP, SP, #8
213CFA:  POP.W           {R8}
213CFE:  POP             {R4-R7,PC}
