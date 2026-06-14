; =========================================================
; Game Engine Function: _ZmlRK7CMatrixS1_
; Address            : 0x44FB18 - 0x44FCB8
; =========================================================

44FB18:  PUSH            {R7,LR}
44FB1A:  MOV             R7, SP
44FB1C:  VPUSH           {D8}
44FB20:  MOVS            R3, #0
44FB22:  STRD.W          R3, R3, [R0,#0x40]
44FB26:  VLDR            S3, [R2]
44FB2A:  VLDR            S0, [R1]
44FB2E:  VLDR            S5, [R2,#4]
44FB32:  VLDR            S4, [R1,#0x10]
44FB36:  VMUL.F32        S8, S0, S3
44FB3A:  VLDR            S7, [R2,#8]
44FB3E:  VMUL.F32        S6, S4, S5
44FB42:  VLDR            S2, [R1,#0x20]
44FB46:  VMUL.F32        S10, S2, S7
44FB4A:  VADD.F32        S6, S8, S6
44FB4E:  VADD.F32        S6, S6, S10
44FB52:  VSTR            S6, [R0]
44FB56:  VLDR            S6, [R1,#4]
44FB5A:  VLDR            S14, [R1,#0x14]
44FB5E:  VMUL.F32        S12, S6, S3
44FB62:  VLDR            S8, [R1,#0x24]
44FB66:  VMUL.F32        S10, S14, S5
44FB6A:  VMUL.F32        S1, S8, S7
44FB6E:  VADD.F32        S10, S12, S10
44FB72:  VADD.F32        S10, S10, S1
44FB76:  VSTR            S10, [R0,#4]
44FB7A:  VLDR            S12, [R1,#8]
44FB7E:  VLDR            S1, [R1,#0x18]
44FB82:  VMUL.F32        S3, S12, S3
44FB86:  VLDR            S10, [R1,#0x28]
44FB8A:  VMUL.F32        S5, S1, S5
44FB8E:  VMUL.F32        S7, S10, S7
44FB92:  VADD.F32        S3, S3, S5
44FB96:  VADD.F32        S3, S3, S7
44FB9A:  VSTR            S3, [R0,#8]
44FB9E:  VLDR            S3, [R2,#0x10]
44FBA2:  VLDR            S5, [R2,#0x14]
44FBA6:  VMUL.F32        S11, S6, S3
44FBAA:  VLDR            S7, [R2,#0x18]
44FBAE:  VMUL.F32        S9, S14, S5
44FBB2:  VMUL.F32        S13, S4, S5
44FBB6:  VMUL.F32        S15, S0, S3
44FBBA:  VMUL.F32        S5, S1, S5
44FBBE:  VMUL.F32        S3, S12, S3
44FBC2:  VMUL.F32        S16, S8, S7
44FBC6:  VADD.F32        S9, S11, S9
44FBCA:  VMUL.F32        S11, S2, S7
44FBCE:  VADD.F32        S13, S15, S13
44FBD2:  VMUL.F32        S7, S10, S7
44FBD6:  VADD.F32        S3, S3, S5
44FBDA:  VADD.F32        S5, S9, S16
44FBDE:  VADD.F32        S9, S13, S11
44FBE2:  VADD.F32        S3, S3, S7
44FBE6:  VSTR            S9, [R0,#0x10]
44FBEA:  VSTR            S5, [R0,#0x14]
44FBEE:  VSTR            S3, [R0,#0x18]
44FBF2:  VLDR            S3, [R2,#0x20]
44FBF6:  VLDR            S5, [R2,#0x24]
44FBFA:  VMUL.F32        S11, S6, S3
44FBFE:  VLDR            S7, [R2,#0x28]
44FC02:  VMUL.F32        S9, S14, S5
44FC06:  VMUL.F32        S13, S4, S5
44FC0A:  VMUL.F32        S15, S0, S3
44FC0E:  VMUL.F32        S5, S1, S5
44FC12:  VMUL.F32        S3, S12, S3
44FC16:  VMUL.F32        S16, S8, S7
44FC1A:  VADD.F32        S9, S11, S9
44FC1E:  VMUL.F32        S11, S2, S7
44FC22:  VADD.F32        S13, S15, S13
44FC26:  VMUL.F32        S7, S10, S7
44FC2A:  VADD.F32        S3, S3, S5
44FC2E:  VADD.F32        S5, S9, S16
44FC32:  VADD.F32        S9, S13, S11
44FC36:  VADD.F32        S3, S3, S7
44FC3A:  VSTR            S9, [R0,#0x20]
44FC3E:  VSTR            S5, [R0,#0x24]
44FC42:  VSTR            S3, [R0,#0x28]
44FC46:  VLDR            S3, [R2,#0x30]
44FC4A:  VLDR            S5, [R2,#0x34]
44FC4E:  VMUL.F32        S0, S0, S3
44FC52:  VLDR            S7, [R2,#0x38]
44FC56:  VMUL.F32        S4, S4, S5
44FC5A:  VMUL.F32        S2, S2, S7
44FC5E:  VMUL.F32        S6, S6, S3
44FC62:  VMUL.F32        S1, S1, S5
44FC66:  VMUL.F32        S12, S12, S3
44FC6A:  VADD.F32        S0, S0, S4
44FC6E:  VMUL.F32        S4, S14, S5
44FC72:  VLDR            S14, [R1,#0x38]
44FC76:  VADD.F32        S0, S0, S2
44FC7A:  VMUL.F32        S2, S8, S7
44FC7E:  VLDR            S8, [R1,#0x34]
44FC82:  VADD.F32        S4, S6, S4
44FC86:  VLDR            S6, [R1,#0x30]
44FC8A:  VADD.F32        S0, S6, S0
44FC8E:  VADD.F32        S6, S12, S1
44FC92:  VADD.F32        S2, S4, S2
44FC96:  VMUL.F32        S4, S10, S7
44FC9A:  VSTR            S0, [R0,#0x30]
44FC9E:  VADD.F32        S2, S8, S2
44FCA2:  VADD.F32        S4, S6, S4
44FCA6:  VSTR            S2, [R0,#0x34]
44FCAA:  VADD.F32        S4, S14, S4
44FCAE:  VSTR            S4, [R0,#0x38]
44FCB2:  VPOP            {D8}
44FCB6:  POP             {R7,PC}
