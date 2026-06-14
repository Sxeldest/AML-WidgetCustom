; =========================================================
; Game Engine Function: sub_FE160
; Address            : 0xFE160 - 0xFE1AE
; =========================================================

FE160:  PUSH            {R4-R7,LR}
FE162:  ADD             R7, SP, #0xC
FE164:  PUSH.W          {R8,R9,R11}
FE168:  MOV             R4, R0
FE16A:  LDR             R0, =(off_23494C - 0xFE174)
FE16C:  MOVW            R8, #:lower16:(loc_1DB9B0+1)
FE170:  ADD             R0, PC; off_23494C
FE172:  MOVT            R8, #:upper16:(loc_1DB9B0+1)
FE176:  LDR             R6, [R0]; dword_23DF24
FE178:  LDR             R0, [R6]
FE17A:  ADD             R0, R8
FE17C:  ADDS            R0, #0xB4
FE17E:  BLX             R0
FE180:  CBZ             R0, loc_FE1A6
FE182:  MOV             R5, R0
FE184:  LDR             R0, [R6]
FE186:  MOV             R9, #0xA83F5C
FE18E:  ADD.W           R2, R0, R8
FE192:  MOV             R0, R5
FE194:  MOV             R1, R4
FE196:  BLX             R2
FE198:  CBNZ            R0, loc_FE1A8
FE19A:  LDR             R0, [R6]
FE19C:  LDR.W           R1, [R0,R9]
FE1A0:  LDR             R5, [R1,R5]
FE1A2:  CMP             R5, #0
FE1A4:  BNE             loc_FE18E
FE1A6:  MOVS            R0, #0
FE1A8:  POP.W           {R8,R9,R11}
FE1AC:  POP             {R4-R7,PC}
