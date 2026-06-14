; =========================================================
; Game Engine Function: _ZN7CMatrixpLERKS_
; Address            : 0x44EE56 - 0x44EF18
; =========================================================

44EE56:  VLDR            S0, [R0]
44EE5A:  VLDR            S8, [R1]
44EE5E:  VLDR            S2, [R0,#4]
44EE62:  VADD.F32        S0, S8, S0
44EE66:  VLDR            S4, [R0,#0x10]
44EE6A:  VLDR            S6, [R0,#0x14]
44EE6E:  VSTR            S0, [R0]
44EE72:  VLDR            S0, [R1,#0x10]
44EE76:  VADD.F32        S0, S0, S4
44EE7A:  VLDR            S4, [R0,#0x20]
44EE7E:  VSTR            S0, [R0,#0x10]
44EE82:  VLDR            S0, [R1,#0x20]
44EE86:  VADD.F32        S0, S0, S4
44EE8A:  VSTR            S0, [R0,#0x20]
44EE8E:  VLDR            S0, [R1,#4]
44EE92:  VADD.F32        S0, S0, S2
44EE96:  VSTR            S0, [R0,#4]
44EE9A:  VLDR            S0, [R1,#0x14]
44EE9E:  VADD.F32        S0, S0, S6
44EEA2:  VSTR            S0, [R0,#0x14]
44EEA6:  VLDR            S0, [R0,#0x24]
44EEAA:  VLDR            S2, [R1,#0x24]
44EEAE:  VADD.F32        S0, S2, S0
44EEB2:  VSTR            S0, [R0,#0x24]
44EEB6:  VLDR            S0, [R0,#8]
44EEBA:  VLDR            S2, [R1,#8]
44EEBE:  VADD.F32        S0, S2, S0
44EEC2:  VSTR            S0, [R0,#8]
44EEC6:  VLDR            S0, [R0,#0x18]
44EECA:  VLDR            S2, [R1,#0x18]
44EECE:  VADD.F32        S0, S2, S0
44EED2:  VSTR            S0, [R0,#0x18]
44EED6:  VLDR            S0, [R0,#0x28]
44EEDA:  VLDR            S2, [R1,#0x28]
44EEDE:  VADD.F32        S0, S2, S0
44EEE2:  VSTR            S0, [R0,#0x28]
44EEE6:  VLDR            S0, [R0,#0x30]
44EEEA:  VLDR            S2, [R1,#0x30]
44EEEE:  VADD.F32        S0, S2, S0
44EEF2:  VSTR            S0, [R0,#0x30]
44EEF6:  VLDR            S0, [R0,#0x34]
44EEFA:  VLDR            S2, [R1,#0x34]
44EEFE:  VADD.F32        S0, S2, S0
44EF02:  VSTR            S0, [R0,#0x34]
44EF06:  VLDR            S0, [R0,#0x38]
44EF0A:  VLDR            S2, [R1,#0x38]
44EF0E:  VADD.F32        S0, S2, S0
44EF12:  VSTR            S0, [R0,#0x38]
44EF16:  BX              LR
