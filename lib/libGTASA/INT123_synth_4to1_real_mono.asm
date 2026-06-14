; =========================================================
; Game Engine Function: INT123_synth_4to1_real_mono
; Address            : 0x238DC8 - 0x238E56
; =========================================================

238DC8:  PUSH            {R4-R7,LR}
238DCA:  ADD             R7, SP, #0xC
238DCC:  PUSH.W          {R8-R10}
238DD0:  SUB             SP, SP, #0x80
238DD2:  MOV             R4, R1
238DD4:  MOVW            R1, #0x91BC
238DD8:  LDR             R6, [R4,R1]
238DDA:  MOVW            R8, #0xB2A8
238DDE:  MOVW            R9, #0xB2A0
238DE2:  MOV             R1, SP
238DE4:  LDR.W           R10, [R4,R8]
238DE8:  LDR.W           R5, [R4,R9]
238DEC:  STR.W           R1, [R4,R9]
238DF0:  MOVS            R1, #0
238DF2:  STR.W           R1, [R4,R8]
238DF6:  MOVS            R1, #0
238DF8:  MOV             R2, R4
238DFA:  MOVS            R3, #0
238DFC:  BLX             R6
238DFE:  STR.W           R5, [R4,R9]
238E02:  ADD.W           R1, R5, R10
238E06:  VLDR            D16, [SP,#0x98+var_98]
238E0A:  VSTR            D16, [R1]
238E0E:  VLDR            D16, [SP,#0x98+var_88]
238E12:  VSTR            D16, [R1,#8]
238E16:  VLDR            D16, [SP,#0x98+var_78]
238E1A:  VSTR            D16, [R1,#0x10]
238E1E:  VLDR            D16, [SP,#0x98+var_68]
238E22:  VSTR            D16, [R1,#0x18]
238E26:  VLDR            D16, [SP,#0x98+var_58]
238E2A:  VSTR            D16, [R1,#0x20]
238E2E:  VLDR            D16, [SP,#0x98+var_48]
238E32:  VSTR            D16, [R1,#0x28]
238E36:  VLDR            D16, [SP,#0x98+var_38]
238E3A:  VSTR            D16, [R1,#0x30]
238E3E:  VLDR            D16, [SP,#0x98+var_28]
238E42:  VSTR            D16, [R1,#0x38]
238E46:  ADD.W           R1, R10, #0x40 ; '@'
238E4A:  STR.W           R1, [R4,R8]
238E4E:  ADD             SP, SP, #0x80
238E50:  POP.W           {R8-R10}
238E54:  POP             {R4-R7,PC}
