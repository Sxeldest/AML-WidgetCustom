; =========================================================
; Game Engine Function: _Z34RpBuildMeshGenerateTrivialTriStripP11RpBuildMeshPv
; Address            : 0x218694 - 0x218710
; =========================================================

218694:  PUSH            {R4-R7,LR}
218696:  ADD             R7, SP, #0xC
218698:  PUSH.W          {R8}
21869C:  LDRD.W          R6, R8, [R0,#4]
2186A0:  MOVS            R0, #0x16
2186A2:  MULS            R0, R6
2186A4:  ADD.W           R5, R0, #0x14
2186A8:  MOV             R0, R5; unsigned int
2186AA:  BLX             j__Z19_rpMeshHeaderCreatej; _rpMeshHeaderCreate(uint)
2186AE:  MOV             R1, R5
2186B0:  MOVS            R2, #0xCD
2186B2:  MOV             R4, R0
2186B4:  BLX             j___aeabi_memset8_0
2186B8:  MOVS            R0, #1
2186BA:  STRH            R6, [R4,#4]
2186BC:  STR             R0, [R4]
2186BE:  MOVS            R0, #0
2186C0:  CMP             R6, #1
2186C2:  STRH            R0, [R4,#6]
2186C4:  ADD.W           R1, R6, R6,LSL#1
2186C8:  STRD.W          R1, R0, [R4,#8]
2186CC:  BLT             loc_218708
2186CE:  ADD.W           R0, R4, #0x14
2186D2:  ADD.W           R2, R8, #4
2186D6:  ADD.W           R1, R0, R6,LSL#4
2186DA:  ADDS            R3, R6, #1
2186DC:  MOVS            R5, #3
2186DE:  STRD.W          R1, R5, [R0]
2186E2:  SUBS            R3, #1
2186E4:  LDR             R6, [R2,#4]
2186E6:  CMP             R3, #1
2186E8:  STR             R6, [R0,#8]
2186EA:  ADD.W           R0, R0, #0x10
2186EE:  LDRH.W          R6, [R2,#-4]
2186F2:  STRH            R6, [R1]
2186F4:  LDRH.W          R6, [R2,#-2]
2186F8:  STRH            R6, [R1,#2]
2186FA:  LDRH            R6, [R2]
2186FC:  ADD.W           R2, R2, #0xC
218700:  STRH            R6, [R1,#4]
218702:  ADD.W           R1, R1, #6
218706:  BGT             loc_2186DE
218708:  MOV             R0, R4
21870A:  POP.W           {R8}
21870E:  POP             {R4-R7,PC}
