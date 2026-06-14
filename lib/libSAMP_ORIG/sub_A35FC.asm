; =========================================================
; Game Engine Function: sub_A35FC
; Address            : 0xA35FC - 0xA3636
; =========================================================

A35FC:  MOVS            R2, #0x3F ; '?'
A35FE:  VMOV.I32        Q8, #0
A3602:  MOVS            R1, #0
A3604:  STRH.W          R2, [R0,#0x42]
A3608:  MOV.W           R2, #0x3F800000
A360C:  MOVS            R3, #0xC
A360E:  STRD.W          R2, R1, [R0,#0x44]
A3612:  MOV             R2, R0
A3614:  VST1.32         {D16-D17}, [R2]!
A3618:  VST1.32         {D16-D17}, [R2],R3
A361C:  MOVS            R3, #0xE
A361E:  VST1.32         {D16-D17}, [R2]!
A3622:  VST1.32         {D16-D17}, [R2],R3
A3626:  STRB.W          R1, [R0,#0x54]
A362A:  STR.W           R1, [R0,#0x3E]
A362E:  STRD.W          R1, R1, [R0,#0x4C]
A3632:  STR             R1, [R2]
A3634:  BX              LR
