; =========================================================
; Game Engine Function: _ZN39CTaskSimpleCarOpenLockedDoorFromOutside13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x50106C - 0x501086
; =========================================================

50106C:  CMP             R2, #2
50106E:  ITT NE
501070:  MOVNE           R0, #0
501072:  BXNE            LR
501074:  LDR             R0, [R0,#0xC]
501076:  CMP             R0, #0
501078:  ITTT NE
50107A:  MOVNE           R1, #0
50107C:  MOVTNE          R1, #0xC47A
501080:  STRNE           R1, [R0,#0x1C]
501082:  MOVS            R0, #1
501084:  BX              LR
