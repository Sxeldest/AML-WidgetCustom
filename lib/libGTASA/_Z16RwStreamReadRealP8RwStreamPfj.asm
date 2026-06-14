; =========================================================
; Game Engine Function: _Z16RwStreamReadRealP8RwStreamPfj
; Address            : 0x1E21CE - 0x1E21F8
; =========================================================

1E21CE:  PUSH            {R4,R6,R7,LR}
1E21D0:  ADD             R7, SP, #8
1E21D2:  SUB             SP, SP, #8
1E21D4:  MOV             R4, R0
1E21D6:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1E21DA:  CBNZ            R0, loc_1E21F2
1E21DC:  MOVS            R0, #0x1A
1E21DE:  MOVS            R4, #0
1E21E0:  MOVT            R0, #0x8000; int
1E21E4:  STR             R4, [SP,#0x10+var_10]
1E21E6:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1E21EA:  STR             R0, [SP,#0x10+var_C]
1E21EC:  MOV             R0, SP
1E21EE:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1E21F2:  MOV             R0, R4
1E21F4:  ADD             SP, SP, #8
1E21F6:  POP             {R4,R6,R7,PC}
