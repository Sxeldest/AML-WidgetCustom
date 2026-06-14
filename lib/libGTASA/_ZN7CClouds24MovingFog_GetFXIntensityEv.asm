; =========================================================
; Game Engine Function: _ZN7CClouds24MovingFog_GetFXIntensityEv
; Address            : 0x5A1820 - 0x5A182A
; =========================================================

5A1820:  LDR             R0, =(_ZN8CWeather12Foggyness_SFE_ptr - 0x5A1826)
5A1822:  ADD             R0, PC; _ZN8CWeather12Foggyness_SFE_ptr
5A1824:  LDR             R0, [R0]; CWeather::Foggyness_SF ...
5A1826:  LDR             R0, [R0]; CWeather::Foggyness_SF
5A1828:  BX              LR
