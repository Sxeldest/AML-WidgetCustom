; =========================================================
; Game Engine Function: _Z24RwEngineGetSubSystemInfoP15RwSubSystemInfoi
; Address            : 0x1D74A0 - 0x1D7504
; =========================================================

1D74A0:  PUSH            {R4-R7,LR}
1D74A2:  ADD             R7, SP, #0xC
1D74A4:  PUSH.W          {R11}
1D74A8:  SUB             SP, SP, #8
1D74AA:  MOV             R4, R0
1D74AC:  LDR             R0, =(RwEngineInstance_ptr - 0x1D74B6)
1D74AE:  MOV             R6, R1
1D74B0:  MOV             R1, R4
1D74B2:  ADD             R0, PC; RwEngineInstance_ptr
1D74B4:  MOVS            R2, #0
1D74B6:  MOV             R3, R6
1D74B8:  LDR             R0, [R0]; RwEngineInstance
1D74BA:  LDR             R0, [R0]
1D74BC:  LDR             R5, [R0,#0x14]
1D74BE:  MOVS            R0, #0xE
1D74C0:  BLX             R5
1D74C2:  MOV             R5, R0
1D74C4:  CBNZ            R5, loc_1D74F4
1D74C6:  CBZ             R6, loc_1D74DE
1D74C8:  MOVS            R5, #0
1D74CA:  MOVS            R0, #0x18; int
1D74CC:  MOVS            R1, #0xE
1D74CE:  STR             R5, [SP,#0x18+var_18]
1D74D0:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1D74D4:  STR             R0, [SP,#0x18+var_14]
1D74D6:  MOV             R0, SP
1D74D8:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1D74DC:  B               loc_1D74F4
1D74DE:  LDR             R0, =(RwEngineInstance_ptr - 0x1D74E6)
1D74E0:  LDR             R1, =(aOnlyRenderingS - 0x1D74E8); "Only rendering sub system"
1D74E2:  ADD             R0, PC; RwEngineInstance_ptr
1D74E4:  ADD             R1, PC; "Only rendering sub system"
1D74E6:  LDR             R0, [R0]; RwEngineInstance
1D74E8:  LDR             R0, [R0]
1D74EA:  LDR.W           R2, [R0,#0xF8]
1D74EE:  MOV             R0, R4
1D74F0:  BLX             R2
1D74F2:  MOVS            R5, #1
1D74F4:  CMP             R5, #0
1D74F6:  IT EQ
1D74F8:  MOVEQ           R4, R5
1D74FA:  MOV             R0, R4
1D74FC:  ADD             SP, SP, #8
1D74FE:  POP.W           {R11}
1D7502:  POP             {R4-R7,PC}
