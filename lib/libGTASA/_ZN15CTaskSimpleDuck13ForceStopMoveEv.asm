; =========================================================
; Game Engine Function: _ZN15CTaskSimpleDuck13ForceStopMoveEv
; Address            : 0x543650 - 0x54365A
; =========================================================

543650:  MOVS            R1, #0
543652:  STR             R1, [R0,#0x20]
543654:  MOVS            R1, #1
543656:  STRB            R1, [R0,#0x1B]
543658:  BX              LR
