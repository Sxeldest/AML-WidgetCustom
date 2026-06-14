; =========================================================
; Game Engine Function: _ZN10FxPrimBP_c11GetRWMatrixEP11RwMatrixTag
; Address            : 0x36DB94 - 0x36DCCE
; =========================================================

36DB94:  LDR             R2, [R0,#8]
36DB96:  CMP             R2, #0
36DB98:  BEQ.W           loc_36DCA8
36DB9C:  LDRSH.W         R2, [R2]
36DBA0:  VMOV            S0, R2
36DBA4:  VCVT.F32.S32    S2, S0
36DBA8:  VLDR            S0, =32767.0
36DBAC:  VDIV.F32        S2, S2, S0
36DBB0:  VSTR            S2, [R1]
36DBB4:  LDR             R2, [R0,#8]
36DBB6:  LDRSH.W         R2, [R2,#2]
36DBBA:  VMOV            S2, R2
36DBBE:  VCVT.F32.S32    S2, S2
36DBC2:  VDIV.F32        S2, S2, S0
36DBC6:  VSTR            S2, [R1,#4]
36DBCA:  LDR             R2, [R0,#8]
36DBCC:  LDRSH.W         R2, [R2,#4]
36DBD0:  VMOV            S2, R2
36DBD4:  VCVT.F32.S32    S2, S2
36DBD8:  VDIV.F32        S2, S2, S0
36DBDC:  VSTR            S2, [R1,#8]
36DBE0:  LDR             R2, [R0,#8]
36DBE2:  LDRSH.W         R2, [R2,#6]
36DBE6:  VMOV            S2, R2
36DBEA:  VCVT.F32.S32    S2, S2
36DBEE:  VDIV.F32        S2, S2, S0
36DBF2:  VSTR            S2, [R1,#0x10]
36DBF6:  LDR             R2, [R0,#8]
36DBF8:  LDRSH.W         R2, [R2,#8]
36DBFC:  VMOV            S2, R2
36DC00:  VCVT.F32.S32    S2, S2
36DC04:  VDIV.F32        S2, S2, S0
36DC08:  VSTR            S2, [R1,#0x14]
36DC0C:  LDR             R2, [R0,#8]
36DC0E:  LDRSH.W         R2, [R2,#0xA]
36DC12:  VMOV            S2, R2
36DC16:  VCVT.F32.S32    S2, S2
36DC1A:  VDIV.F32        S2, S2, S0
36DC1E:  VSTR            S2, [R1,#0x18]
36DC22:  LDR             R2, [R0,#8]
36DC24:  LDRSH.W         R2, [R2,#0xC]
36DC28:  VMOV            S2, R2
36DC2C:  VCVT.F32.S32    S2, S2
36DC30:  VDIV.F32        S2, S2, S0
36DC34:  VSTR            S2, [R1,#0x20]
36DC38:  LDR             R2, [R0,#8]
36DC3A:  LDRSH.W         R2, [R2,#0xE]
36DC3E:  VMOV            S2, R2
36DC42:  VCVT.F32.S32    S2, S2
36DC46:  VDIV.F32        S2, S2, S0
36DC4A:  VSTR            S2, [R1,#0x24]
36DC4E:  LDR             R2, [R0,#8]
36DC50:  LDRSH.W         R2, [R2,#0x10]
36DC54:  VMOV            S2, R2
36DC58:  VCVT.F32.S32    S2, S2
36DC5C:  VDIV.F32        S2, S2, S0
36DC60:  VSTR            S2, [R1,#0x28]
36DC64:  LDR             R2, [R0,#8]
36DC66:  LDRSH.W         R2, [R2,#0x12]
36DC6A:  VMOV            S2, R2
36DC6E:  VCVT.F32.S32    S2, S2
36DC72:  VDIV.F32        S2, S2, S0
36DC76:  VSTR            S2, [R1,#0x30]
36DC7A:  LDR             R2, [R0,#8]
36DC7C:  LDRSH.W         R2, [R2,#0x14]
36DC80:  VMOV            S2, R2
36DC84:  VCVT.F32.S32    S2, S2
36DC88:  VDIV.F32        S2, S2, S0
36DC8C:  VSTR            S2, [R1,#0x34]
36DC90:  LDR             R0, [R0,#8]
36DC92:  LDRSH.W         R0, [R0,#0x16]
36DC96:  VMOV            S2, R0
36DC9A:  VCVT.F32.S32    S2, S2
36DC9E:  VDIV.F32        S0, S2, S0
36DCA2:  VSTR            S0, [R1,#0x38]
36DCA6:  BX              LR
36DCA8:  VLDR            S0, =0.0
36DCAC:  MOVS            R0, #0
36DCAE:  MOV.W           R2, #0x3F800000
36DCB2:  STRD.W          R2, R0, [R1]
36DCB6:  STR             R0, [R1,#8]
36DCB8:  STRD.W          R0, R2, [R1,#0x10]
36DCBC:  STR             R0, [R1,#0x18]
36DCBE:  STRD.W          R0, R0, [R1,#0x30]
36DCC2:  STRD.W          R0, R0, [R1,#0x20]
36DCC6:  STR             R2, [R1,#0x28]
36DCC8:  VSTR            S0, [R1,#0x38]
36DCCC:  BX              LR
