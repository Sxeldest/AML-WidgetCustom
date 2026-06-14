; =========================================================
; Game Engine Function: _Z16NVHHDDSAllocDataP12NVHHDDSImage
; Address            : 0x274CCE - 0x274DE2
; =========================================================

274CCE:  PUSH            {R4-R7,LR}
274CD0:  ADD             R7, SP, #0xC
274CD2:  PUSH.W          {R8-R11}
274CD6:  SUB             SP, SP, #0xC
274CD8:  MOV             R8, R0
274CDA:  CMP.W           R8, #0
274CDE:  BEQ             loc_274DD8
274CE0:  LDRD.W          R6, R0, [R8,#0x18]
274CE4:  MOVW            R11, #0xFE80
274CE8:  CMP             R0, #0
274CEA:  MOV.W           R1, #1
274CEE:  ADD.W           R0, R8, #0x32C
274CF2:  IT NE
274CF4:  MOVNE           R1, #6
274CF6:  STR             R0, [SP,#0x28+var_28]
274CF8:  MOVS            R0, #0
274CFA:  MOVT            R11, #0xFFFF
274CFE:  MOVW            R9, #0x83F1
274D02:  MOVS            R5, #0
274D04:  MOV.W           R10, #0
274D08:  STR             R1, [SP,#0x28+var_24]
274D0A:  CMP             R6, #1
274D0C:  BLT             loc_274D8C
274D0E:  LDRD.W          R2, R3, [R8]
274D12:  MOV.W           R12, #0xCB
274D16:  LDR             R1, [SP,#0x28+var_28]
274D18:  STR             R5, [SP,#0x28+var_20]
274D1A:  ADD.W           R1, R1, R5,LSL#2
274D1E:  LDR.W           R5, [R8,#0x14]
274D22:  CBZ             R5, loc_274D4C
274D24:  ADDS            R5, R3, #3
274D26:  ASRS            R6, R5, #0x1F
274D28:  ADD.W           R5, R5, R6,LSR#30
274D2C:  ADDS            R6, R2, #3
274D2E:  MOV.W           LR, R6,ASR#31
274D32:  ASRS            R5, R5, #2
274D34:  ADD.W           R6, R6, LR,LSR#30
274D38:  ASRS            R6, R6, #2
274D3A:  MULS            R6, R5
274D3C:  LDR.W           R5, [R8,#0x20]
274D40:  CMP             R5, R9
274D42:  MOV.W           R5, #0x10
274D46:  IT EQ
274D48:  MOVEQ           R5, #8
274D4A:  B               loc_274D54
274D4C:  MUL.W           R6, R2, R3
274D50:  LDR.W           R5, [R8,#0x10]
274D54:  MULS            R5, R6
274D56:  CMP             R3, #1
274D58:  SUB.W           R4, R12, #0xCA
274D5C:  STR.W           R5, [R1,R11]
274D60:  ADD             R0, R5; unsigned int
274D62:  STR             R2, [R1]
274D64:  ADD.W           R5, R12, #1
274D68:  STR.W           R3, [R1,#0x180]
274D6C:  IT NE
274D6E:  ASRNE           R3, R3, #1
274D70:  CMP             R2, #1
274D72:  ADD.W           R1, R1, #4
274D76:  IT NE
274D78:  ASRNE           R2, R2, #1
274D7A:  LDR.W           R6, [R8,#0x18]
274D7E:  MOV             R12, R5
274D80:  CMP             R4, R6
274D82:  BLT             loc_274D1E
274D84:  LDR             R1, [SP,#0x28+var_20]
274D86:  ADD             R1, R5
274D88:  SUB.W           R5, R1, #0xCB
274D8C:  LDR             R1, [SP,#0x28+var_24]
274D8E:  ADD.W           R10, R10, #1
274D92:  CMP             R10, R1
274D94:  BLT             loc_274D0A
274D96:  BLX             _Znaj; operator new[](uint)
274D9A:  LDR.W           R1, [R8,#0x1C]
274D9E:  MOVS            R2, #1
274DA0:  CMP             R1, #0
274DA2:  IT NE
274DA4:  MOVNE           R2, #6
274DA6:  STRD.W          R0, R0, [R8,#0x28]
274DAA:  MULS            R2, R6
274DAC:  CMP             R2, #2
274DAE:  BLT             loc_274DDA
274DB0:  ADD.W           R1, R8, #0x1AC
274DB4:  SUBS            R0, R2, #1
274DB6:  MOV             R2, #0xFFFFFE84
274DBE:  MOV             R3, R1
274DC0:  LDR.W           R6, [R3],#4
274DC4:  SUBS            R0, #1
274DC6:  LDR.W           R5, [R1,R11]
274DCA:  ADD             R6, R5
274DCC:  STR             R6, [R1,R2]
274DCE:  MOV             R1, R3
274DD0:  BNE             loc_274DC0
274DD2:  LDR.W           R0, [R8,#0x28]
274DD6:  B               loc_274DDA
274DD8:  MOVS            R0, #0
274DDA:  ADD             SP, SP, #0xC
274DDC:  POP.W           {R8-R11}
274DE0:  POP             {R4-R7,PC}
