; =========================================================
; Game Engine Function: sub_47FC24
; Address            : 0x47FC24 - 0x47FC92
; =========================================================

47FC24:  PUSH            {R4-R7,LR}
47FC26:  ADD             R7, SP, #0xC
47FC28:  PUSH.W          {R8-R10}
47FC2C:  SUB             SP, SP, #0x10
47FC2E:  MOV             R4, R0
47FC30:  LDR.W           R8, [R7,#arg_4]
47FC34:  LDR.W           R6, [R4,#0x18C]
47FC38:  MOVS            R0, #0
47FC3A:  LDR.W           R12, [R7,#arg_8]
47FC3E:  LDR.W           R9, [R8]
47FC42:  LDRD.W          LR, R5, [R6,#0xC]
47FC46:  STR             R0, [SP,#0x28+var_1C]
47FC48:  SUB.W           R0, R12, R9
47FC4C:  LDR.W           R10, [R4,#0x1A0]
47FC50:  CMP             R0, R5
47FC52:  LDR.W           R12, [R10,#4]
47FC56:  IT HI
47FC58:  MOVHI           R0, R5
47FC5A:  ADD             R5, SP, #0x28+var_1C
47FC5C:  STRD.W          LR, R5, [SP,#0x28+var_28]
47FC60:  STR             R0, [SP,#0x28+var_20]
47FC62:  MOV             R0, R4
47FC64:  BLX             R12
47FC66:  LDR.W           R0, [R4,#0x1A8]
47FC6A:  LDR.W           R2, [R8]
47FC6E:  LDR             R5, [R7,#arg_0]
47FC70:  LDR             R1, [R6,#0xC]
47FC72:  LDR             R6, [R0,#4]
47FC74:  ADD.W           R2, R5, R2,LSL#2
47FC78:  LDR             R3, [SP,#0x28+var_1C]
47FC7A:  MOV             R0, R4
47FC7C:  BLX             R6
47FC7E:  LDR.W           R0, [R8]
47FC82:  LDR             R1, [SP,#0x28+var_1C]
47FC84:  ADD             R0, R1
47FC86:  STR.W           R0, [R8]
47FC8A:  ADD             SP, SP, #0x10
47FC8C:  POP.W           {R8-R10}
47FC90:  POP             {R4-R7,PC}
