; =========================================================
; Game Engine Function: _ZN10CPlaceName28ProcessAfterFrontEndShutDownEv
; Address            : 0x4212A8 - 0x4212C0
; =========================================================

4212A8:  LDR             R1, =(_ZN4CHud15m_pLastZoneNameE_ptr - 0x4212B2)
4212AA:  MOVS            R3, #0
4212AC:  LDR             R2, =(_ZN4CHud11m_ZoneStateE_ptr - 0x4212B4)
4212AE:  ADD             R1, PC; _ZN4CHud15m_pLastZoneNameE_ptr
4212B0:  ADD             R2, PC; _ZN4CHud11m_ZoneStateE_ptr
4212B2:  LDR             R1, [R1]; CHud::m_pLastZoneName ...
4212B4:  LDR             R2, [R2]; CHud::m_ZoneState ...
4212B6:  STR             R3, [R1]; CHud::m_pLastZoneName
4212B8:  MOVS            R1, #0xFA
4212BA:  STR             R3, [R2]; CHud::m_ZoneState
4212BC:  STRH            R1, [R0,#4]
4212BE:  BX              LR
