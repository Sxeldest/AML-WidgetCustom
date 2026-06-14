; =========================================================
; Game Engine Function: _ZN34CTaskSimpleWaitUntilAreaCodesMatch13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4F4352 - 0x4F435C
; =========================================================

4F4352:  MOVS            R0, #0
4F4354:  CMP             R2, #2
4F4356:  IT EQ
4F4358:  MOVEQ           R0, #1
4F435A:  BX              LR
