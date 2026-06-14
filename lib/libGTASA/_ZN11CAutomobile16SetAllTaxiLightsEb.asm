; =========================================================
; Game Engine Function: _ZN11CAutomobile16SetAllTaxiLightsEb
; Address            : 0x55D8C4 - 0x55D8CE
; =========================================================

55D8C4:  LDR             R1, =(_ZN11CAutomobile16m_sAllTaxiLightsE_ptr - 0x55D8CA)
55D8C6:  ADD             R1, PC; _ZN11CAutomobile16m_sAllTaxiLightsE_ptr
55D8C8:  LDR             R1, [R1]; CAutomobile::m_sAllTaxiLights ...
55D8CA:  STRB            R0, [R1]; CAutomobile::m_sAllTaxiLights
55D8CC:  BX              LR
