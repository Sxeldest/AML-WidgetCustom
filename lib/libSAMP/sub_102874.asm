; =========================================================
; Game Engine Function: sub_102874
; Address            : 0x102874 - 0x1028C2
; =========================================================

102874:  MOVW            R12, #0xFFFF
102878:  CMP             R1, R12
10287A:  BEQ             loc_10289E
10287C:  LDR.W           R12, [R2]
102880:  STR.W           R12, [R0,#0x10]
102884:  LDR.W           R12, [R2,#4]
102888:  STR.W           R12, [R0,#0x14]
10288C:  LDR             R2, [R2,#8]
10288E:  VLDR            S0, [R3]
102892:  VLDR            S2, [R3,#4]
102896:  STR             R2, [R0,#0x18]
102898:  VLDR            S4, [R3,#8]
10289C:  B               loc_1028B2
10289E:  VLDR            S0, =0.0
1028A2:  MOVS            R2, #0
1028A4:  STRD.W          R2, R2, [R0,#0x10]
1028A8:  STR             R2, [R0,#0x18]
1028AA:  VMOV.F32        S2, S0
1028AE:  VMOV.F32        S4, S0
1028B2:  VSTR            S0, [R0,#0x1C]
1028B6:  VSTR            S2, [R0,#0x20]
1028BA:  VSTR            S4, [R0,#0x24]
1028BE:  STRH            R1, [R0,#0xC]
1028C0:  BX              LR
