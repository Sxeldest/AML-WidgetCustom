; =========================================================
; Game Engine Function: _ZN21CTaskSimpleCarShuffle13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x502010 - 0x50202A
; =========================================================

502010:  CMP             R2, #2
502012:  ITT NE
502014:  MOVNE           R0, #0
502016:  BXNE            LR
502018:  LDR             R0, [R0,#0xC]
50201A:  CMP             R0, #0
50201C:  ITTT NE
50201E:  MOVNE           R1, #0
502020:  MOVTNE          R1, #0xC47A
502024:  STRNE           R1, [R0,#0x1C]
502026:  MOVS            R0, #1
502028:  BX              LR
