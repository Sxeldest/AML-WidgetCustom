; =========================================================
; Game Engine Function: _Z12_rpLightOpenPvii
; Address            : 0x21706C - 0x2170C8
; =========================================================

21706C:  PUSH            {R4,R5,R7,LR}
21706E:  ADD             R7, SP, #8
217070:  SUB             SP, SP, #8
217072:  LDR             R2, =(dword_683BA8 - 0x217080)
217074:  MOV             R4, R0
217076:  LDR             R0, =(dword_683BAC - 0x217084)
217078:  LDR.W           R12, =(dword_683B90 - 0x217086)
21707C:  ADD             R2, PC; dword_683BA8
21707E:  LDR             R5, =(dword_6BD5C8 - 0x21708A)
217080:  ADD             R0, PC; dword_683BAC
217082:  ADD             R12, PC; dword_683B90
217084:  LDR             R2, [R2]
217086:  ADD             R5, PC; dword_6BD5C8
217088:  LDR             R3, [R0]
21708A:  LDR.W           R0, [R12]
21708E:  LDR.W           LR, =(unk_6BD5A4 - 0x21709C)
217092:  STR             R1, [R5]
217094:  MOV             R1, R2
217096:  MOVS            R2, #4
217098:  ADD             LR, PC; unk_6BD5A4
21709A:  STR.W           LR, [SP,#0x10+var_10]
21709E:  BLX             j__Z35RwFreeListCreateAndPreallocateSpaceiiiiP10RwFreeList; RwFreeListCreateAndPreallocateSpace(int,int,int,int,RwFreeList *)
2170A2:  LDR             R1, =(RwEngineInstance_ptr - 0x2170AA)
2170A4:  LDR             R2, [R5]
2170A6:  ADD             R1, PC; RwEngineInstance_ptr
2170A8:  LDR             R1, [R1]; RwEngineInstance
2170AA:  LDR             R3, [R1]
2170AC:  STR             R0, [R3,R2]
2170AE:  LDR             R0, [R1]
2170B0:  LDR             R0, [R0,R2]
2170B2:  CBZ             R0, loc_2170C0
2170B4:  LDR             R0, =(dword_6BD5CC - 0x2170BA)
2170B6:  ADD             R0, PC; dword_6BD5CC
2170B8:  LDR             R1, [R0]
2170BA:  ADDS            R1, #1
2170BC:  STR             R1, [R0]
2170BE:  B               loc_2170C2
2170C0:  MOVS            R4, #0
2170C2:  MOV             R0, R4
2170C4:  ADD             SP, SP, #8
2170C6:  POP             {R4,R5,R7,PC}
