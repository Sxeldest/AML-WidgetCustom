; =========================================================
; Game Engine Function: sub_181A90
; Address            : 0x181A90 - 0x181ACA
; =========================================================

181A90:  PUSH            {R4,R6,R7,LR}
181A92:  ADD             R7, SP, #8
181A94:  SUB             SP, SP, #0x10
181A96:  STRD.W          R1, R2, [SP,#0x18+var_10]
181A9A:  MOV             R4, R0
181A9C:  ADD.W           R1, R0, #0x234
181AA0:  ADD             R0, SP, #0x18+var_10
181AA2:  BL              sub_17E580
181AA6:  CBZ             R0, loc_181AAE
181AA8:  ADD.W           R0, R4, #0xC
181AAC:  B               loc_181AC6
181AAE:  LDRD.W          R1, R2, [SP,#0x18+var_10]
181AB2:  MOVS            R0, #0
181AB4:  STR             R0, [SP,#0x18+var_18]
181AB6:  MOV             R0, R4
181AB8:  MOVS            R3, #0
181ABA:  BL              sub_181978
181ABE:  CMP             R0, #0
181AC0:  IT NE
181AC2:  ADDWNE          R0, R0, #0x704
181AC6:  ADD             SP, SP, #0x10
181AC8:  POP             {R4,R6,R7,PC}
