; =========================================================
; Game Engine Function: _ZN13CEventScanner16ScanForEventsNowERK4CPedi
; Address            : 0x4BFB24 - 0x4BFB4A
; =========================================================

4BFB24:  CMP             R2, #0
4BFB26:  IT NE
4BFB28:  BXNE            LR
4BFB2A:  LDRB            R3, [R0,#0xC]
4BFB2C:  ADDS            R2, R0, #4; CEntity **
4BFB2E:  CBZ             R3, loc_4BFB44
4BFB30:  LDR             R3, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BFB3A)
4BFB32:  MOV.W           R12, #0xFFFFFFFF
4BFB36:  ADD             R3, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BFB38:  LDR             R3, [R3]; CTimer::m_snTimeInMilliseconds ...
4BFB3A:  LDR             R3, [R3]; CTimer::m_snTimeInMilliseconds
4BFB3C:  STRD.W          R3, R12, [R0,#4]
4BFB40:  MOVS            R3, #1; int
4BFB42:  STRB            R3, [R0,#0xC]
4BFB44:  MOV             R0, R2; this
4BFB46:  B.W             _ZN33CVehiclePotentialCollisionScanner38ScanForVehiclePotentialCollisionEventsERK4CPedPP7CEntityi; CVehiclePotentialCollisionScanner::ScanForVehiclePotentialCollisionEvents(CPed const&,CEntity **,int)
