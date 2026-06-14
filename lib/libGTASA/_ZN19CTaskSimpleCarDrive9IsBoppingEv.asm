; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarDrive9IsBoppingEv
; Address            : 0x4FAC8C - 0x4FAC9A
; =========================================================

4FAC8C:  LDR             R0, [R0,#0x20]
4FAC8E:  ADDS            R0, #1
4FAC90:  MOV.W           R0, #0
4FAC94:  IT NE
4FAC96:  MOVNE           R0, #1
4FAC98:  BX              LR
