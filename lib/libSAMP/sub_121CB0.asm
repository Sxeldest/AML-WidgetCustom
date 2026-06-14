; =========================================================
; Game Engine Function: sub_121CB0
; Address            : 0x121CB0 - 0x121CFC
; =========================================================

121CB0:  PUSH            {R4-R7,LR}
121CB2:  ADD             R7, SP, #0xC
121CB4:  PUSH.W          {R8,R9,R11}
121CB8:  ADDS            R5, R0, #4
121CBA:  MOV             R6, R1
121CBC:  MOV             R4, R0
121CBE:  MOV.W           R1, #0x2000; n
121CC2:  MOV             R0, R5; int
121CC4:  MOV             R8, R3
121CC6:  MOV             R9, R2
121CC8:  BLX             sub_22178C
121CCC:  MOV             R0, R4
121CCE:  MOV             R1, R6
121CD0:  BL              sub_121D38
121CD4:  STR.W           R5, [R9]
121CD8:  MOVW            R0, #0x2004
121CDC:  ADDS            R5, R4, R0
121CDE:  MOV.W           R1, #0x2000; n
121CE2:  MOV             R0, R5; int
121CE4:  BLX             sub_22178C
121CE8:  MOV             R0, R4
121CEA:  MOV             R1, R6
121CEC:  BL              sub_12257C
121CF0:  STR.W           R5, [R8]
121CF4:  MOVS            R0, #1
121CF6:  POP.W           {R8,R9,R11}
121CFA:  POP             {R4-R7,PC}
