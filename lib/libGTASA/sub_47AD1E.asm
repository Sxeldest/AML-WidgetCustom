; =========================================================
; Game Engine Function: sub_47AD1E
; Address            : 0x47AD1E - 0x47AD80
; =========================================================

47AD1E:  PUSH            {R4-R7,LR}
47AD20:  ADD             R7, SP, #0xC
47AD22:  PUSH.W          {R8-R11}
47AD26:  SUB             SP, SP, #4
47AD28:  MOV             R11, R0
47AD2A:  MOV             R9, R3
47AD2C:  LDR.W           R0, [R11,#0x3C]
47AD30:  MOV             R4, R2
47AD32:  MOV             R8, R1
47AD34:  CMP             R0, #1
47AD36:  BLT             loc_47AD78
47AD38:  LDR.W           R0, [R11,#0x154]
47AD3C:  MOV.W           R10, #0
47AD40:  ADDS            R0, #0xC
47AD42:  STR             R0, [SP,#0x20+var_20]
47AD44:  LDR.W           R5, [R11,#0x44]
47AD48:  LDR             R0, [R5,#0xC]
47AD4A:  LDR             R2, [R7,#arg_0]
47AD4C:  LDR             R1, [SP,#0x20+var_20]
47AD4E:  LDR.W           R6, [R9,R10,LSL#2]
47AD52:  MULS            R0, R2
47AD54:  LDR.W           R2, [R8,R10,LSL#2]
47AD58:  LDR.W           R12, [R1,R10,LSL#2]
47AD5C:  ADD.W           R2, R2, R4,LSL#2
47AD60:  MOV             R1, R5
47AD62:  ADD.W           R3, R6, R0,LSL#2
47AD66:  MOV             R0, R11
47AD68:  BLX             R12
47AD6A:  LDR.W           R0, [R11,#0x3C]
47AD6E:  ADD.W           R10, R10, #1
47AD72:  ADDS            R5, #0x54 ; 'T'
47AD74:  CMP             R10, R0
47AD76:  BLT             loc_47AD48
47AD78:  ADD             SP, SP, #4
47AD7A:  POP.W           {R8-R11}
47AD7E:  POP             {R4-R7,PC}
