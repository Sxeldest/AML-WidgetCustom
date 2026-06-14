; =========================================================
; Game Engine Function: _Z14_rpMeshDestroyP12RpMeshHeader
; Address            : 0x21807C - 0x2180C2
; =========================================================

21807C:  PUSH            {R4,R6,R7,LR}
21807E:  ADD             R7, SP, #8
218080:  MOV             R4, R0
218082:  LDR             R0, [R4]
218084:  CMP             R0, #0
218086:  ITT EQ
218088:  LDRHEQ          R0, [R4,#4]
21808A:  CMPEQ           R0, #0
21808C:  BEQ             loc_2180AE
21808E:  LDR             R0, [R4,#0x10]; unsigned int
218090:  CBZ             R0, loc_21809A
218092:  BLX             j__Z16emu_ArraysDeletej; emu_ArraysDelete(uint)
218096:  MOVS            R0, #0
218098:  STR             R0, [R4,#0x10]
21809A:  LDR             R0, =(RwEngineInstance_ptr - 0x2180A0)
21809C:  ADD             R0, PC; RwEngineInstance_ptr
21809E:  LDR             R0, [R0]; RwEngineInstance
2180A0:  LDR             R0, [R0]
2180A2:  LDR.W           R1, [R0,#0x130]
2180A6:  MOV             R0, R4
2180A8:  BLX             R1
2180AA:  MOVS            R0, #1
2180AC:  POP             {R4,R6,R7,PC}
2180AE:  LDRH            R0, [R4,#6]
2180B0:  CMP             R0, #0
2180B2:  ITT EQ
2180B4:  LDREQ           R0, [R4,#8]
2180B6:  CMPEQ           R0, #0
2180B8:  BNE             loc_21808E
2180BA:  LDR             R0, [R4,#0xC]
2180BC:  CMP             R0, #0
2180BE:  BNE             loc_21808E
2180C0:  B               loc_2180AA
