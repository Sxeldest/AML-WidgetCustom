; =========================================================
; Game Engine Function: _ZN15ProcObjectMan_c20ProcessTriangleAddedEP12CPlantLocTri
; Address            : 0x45713E - 0x45718C
; =========================================================

45713E:  PUSH            {R4-R7,LR}
457140:  ADD             R7, SP, #0xC
457142:  PUSH.W          {R8,R9,R11}
457146:  MOV             R8, R0
457148:  MOV             R4, R1
45714A:  LDR.W           R1, [R8,#4]
45714E:  CMP             R1, #1
457150:  BLT             loc_45717E
457152:  ADD.W           R6, R8, #8
457156:  MOVS            R5, #0
457158:  MOV.W           R9, #0
45715C:  LDRB.W          R0, [R4,#0x46]
457160:  LDRB            R2, [R6]
457162:  CMP             R2, R0
457164:  BNE             loc_457174
457166:  MOV             R0, R6; this
457168:  MOV             R1, R4; CPlantLocTri *
45716A:  BLX             j__ZN17ProcSurfaceInfo_c10AddObjectsEP12CPlantLocTri; ProcSurfaceInfo_c::AddObjects(CPlantLocTri *)
45716E:  LDR.W           R1, [R8,#4]
457172:  ADD             R9, R0
457174:  ADDS            R5, #1
457176:  ADDS            R6, #0x48 ; 'H'
457178:  CMP             R5, R1
45717A:  BLT             loc_45715C
45717C:  B               loc_457182
45717E:  MOV.W           R9, #0
457182:  UXTB.W          R0, R9
457186:  POP.W           {R8,R9,R11}
45718A:  POP             {R4-R7,PC}
