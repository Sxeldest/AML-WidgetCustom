; =========================================================
; Game Engine Function: _Z17GetTextureCornersiiP9CVector2D
; Address            : 0x44321C - 0x44327A
; =========================================================

44321C:  MOV.W           R3, #0x1F4
443220:  RSB.W           R1, R1, #0xB
443224:  MULS            R0, R3
443226:  MULS            R1, R3
443228:  SUBW            R3, R0, #0xBB8
44322C:  SUBW            R0, R0, #0x9C4
443230:  VMOV            S2, R0
443234:  SUBW            R0, R1, #0xBB8
443238:  VMOV            S0, R3
44323C:  VMOV            S4, R0
443240:  SUBW            R0, R1, #0x9C4
443244:  VCVT.F32.S32    S0, S0
443248:  VMOV            S6, R0
44324C:  VCVT.F32.S32    S2, S2
443250:  VCVT.F32.S32    S4, S4
443254:  VCVT.F32.S32    S6, S6
443258:  VSTR            S0, [R2]
44325C:  VSTR            S4, [R2,#4]
443260:  VSTR            S2, [R2,#8]
443264:  VSTR            S4, [R2,#0xC]
443268:  VSTR            S2, [R2,#0x10]
44326C:  VSTR            S6, [R2,#0x14]
443270:  VSTR            S0, [R2,#0x18]
443274:  VSTR            S6, [R2,#0x1C]
443278:  BX              LR
