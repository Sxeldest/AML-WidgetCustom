; =========================================================
; Game Engine Function: _ZN4CHud11SetZoneNameEPth
; Address            : 0x436F2C - 0x436F4E
; =========================================================

436F2C:  CBNZ            R1, loc_436F44
436F2E:  LDR             R1, =(_ZN5CGame8currAreaE_ptr - 0x436F36)
436F30:  LDR             R2, =(_ZN4CHud11m_ZoneStateE_ptr - 0x436F38)
436F32:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
436F34:  ADD             R2, PC; _ZN4CHud11m_ZoneStateE_ptr
436F36:  LDR             R1, [R1]; CGame::currArea ...
436F38:  LDR             R2, [R2]; CHud::m_ZoneState ...
436F3A:  LDR             R1, [R1]; CGame::currArea
436F3C:  LDR             R2, [R2]; CHud::m_ZoneState
436F3E:  ORRS            R1, R2
436F40:  IT NE
436F42:  BXNE            LR
436F44:  LDR             R1, =(_ZN4CHud11m_pZoneNameE_ptr - 0x436F4A)
436F46:  ADD             R1, PC; _ZN4CHud11m_pZoneNameE_ptr
436F48:  LDR             R1, [R1]; CHud::m_pZoneName ...
436F4A:  STR             R0, [R1]; CHud::m_pZoneName
436F4C:  BX              LR
