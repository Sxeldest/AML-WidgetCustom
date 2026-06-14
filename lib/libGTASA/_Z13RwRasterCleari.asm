; =========================================================
; Game Engine Function: _Z13RwRasterCleari
; Address            : 0x1DA75C - 0x1DA7A6
; =========================================================

1DA75C:  PUSH            {R4,R6,R7,LR}
1DA75E:  ADD             R7, SP, #8
1DA760:  SUB             SP, SP, #8
1DA762:  MOV             R2, R0
1DA764:  LDR             R0, =(RwEngineInstance_ptr - 0x1DA76E)
1DA766:  LDR             R1, =(dword_6BCF30 - 0x1DA770)
1DA768:  MOVS            R4, #0
1DA76A:  ADD             R0, PC; RwEngineInstance_ptr
1DA76C:  ADD             R1, PC; dword_6BCF30
1DA76E:  LDR             R0, [R0]; RwEngineInstance
1DA770:  LDR             R1, [R1]
1DA772:  LDR             R0, [R0]
1DA774:  ADD             R1, R0
1DA776:  LDR             R3, [R1,#0x28]
1DA778:  MOVS            R1, #0
1DA77A:  CMP             R3, #0
1DA77C:  IT GT
1DA77E:  MOVGT           R4, #1
1DA780:  CMP             R3, #1
1DA782:  BLT             loc_1DA790
1DA784:  LDR.W           R3, [R0,#0x80]
1DA788:  MOVS            R0, #0
1DA78A:  MOVS            R1, #0
1DA78C:  BLX             R3
1DA78E:  B               loc_1DA7A0
1DA790:  MOVS            R0, #0x15; int
1DA792:  STR             R1, [SP,#0x10+var_10]
1DA794:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DA798:  STR             R0, [SP,#0x10+var_C]
1DA79A:  MOV             R0, SP
1DA79C:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DA7A0:  MOV             R0, R4
1DA7A2:  ADD             SP, SP, #8
1DA7A4:  POP             {R4,R6,R7,PC}
