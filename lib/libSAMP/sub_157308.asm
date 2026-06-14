; =========================================================
; Game Engine Function: sub_157308
; Address            : 0x157308 - 0x15735C
; =========================================================

157308:  PUSH            {R4,R5,R7,LR}
15730A:  ADD             R7, SP, #8
15730C:  MOV             R4, R0
15730E:  MOV             R0, R3
157310:  BFC.W           R0, #0x1F, #1
157314:  VLDR            D16, =+Inf
157318:  VMOV            D17, R2, R0
15731C:  VCMP.F64        D17, D16
157320:  VMRS            APSR_nzcv, FPSCR
157324:  BMI             loc_15732A
157326:  BGT             loc_15732A
157328:  B               loc_15734A
15732A:  ADD.W           R5, R4, #8
15732E:  ADD.W           R1, R4, #0x48 ; 'H'
157332:  MOV             R0, R5
157334:  BL              sub_15736C
157338:  LDR             R1, [R4]
15733A:  LDR             R2, [R1]
15733C:  LDR             R3, [R2,#4]
15733E:  SUBS            R2, R0, R5
157340:  MOV             R0, R1
157342:  MOV             R1, R5
157344:  POP.W           {R4,R5,R7,LR}
157348:  BX              R3
15734A:  LDR             R0, [R4]
15734C:  LDR             R2, [R0]
15734E:  LDR             R1, =(aNull_0 - 0x157356); "null" ...
157350:  LDR             R3, [R2,#4]
157352:  ADD             R1, PC; "null"
157354:  MOVS            R2, #4
157356:  POP.W           {R4,R5,R7,LR}
15735A:  BX              R3
