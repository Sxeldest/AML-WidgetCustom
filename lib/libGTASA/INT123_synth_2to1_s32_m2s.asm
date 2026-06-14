; =========================================================
; Game Engine Function: INT123_synth_2to1_s32_m2s
; Address            : 0x23A0A0 - 0x23A14C
; =========================================================

23A0A0:  PUSH            {R4-R7,LR}
23A0A2:  ADD             R7, SP, #0xC
23A0A4:  PUSH.W          {R8,R9,R11}
23A0A8:  MOV             R4, R1
23A0AA:  MOVW            R1, #0xB2A0
23A0AE:  LDR             R6, [R4,R1]
23A0B0:  MOVW            R1, #0x91B0
23A0B4:  LDR             R5, [R4,R1]
23A0B6:  MOVS            R1, #0
23A0B8:  MOV             R2, R4
23A0BA:  MOVS            R3, #1
23A0BC:  BLX             R5
23A0BE:  MOVW            R1, #0xB2A8
23A0C2:  LDR             R1, [R4,R1]
23A0C4:  ADD             R1, R6
23A0C6:  LDR.W           R2, [R1,#-0x80]
23A0CA:  LDR.W           R3, [R1,#-0x78]
23A0CE:  LDR.W           R6, [R1,#-0x70]
23A0D2:  LDR.W           R5, [R1,#-0x68]
23A0D6:  LDR.W           R4, [R1,#-0x60]
23A0DA:  LDR.W           R12, [R1,#-0x58]
23A0DE:  STR.W           R2, [R1,#-0x7C]
23A0E2:  LDR.W           LR, [R1,#-0x50]
23A0E6:  STR.W           R3, [R1,#-0x74]
23A0EA:  LDR.W           R8, [R1,#-0x48]
23A0EE:  STR.W           R6, [R1,#-0x6C]
23A0F2:  LDR.W           R6, [R1,#-0x40]
23A0F6:  STR.W           R5, [R1,#-0x64]
23A0FA:  LDR.W           R5, [R1,#-0x38]
23A0FE:  STR.W           R4, [R1,#-0x5C]
23A102:  LDR.W           R9, [R1,#-0x30]
23A106:  STR.W           R12, [R1,#-0x54]
23A10A:  LDR.W           R2, [R1,#-0x28]
23A10E:  STR.W           LR, [R1,#-0x4C]
23A112:  LDR.W           R3, [R1,#-0x20]
23A116:  STR.W           R8, [R1,#-0x44]
23A11A:  LDR.W           R4, [R1,#-0x18]
23A11E:  STR.W           R6, [R1,#-0x3C]
23A122:  LDR.W           R6, [R1,#-0x10]
23A126:  STR.W           R5, [R1,#-0x34]
23A12A:  LDR.W           R5, [R1,#-8]
23A12E:  STR.W           R9, [R1,#-0x2C]
23A132:  STR.W           R2, [R1,#-0x24]
23A136:  STR.W           R3, [R1,#-0x1C]
23A13A:  STR.W           R4, [R1,#-0x14]
23A13E:  STR.W           R6, [R1,#-0xC]
23A142:  STR.W           R5, [R1,#-4]
23A146:  POP.W           {R8,R9,R11}
23A14A:  POP             {R4-R7,PC}
