; =========================================================
; Game Engine Function: _ZN14CStuckCarCheck17ResetArrayElementEt
; Address            : 0x328660 - 0x328690
; =========================================================

328660:  ADD.W           R1, R1, R1,LSL#3
328664:  MOV.W           R2, #0xFFFFFFFF
328668:  STR.W           R2, [R0,R1,LSL#2]
32866C:  ADD.W           R0, R0, R1,LSL#2
328670:  MOV             R1, #0xC59C4000
328678:  STRD.W          R1, R1, [R0,#4]
32867C:  STR             R1, [R0,#0xC]
32867E:  MOVS            R1, #0
328680:  STR.W           R1, [R0,#0x1E]
328684:  STR.W           R1, [R0,#0x1A]
328688:  STR             R1, [R0,#0x18]
32868A:  STRD.W          R2, R1, [R0,#0x10]
32868E:  BX              LR
