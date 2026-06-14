; =========================================================
; Game Engine Function: sub_FF41C
; Address            : 0xFF41C - 0xFF458
; =========================================================

FF41C:  PUSH            {R4-R7,LR}
FF41E:  ADD             R7, SP, #0xC
FF420:  PUSH.W          {R11}
FF424:  MOV             R4, R1
FF426:  LDR             R1, =(off_23494C - 0xFF430)
FF428:  LDR             R3, =(off_25B178 - 0xFF432)
FF42A:  MOV             R5, LR
FF42C:  ADD             R1, PC; off_23494C
FF42E:  ADD             R3, PC; off_25B178
FF430:  LDR             R1, [R1]; dword_23DF24
FF432:  LDR             R3, [R3]
FF434:  LDR             R6, [R1]
FF436:  MOV             R1, R4
FF438:  BLX             R3
FF43A:  MOVW            R2, #:lower16:(sub_1E9226+1)
FF43E:  SUBS            R1, R5, R6
FF440:  MOVT            R2, #:upper16:(sub_1E9226+1)
FF444:  CMP             R1, R2
FF446:  BNE             loc_FF452
FF448:  LDR             R1, =(off_234ADC - 0xFF450)
FF44A:  LDR             R2, [R4]
FF44C:  ADD             R1, PC; off_234ADC
FF44E:  LDR             R1, [R1]; dword_2638E8
FF450:  STR             R2, [R1]
FF452:  POP.W           {R11}
FF456:  POP             {R4-R7,PC}
