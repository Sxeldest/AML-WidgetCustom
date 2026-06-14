; =========================================================
; Game Engine Function: sub_181A3C
; Address            : 0x181A3C - 0x181A6C
; =========================================================

181A3C:  PUSH            {R7,LR}
181A3E:  MOV             R7, SP
181A40:  SUB             SP, SP, #8
181A42:  MOVS            R3, #0
181A44:  STR             R3, [SP,#0x10+var_10]
181A46:  MOVS            R3, #0
181A48:  BL              sub_181978
181A4C:  CBZ             R0, loc_181A64
181A4E:  LDR.W           R1, [R0,#0x6F4]
181A52:  SUBS            R2, R1, #1
181A54:  CMP             R1, #0
181A56:  IT EQ
181A58:  MOVEQ           R2, #4
181A5A:  ADD.W           R0, R0, R2,LSL#3
181A5E:  LDRH.W          R0, [R0,#0x6CC]
181A62:  B               loc_181A68
181A64:  MOV.W           R0, #0xFFFFFFFF
181A68:  ADD             SP, SP, #8
181A6A:  POP             {R7,PC}
