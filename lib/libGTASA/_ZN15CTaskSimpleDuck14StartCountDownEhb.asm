; =========================================================
; Game Engine Function: _ZN15CTaskSimpleDuck14StartCountDownEhb
; Address            : 0x54365A - 0x54366E
; =========================================================

54365A:  CMP             R2, #1
54365C:  BNE             loc_543668
54365E:  LDRB.W          R2, [R0,#0x25]
543662:  CMP             R2, R1
543664:  IT CC
543666:  MOVCC           R1, R2
543668:  STRB.W          R1, [R0,#0x25]
54366C:  BX              LR
