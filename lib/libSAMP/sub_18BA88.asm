; =========================================================
; Game Engine Function: sub_18BA88
; Address            : 0x18BA88 - 0x18BAAE
; =========================================================

18BA88:  LDR             R1, =(_ZTV5CSHA1 - 0x18BA96); `vtable for'CSHA1 ...
18BA8A:  ADR             R2, dword_18BAB0
18BA8C:  VLD1.64         {D16-D17}, [R2]
18BA90:  MOVS            R2, #0
18BA92:  ADD             R1, PC; `vtable for'CSHA1
18BA94:  ADDS            R1, #8
18BA96:  STR             R1, [R0]
18BA98:  ADDS            R1, R0, #4
18BA9A:  STRD.W          R2, R2, [R0,#0x18]
18BA9E:  MOVW            R2, #0xE1F0
18BAA2:  VST1.32         {D16-D17}, [R1]!
18BAA6:  MOVT            R2, #0xC3D2
18BAAA:  STR             R2, [R1]
18BAAC:  BX              LR
