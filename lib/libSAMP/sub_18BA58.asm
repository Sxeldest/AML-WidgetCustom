; =========================================================
; Game Engine Function: sub_18BA58
; Address            : 0x18BA58 - 0x18BA76
; =========================================================

18BA58:  ADR             R1, dword_18BA78
18BA5A:  VLD1.64         {D16-D17}, [R1]
18BA5E:  MOVS            R1, #0
18BA60:  STRD.W          R1, R1, [R0,#0x18]
18BA64:  ADDS            R0, #4
18BA66:  MOVW            R1, #0xE1F0
18BA6A:  VST1.32         {D16-D17}, [R0]!
18BA6E:  MOVT            R1, #0xC3D2
18BA72:  STR             R1, [R0]
18BA74:  BX              LR
