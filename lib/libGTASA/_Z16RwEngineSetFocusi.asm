; =========================================================
; Game Engine Function: _Z16RwEngineSetFocusi
; Address            : 0x1D7738 - 0x1D7774
; =========================================================

1D7738:  PUSH            {R4,R5,R7,LR}
1D773A:  ADD             R7, SP, #8
1D773C:  SUB             SP, SP, #8
1D773E:  MOV             R3, R0
1D7740:  LDR             R0, =(RwEngineInstance_ptr - 0x1D774A)
1D7742:  MOVS            R1, #0
1D7744:  MOVS            R2, #0
1D7746:  ADD             R0, PC; RwEngineInstance_ptr
1D7748:  MOVS            R5, #0
1D774A:  LDR             R0, [R0]; RwEngineInstance
1D774C:  LDR             R0, [R0]
1D774E:  LDR             R4, [R0,#0x14]
1D7750:  MOVS            R0, #8
1D7752:  BLX             R4
1D7754:  CBNZ            R0, loc_1D776A
1D7756:  MOVS            R0, #0x18; int
1D7758:  MOVS            R1, #8
1D775A:  STR             R5, [SP,#0x10+var_10]
1D775C:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1D7760:  STR             R0, [SP,#0x10+var_C]
1D7762:  MOV             R0, SP
1D7764:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1D7768:  MOVS            R0, #0
1D776A:  CMP             R0, #0
1D776C:  IT NE
1D776E:  MOVNE           R0, #1
1D7770:  ADD             SP, SP, #8
1D7772:  POP             {R4,R5,R7,PC}
