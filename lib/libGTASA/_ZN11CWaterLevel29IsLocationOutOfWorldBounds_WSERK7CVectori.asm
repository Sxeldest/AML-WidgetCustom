; =========================================================
; Game Engine Function: _ZN11CWaterLevel29IsLocationOutOfWorldBounds_WSERK7CVectori
; Address            : 0x59BDCC - 0x59BE4E
; =========================================================

59BDCC:  PUSH            {R4,R5,R7,LR}
59BDCE:  ADD             R7, SP, #8
59BDD0:  VPUSH           {D8-D10}
59BDD4:  VLDR            S16, =50.0
59BDD8:  MOV             R4, R1
59BDDA:  VLDR            S0, [R0]
59BDDE:  VLDR            S20, =60.0
59BDE2:  VDIV.F32        S0, S0, S16
59BDE6:  VADD.F32        S0, S0, S20
59BDEA:  VLDR            S18, [R0,#4]
59BDEE:  VMOV            R0, S0; x
59BDF2:  BLX.W           floorf
59BDF6:  VDIV.F32        S0, S18, S16
59BDFA:  MOV             R5, R0
59BDFC:  VADD.F32        S0, S0, S20
59BE00:  VMOV            R0, S0; x
59BE04:  BLX.W           floorf
59BE08:  VMOV            S0, R0
59BE0C:  VMOV            S2, R5
59BE10:  VCVT.S32.F32    S0, S0
59BE14:  VCVT.S32.F32    S2, S2
59BE18:  VMOV            R1, S2
59BE1C:  CMP             R1, R4
59BE1E:  ITT GE
59BE20:  RSBGE.W         R0, R4, #0x78 ; 'x'
59BE24:  CMPGE           R0, R1
59BE26:  BGT             loc_59BE30
59BE28:  MOVS            R0, #1
59BE2A:  VPOP            {D8-D10}
59BE2E:  POP             {R4,R5,R7,PC}
59BE30:  VMOV            R1, S0
59BE34:  MOVS            R3, #0
59BE36:  MOVS            R2, #0
59BE38:  CMP             R1, R4
59BE3A:  IT LT
59BE3C:  MOVLT           R3, #1
59BE3E:  CMP             R0, R1
59BE40:  IT LE
59BE42:  MOVLE           R2, #1
59BE44:  ORR.W           R0, R2, R3
59BE48:  VPOP            {D8-D10}
59BE4C:  POP             {R4,R5,R7,PC}
