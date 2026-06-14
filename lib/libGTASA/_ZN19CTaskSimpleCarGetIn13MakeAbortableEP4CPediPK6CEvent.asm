; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarGetIn13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x501D04 - 0x501D1E
; =========================================================

501D04:  CMP             R2, #2
501D06:  ITT NE
501D08:  MOVNE           R0, #0
501D0A:  BXNE            LR
501D0C:  LDR             R0, [R0,#0xC]
501D0E:  CMP             R0, #0
501D10:  ITTT NE
501D12:  MOVNE           R1, #0
501D14:  MOVTNE          R1, #0xC47A
501D18:  STRNE           R1, [R0,#0x1C]
501D1A:  MOVS            R0, #1
501D1C:  BX              LR
