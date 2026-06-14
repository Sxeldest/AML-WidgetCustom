; =========================================================
; Game Engine Function: sub_108FB2
; Address            : 0x108FB2 - 0x109036
; =========================================================

108FB2:  VLDR            S6, [R1,#0x10]
108FB6:  VLDR            S12, [R2,#4]
108FBA:  VLDR            S14, [R2,#8]
108FBE:  VMUL.F32        S6, S6, S12
108FC2:  VLDR            S1, [R1,#0x20]
108FC6:  VLDR            S0, [R1]
108FCA:  VLDR            S10, [R2]
108FCE:  VLDR            S8, [R1,#0x14]
108FD2:  VLDR            S3, [R1,#0x24]
108FD6:  VMUL.F32        S8, S12, S8
108FDA:  VLDR            S2, [R1,#4]
108FDE:  VMLA.F32        S6, S1, S14
108FE2:  VLDR            S4, [R1,#8]
108FE6:  VMLA.F32        S8, S3, S14
108FEA:  VMLA.F32        S6, S0, S10
108FEE:  VLDR            S0, [R1,#0x30]
108FF2:  VADD.F32        S0, S6, S0
108FF6:  VLDR            S6, [R1,#0x18]
108FFA:  VSTR            S0, [R0]
108FFE:  VLDR            S0, [R2]
109002:  VMLA.F32        S8, S2, S0
109006:  VLDR            S2, [R1,#0x34]
10900A:  VADD.F32        S2, S8, S2
10900E:  VSTR            S2, [R0,#4]
109012:  VLDR            S2, [R2,#4]
109016:  VMUL.F32        S2, S6, S2
10901A:  VLDR            S6, [R1,#0x28]
10901E:  VMLA.F32        S2, S6, S14
109022:  VMLA.F32        S2, S4, S0
109026:  VLDR            S0, [R1,#0x38]
10902A:  VADD.F32        S0, S0, S2
10902E:  VSTR            S0, [R0,#8]
109032:  MOV             R0, R1
109034:  BX              LR
