; =========================================================
; Game Engine Function: _Z16CountCompsInRulei
; Address            : 0x388714 - 0x388734
; =========================================================

388714:  MOVS            R2, #0
388716:  MOVS            R1, #0
388718:  CBZ             R0, loc_388730
38871A:  AND.W           R3, R0, #0xF
38871E:  CMP             R3, #0xF
388720:  MOV.W           R3, R0,ASR#4
388724:  IT NE
388726:  ADDNE           R1, #1
388728:  CMP.W           R2, R0,ASR#4
38872C:  MOV             R0, R3
38872E:  BNE             loc_38871A
388730:  MOV             R0, R1
388732:  BX              LR
