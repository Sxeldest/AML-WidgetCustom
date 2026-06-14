; =========================================================
; Game Engine Function: sub_9E662
; Address            : 0x9E662 - 0x9E6B2
; =========================================================

9E662:  MOVS            R2, #1
9E664:  MOVS            R3, #3
9E666:  MOVS            R1, #0
9E668:  STRD.W          R3, R2, [R0,#0x14]
9E66C:  STRB            R2, [R0,#8]
9E66E:  MOV.W           R2, #0x3F800000
9E672:  STRD.W          R1, R2, [R0,#0x40]
9E676:  MOVW            R2, #0xFFFF
9E67A:  VMOV.I32        Q8, #0
9E67E:  MOVT            R2, #0x7F7F
9E682:  STRD.W          R1, R2, [R0,#0x34]
9E686:  ADD.W           R2, R0, #0x20 ; ' '
9E68A:  STRB            R1, [R0,#0x1C]
9E68C:  VST1.32         {D16-D17}, [R2]!
9E690:  STR             R1, [R2]
9E692:  ADD.W           R2, R0, #0x48 ; 'H'
9E696:  VST1.32         {D16-D17}, [R2]!
9E69A:  VST1.32         {D16-D17}, [R2]!
9E69E:  STRD.W          R1, R1, [R0,#0xC]
9E6A2:  STRD.W          R1, R1, [R0]
9E6A6:  STRB.W          R1, [R0,#0x3C]
9E6AA:  STRD.W          R1, R1, [R0,#0x6C]
9E6AE:  STR             R1, [R2]
9E6B0:  BX              LR
