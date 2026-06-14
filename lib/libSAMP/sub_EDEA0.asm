; =========================================================
; Game Engine Function: sub_EDEA0
; Address            : 0xEDEA0 - 0xEDF1C
; =========================================================

EDEA0:  PUSH            {R4-R7,LR}
EDEA2:  ADD             R7, SP, #0xC
EDEA4:  PUSH.W          {R8-R11}
EDEA8:  SUB             SP, SP, #4
EDEAA:  LDRD.W          R10, R6, [R0]
EDEAE:  MOV             R0, R1; s
EDEB0:  MOV             R4, R2
EDEB2:  MOV             R9, R1
EDEB4:  BLX             strlen
EDEB8:  CMP             R6, R4
EDEBA:  BCS             loc_EDEC2
EDEBC:  MOV.W           R4, #0xFFFFFFFF
EDEC0:  B               loc_EDEE4
EDEC2:  MOV             R5, R0
EDEC4:  CBZ             R0, loc_EDEE4
EDEC6:  ADD.W           R0, R10, R4; s
EDECA:  ADD.W           R11, R10, R6
EDECE:  SUB.W           R1, R11, R0
EDED2:  CMP             R1, R5
EDED4:  BGE             loc_EDEEE
EDED6:  MOV             R6, R11
EDED8:  SUB.W           R4, R6, R10
EDEDC:  CMP             R6, R11
EDEDE:  IT EQ
EDEE0:  MOVEQ.W         R4, #0xFFFFFFFF
EDEE4:  MOV             R0, R4
EDEE6:  ADD             SP, SP, #4
EDEE8:  POP.W           {R8-R11}
EDEEC:  POP             {R4-R7,PC}
EDEEE:  LDRB.W          R8, [R9]
EDEF2:  SUBS            R1, R1, R5
EDEF4:  ADDS            R2, R1, #1; n
EDEF6:  BCS             loc_EDED6
EDEF8:  MOV             R1, R8; c
EDEFA:  BLX             memchr
EDEFE:  CMP             R0, #0
EDF00:  BEQ             loc_EDED6
EDF02:  MOV             R1, R9; s2
EDF04:  MOV             R2, R5; n
EDF06:  MOV             R6, R0
EDF08:  BLX             memcmp
EDF0C:  CMP             R0, #0
EDF0E:  BEQ             loc_EDED8
EDF10:  ADDS            R0, R6, #1
EDF12:  SUB.W           R1, R11, R0
EDF16:  CMP             R1, R5
EDF18:  BGE             loc_EDEF2
EDF1A:  B               loc_EDED6
