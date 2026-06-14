; =========================================================
; Game Engine Function: sub_EF430
; Address            : 0xEF430 - 0xEF46C
; =========================================================

EF430:  PUSH            {R4,R6,R7,LR}
EF432:  ADD             R7, SP, #8
EF434:  SUB             SP, SP, #8
EF436:  MOV             R4, R0
EF438:  LDR             R0, [R0,#8]; int
EF43A:  LDRB            R2, [R4,#4]
EF43C:  LDR             R1, [R4,#0xC]
EF43E:  CBZ             R2, loc_EF450
EF440:  LDR             R1, [R1,#0x18]
EF442:  CMP             R1, #6
EF444:  BHI             loc_EF45E
EF446:  LDR             R2, =(off_22AA04 - 0xEF44C); "Sunday" ...
EF448:  ADD             R2, PC; off_22AA04
EF44A:  LDR.W           R1, [R2,R1,LSL#2]
EF44E:  B               loc_EF462
EF450:  LDR             R2, [R4]
EF452:  MOVS            R3, #0
EF454:  STR             R3, [SP,#0x10+var_10]
EF456:  MOVS            R3, #0x41 ; 'A'
EF458:  BL              sub_EFCE0
EF45C:  B               loc_EF466
EF45E:  LDR             R1, =(asc_887EB - 0xEF464); "?" ...
EF460:  ADD             R1, PC; "?"
EF462:  BL              sub_DFA8C
EF466:  STR             R0, [R4,#8]
EF468:  ADD             SP, SP, #8
EF46A:  POP             {R4,R6,R7,PC}
