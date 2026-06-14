; =========================================================
; Game Engine Function: _Z16RwBBoxInitializeP6RwBBoxPK5RwV3d
; Address            : 0x1D4614 - 0x1D462E
; =========================================================

1D4614:  VLDR            D16, [R1]
1D4618:  LDR             R2, [R1,#8]
1D461A:  STR             R2, [R0,#0x14]
1D461C:  VSTR            D16, [R0,#0xC]
1D4620:  VLDR            D16, [R1]
1D4624:  LDR             R1, [R1,#8]
1D4626:  STR             R1, [R0,#8]
1D4628:  VSTR            D16, [R0]
1D462C:  BX              LR
