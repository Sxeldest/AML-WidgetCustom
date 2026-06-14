; =========================================================
; Game Engine Function: sub_2149C4
; Address            : 0x2149C4 - 0x214A8C
; =========================================================

2149C4:  PUSH            {R4-R7,LR}
2149C6:  ADD             R7, SP, #0xC
2149C8:  PUSH.W          {R8-R10}
2149CC:  SUB             SP, SP, #8
2149CE:  ADD.W           R9, R1, #8
2149D2:  MOV             R8, R0
2149D4:  MOV.W           R0, #0xFFFFFFFF
2149D8:  MOV             R6, #0xFFFFFFFC
2149DC:  MOV             R1, R9
2149DE:  LDR             R1, [R1]
2149E0:  ADDS            R6, #4
2149E2:  ADDS            R0, #1
2149E4:  CMP             R1, R9
2149E6:  BNE             loc_2149DE
2149E8:  CMP             R0, #1
2149EA:  BLT             loc_214A26
2149EC:  LDR             R0, =(RwEngineInstance_ptr - 0x2149F2)
2149EE:  ADD             R0, PC; RwEngineInstance_ptr
2149F0:  LDR             R0, [R0]; RwEngineInstance
2149F2:  LDR             R0, [R0]
2149F4:  LDR.W           R1, [R0,#0x12C]
2149F8:  MOV             R0, R6
2149FA:  BLX             R1
2149FC:  MOV             R10, R0
2149FE:  CMP.W           R10, #0
214A02:  STR.W           R10, [R8]
214A06:  BNE             loc_214A2E
214A08:  MOVS            R0, #0x13
214A0A:  MOV.W           R8, #0
214A0E:  MOVT            R0, #0x8000; int
214A12:  MOV             R1, R6
214A14:  STR.W           R8, [SP,#0x20+var_20]
214A18:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
214A1C:  STR             R0, [SP,#0x20+var_1C]
214A1E:  MOV             R0, SP
214A20:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
214A24:  B               loc_214A82
214A26:  MOV.W           R10, #0
214A2A:  STR.W           R10, [R8]
214A2E:  MOVS            R0, #0
214A30:  STR.W           R0, [R8,#4]
214A34:  LDR.W           R4, [R9]
214A38:  CMP             R4, R9
214A3A:  BEQ             loc_214A82
214A3C:  MOVS            R0, #0
214A3E:  MOV             R1, R4
214A40:  LDR.W           R6, [R1,#-0x28]
214A44:  CMP             R0, #1
214A46:  BLT             loc_214A68
214A48:  LDR.W           R2, [R8]
214A4C:  MOVS            R3, #0
214A4E:  LDR.W           R5, [R2,R3,LSL#2]
214A52:  CMP             R5, R6
214A54:  BEQ             loc_214A5E
214A56:  ADDS            R3, #1
214A58:  CMP             R3, R0
214A5A:  BLT             loc_214A4E
214A5C:  B               loc_214A66
214A5E:  LDR             R1, [R1]
214A60:  CMP             R1, R9
214A62:  BNE             loc_214A40
214A64:  B               loc_214A82
214A66:  MOV             R4, R1
214A68:  MOV             R0, R6
214A6A:  BLX             j__Z17_rpGeometryAddRefP10RpGeometry; _rpGeometryAddRef(RpGeometry *)
214A6E:  STR.W           R6, [R10],#4
214A72:  LDR.W           R0, [R8,#4]
214A76:  ADDS            R0, #1
214A78:  STR.W           R0, [R8,#4]
214A7C:  LDR             R4, [R4]
214A7E:  CMP             R4, R9
214A80:  BNE             loc_214A3E
214A82:  MOV             R0, R8
214A84:  ADD             SP, SP, #8
214A86:  POP.W           {R8-R10}
214A8A:  POP             {R4-R7,PC}
