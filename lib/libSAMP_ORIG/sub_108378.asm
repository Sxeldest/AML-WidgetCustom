; =========================================================
; Game Engine Function: sub_108378
; Address            : 0x108378 - 0x1083AE
; =========================================================

108378:  PUSH            {R4-R7,LR}
10837A:  ADD             R7, SP, #0xC
10837C:  PUSH.W          {R11}
108380:  SUB             SP, SP, #8
108382:  LDR             R4, [R0,#4]
108384:  LDR.W           R12, [R7,#arg_0]
108388:  ASRS            R5, R4, #8
10838A:  LSLS            R6, R4, #0x1F
10838C:  ITT NE
10838E:  LDRNE           R6, [R2]
108390:  LDRNE           R5, [R6,R5]
108392:  LDR             R0, [R0]
108394:  ADD             R2, R5
108396:  LSLS            R4, R4, #0x1E
108398:  LDR             R6, [R0]
10839A:  LDR             R6, [R6,#0x18]
10839C:  STR.W           R12, [SP,#0x18+var_18]
1083A0:  IT PL
1083A2:  MOVPL           R3, #2
1083A4:  BLX             R6
1083A6:  ADD             SP, SP, #8
1083A8:  POP.W           {R11}
1083AC:  POP             {R4-R7,PC}
