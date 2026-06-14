; =========================================================
; Game Engine Function: _ZN21CTaskSimpleBikeJacked13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x505624 - 0x50563E
; =========================================================

505624:  CMP             R2, #2
505626:  ITT NE
505628:  MOVNE           R0, #0
50562A:  BXNE            LR
50562C:  LDR             R0, [R0,#0xC]
50562E:  CMP             R0, #0
505630:  ITTT NE
505632:  MOVNE           R1, #0
505634:  MOVTNE          R1, #0xC47A
505638:  STRNE           R1, [R0,#0x1C]
50563A:  MOVS            R0, #1
50563C:  BX              LR
