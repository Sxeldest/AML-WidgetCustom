; =========================================================
; Game Engine Function: _ZN23CTaskSimpleSlideToCoord13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x5261C0 - 0x5261D2
; =========================================================

5261C0:  LDRB.W          R12, [R0,#0x78]
5261C4:  MOVS.W          R12, R12,LSL#30
5261C8:  IT MI
5261CA:  BMI.W           sub_18D440
5261CE:  MOVS            R0, #1
5261D0:  BX              LR
