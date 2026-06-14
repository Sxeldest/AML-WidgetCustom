; =========================================================
; Game Engine Function: sub_181ACA
; Address            : 0x181ACA - 0x181B28
; =========================================================

181ACA:  PUSH            {R4-R7,LR}
181ACC:  ADD             R7, SP, #0xC
181ACE:  PUSH.W          {R11}
181AD2:  SUB             SP, SP, #0x10
181AD4:  STRD.W          R1, R2, [SP,#0x20+var_18]
181AD8:  MOV             R6, R0
181ADA:  ADD.W           R1, R0, #0x234
181ADE:  ADD             R0, SP, #0x20+var_18
181AE0:  MOV             R4, R3
181AE2:  BL              sub_17E580
181AE6:  LDR             R5, [R7,#arg_0]
181AE8:  CBZ             R0, loc_181AFA
181AEA:  ADDS            R6, #0xC
181AEC:  MOV             R0, R6
181AEE:  BL              sub_17D55E
181AF2:  CBZ             R4, loc_181B20
181AF4:  CMP             R5, #1
181AF6:  BGE             loc_181B16
181AF8:  B               loc_181B20
181AFA:  LDRD.W          R1, R2, [SP,#0x20+var_18]
181AFE:  MOVS            R0, #1
181B00:  STR             R0, [SP,#0x20+var_20]
181B02:  MOV             R0, R6
181B04:  MOVS            R3, #0
181B06:  BL              sub_181978
181B0A:  CBZ             R0, loc_181B20
181B0C:  ADDW            R6, R0, #0x704
181B10:  MOV             R0, R6
181B12:  BL              sub_17D55E
181B16:  MOV             R0, R6
181B18:  MOV             R1, R4
181B1A:  MOV             R2, R5
181B1C:  BL              sub_17D566
181B20:  ADD             SP, SP, #0x10
181B22:  POP.W           {R11}
181B26:  POP             {R4-R7,PC}
