; =========================================================
; Game Engine Function: _ZN11CWaterLevel24ChangeWaterConfigurationEi
; Address            : 0x59BC1C - 0x59BC36
; =========================================================

59BC1C:  LDR             R1, =(_ZN11CWaterLevel21m_nWaterConfigurationE_ptr - 0x59BC22)
59BC1E:  ADD             R1, PC; _ZN11CWaterLevel21m_nWaterConfigurationE_ptr
59BC20:  LDR             R1, [R1]; CWaterLevel::m_nWaterConfiguration ...
59BC22:  LDR             R1, [R1]; CWaterLevel::m_nWaterConfiguration
59BC24:  CMP             R1, R0
59BC26:  IT EQ
59BC28:  BXEQ            LR
59BC2A:  LDR             R1, =(_ZN11CWaterLevel21m_nWaterConfigurationE_ptr - 0x59BC30)
59BC2C:  ADD             R1, PC; _ZN11CWaterLevel21m_nWaterConfigurationE_ptr
59BC2E:  LDR             R1, [R1]; CWaterLevel::m_nWaterConfiguration ...
59BC30:  STR             R0, [R1]; CWaterLevel::m_nWaterConfiguration
59BC32:  B.W             _ZN11CWaterLevel20WaterLevelInitialiseEv; CWaterLevel::WaterLevelInitialise(void)
