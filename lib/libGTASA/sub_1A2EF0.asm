; =========================================================
; Game Engine Function: sub_1A2EF0
; Address            : 0x1A2EF0 - 0x1A2F0A
; =========================================================

1A2EF0:  LDR             R0, =(dword_70BF84 - 0x1A2EFC)
1A2EF2:  VMOV.I32        Q8, #0
1A2EF6:  MOVS            R1, #0
1A2EF8:  ADD             R0, PC; dword_70BF84
1A2EFA:  STR.W           R1, [R0,#(dword_70CB18 - 0x70BF84)]
1A2EFE:  STR             R1, [R0]
1A2F00:  ADDW            R0, R0, #0xB84
1A2F04:  VST1.32         {D16-D17}, [R0]
1A2F08:  BX              LR
