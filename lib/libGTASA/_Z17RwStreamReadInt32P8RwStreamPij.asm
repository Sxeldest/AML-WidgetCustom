; =========================================================
; Game Engine Function: _Z17RwStreamReadInt32P8RwStreamPij
; Address            : 0x1E21F8 - 0x1E2222
; =========================================================

1E21F8:  PUSH            {R4,R6,R7,LR}
1E21FA:  ADD             R7, SP, #8
1E21FC:  SUB             SP, SP, #8
1E21FE:  MOV             R4, R0
1E2200:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1E2204:  CBNZ            R0, loc_1E221C
1E2206:  MOVS            R0, #0x1A
1E2208:  MOVS            R4, #0
1E220A:  MOVT            R0, #0x8000; int
1E220E:  STR             R4, [SP,#0x10+var_10]
1E2210:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1E2214:  STR             R0, [SP,#0x10+var_C]
1E2216:  MOV             R0, SP
1E2218:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1E221C:  MOV             R0, R4
1E221E:  ADD             SP, SP, #8
1E2220:  POP             {R4,R6,R7,PC}
