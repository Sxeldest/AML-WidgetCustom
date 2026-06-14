; =========================================================
; Game Engine Function: sub_174FC6
; Address            : 0x174FC6 - 0x175016
; =========================================================

174FC6:  MOVS            R2, #1
174FC8:  MOVS            R3, #3
174FCA:  MOVS            R1, #0
174FCC:  STRD.W          R3, R2, [R0,#0x14]
174FD0:  STRB            R2, [R0,#8]
174FD2:  MOV.W           R2, #0x3F800000
174FD6:  STRD.W          R1, R2, [R0,#0x40]
174FDA:  MOVW            R2, #0xFFFF
174FDE:  VMOV.I32        Q8, #0
174FE2:  MOVT            R2, #0x7F7F
174FE6:  STRD.W          R1, R2, [R0,#0x34]
174FEA:  ADD.W           R2, R0, #0x20 ; ' '
174FEE:  STRB            R1, [R0,#0x1C]
174FF0:  VST1.32         {D16-D17}, [R2]!
174FF4:  STR             R1, [R2]
174FF6:  ADD.W           R2, R0, #0x48 ; 'H'
174FFA:  VST1.32         {D16-D17}, [R2]!
174FFE:  VST1.32         {D16-D17}, [R2]!
175002:  STRD.W          R1, R1, [R0,#0xC]
175006:  STRD.W          R1, R1, [R0]
17500A:  STRB.W          R1, [R0,#0x3C]
17500E:  STRD.W          R1, R1, [R0,#0x6C]
175012:  STR             R1, [R2]
175014:  BX              LR
