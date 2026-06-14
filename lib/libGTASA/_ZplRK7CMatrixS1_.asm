; =========================================================
; Game Engine Function: _ZplRK7CMatrixS1_
; Address            : 0x44FCB8 - 0x44FD80
; =========================================================

44FCB8:  MOVS            R3, #0
44FCBA:  STRD.W          R3, R3, [R0,#0x40]
44FCBE:  VLDR            S0, [R2]
44FCC2:  VLDR            S6, [R1]
44FCC6:  VLDR            S2, [R2,#4]
44FCCA:  VLDR            S8, [R1,#4]
44FCCE:  VADD.F32        S0, S6, S0
44FCD2:  VLDR            S4, [R2,#8]
44FCD6:  VLDR            S10, [R1,#8]
44FCDA:  VADD.F32        S2, S8, S2
44FCDE:  VADD.F32        S4, S10, S4
44FCE2:  VSTR            S0, [R0]
44FCE6:  VSTR            S2, [R0,#4]
44FCEA:  VSTR            S4, [R0,#8]
44FCEE:  VLDR            S0, [R2,#0x10]
44FCF2:  VLDR            S6, [R1,#0x10]
44FCF6:  VLDR            S2, [R2,#0x14]
44FCFA:  VLDR            S8, [R1,#0x14]
44FCFE:  VADD.F32        S0, S6, S0
44FD02:  VLDR            S4, [R2,#0x18]
44FD06:  VLDR            S10, [R1,#0x18]
44FD0A:  VADD.F32        S2, S8, S2
44FD0E:  VADD.F32        S4, S10, S4
44FD12:  VSTR            S0, [R0,#0x10]
44FD16:  VSTR            S2, [R0,#0x14]
44FD1A:  VSTR            S4, [R0,#0x18]
44FD1E:  VLDR            S0, [R2,#0x20]
44FD22:  VLDR            S6, [R1,#0x20]
44FD26:  VLDR            S2, [R2,#0x24]
44FD2A:  VLDR            S8, [R1,#0x24]
44FD2E:  VADD.F32        S0, S6, S0
44FD32:  VLDR            S4, [R2,#0x28]
44FD36:  VLDR            S10, [R1,#0x28]
44FD3A:  VADD.F32        S2, S8, S2
44FD3E:  VADD.F32        S4, S10, S4
44FD42:  VSTR            S0, [R0,#0x20]
44FD46:  VSTR            S2, [R0,#0x24]
44FD4A:  VSTR            S4, [R0,#0x28]
44FD4E:  VLDR            S0, [R2,#0x30]
44FD52:  VLDR            S6, [R1,#0x30]
44FD56:  VLDR            S2, [R2,#0x34]
44FD5A:  VLDR            S8, [R1,#0x34]
44FD5E:  VADD.F32        S0, S6, S0
44FD62:  VLDR            S4, [R2,#0x38]
44FD66:  VLDR            S10, [R1,#0x38]
44FD6A:  VADD.F32        S2, S8, S2
44FD6E:  VADD.F32        S4, S10, S4
44FD72:  VSTR            S0, [R0,#0x30]
44FD76:  VSTR            S2, [R0,#0x34]
44FD7A:  VSTR            S4, [R0,#0x38]
44FD7E:  BX              LR
