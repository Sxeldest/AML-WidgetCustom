; =========================================================
; Game Engine Function: _Z15_rpMaterialOpenPvii
; Address            : 0x217128 - 0x217184
; =========================================================

217128:  PUSH            {R4,R5,R7,LR}
21712A:  ADD             R7, SP, #8
21712C:  SUB             SP, SP, #8
21712E:  LDR             R2, =(dword_683BBC - 0x21713C)
217130:  MOV             R4, R0
217132:  LDR             R0, =(dword_683BC0 - 0x217140)
217134:  LDR.W           R12, =(dword_683BC4 - 0x217142)
217138:  ADD             R2, PC; dword_683BBC
21713A:  LDR             R5, =(dword_6BD5F4 - 0x217146)
21713C:  ADD             R0, PC; dword_683BC0
21713E:  ADD             R12, PC; dword_683BC4
217140:  LDR             R2, [R2]
217142:  ADD             R5, PC; dword_6BD5F4
217144:  LDR             R3, [R0]
217146:  LDR.W           R0, [R12]
21714A:  LDR.W           LR, =(unk_6BD5D0 - 0x217158)
21714E:  STR             R1, [R5]
217150:  MOV             R1, R2
217152:  MOVS            R2, #4
217154:  ADD             LR, PC; unk_6BD5D0
217156:  STR.W           LR, [SP,#0x10+var_10]
21715A:  BLX             j__Z35RwFreeListCreateAndPreallocateSpaceiiiiP10RwFreeList; RwFreeListCreateAndPreallocateSpace(int,int,int,int,RwFreeList *)
21715E:  LDR             R1, =(RwEngineInstance_ptr - 0x217166)
217160:  LDR             R2, [R5]
217162:  ADD             R1, PC; RwEngineInstance_ptr
217164:  LDR             R1, [R1]; RwEngineInstance
217166:  LDR             R3, [R1]
217168:  STR             R0, [R3,R2]
21716A:  LDR             R0, [R1]
21716C:  LDR             R0, [R0,R2]
21716E:  CBZ             R0, loc_21717C
217170:  LDR             R0, =(dword_6BD5F8 - 0x217176)
217172:  ADD             R0, PC; dword_6BD5F8
217174:  LDR             R1, [R0]
217176:  ADDS            R1, #1
217178:  STR             R1, [R0]
21717A:  B               loc_21717E
21717C:  MOVS            R4, #0
21717E:  MOV             R0, R4
217180:  ADD             SP, SP, #8
217182:  POP             {R4,R5,R7,PC}
