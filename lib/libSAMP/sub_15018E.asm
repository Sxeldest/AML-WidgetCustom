; =========================================================
; Game Engine Function: sub_15018E
; Address            : 0x15018E - 0x1501BC
; =========================================================

15018E:  PUSH            {R4-R7,LR}
150190:  ADD             R7, SP, #0xC
150192:  PUSH.W          {R11}
150196:  MOV             R4, R2
150198:  MOV             R5, R1
15019A:  MOV             R6, R0
15019C:  BL              sub_F2396
1501A0:  CBZ             R0, loc_1501B6
1501A2:  LDR.W           R0, [R6,R5,LSL#2]
1501A6:  CBZ             R0, loc_1501B6
1501A8:  MOV             R1, R4
1501AA:  POP.W           {R11}
1501AE:  POP.W           {R4-R7,LR}
1501B2:  B.W             sub_109C04
1501B6:  POP.W           {R11}
1501BA:  POP             {R4-R7,PC}
