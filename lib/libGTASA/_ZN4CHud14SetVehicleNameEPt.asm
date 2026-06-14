; =========================================================
; Game Engine Function: _ZN4CHud14SetVehicleNameEPt
; Address            : 0x43703C - 0x437046
; =========================================================

43703C:  LDR             R1, =(_ZN4CHud14m_pVehicleNameE_ptr - 0x437042)
43703E:  ADD             R1, PC; _ZN4CHud14m_pVehicleNameE_ptr
437040:  LDR             R1, [R1]; CHud::m_pVehicleName ...
437042:  STR             R0, [R1]; CHud::m_pVehicleName
437044:  BX              LR
