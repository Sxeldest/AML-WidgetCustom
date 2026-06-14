; =========================================================
; Game Engine Function: _Z18NvBuildRotZDegMatfPA4_ff
; Address            : 0x278DC4 - 0x278E2C
; =========================================================

278DC4:  PUSH            {R4-R7,LR}
278DC6:  ADD             R7, SP, #0xC
278DC8:  PUSH.W          {R11}
278DCC:  VPUSH           {D8-D10}
278DD0:  VLDR            S0, =0.017453
278DD4:  VMOV            S2, R1
278DD8:  MOV             R4, R0
278DDA:  MOVS            R0, #0
278DDC:  VMUL.F32        S0, S2, S0
278DE0:  STRD.W          R0, R0, [R4,#8]
278DE4:  VMOV.I32        Q4, #0
278DE8:  ADD.W           R0, R4, #0x18
278DEC:  MOV.W           R6, #0x3F800000
278DF0:  STR             R6, [R4,#0x28]
278DF2:  VST1.32         {D8-D9}, [R0]
278DF6:  VMOV            R5, S0
278DFA:  MOV             R0, R5; x
278DFC:  BLX             sinf
278E00:  ADD.W           R1, R4, #0x2C ; ','
278E04:  VMOV            S0, R0
278E08:  VST1.32         {D8-D9}, [R1]
278E0C:  VNEG.F32        S20, S0
278E10:  STR             R6, [R4,#0x3C]
278E12:  STR             R0, [R4,#4]
278E14:  MOV             R0, R5; x
278E16:  BLX             cosf
278E1A:  STR             R0, [R4]
278E1C:  STR             R0, [R4,#0x14]
278E1E:  VSTR            S20, [R4,#0x10]
278E22:  VPOP            {D8-D10}
278E26:  POP.W           {R11}
278E2A:  POP             {R4-R7,PC}
