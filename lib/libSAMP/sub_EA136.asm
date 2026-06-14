; =========================================================
; Game Engine Function: sub_EA136
; Address            : 0xEA136 - 0xEA184
; =========================================================

EA136:  PUSH            {R4-R7,LR}
EA138:  ADD             R7, SP, #0xC
EA13A:  PUSH.W          {R8}
EA13E:  SUB             SP, SP, #0x18
EA140:  MOV             R5, R1
EA142:  ADD             R1, SP, #0x28+var_14
EA144:  MOV             R4, R0
EA146:  MOV             R0, R5
EA148:  MOV             R8, R3
EA14A:  BL              sub_EA184
EA14E:  MOV             R6, R0
EA150:  LDR             R0, [R0]
EA152:  CBZ             R0, loc_EA158
EA154:  MOVS            R1, #0
EA156:  B               loc_EA178
EA158:  LDRD.W          R3, R0, [R7,#arg_0]
EA15C:  MOV             R1, R5
EA15E:  MOV             R2, R8
EA160:  STR             R0, [SP,#0x28+var_28]
EA162:  ADD             R0, SP, #0x28+var_20
EA164:  BL              sub_EA1F4
EA168:  LDR             R3, [SP,#0x28+var_20]
EA16A:  MOV             R0, R5
EA16C:  LDR             R1, [SP,#0x28+var_14]
EA16E:  MOV             R2, R6
EA170:  BL              sub_EA246
EA174:  LDR             R0, [SP,#0x28+var_20]
EA176:  MOVS            R1, #1
EA178:  STRB            R1, [R4,#4]
EA17A:  STR             R0, [R4]
EA17C:  ADD             SP, SP, #0x18
EA17E:  POP.W           {R8}
EA182:  POP             {R4-R7,PC}
