; =========================================================
; Game Engine Function: _Z19_rpBuildMeshDestroyP11RpBuildMesh
; Address            : 0x218038 - 0x21806E
; =========================================================

218038:  PUSH            {R4,R6,R7,LR}
21803A:  ADD             R7, SP, #8
21803C:  MOV             R4, R0
21803E:  LDR             R0, [R4,#8]
218040:  CBZ             R0, loc_218054
218042:  LDR             R1, =(RwEngineInstance_ptr - 0x218048)
218044:  ADD             R1, PC; RwEngineInstance_ptr
218046:  LDR             R1, [R1]; RwEngineInstance
218048:  LDR             R1, [R1]
21804A:  LDR.W           R1, [R1,#0x130]
21804E:  BLX             R1
218050:  MOVS            R0, #0
218052:  STR             R0, [R4,#8]
218054:  LDR             R0, =(RwEngineInstance_ptr - 0x21805C)
218056:  LDR             R1, =(dword_6BD604 - 0x21805E)
218058:  ADD             R0, PC; RwEngineInstance_ptr
21805A:  ADD             R1, PC; dword_6BD604
21805C:  LDR             R0, [R0]; RwEngineInstance
21805E:  LDR             R2, [R0]
218060:  LDR             R0, [R1]
218062:  MOV             R1, R4
218064:  LDR.W           R2, [R2,#0x140]
218068:  BLX             R2
21806A:  MOVS            R0, #1
21806C:  POP             {R4,R6,R7,PC}
