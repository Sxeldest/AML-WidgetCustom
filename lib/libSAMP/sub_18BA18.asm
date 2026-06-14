; =========================================================
; Game Engine Function: sub_18BA18
; Address            : 0x18BA18 - 0x18BA3E
; =========================================================

18BA18:  LDR             R1, =(_ZTV5CSHA1 - 0x18BA26); `vtable for'CSHA1 ...
18BA1A:  ADR             R2, dword_18BA40
18BA1C:  VLD1.64         {D16-D17}, [R2]
18BA20:  MOVS            R2, #0
18BA22:  ADD             R1, PC; `vtable for'CSHA1
18BA24:  ADDS            R1, #8
18BA26:  STR             R1, [R0]
18BA28:  ADDS            R1, R0, #4
18BA2A:  STRD.W          R2, R2, [R0,#0x18]
18BA2E:  MOVW            R2, #0xE1F0
18BA32:  VST1.32         {D16-D17}, [R1]!
18BA36:  MOVT            R2, #0xC3D2
18BA3A:  STR             R2, [R1]
18BA3C:  BX              LR
