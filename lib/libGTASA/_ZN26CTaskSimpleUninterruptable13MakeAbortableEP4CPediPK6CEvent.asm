; =========================================================
; Game Engine Function: _ZN26CTaskSimpleUninterruptable13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x30770E - 0x307718
; =========================================================

30770E:  MOVS            R0, #0
307710:  CMP             R2, #2
307712:  IT EQ
307714:  MOVEQ           R0, #1
307716:  BX              LR
