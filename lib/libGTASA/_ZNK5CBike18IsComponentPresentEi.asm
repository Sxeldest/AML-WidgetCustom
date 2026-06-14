; =========================================================
; Game Engine Function: _ZNK5CBike18IsComponentPresentEi
; Address            : 0x560C9A - 0x560CAA
; =========================================================

560C9A:  ADD.W           R0, R0, R1,LSL#2
560C9E:  LDR.W           R0, [R0,#0x5B4]
560CA2:  CMP             R0, #0
560CA4:  IT NE
560CA6:  MOVNE           R0, #1
560CA8:  BX              LR
