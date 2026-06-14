; =========================================================
; Game Engine Function: _ZN16cHandlingDataMgr26ConvertBikeDataToGameUnitsEP17tBikeHandlingData
; Address            : 0x570F98 - 0x571006
; =========================================================

570F98:  PUSH            {R4-R7,LR}
570F9A:  ADD             R7, SP, #0xC
570F9C:  PUSH.W          {R11}
570FA0:  MOV             R4, R1
570FA2:  VLDR            S0, =3.1416
570FA6:  VLDR            S2, [R4,#0x14]
570FAA:  VLDR            S10, =180.0
570FAE:  VMUL.F32        S2, S2, S0
570FB2:  VLDR            S6, [R4,#0x2C]
570FB6:  VLDR            S8, [R4,#0x30]
570FBA:  VLDR            S4, [R4,#0x18]
570FBE:  VMUL.F32        S6, S6, S0
570FC2:  VMUL.F32        S8, S8, S0
570FC6:  VMUL.F32        S0, S4, S0
570FCA:  VDIV.F32        S2, S2, S10
570FCE:  VDIV.F32        S4, S6, S10
570FD2:  VDIV.F32        S6, S8, S10
570FD6:  VDIV.F32        S0, S0, S10
570FDA:  VMOV            R0, S2; x
570FDE:  VSTR            S0, [R4,#0x18]
570FE2:  VMOV            R5, S4
570FE6:  VMOV            R6, S6
570FEA:  BLX             sinf
570FEE:  STR             R0, [R4,#0x14]
570FF0:  MOV             R0, R5; x
570FF2:  BLX             sinf
570FF6:  STR             R0, [R4,#0x2C]
570FF8:  MOV             R0, R6; x
570FFA:  BLX             sinf
570FFE:  STR             R0, [R4,#0x30]
571000:  POP.W           {R11}
571004:  POP             {R4-R7,PC}
