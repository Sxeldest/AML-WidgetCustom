; =========================================================
; Game Engine Function: _ZN7CCamera30InitialiseScriptableComponentsEv
; Address            : 0x3D67E0 - 0x3D682A
; =========================================================

3D67E0:  ADR             R1, dword_3D6830
3D67E2:  MOVS            R2, #1
3D67E4:  VLD1.64         {D16-D17}, [R1@128]
3D67E8:  MOVS            R1, #0xBF800000
3D67EE:  STR.W           R1, [R0,#0xBE4]
3D67F2:  STR.W           R1, [R0,#0xBE8]
3D67F6:  STR.W           R1, [R0,#0xC1C]
3D67FA:  STR.W           R1, [R0,#0xC20]
3D67FE:  STRB.W          R2, [R0,#0xC04]
3D6802:  STRB.W          R2, [R0,#0xC3C]
3D6806:  STRB.W          R2, [R0,#0xC64]
3D680A:  STR.W           R1, [R0,#0xC44]
3D680E:  STR.W           R1, [R0,#0xC48]
3D6812:  MOVS            R1, #0
3D6814:  STRB.W          R1, [R0,#0xC14]
3D6818:  STRB.W          R1, [R0,#0xC3D]
3D681C:  STR.W           R1, [R0,#0xC74]
3D6820:  ADDW            R0, R0, #0xC2C
3D6824:  VST1.32         {D16-D17}, [R0]
3D6828:  BX              LR
