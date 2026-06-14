; =========================================================
; Game Engine Function: sub_481228
; Address            : 0x481228 - 0x481280
; =========================================================

481228:  PUSH            {R4-R7,LR}
48122A:  ADD             R7, SP, #0xC
48122C:  PUSH.W          {R8-R11}
481230:  SUB             SP, SP, #4
481232:  MOV             R4, R0
481234:  LDRD.W          R11, R10, [R7,#arg_0]
481238:  LDR             R5, [R4,#4]
48123A:  MOV             R6, R1
48123C:  MOV             R9, R3
48123E:  MOV             R8, R2
481240:  CMP             R6, #1
481242:  BEQ             loc_481256
481244:  LDR             R0, [R4]
481246:  MOVS            R1, #0xE
481248:  STR             R1, [R0,#0x14]
48124A:  LDR             R0, [R4]
48124C:  STR             R6, [R0,#0x18]
48124E:  LDR             R0, [R4]
481250:  LDR             R1, [R0]
481252:  MOV             R0, R4
481254:  BLX             R1
481256:  MOV             R0, R4; int
481258:  MOV             R1, R6
48125A:  MOVS            R2, #0x78 ; 'x'
48125C:  BL              sub_480EA8
481260:  MOVS            R1, #0
481262:  STRD.W          R1, R11, [R0]
481266:  STRD.W          R9, R10, [R0,#8]
48126A:  STRB.W          R8, [R0,#0x20]
48126E:  STRB.W          R1, [R0,#0x22]
481272:  LDR             R1, [R5,#0x48]
481274:  STR             R1, [R0,#0x24]
481276:  STR             R0, [R5,#0x48]
481278:  ADD             SP, SP, #4
48127A:  POP.W           {R8-R11}
48127E:  POP             {R4-R7,PC}
