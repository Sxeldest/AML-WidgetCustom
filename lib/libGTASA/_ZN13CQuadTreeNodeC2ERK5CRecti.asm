; =========================================================
; Game Engine Function: _ZN13CQuadTreeNodeC2ERK5CRecti
; Address            : 0x40DC08 - 0x40DC26
; =========================================================

40DC08:  VMOV.I32        Q9, #0
40DC0C:  VLD1.32         {D16-D17}, [R1]
40DC10:  ADD.W           R1, R0, #0x14
40DC14:  STR             R2, [R0,#0x24]
40DC16:  MOVS            R2, #0
40DC18:  VST1.32         {D18-D19}, [R1]
40DC1C:  MOV             R1, R0
40DC1E:  VST1.32         {D16-D17}, [R1]!
40DC22:  STR             R2, [R1]
40DC24:  BX              LR
