; =========================================================
; Game Engine Function: sub_F5544
; Address            : 0xF5544 - 0xF5568
; =========================================================

F5544:  PUSH            {R4,R6,R7,LR}
F5546:  ADD             R7, SP, #8
F5548:  LDR             R1, =(dword_240084 - 0xF5552)
F554A:  MOVS            R3, #0
F554C:  LDR             R0, =(sub_F5464+1 - 0xF5556)
F554E:  ADD             R1, PC; dword_240084
F5550:  LDR             R2, =(off_22A540 - 0xF555A)
F5552:  ADD             R0, PC; sub_F5464
F5554:  MOV             R4, R1
F5556:  ADD             R2, PC; off_22A540
F5558:  STR.W           R3, [R4,#(dword_240088 - 0x240084)]!
F555C:  STR             R3, [R1,#(dword_24008C - 0x240084)]
F555E:  STR             R4, [R1]
F5560:  POP.W           {R4,R6,R7,LR}
F5564:  B.W             sub_224250
