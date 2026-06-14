; =========================================================
; Game Engine Function: _Z11GetNextLinePKcPcj
; Address            : 0x4636FC - 0x463742
; =========================================================

4636FC:  B               loc_463700
4636FE:  ADDS            R0, #1
463700:  LDRB            R2, [R0]
463702:  CMP             R2, #0xA
463704:  IT NE
463706:  CMPNE           R2, #0xD
463708:  BEQ             loc_4636FE
46370A:  CMP             R2, #0
46370C:  ITT EQ
46370E:  MOVEQ           R0, #0
463710:  BXEQ            LR
463712:  PUSH            {R4,R6,R7,LR}
463714:  ADD             R7, SP, #0x10+var_8
463716:  MOVS            R3, #0
463718:  MOV.W           R12, #1
46371C:  MOVW            LR, #0x2401
463720:  B               loc_46372A
463722:  STRB            R2, [R1,R3]
463724:  ADDS            R2, R0, R3
463726:  ADDS            R3, #1
463728:  LDRB            R2, [R2,#1]
46372A:  UXTB            R4, R2
46372C:  CMP             R4, #0xD
46372E:  BHI             loc_463722
463730:  LSL.W           R4, R12, R4
463734:  TST.W           R4, LR
463738:  BEQ             loc_463722
46373A:  ADD             R0, R3
46373C:  MOVS            R2, #0
46373E:  STRB            R2, [R1,R3]
463740:  POP             {R4,R6,R7,PC}
