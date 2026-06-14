; =========================================================
; Game Engine Function: _Z18RpHAnimKeyFrameAddPvS_S_
; Address            : 0x1C4192 - 0x1C42DC
; =========================================================

1C4192:  VLDR            S0, [R2,#8]
1C4196:  VLDR            S8, [R1,#8]
1C419A:  VLDR            S2, [R2,#0xC]
1C419E:  VLDR            S10, [R1,#0xC]
1C41A2:  VMUL.F32        S0, S8, S0
1C41A6:  VLDR            S4, [R2,#0x10]
1C41AA:  VMUL.F32        S2, S10, S2
1C41AE:  VLDR            S12, [R1,#0x10]
1C41B2:  VLDR            S6, [R2,#0x14]
1C41B6:  VMUL.F32        S4, S12, S4
1C41BA:  VLDR            S14, [R1,#0x14]
1C41BE:  VADD.F32        S0, S0, S2
1C41C2:  VMUL.F32        S2, S14, S6
1C41C6:  VADD.F32        S0, S0, S4
1C41CA:  VSUB.F32        S0, S2, S0
1C41CE:  VSTR            S0, [R0,#0x14]
1C41D2:  VLDR            S0, [R2,#0xC]
1C41D6:  VLDR            S6, [R1,#0x10]
1C41DA:  VLDR            S2, [R2,#0x10]
1C41DE:  VLDR            S4, [R1,#0xC]
1C41E2:  VMUL.F32        S0, S6, S0
1C41E6:  VMUL.F32        S2, S4, S2
1C41EA:  VSUB.F32        S0, S2, S0
1C41EE:  VSTR            S0, [R0,#8]
1C41F2:  VLDR            S2, [R2,#8]
1C41F6:  VLDR            S8, [R1,#0x10]
1C41FA:  VLDR            S4, [R2,#0x10]
1C41FE:  VLDR            S6, [R1,#8]
1C4202:  VMUL.F32        S2, S8, S2
1C4206:  VMUL.F32        S4, S6, S4
1C420A:  VSUB.F32        S2, S2, S4
1C420E:  VSTR            S2, [R0,#0xC]
1C4212:  VLDR            S4, [R2,#8]
1C4216:  VLDR            S10, [R1,#0xC]
1C421A:  VLDR            S6, [R2,#0xC]
1C421E:  VLDR            S8, [R1,#8]
1C4222:  VMUL.F32        S4, S10, S4
1C4226:  VMUL.F32        S6, S8, S6
1C422A:  VSUB.F32        S4, S6, S4
1C422E:  VSTR            S4, [R0,#0x10]
1C4232:  VLDR            S6, [R1,#0x14]
1C4236:  VLDR            S8, [R2,#8]
1C423A:  VMUL.F32        S6, S8, S6
1C423E:  VADD.F32        S0, S0, S6
1C4242:  VSTR            S0, [R0,#8]
1C4246:  VLDR            S6, [R1,#0x14]
1C424A:  VLDR            S8, [R2,#0xC]
1C424E:  VMUL.F32        S6, S8, S6
1C4252:  VADD.F32        S2, S2, S6
1C4256:  VSTR            S2, [R0,#0xC]
1C425A:  VLDR            S6, [R1,#0x14]
1C425E:  VLDR            S8, [R2,#0x10]
1C4262:  VMUL.F32        S6, S8, S6
1C4266:  VADD.F32        S4, S4, S6
1C426A:  VSTR            S4, [R0,#0x10]
1C426E:  VLDR            S6, [R2,#0x14]
1C4272:  VLDR            S8, [R1,#8]
1C4276:  VMUL.F32        S6, S8, S6
1C427A:  VADD.F32        S0, S0, S6
1C427E:  VSTR            S0, [R0,#8]
1C4282:  VLDR            S0, [R2,#0x14]
1C4286:  VLDR            S6, [R1,#0xC]
1C428A:  VMUL.F32        S0, S6, S0
1C428E:  VADD.F32        S0, S2, S0
1C4292:  VSTR            S0, [R0,#0xC]
1C4296:  VLDR            S0, [R2,#0x14]
1C429A:  VLDR            S2, [R1,#0x10]
1C429E:  VMUL.F32        S0, S2, S0
1C42A2:  VADD.F32        S0, S4, S0
1C42A6:  VSTR            S0, [R0,#0x10]
1C42AA:  VLDR            S0, [R2,#0x18]
1C42AE:  VLDR            S2, [R1,#0x18]
1C42B2:  VADD.F32        S0, S2, S0
1C42B6:  VSTR            S0, [R0,#0x18]
1C42BA:  VLDR            S0, [R2,#0x1C]
1C42BE:  VLDR            S2, [R1,#0x1C]
1C42C2:  VADD.F32        S0, S2, S0
1C42C6:  VSTR            S0, [R0,#0x1C]
1C42CA:  VLDR            S0, [R2,#0x20]
1C42CE:  VLDR            S2, [R1,#0x20]
1C42D2:  VADD.F32        S0, S2, S0
1C42D6:  VSTR            S0, [R0,#0x20]
1C42DA:  BX              LR
