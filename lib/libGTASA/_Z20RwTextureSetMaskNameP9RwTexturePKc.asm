; =========================================================
; Game Engine Function: _Z20RwTextureSetMaskNameP9RwTexturePKc
; Address            : 0x1DB904 - 0x1DB962
; =========================================================

1DB904:  PUSH            {R4-R7,LR}
1DB906:  ADD             R7, SP, #0xC
1DB908:  PUSH.W          {R11}
1DB90C:  SUB             SP, SP, #0x10
1DB90E:  MOV             R4, R0
1DB910:  LDR             R0, =(RwEngineInstance_ptr - 0x1DB91A)
1DB912:  MOVS            R2, #0x20 ; ' '
1DB914:  MOV             R5, R1
1DB916:  ADD             R0, PC; RwEngineInstance_ptr
1DB918:  LDR             R6, [R0]; RwEngineInstance
1DB91A:  LDR             R0, [R6]
1DB91C:  LDR.W           R3, [R0,#0xFC]
1DB920:  ADD.W           R0, R4, #0x30 ; '0'
1DB924:  BLX             R3
1DB926:  LDR             R0, [R6]
1DB928:  LDR.W           R1, [R0,#0x118]
1DB92C:  MOV             R0, R5
1DB92E:  BLX             R1
1DB930:  CMP             R0, #0x20 ; ' '
1DB932:  BCC             loc_1DB958
1DB934:  MOVS            R6, #0
1DB936:  MOV             R1, R5
1DB938:  STR             R6, [SP,#0x20+var_18]
1DB93A:  MOVS            R2, #0x20 ; ' '
1DB93C:  LDRB            R0, [R5,#0x1F]
1DB93E:  MOVS            R3, #0x1F
1DB940:  STR             R0, [SP,#0x20+var_20]
1DB942:  MOVS            R0, #0x8000001E; int
1DB948:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DB94C:  STR             R0, [SP,#0x20+var_14]
1DB94E:  ADD             R0, SP, #0x20+var_18
1DB950:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DB954:  STRB.W          R6, [R4,#0x4F]
1DB958:  MOV             R0, R4
1DB95A:  ADD             SP, SP, #0x10
1DB95C:  POP.W           {R11}
1DB960:  POP             {R4-R7,PC}
