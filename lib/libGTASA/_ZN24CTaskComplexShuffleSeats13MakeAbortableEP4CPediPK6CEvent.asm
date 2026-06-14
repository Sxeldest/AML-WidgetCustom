; =========================================================
; Game Engine Function: _ZN24CTaskComplexShuffleSeats13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4FCBD0 - 0x4FCBE4
; =========================================================

4FCBD0:  CMP             R2, #2
4FCBD2:  ITT NE
4FCBD4:  MOVNE           R0, #0
4FCBD6:  BXNE            LR
4FCBD8:  LDR             R0, [R0,#8]
4FCBDA:  LDR             R2, [R0]
4FCBDC:  LDR.W           R12, [R2,#0x1C]
4FCBE0:  MOVS            R2, #2
4FCBE2:  BX              R12
