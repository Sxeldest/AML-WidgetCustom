; =========================================================
; Game Engine Function: _ZN11FxManager_c15CalcFrustumInfoEP8RwCamera
; Address            : 0x36D1B8 - 0x36D2EC
; =========================================================

36D1B8:  PUSH            {R4-R7,LR}
36D1BA:  ADD             R7, SP, #0xC
36D1BC:  PUSH.W          {R11}
36D1C0:  VPUSH           {D8-D9}
36D1C4:  MOV             R5, R1
36D1C6:  MOV             R4, R0
36D1C8:  VLDR            S0, [R5,#0x68]
36D1CC:  MOV.W           R1, #0x3F800000; x
36D1D0:  VLDR            S2, [R5,#0x6C]
36D1D4:  VMUL.F32        S0, S0, S0
36D1D8:  LDR             R6, [R5,#4]
36D1DA:  VMUL.F32        S2, S2, S2
36D1DE:  VLDR            S18, [R5,#0x84]
36D1E2:  VADD.F32        S0, S0, S2
36D1E6:  VSQRT.F32       S16, S0
36D1EA:  VMOV            R0, S16; y
36D1EE:  BLX             atan2f
36D1F2:  VLDR            S0, =57.296
36D1F6:  VMOV            S2, R0
36D1FA:  VMOV.F32        S4, #-2.0
36D1FE:  VLDR            S8, =180.0
36D202:  VMUL.F32        S0, S2, S0
36D206:  VMUL.F32        S6, S16, S16
36D20A:  VMUL.F32        S2, S0, S4
36D20E:  VMOV.F32        S4, #1.0
36D212:  VADD.F32        S2, S2, S8
36D216:  VADD.F32        S4, S6, S4
36D21A:  VLDR            S6, =0.017453
36D21E:  VMUL.F32        S16, S0, S6
36D222:  VMUL.F32        S2, S2, S6
36D226:  VSQRT.F32       S4, S4
36D22A:  VMOV            R0, S2; x
36D22E:  VMUL.F32        S18, S18, S4
36D232:  BLX             sinf
36D236:  VMOV            S0, R0
36D23A:  VMOV            R0, S16; x
36D23E:  VDIV.F32        S16, S18, S0
36D242:  BLX             sinf
36D246:  VMOV            S0, R0
36D24A:  VLDR            S2, [R6,#0x30]
36D24E:  VLDR            S4, [R6,#0x34]
36D252:  VMUL.F32        S0, S0, S16
36D256:  VLDR            S6, [R6,#0x38]
36D25A:  VLDR            S8, [R6,#0x40]
36D25E:  VLDR            S10, [R6,#0x44]
36D262:  VLDR            S12, [R6,#0x48]
36D266:  VMUL.F32        S6, S6, S0
36D26A:  VMUL.F32        S4, S4, S0
36D26E:  VMUL.F32        S2, S2, S0
36D272:  VADD.F32        S6, S6, S12
36D276:  VADD.F32        S4, S10, S4
36D27A:  VADD.F32        S2, S8, S2
36D27E:  VSTR            S2, [R4,#0x34]
36D282:  VSTR            S4, [R4,#0x38]
36D286:  VSTR            S6, [R4,#0x3C]
36D28A:  VSTR            S0, [R4,#0x40]
36D28E:  VLDR            D16, [R5,#0xC0]
36D292:  LDR.W           R0, [R5,#0xC8]
36D296:  STR             R0, [R4,#0x50]
36D298:  VSTR            D16, [R4,#0x48]
36D29C:  LDR.W           R0, [R5,#0xCC]
36D2A0:  STR             R0, [R4,#0x54]
36D2A2:  VLDR            D16, [R5,#0xD4]
36D2A6:  LDR.W           R0, [R5,#0xDC]
36D2AA:  STR             R0, [R4,#0x60]
36D2AC:  VSTR            D16, [R4,#0x58]
36D2B0:  LDR.W           R0, [R5,#0xE0]
36D2B4:  STR             R0, [R4,#0x64]
36D2B6:  VLDR            D16, [R5,#0xE8]
36D2BA:  LDR.W           R0, [R5,#0xF0]
36D2BE:  STR             R0, [R4,#0x70]
36D2C0:  VSTR            D16, [R4,#0x68]
36D2C4:  LDR.W           R0, [R5,#0xF4]
36D2C8:  STR             R0, [R4,#0x74]
36D2CA:  VLDR            D16, [R5,#0xFC]
36D2CE:  LDR.W           R0, [R5,#0x104]
36D2D2:  STR.W           R0, [R4,#0x80]
36D2D6:  VSTR            D16, [R4,#0x78]
36D2DA:  LDR.W           R0, [R5,#0x108]
36D2DE:  STR.W           R0, [R4,#0x84]
36D2E2:  VPOP            {D8-D9}
36D2E6:  POP.W           {R11}
36D2EA:  POP             {R4-R7,PC}
