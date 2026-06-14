; =========================================================
; Game Engine Function: _Z16RwTextureSetNameP9RwTexturePKc
; Address            : 0x1DB8A0 - 0x1DB8FE
; =========================================================

1DB8A0:  PUSH            {R4-R7,LR}
1DB8A2:  ADD             R7, SP, #0xC
1DB8A4:  PUSH.W          {R11}
1DB8A8:  SUB             SP, SP, #0x10
1DB8AA:  MOV             R4, R0
1DB8AC:  LDR             R0, =(RwEngineInstance_ptr - 0x1DB8B6)
1DB8AE:  MOVS            R2, #0x20 ; ' '
1DB8B0:  MOV             R5, R1
1DB8B2:  ADD             R0, PC; RwEngineInstance_ptr
1DB8B4:  LDR             R6, [R0]; RwEngineInstance
1DB8B6:  LDR             R0, [R6]
1DB8B8:  LDR.W           R3, [R0,#0xFC]
1DB8BC:  ADD.W           R0, R4, #0x10
1DB8C0:  BLX             R3
1DB8C2:  LDR             R0, [R6]
1DB8C4:  LDR.W           R1, [R0,#0x118]
1DB8C8:  MOV             R0, R5
1DB8CA:  BLX             R1
1DB8CC:  CMP             R0, #0x20 ; ' '
1DB8CE:  BCC             loc_1DB8F4
1DB8D0:  MOVS            R6, #0
1DB8D2:  MOV             R1, R5
1DB8D4:  STR             R6, [SP,#0x20+var_18]
1DB8D6:  MOVS            R2, #0x20 ; ' '
1DB8D8:  LDRB            R0, [R5,#0x1F]
1DB8DA:  MOVS            R3, #0x1F
1DB8DC:  STR             R0, [SP,#0x20+var_20]
1DB8DE:  MOVS            R0, #0x8000001E; int
1DB8E4:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DB8E8:  STR             R0, [SP,#0x20+var_14]
1DB8EA:  ADD             R0, SP, #0x20+var_18
1DB8EC:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DB8F0:  STRB.W          R6, [R4,#0x2F]
1DB8F4:  MOV             R0, R4
1DB8F6:  ADD             SP, SP, #0x10
1DB8F8:  POP.W           {R11}
1DB8FC:  POP             {R4-R7,PC}
