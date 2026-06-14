; =========================================================
; Game Engine Function: _ZN4CPed8ClearAllEv
; Address            : 0x4A1DE0 - 0x4A1E34
; =========================================================

4A1DE0:  PUSH            {R4,R5,R7,LR}
4A1DE2:  ADD             R7, SP, #8
4A1DE4:  ADD.W           LR, R0, #0x488
4A1DE8:  LDR.W           R3, [R0,#0x484]
4A1DEC:  LDR.W           R2, [R0,#0x44C]
4A1DF0:  LDM.W           LR, {R1,R12,LR}
4A1DF4:  TST.W           R3, #0x600
4A1DF8:  BEQ             loc_4A1E2A
4A1DFA:  CMP             R2, #0x37 ; '7'
4A1DFC:  IT NE
4A1DFE:  POPNE           {R4,R5,R7,PC}
4A1E00:  MOVW            R5, #0xFFEF
4A1E04:  ADDW            R2, R0, #0x484
4A1E08:  MOVT            R5, #0x7FFF
4A1E0C:  ANDS            R1, R5
4A1E0E:  MOVS            R4, #0
4A1E10:  ORR.W           R3, R3, #0x2000
4A1E14:  STR.W           R4, [R0,#0x44C]
4A1E18:  STR.W           R4, [R0,#0x450]
4A1E1C:  STRD.W          R3, R1, [R2]
4A1E20:  STRD.W          R12, LR, [R2,#8]
4A1E24:  STR.W           R4, [R0,#0x12C]
4A1E28:  POP             {R4,R5,R7,PC}
4A1E2A:  CMP             R2, #0x36 ; '6'
4A1E2C:  BEQ             locret_4A1E28
4A1E2E:  CMP             R2, #0x3F ; '?'
4A1E30:  BEQ             locret_4A1E28
4A1E32:  B               loc_4A1E00
