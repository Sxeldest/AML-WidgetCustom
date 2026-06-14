; =========================================================
; Game Engine Function: _Z25_rpMeshHeaderForAllMeshesP12RpMeshHeaderPFP6RpMeshS2_S0_PvES3_
; Address            : 0x218184 - 0x2181BA
; =========================================================

218184:  PUSH            {R4-R7,LR}
218186:  ADD             R7, SP, #0xC
218188:  PUSH.W          {R8,R9,R11}
21818C:  MOV             R5, R0
21818E:  MOV             R8, R2
218190:  LDRH            R0, [R5,#4]
218192:  MOV             R9, R1
218194:  CBZ             R0, loc_2181B2
218196:  LDR             R1, [R5,#0xC]
218198:  NEGS            R6, R0
21819A:  ADD             R1, R5
21819C:  ADD.W           R4, R1, #0x14
2181A0:  MOV             R0, R4
2181A2:  MOV             R1, R5
2181A4:  MOV             R2, R8
2181A6:  BLX             R9
2181A8:  CBZ             R0, loc_2181B2
2181AA:  ADDS            R6, #1
2181AC:  ADD.W           R4, R4, #0x10
2181B0:  BNE             loc_2181A0
2181B2:  MOV             R0, R5
2181B4:  POP.W           {R8,R9,R11}
2181B8:  POP             {R4-R7,PC}
