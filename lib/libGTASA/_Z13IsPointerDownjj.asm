; =========================================================
; Game Engine Function: _Z13IsPointerDownjj
; Address            : 0x3F83B6 - 0x3F83CC
; =========================================================

3F83B6:  PUSH            {R7,LR}
3F83B8:  MOV             R7, SP
3F83BA:  BLX             j__Z20LIB_PointerGetButtonii; LIB_PointerGetButton(int,int)
3F83BE:  ORR.W           R1, R0, #1
3F83C2:  MOVS            R0, #0
3F83C4:  CMP             R1, #3
3F83C6:  IT EQ
3F83C8:  MOVEQ           R0, #1
3F83CA:  POP             {R7,PC}
