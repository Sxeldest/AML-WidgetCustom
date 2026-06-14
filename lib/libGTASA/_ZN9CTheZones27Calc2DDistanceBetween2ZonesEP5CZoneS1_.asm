; =========================================================
; Game Engine Function: _ZN9CTheZones27Calc2DDistanceBetween2ZonesEP5CZoneS1_
; Address            : 0x42DEDC - 0x42DF4A
; =========================================================

42DEDC:  LDRSH.W         R2, [R1,#0x16]
42DEE0:  LDRSH.W         R3, [R0,#0x10]
42DEE4:  CMP             R3, R2
42DEE6:  BLE             loc_42DEEC
42DEE8:  SUBS            R2, R3, R2
42DEEA:  B               loc_42DEFA
42DEEC:  LDRSH.W         R2, [R1,#0x10]
42DEF0:  LDRSH.W         R3, [R0,#0x16]
42DEF4:  CMP             R2, R3
42DEF6:  BLE             loc_42DF04
42DEF8:  SUBS            R2, R2, R3
42DEFA:  VMOV            S0, R2
42DEFE:  VCVT.F32.S32    S0, S0
42DF02:  B               loc_42DF08
42DF04:  VLDR            S0, =0.0
42DF08:  LDRSH.W         R2, [R1,#0x18]
42DF0C:  LDRSH.W         R3, [R0,#0x12]
42DF10:  CMP             R3, R2
42DF12:  BLE             loc_42DF18
42DF14:  SUBS            R0, R3, R2
42DF16:  B               loc_42DF26
42DF18:  LDRSH.W         R1, [R1,#0x12]
42DF1C:  LDRSH.W         R0, [R0,#0x18]
42DF20:  CMP             R1, R0
42DF22:  BLE             loc_42DF30
42DF24:  SUBS            R0, R1, R0
42DF26:  VMOV            S2, R0
42DF2A:  VCVT.F32.S32    S2, S2
42DF2E:  B               loc_42DF34
42DF30:  VLDR            S2, =0.0
42DF34:  VMUL.F32        S2, S2, S2
42DF38:  VMUL.F32        S0, S0, S0
42DF3C:  VADD.F32        S0, S0, S2
42DF40:  VSQRT.F32       S0, S0
42DF44:  VMOV            R0, S0
42DF48:  BX              LR
