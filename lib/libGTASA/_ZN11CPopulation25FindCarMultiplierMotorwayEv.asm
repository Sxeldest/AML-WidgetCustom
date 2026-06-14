; =========================================================
; Game Engine Function: _ZN11CPopulation25FindCarMultiplierMotorwayEv
; Address            : 0x4D1788 - 0x4D17A6
; =========================================================

4D1788:  LDR             R0, =(_ZN11CPopulation23m_bMoreCarsAndFewerPedsE_ptr - 0x4D1796)
4D178A:  VMOV.F32        S2, #1.0
4D178E:  VLDR            S0, =1.7
4D1792:  ADD             R0, PC; _ZN11CPopulation23m_bMoreCarsAndFewerPedsE_ptr
4D1794:  LDR             R0, [R0]; CPopulation::m_bMoreCarsAndFewerPeds ...
4D1796:  LDRB            R0, [R0]; CPopulation::m_bMoreCarsAndFewerPeds
4D1798:  CMP             R0, #0
4D179A:  IT EQ
4D179C:  VMOVEQ.F32      S0, S2
4D17A0:  VMOV            R0, S0
4D17A4:  BX              LR
