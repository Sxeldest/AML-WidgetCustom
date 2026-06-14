; =========================================================
; Game Engine Function: _Z15StalacMiteAllocj
; Address            : 0x1DEA5C - 0x1DEA9E
; =========================================================

1DEA5C:  PUSH            {R4,R6,R7,LR}
1DEA5E:  ADD             R7, SP, #8
1DEA60:  SUB             SP, SP, #8
1DEA62:  LDR             R2, =(dword_6BD00C - 0x1DEA70)
1DEA64:  ADDS            R0, #3
1DEA66:  LDR             R3, =(dword_6BD008 - 0x1DEA72)
1DEA68:  BIC.W           R1, R0, #3
1DEA6C:  ADD             R2, PC; dword_6BD00C
1DEA6E:  ADD             R3, PC; dword_6BD008
1DEA70:  LDR             R4, [R2]
1DEA72:  LDR             R0, [R3]
1DEA74:  ADDS            R3, R4, R1
1DEA76:  STR             R3, [R2]
1DEA78:  CMP             R3, R0
1DEA7A:  BLS             loc_1DEA98
1DEA7C:  LDR             R0, =(dword_6BD00C - 0x1DEA82)
1DEA7E:  ADD             R0, PC; dword_6BD00C
1DEA80:  STR             R4, [R0]
1DEA82:  MOVS            R0, #0x13
1DEA84:  MOVS            R4, #0
1DEA86:  MOVT            R0, #0x8000; int
1DEA8A:  STR             R4, [SP,#0x10+var_10]
1DEA8C:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DEA90:  STR             R0, [SP,#0x10+var_C]
1DEA92:  MOV             R0, SP
1DEA94:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DEA98:  MOV             R0, R4
1DEA9A:  ADD             SP, SP, #8
1DEA9C:  POP             {R4,R6,R7,PC}
