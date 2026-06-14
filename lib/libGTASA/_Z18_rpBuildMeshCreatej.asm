; =========================================================
; Game Engine Function: _Z18_rpBuildMeshCreatej
; Address            : 0x217F8C - 0x218024
; =========================================================

217F8C:  PUSH            {R4-R7,LR}
217F8E:  ADD             R7, SP, #0xC
217F90:  PUSH.W          {R8}
217F94:  SUB             SP, SP, #8
217F96:  MOV             R6, R0
217F98:  LDR             R0, =(RwEngineInstance_ptr - 0x217FA0)
217F9A:  LDR             R1, =(dword_6BD604 - 0x217FA2)
217F9C:  ADD             R0, PC; RwEngineInstance_ptr
217F9E:  ADD             R1, PC; dword_6BD604
217FA0:  LDR             R0, [R0]; RwEngineInstance
217FA2:  LDR             R2, [R0]
217FA4:  LDR             R0, [R1]
217FA6:  LDR.W           R1, [R2,#0x13C]
217FAA:  BLX             R1
217FAC:  MOVW            R8, #0x13
217FB0:  MOV             R4, R0
217FB2:  MOVT            R8, #0x8000
217FB6:  CBZ             R4, loc_217FE0
217FB8:  MOVS            R0, #0
217FBA:  CMP             R6, #0
217FBC:  STR             R0, [R4,#4]
217FBE:  BEQ             loc_217FEA
217FC0:  LDR             R0, =(RwEngineInstance_ptr - 0x217FC6)
217FC2:  ADD             R0, PC; RwEngineInstance_ptr
217FC4:  LDR             R0, [R0]; RwEngineInstance
217FC6:  LDR             R0, [R0]
217FC8:  LDR.W           R1, [R0,#0x12C]
217FCC:  ADD.W           R0, R6, R6,LSL#1
217FD0:  LSLS            R5, R0, #2
217FD2:  MOV             R0, R5
217FD4:  BLX             R1
217FD6:  CMP             R0, #0
217FD8:  STR             R0, [R4,#8]
217FDA:  BEQ             loc_217FF0
217FDC:  STR             R6, [R4]
217FDE:  B               loc_21801A
217FE0:  MOVS            R4, #0
217FE2:  MOV             R0, R8
217FE4:  MOVS            R1, #0xC
217FE6:  STR             R4, [SP,#0x18+var_18]
217FE8:  B               loc_21800E
217FEA:  STR             R0, [R4]
217FEC:  STR             R0, [R4,#8]
217FEE:  B               loc_21801A
217FF0:  LDR             R0, =(RwEngineInstance_ptr - 0x217FF8)
217FF2:  LDR             R1, =(dword_6BD604 - 0x217FFA)
217FF4:  ADD             R0, PC; RwEngineInstance_ptr
217FF6:  ADD             R1, PC; dword_6BD604
217FF8:  LDR             R0, [R0]; RwEngineInstance
217FFA:  LDR             R2, [R0]
217FFC:  LDR             R0, [R1]
217FFE:  MOV             R1, R4
218000:  LDR.W           R2, [R2,#0x140]
218004:  BLX             R2
218006:  MOVS            R4, #0
218008:  MOV             R0, R8; int
21800A:  STR             R4, [SP,#0x18+var_18]
21800C:  MOV             R1, R5
21800E:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
218012:  STR             R0, [SP,#0x18+var_14]
218014:  MOV             R0, SP
218016:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
21801A:  MOV             R0, R4
21801C:  ADD             SP, SP, #8
21801E:  POP.W           {R8}
218022:  POP             {R4-R7,PC}
