; =========================================================
; Game Engine Function: _ZN20CTaskInteriorUseInfo13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x529858 - 0x52987A
; =========================================================

529858:  LDR.W           R12, [R0,#0xC]
52985C:  LDR.W           R12, [R12,#0x1C]
529860:  CMP.W           R12, #0
529864:  ITT NE
529866:  MOVNE.W         R12, #0
52986A:  STRNE.W         R12, [R1,#0x12C]
52986E:  LDR             R0, [R0,#8]
529870:  LDR.W           R12, [R0]
529874:  LDR.W           R12, [R12,#0x1C]
529878:  BX              R12
