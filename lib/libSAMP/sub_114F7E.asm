; =========================================================
; Game Engine Function: sub_114F7E
; Address            : 0x114F7E - 0x114F9E
; =========================================================

114F7E:  PUSH            {R4,R6,R7,LR}
114F80:  ADD             R7, SP, #8
114F82:  SUB             SP, SP, #0x10
114F84:  MOV             R4, R0
114F86:  MOVS            R0, #0
114F88:  STR             R0, [R4,#0x10]
114F8A:  STR             R2, [SP,#0x18+var_C]
114F8C:  STRD.W          R3, R1, [SP,#0x18+var_14]
114F90:  ADD             R1, SP, #0x18+var_14
114F92:  MOV             R0, R4
114F94:  BL              sub_115B90
114F98:  MOV             R0, R4
114F9A:  ADD             SP, SP, #0x10
114F9C:  POP             {R4,R6,R7,PC}
