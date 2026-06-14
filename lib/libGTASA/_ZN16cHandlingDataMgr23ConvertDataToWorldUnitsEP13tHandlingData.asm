; =========================================================
; Game Engine Function: _ZN16cHandlingDataMgr23ConvertDataToWorldUnitsEP13tHandlingData
; Address            : 0x570CEC - 0x570D4A
; =========================================================

570CEC:  VLDR            S0, =0.0004
570CF0:  VMOV.F32        S14, #0.25
570CF4:  VLDR            S4, [R1,#0x7C]
570CF8:  VMOV.F32        S10, #0.5
570CFC:  VLDR            S2, [R1,#4]
570D00:  VDIV.F32        S4, S4, S0
570D04:  LDRB.W          R0, [R1,#0x74]
570D08:  CMP             R0, #0x34 ; '4'
570D0A:  VLDR            S12, [R1,#0xC8]
570D0E:  VLDR            S8, [R1,#0x94]
570D12:  VMUL.F32        S2, S12, S2
570D16:  VLDR            S6, [R1,#0x84]
570D1A:  VLDR            S1, =0.0055556
570D1E:  IT EQ
570D20:  VMOVEQ.F32      S10, S14
570D24:  VLDR            S12, =2000.0
570D28:  VDIV.F32        S6, S6, S1
570D2C:  VDIV.F32        S0, S8, S0
570D30:  VDIV.F32        S2, S2, S12
570D34:  VDIV.F32        S4, S4, S10
570D38:  VSTR            S6, [R1,#0x84]
570D3C:  VSTR            S0, [R1,#0x94]
570D40:  VSTR            S2, [R1,#0xC8]
570D44:  VSTR            S4, [R1,#0x7C]
570D48:  BX              LR
