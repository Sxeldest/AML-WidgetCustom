; =========================================================
; Game Engine Function: _Z24RwEngineGetVideoModeInfoP11RwVideoModei
; Address            : 0x1D75D4 - 0x1D761C
; =========================================================

1D75D4:  PUSH            {R4-R7,LR}
1D75D6:  ADD             R7, SP, #0xC
1D75D8:  PUSH.W          {R11}
1D75DC:  SUB             SP, SP, #8
1D75DE:  MOV             R4, R0
1D75E0:  LDR             R0, =(RwEngineInstance_ptr - 0x1D75EA)
1D75E2:  MOV             R3, R1
1D75E4:  MOV             R1, R4
1D75E6:  ADD             R0, PC; RwEngineInstance_ptr
1D75E8:  MOVS            R2, #0
1D75EA:  MOVS            R6, #0
1D75EC:  LDR             R0, [R0]; RwEngineInstance
1D75EE:  LDR             R0, [R0]
1D75F0:  LDR             R5, [R0,#0x14]
1D75F2:  MOVS            R0, #6
1D75F4:  BLX             R5
1D75F6:  CBNZ            R0, loc_1D760C
1D75F8:  MOVS            R0, #0x18; int
1D75FA:  MOVS            R1, #6
1D75FC:  STR             R6, [SP,#0x18+var_18]
1D75FE:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1D7602:  STR             R0, [SP,#0x18+var_14]
1D7604:  MOV             R0, SP
1D7606:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1D760A:  MOVS            R0, #0
1D760C:  CMP             R0, #0
1D760E:  IT EQ
1D7610:  MOVEQ           R4, R0
1D7612:  MOV             R0, R4
1D7614:  ADD             SP, SP, #8
1D7616:  POP.W           {R11}
1D761A:  POP             {R4-R7,PC}
