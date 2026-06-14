; =========================================================
; Game Engine Function: _Z22_rpMaterialListSetSizeP14RpMaterialListi
; Address            : 0x2178A0 - 0x217900
; =========================================================

2178A0:  PUSH            {R4-R7,LR}
2178A2:  ADD             R7, SP, #0xC
2178A4:  PUSH.W          {R11}
2178A8:  SUB             SP, SP, #8
2178AA:  MOV             R4, R0
2178AC:  MOV             R5, R1
2178AE:  LDR             R0, [R4,#8]
2178B0:  CMP             R0, R5
2178B2:  BGE             loc_2178F6
2178B4:  LDR             R0, =(RwEngineInstance_ptr - 0x2178BC)
2178B6:  LSLS            R6, R5, #2
2178B8:  ADD             R0, PC; RwEngineInstance_ptr
2178BA:  LDR             R1, [R0]; RwEngineInstance
2178BC:  LDR             R0, [R4]
2178BE:  LDR             R1, [R1]
2178C0:  CBZ             R0, loc_2178D2
2178C2:  LDR.W           R2, [R1,#0x134]
2178C6:  MOV             R1, R6
2178C8:  BLX             R2
2178CA:  CBZ             R0, loc_2178DE
2178CC:  STR             R5, [R4,#8]
2178CE:  STR             R0, [R4]
2178D0:  B               loc_2178F6
2178D2:  LDR.W           R1, [R1,#0x12C]
2178D6:  MOV             R0, R6
2178D8:  BLX             R1
2178DA:  CMP             R0, #0
2178DC:  BNE             loc_2178CC
2178DE:  MOVS            R0, #0x13
2178E0:  MOVS            R4, #0
2178E2:  MOVT            R0, #0x8000; int
2178E6:  MOV             R1, R6
2178E8:  STR             R4, [SP,#0x18+var_18]
2178EA:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
2178EE:  STR             R0, [SP,#0x18+var_14]
2178F0:  MOV             R0, SP
2178F2:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
2178F6:  MOV             R0, R4
2178F8:  ADD             SP, SP, #8
2178FA:  POP.W           {R11}
2178FE:  POP             {R4-R7,PC}
