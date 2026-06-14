; =========================================================
; Game Engine Function: sub_23BB5A
; Address            : 0x23BB5A - 0x23BB94
; =========================================================

23BB5A:  PUSH            {R4,R6,R7,LR}
23BB5C:  ADD             R7, SP, #8
23BB5E:  SUB             SP, SP, #8
23BB60:  MOV             R4, R1
23BB62:  MOVW            R1, #0xB2E0
23BB66:  LDR             R1, [R0,R1]
23BB68:  MOVS            R2, #4
23BB6A:  LDR             R3, [R1,#8]
23BB6C:  ADD             R1, SP, #0x10+var_C
23BB6E:  BLX             R3
23BB70:  ADDS.W          R1, R0, #0xA
23BB74:  BEQ             loc_23BB86
23BB76:  CMP             R0, #4
23BB78:  BNE             loc_23BB8E
23BB7A:  LDR             R0, [SP,#0x10+var_C]
23BB7C:  REV             R0, R0
23BB7E:  STR             R0, [R4]
23BB80:  MOVS            R0, #1
23BB82:  ADD             SP, SP, #8
23BB84:  POP             {R4,R6,R7,PC}
23BB86:  MOV             R0, #0xFFFFFFF6
23BB8A:  ADD             SP, SP, #8
23BB8C:  POP             {R4,R6,R7,PC}
23BB8E:  MOVS            R0, #0
23BB90:  ADD             SP, SP, #8
23BB92:  POP             {R4,R6,R7,PC}
