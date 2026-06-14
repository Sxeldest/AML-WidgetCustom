; =========================================================
; Game Engine Function: _Z15StalacTiteAllocj
; Address            : 0x1DEA0C - 0x1DEA4E
; =========================================================

1DEA0C:  PUSH            {R4,R6,R7,LR}
1DEA0E:  ADD             R7, SP, #8
1DEA10:  SUB             SP, SP, #8
1DEA12:  LDR             R3, =(dword_6BD008 - 0x1DEA20)
1DEA14:  ADDS            R0, #3
1DEA16:  LDR             R4, =(dword_6BD00C - 0x1DEA22)
1DEA18:  BIC.W           R1, R0, #3
1DEA1C:  ADD             R3, PC; dword_6BD008
1DEA1E:  ADD             R4, PC; dword_6BD00C
1DEA20:  LDR             R2, [R3]
1DEA22:  LDR             R0, [R4]
1DEA24:  SUBS            R4, R2, R1
1DEA26:  STR             R4, [R3]
1DEA28:  CMP             R4, R0
1DEA2A:  BCS             loc_1DEA48
1DEA2C:  LDR             R0, =(dword_6BD008 - 0x1DEA36)
1DEA2E:  MOVS            R4, #0
1DEA30:  STR             R4, [SP,#0x10+var_10]
1DEA32:  ADD             R0, PC; dword_6BD008
1DEA34:  STR             R2, [R0]
1DEA36:  MOVS            R0, #0x80000013; int
1DEA3C:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DEA40:  STR             R0, [SP,#0x10+var_C]
1DEA42:  MOV             R0, SP
1DEA44:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DEA48:  MOV             R0, R4
1DEA4A:  ADD             SP, SP, #8
1DEA4C:  POP             {R4,R6,R7,PC}
