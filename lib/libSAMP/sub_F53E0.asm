; =========================================================
; Game Engine Function: sub_F53E0
; Address            : 0xF53E0 - 0xF5418
; =========================================================

F53E0:  SUB             SP, SP, #0xC
F53E2:  PUSH            {R4,R6,R7,LR}
F53E4:  ADD             R7, SP, #8
F53E6:  SUB             SP, SP, #0xEC
F53E8:  ADD.W           R12, R7, #8
F53EC:  STR             R0, [SP,#0xF4+var_F4]
F53EE:  STM.W           R12, {R1-R3}
F53F2:  MOV             R4, SP
F53F4:  ADDS            R0, R4, #4; dest
F53F6:  ADD.W           R1, R7, #8; src
F53FA:  MOVS            R2, #0xE0; n
F53FC:  BLX             j_memcpy
F5400:  LDR             R1, =(dword_240084 - 0xF540C)
F5402:  ADD             R0, SP, #0xF4+var_10
F5404:  MOV             R2, R4
F5406:  MOV             R3, R4
F5408:  ADD             R1, PC; dword_240084
F540A:  BL              sub_F5498
F540E:  ADD             SP, SP, #0xEC
F5410:  POP.W           {R4,R6,R7,LR}
F5414:  ADD             SP, SP, #0xC
F5416:  BX              LR
