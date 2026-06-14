; =========================================================
; Game Engine Function: _ZN16cHandlingDataMgr27ConvertBikeDataToWorldUnitsEP17tBikeHandlingData
; Address            : 0x570F24 - 0x570F8E
; =========================================================

570F24:  PUSH            {R4,R6,R7,LR}
570F26:  ADD             R7, SP, #8
570F28:  VPUSH           {D8-D9}
570F2C:  MOV             R4, R1
570F2E:  LDR             R0, [R4,#0x14]; x
570F30:  BLX             asinf
570F34:  VMOV            S0, R0
570F38:  VLDR            S16, =180.0
570F3C:  VLDR            S2, [R4,#0x18]
570F40:  VMUL.F32        S0, S0, S16
570F44:  VLDR            S18, =3.1416
570F48:  VMUL.F32        S2, S2, S16
570F4C:  LDR             R0, [R4,#0x2C]; x
570F4E:  VDIV.F32        S0, S0, S18
570F52:  VDIV.F32        S2, S2, S18
570F56:  VSTR            S0, [R4,#0x14]
570F5A:  VSTR            S2, [R4,#0x18]
570F5E:  BLX             asinf
570F62:  VMOV            S0, R0
570F66:  LDR             R0, [R4,#0x30]; x
570F68:  VMUL.F32        S0, S0, S16
570F6C:  VDIV.F32        S0, S0, S18
570F70:  VSTR            S0, [R4,#0x2C]
570F74:  BLX             asinf
570F78:  VMOV            S0, R0
570F7C:  VMUL.F32        S0, S0, S16
570F80:  VDIV.F32        S0, S0, S18
570F84:  VSTR            S0, [R4,#0x30]
570F88:  VPOP            {D8-D9}
570F8C:  POP             {R4,R6,R7,PC}
