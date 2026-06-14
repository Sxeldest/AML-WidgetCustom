; =========================================================
; Game Engine Function: alc_audiotrack_deinit
; Address            : 0x260274 - 0x2602CA
; =========================================================

260274:  PUSH            {R4-R7,LR}
260276:  ADD             R7, SP, #0xC
260278:  PUSH.W          {R11}
26027C:  LDR             R0, =(dword_6D6838 - 0x260282)
26027E:  ADD             R0, PC; dword_6D6838
260280:  LDR             R4, [R0]
260282:  CBNZ            R4, loc_2602A6
260284:  LDR             R0, =(apportableOpenALFuncs_ptr - 0x26028C)
260286:  LDR             R5, =(dword_6D6838 - 0x26028E)
260288:  ADD             R0, PC; apportableOpenALFuncs_ptr
26028A:  ADD             R5, PC; dword_6D6838
26028C:  LDR             R6, [R0]; apportableOpenALFuncs
26028E:  BLX             j_GetJavaVM
260292:  LDR             R1, [R6,#(off_A98FE0 - 0xA98FD8)]
260294:  MOV             R4, R0
260296:  STR             R4, [R5]
260298:  CMP             R1, #0
26029A:  ITT NE
26029C:  MOVNE           R0, R4
26029E:  BLXNE           R1
2602A0:  LDR             R0, =(dword_6D6838 - 0x2602A6)
2602A2:  ADD             R0, PC; dword_6D6838
2602A4:  STR             R4, [R0]
2602A6:  LDR             R0, =(dword_6D683C - 0x2602AE)
2602A8:  LDR             R5, =(dword_6D6840 - 0x2602B0)
2602AA:  ADD             R0, PC; dword_6D683C
2602AC:  ADD             R5, PC; dword_6D6840
2602AE:  LDR             R0, [R0]
2602B0:  LDR             R1, [R5]
2602B2:  LDR             R2, [R0]
2602B4:  LDR             R2, [R2,#0x58]
2602B6:  BLX             R2
2602B8:  LDR             R0, [R4]
2602BA:  LDR             R1, [R0,#0x14]
2602BC:  MOV             R0, R4
2602BE:  BLX             R1
2602C0:  MOVS            R0, #0
2602C2:  STR             R0, [R5]
2602C4:  POP.W           {R11}
2602C8:  POP             {R4-R7,PC}
