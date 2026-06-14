; =========================================================
; Game Engine Function: _ZN11CQuaternion8MultiplyERKS_S1_
; Address            : 0x4504D6 - 0x4505E4
; =========================================================

4504D6:  VLDR            S0, [R1,#4]
4504DA:  VLDR            S6, [R2,#8]
4504DE:  VLDR            S2, [R1,#8]
4504E2:  VLDR            S4, [R2,#4]
4504E6:  VMUL.F32        S0, S0, S6
4504EA:  VMUL.F32        S2, S4, S2
4504EE:  VSUB.F32        S0, S0, S2
4504F2:  VSTR            S0, [R0]
4504F6:  VLDR            S2, [R1]
4504FA:  VLDR            S8, [R2,#8]
4504FE:  VLDR            S4, [R1,#8]
450502:  VLDR            S6, [R2]
450506:  VMUL.F32        S2, S8, S2
45050A:  VMUL.F32        S4, S4, S6
45050E:  VSUB.F32        S2, S4, S2
450512:  VSTR            S2, [R0,#4]
450516:  VLDR            S4, [R1]
45051A:  VLDR            S10, [R2,#4]
45051E:  VLDR            S6, [R1,#4]
450522:  VLDR            S8, [R2]
450526:  VMUL.F32        S4, S4, S10
45052A:  VMUL.F32        S6, S8, S6
45052E:  VSUB.F32        S4, S4, S6
450532:  VSTR            S4, [R0,#8]
450536:  VLDR            S6, [R1]
45053A:  VLDR            S12, [R2,#0xC]
45053E:  VLDR            S8, [R1,#0xC]
450542:  VLDR            S10, [R2]
450546:  VMUL.F32        S6, S6, S12
45054A:  VMUL.F32        S8, S10, S8
45054E:  VADD.F32        S6, S6, S8
450552:  VADD.F32        S0, S0, S6
450556:  VSTR            S0, [R0]
45055A:  VLDR            S0, [R1,#4]
45055E:  VLDR            S10, [R2,#0xC]
450562:  VLDR            S6, [R1,#0xC]
450566:  VLDR            S8, [R2,#4]
45056A:  VMUL.F32        S0, S0, S10
45056E:  VMUL.F32        S6, S8, S6
450572:  VADD.F32        S0, S0, S6
450576:  VADD.F32        S0, S2, S0
45057A:  VSTR            S0, [R0,#4]
45057E:  VLDR            S0, [R1,#8]
450582:  VLDR            S8, [R2,#0xC]
450586:  VLDR            S2, [R1,#0xC]
45058A:  VLDR            S6, [R2,#8]
45058E:  VMUL.F32        S0, S0, S8
450592:  VMUL.F32        S2, S6, S2
450596:  VADD.F32        S0, S0, S2
45059A:  VADD.F32        S0, S4, S0
45059E:  VSTR            S0, [R0,#8]
4505A2:  VLDR            S0, [R2]
4505A6:  VLDR            S8, [R1]
4505AA:  VLDR            S2, [R2,#4]
4505AE:  VLDR            S10, [R1,#4]
4505B2:  VMUL.F32        S0, S8, S0
4505B6:  VLDR            S4, [R2,#8]
4505BA:  VMUL.F32        S2, S10, S2
4505BE:  VLDR            S12, [R1,#8]
4505C2:  VLDR            S6, [R2,#0xC]
4505C6:  VMUL.F32        S4, S12, S4
4505CA:  VLDR            S14, [R1,#0xC]
4505CE:  VADD.F32        S0, S0, S2
4505D2:  VMUL.F32        S2, S14, S6
4505D6:  VADD.F32        S0, S0, S4
4505DA:  VSUB.F32        S0, S2, S0
4505DE:  VSTR            S0, [R0,#0xC]
4505E2:  BX              LR
