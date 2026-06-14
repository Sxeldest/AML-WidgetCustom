; =========================================================
; Game Engine Function: _Z18MoveGeometryMemoryP10RpGeometry
; Address            : 0x3F45A4 - 0x3F45E6
; =========================================================

3F45A4:  PUSH            {R4,R6,R7,LR}
3F45A6:  ADD             R7, SP, #8
3F45A8:  MOV             R4, R0
3F45AA:  BLX             j__ZN10CMemoryMgr10MoveMemoryEPv; CMemoryMgr::MoveMemory(void *)
3F45AE:  CMP             R0, R4
3F45B0:  BEQ             loc_3F45E2
3F45B2:  LDR             R2, [R0,#0x2C]
3F45B4:  SUBS            R1, R0, R4
3F45B6:  CMP             R2, #0
3F45B8:  ITT NE
3F45BA:  ADDNE           R2, R1
3F45BC:  STRNE           R2, [R0,#0x2C]
3F45BE:  LDR             R2, [R0,#0x30]
3F45C0:  CMP             R2, #0
3F45C2:  ITT NE
3F45C4:  ADDNE           R2, R1
3F45C6:  STRNE           R2, [R0,#0x30]
3F45C8:  LDR             R2, [R0,#0x34]
3F45CA:  CMP             R2, #0
3F45CC:  ITT NE
3F45CE:  ADDNE           R2, R1
3F45D0:  STRNE           R2, [R0,#0x34]
3F45D2:  LDR             R2, [R0,#0x38]
3F45D4:  CMP             R2, #0
3F45D6:  ITT NE
3F45D8:  ADDNE           R1, R2
3F45DA:  STRNE           R1, [R0,#0x38]
3F45DC:  LDR             R1, [R0,#0x60]
3F45DE:  STR             R0, [R1]
3F45E0:  POP             {R4,R6,R7,PC}
3F45E2:  MOVS            R0, #0
3F45E4:  POP             {R4,R6,R7,PC}
