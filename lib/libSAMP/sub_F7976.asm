; =========================================================
; Game Engine Function: sub_F7976
; Address            : 0xF7976 - 0xF7A12
; =========================================================

F7976:  PUSH            {R4-R7,LR}
F7978:  ADD             R7, SP, #0xC
F797A:  PUSH.W          {R8-R11}
F797E:  SUB             SP, SP, #0xC
F7980:  MOV             R6, R1
F7982:  MOV             R9, R1
F7984:  LDR.W           R4, [R6,#4]!
F7988:  MOV             R8, R0
F798A:  CBZ             R4, loc_F79B2
F798C:  LDR             R0, [R2]
F798E:  ADD.W           R6, R9, #4
F7992:  LDR             R1, [R4,#0x10]
F7994:  CMP             R0, R1
F7996:  BCS             loc_F799E
F7998:  LDR             R1, [R4]
F799A:  CBNZ            R1, loc_F79AC
F799C:  B               loc_F79B6
F799E:  CMP             R1, R0
F79A0:  BCS             loc_F79B8
F79A2:  MOV             R6, R4
F79A4:  LDR.W           R1, [R6,#4]!
F79A8:  CBZ             R1, loc_F79B8
F79AA:  MOV             R4, R6
F79AC:  MOV             R6, R4
F79AE:  MOV             R4, R1
F79B0:  B               loc_F7992
F79B2:  MOV             R4, R6
F79B4:  B               loc_F79B8
F79B6:  MOV             R6, R4
F79B8:  LDR             R5, [R6]
F79BA:  MOV.W           R10, #0
F79BE:  CBNZ            R5, loc_F7A02
F79C0:  MOVS            R0, #0x20 ; ' '; unsigned int
F79C2:  LDR.W           R11, [R7,#arg_0]
F79C6:  BLX             j__Znwj; operator new(uint)
F79CA:  MOV             R5, R0
F79CC:  LDR.W           R0, [R11]
F79D0:  MOV             R1, R4
F79D2:  MOV             R2, R6
F79D4:  MOV             R3, R5
F79D6:  LDR             R0, [R0]
F79D8:  STRD.W          R0, R10, [R5,#0x10]
F79DC:  ADD.W           R0, R9, #4
F79E0:  STR             R0, [SP,#0x28+var_24]
F79E2:  MOVS            R0, #1
F79E4:  STRB.W          R0, [SP,#0x28+var_20]
F79E8:  MOV             R0, R9
F79EA:  STRD.W          R10, R10, [R5,#0x18]
F79EE:  BL              sub_F7A12
F79F2:  MOV             R0, SP
F79F4:  MOVS            R1, #0
F79F6:  STR.W           R10, [SP,#0x28+var_28]
F79FA:  BL              sub_F7A3C
F79FE:  MOV.W           R10, #1
F7A02:  STRB.W          R10, [R8,#4]
F7A06:  STR.W           R5, [R8]
F7A0A:  ADD             SP, SP, #0xC
F7A0C:  POP.W           {R8-R11}
F7A10:  POP             {R4-R7,PC}
