; =========================================================
; Game Engine Function: sub_152F4E
; Address            : 0x152F4E - 0x152F88
; =========================================================

152F4E:  PUSH            {R4,R5,R7,LR}
152F50:  ADD             R7, SP, #8
152F52:  SUB             SP, SP, #0x10
152F54:  MOV             R2, R1
152F56:  MOV             R1, R0
152F58:  ADD             R0, SP, #0x18+var_14
152F5A:  LDR             R4, [R2]
152F5C:  BL              sub_152F88
152F60:  LDR             R5, [SP,#0x18+var_14]
152F62:  MOVS            R0, #0
152F64:  STR             R0, [SP,#0x18+var_14]
152F66:  CBZ             R5, loc_152F82
152F68:  LDRB.W          R0, [SP,#0x18+var_C]
152F6C:  CBZ             R0, loc_152F7C
152F6E:  LDR             R0, [R5,#0xC]
152F70:  MOVS            R1, #0
152F72:  STR             R1, [R5,#0xC]
152F74:  CBZ             R0, loc_152F7C
152F76:  LDR             R1, [R0]
152F78:  LDR             R1, [R1,#4]
152F7A:  BLX             R1
152F7C:  MOV             R0, R5; void *
152F7E:  BLX             j__ZdlPv; operator delete(void *)
152F82:  MOV             R0, R4
152F84:  ADD             SP, SP, #0x10
152F86:  POP             {R4,R5,R7,PC}
