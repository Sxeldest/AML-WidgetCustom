; =========================================================
; Game Engine Function: sub_FC510
; Address            : 0xFC510 - 0xFC53A
; =========================================================

FC510:  PUSH            {R2-R5,R7,LR}
FC512:  ADD             R7, SP, #0x10
FC514:  LDRD.W          R4, R3, [R7,#arg_0]
FC518:  CMP.W           R3, #0xFFFFFFFF
FC51C:  BGT             loc_FC530
FC51E:  CMP             R1, R2
FC520:  BEQ             loc_FC530
FC522:  MOVS            R5, #0
FC524:  NEGS            R4, R4
FC526:  SBC.W           R3, R5, R3
FC52A:  MOVS            R5, #0x2D ; '-'
FC52C:  STRB.W          R5, [R1],#1
FC530:  STRD.W          R4, R3, [SP,#0x10+var_10]; int
FC534:  BL              sub_FC53A
FC538:  POP             {R2-R5,R7,PC}
