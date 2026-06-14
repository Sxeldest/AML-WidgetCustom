; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarAlign13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x50079C - 0x5007B6
; =========================================================

50079C:  CMP             R2, #2
50079E:  ITT NE
5007A0:  MOVNE           R0, #0
5007A2:  BXNE            LR
5007A4:  LDR             R0, [R0,#0xC]
5007A6:  CMP             R0, #0
5007A8:  ITTT NE
5007AA:  MOVNE           R1, #0
5007AC:  MOVTNE          R1, #0xC47A
5007B0:  STRNE           R1, [R0,#0x1C]
5007B2:  MOVS            R0, #1
5007B4:  BX              LR
