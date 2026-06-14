; =========================================================
; Game Engine Function: sub_7E42C
; Address            : 0x7E42C - 0x7E46C
; =========================================================

7E42C:  PUSH            {R4,R6,R7,LR}
7E42E:  ADD             R7, SP, #8
7E430:  LDR             R0, =(off_114B10 - 0x7E43A)
7E432:  MOVS            R2, #0
7E434:  LDR             R1, =(byte_1A45F1 - 0x7E43C)
7E436:  ADD             R0, PC; off_114B10
7E438:  ADD             R1, PC; byte_1A45F1
7E43A:  LDR             R0, [R0]; dword_1A442C
7E43C:  STRB            R2, [R1]
7E43E:  LDR             R0, [R0]
7E440:  CMP             R0, #0
7E442:  ITT NE
7E444:  LDRNE.W         R4, [R0,#0x80]
7E448:  CMPNE           R4, #0
7E44A:  BNE             loc_7E44E
7E44C:  POP             {R4,R6,R7,PC}
7E44E:  LDR             R0, =(off_114B48 - 0x7E458)
7E450:  MOVS            R1, #0
7E452:  STRB            R1, [R4]
7E454:  ADD             R0, PC; off_114B48
7E456:  LDR             R0, [R0]; dword_1A41D8
7E458:  LDR             R0, [R0]
7E45A:  MOVS            R1, #0
7E45C:  BL              sub_690B8
7E460:  LDRB            R0, [R4,#1]
7E462:  CMP             R0, #0
7E464:  ITT NE
7E466:  MOVNE           R0, #0
7E468:  STRBNE          R0, [R4,#1]
7E46A:  POP             {R4,R6,R7,PC}
