; =========================================================
; Game Engine Function: sub_F0AC4
; Address            : 0xF0AC4 - 0xF0B22
; =========================================================

F0AC4:  PUSH            {R7,LR}
F0AC6:  MOV             R7, SP
F0AC8:  SUB             SP, SP, #8
F0ACA:  LDR             R0, =(dword_23DEF4 - 0xF0AD0)
F0ACC:  ADD             R0, PC; dword_23DEF4
F0ACE:  LDR             R0, [R0]
F0AD0:  CBZ             R0, loc_F0AEA
F0AD2:  LDR.W           R1, [R0,#0x218]
F0AD6:  CMP             R1, #5
F0AD8:  BNE             loc_F0AEA
F0ADA:  LDR.W           R0, [R0,#0x210]
F0ADE:  MOVS            R2, #0
F0AE0:  LDR             R1, [R0]
F0AE2:  LDR             R3, [R1,#0xC]
F0AE4:  MOV.W           R1, #0x3E8
F0AE8:  BLX             R3
F0AEA:  LDR             R0, =(byte_23DF18 - 0xF0AF2)
F0AEC:  MOVS            R1, #1
F0AEE:  ADD             R0, PC; byte_23DF18
F0AF0:  STRB            R1, [R0]
F0AF2:  MOV             R0, SP; tv
F0AF4:  MOVS            R1, #0; tz
F0AF6:  BLX             gettimeofday
F0AFA:  MOVW            R2, #0x4DD3
F0AFE:  LDRD.W          R0, R1, [SP,#0x10+var_10]
F0B02:  MOVT            R2, #0x1062
F0B06:  SMMUL.W         R1, R1, R2
F0B0A:  LDR             R2, =(dword_23DF20 - 0xF0B10)
F0B0C:  ADD             R2, PC; dword_23DF20
F0B0E:  ASRS            R3, R1, #6
F0B10:  ADD.W           R1, R3, R1,LSR#31
F0B14:  MOV.W           R3, #0x3E8
F0B18:  MLA.W           R0, R0, R3, R1
F0B1C:  STR             R0, [R2]
F0B1E:  ADD             SP, SP, #8
F0B20:  POP             {R7,PC}
