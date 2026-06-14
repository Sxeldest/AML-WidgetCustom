; =========================================================
; Game Engine Function: sub_17DFD4
; Address            : 0x17DFD4 - 0x17E03E
; =========================================================

17DFD4:  PUSH            {R4-R7,LR}
17DFD6:  ADD             R7, SP, #0xC
17DFD8:  PUSH.W          {R11}
17DFDC:  LDR             R6, [R0]
17DFDE:  MOV             R4, R0
17DFE0:  MOV             R5, R1
17DFE2:  MOVS            R0, #0xC; unsigned int
17DFE4:  CMP             R6, #1
17DFE6:  BEQ             loc_17E000
17DFE8:  CBNZ            R6, loc_17E01E
17DFEA:  BLX             j__Znwj; operator new(uint)
17DFEE:  STR             R0, [R4,#4]
17DFF0:  MOVS            R2, #1
17DFF2:  LDR             R1, [R5]
17DFF4:  STR             R2, [R4]
17DFF6:  STR             R0, [R4,#8]
17DFF8:  STRD.W          R1, R0, [R0]
17DFFC:  STR             R0, [R0,#8]
17DFFE:  B               loc_17E038
17E000:  BLX             j__Znwj; operator new(uint)
17E004:  MOV             R1, R0
17E006:  LDR             R0, [R4,#4]
17E008:  STR             R1, [R4,#8]
17E00A:  MOVS            R3, #2
17E00C:  STR             R3, [R4]
17E00E:  STRD.W          R1, R1, [R0,#4]
17E012:  LDR             R2, [R5]
17E014:  STRD.W          R0, R0, [R1,#4]
17E018:  STR             R0, [R4,#8]
17E01A:  STR             R2, [R1]
17E01C:  B               loc_17E038
17E01E:  BLX             j__Znwj; operator new(uint)
17E022:  LDR             R1, [R4,#8]
17E024:  ADDS            R6, #1
17E026:  LDR             R3, [R5]
17E028:  STR             R6, [R4]
17E02A:  LDR             R2, [R1,#8]
17E02C:  STR             R3, [R0]
17E02E:  STRD.W          R1, R2, [R0,#4]
17E032:  LDR             R2, [R1,#8]
17E034:  STR             R0, [R1,#8]
17E036:  STR             R0, [R2,#4]
17E038:  POP.W           {R11}
17E03C:  POP             {R4-R7,PC}
