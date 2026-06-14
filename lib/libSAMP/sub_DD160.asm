; =========================================================
; Game Engine Function: sub_DD160
; Address            : 0xDD160 - 0xDD1E0
; =========================================================

DD160:  PUSH            {R4,R5,R7,LR}
DD162:  ADD             R7, SP, #8
DD164:  SUB             SP, SP, #0x20
DD166:  ORR.W           R5, R2, #1
DD16A:  LDR             R1, =(unk_91C38 - 0xDD188)
DD16C:  CLZ.W           R5, R5
DD170:  MOV             R4, R0
DD172:  LDR             R0, =(unk_91BF8 - 0xDD182)
DD174:  ADDS            R5, #0x20 ; ' '
DD176:  CMP             R3, #0
DD178:  IT NE
DD17A:  CLZNE.W         R5, R3
DD17E:  ADD             R0, PC; unk_91BF8
DD180:  EOR.W           R5, R5, #0x3F ; '?'
DD184:  ADD             R1, PC; unk_91C38
DD186:  LDRD.W          LR, R12, [R4,#8]
DD18A:  LDRB            R0, [R0,R5]
DD18C:  LDR.W           R5, [R1,R0,LSL#3]
DD190:  ADD.W           R1, R1, R0,LSL#3
DD194:  LDR             R1, [R1,#4]
DD196:  SUBS            R5, R2, R5
DD198:  SBCS.W          R1, R3, R1
DD19C:  IT CC
DD19E:  SUBCC           R0, #1
DD1A0:  ADD.W           R5, R0, LR
DD1A4:  CMP             R12, R5
DD1A6:  BCC             loc_DD1C2
DD1A8:  LDR.W           R12, [R4,#4]
DD1AC:  STR             R5, [R4,#8]
DD1AE:  CMP.W           R12, #0
DD1B2:  BEQ             loc_DD1C2
DD1B4:  STR             R0, [SP,#0x28+var_28]
DD1B6:  ADD.W           R1, R12, LR
DD1BA:  ADD             R0, SP, #0x28+var_1C
DD1BC:  BL              sub_DD0CC
DD1C0:  B               loc_DD1DA
DD1C2:  ADD             R5, SP, #0x28+var_1C
DD1C4:  STR             R0, [SP,#0x28+var_28]
DD1C6:  ADD             R0, SP, #0x28+var_24
DD1C8:  MOV             R1, R5
DD1CA:  BL              sub_DD0CC
DD1CE:  LDR             R1, [SP,#0x28+var_20]
DD1D0:  MOV             R0, R5
DD1D2:  MOV             R2, R4
DD1D4:  BL              sub_DCF1C
DD1D8:  MOV             R4, R0
DD1DA:  MOV             R0, R4
DD1DC:  ADD             SP, SP, #0x20 ; ' '
DD1DE:  POP             {R4,R5,R7,PC}
