; =========================================================
; Game Engine Function: _ZNK16CEventGroupEvent15AffectsPedGroupEP9CPedGroup
; Address            : 0x373D7C - 0x373D88
; =========================================================

373D7C:  LDR             R2, [R0,#0xC]
373D7E:  ADD.W           R0, R1, #8; this
373D82:  MOV             R1, R2; CPed *
373D84:  B.W             sub_18E0BC
