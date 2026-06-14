; =========================================================
; Game Engine Function: _Z18emu_glLoadIdentityv
; Address            : 0x1BA884 - 0x1BA8D6
; =========================================================

1BA884:  LDR             R1, =(curStack_ptr - 0x1BA88C)
1BA886:  LDR             R0, =(_ZN8RQMatrix8IdentityE_ptr - 0x1BA88E)
1BA888:  ADD             R1, PC; curStack_ptr
1BA88A:  ADD             R0, PC; _ZN8RQMatrix8IdentityE_ptr
1BA88C:  LDR             R1, [R1]; curStack
1BA88E:  LDR             R0, [R0]; RQMatrix::Identity ...
1BA890:  LDR             R1, [R1]; ModelViewStack
1BA892:  ADD.W           R3, R0, #0x20 ; ' '
1BA896:  MOV             R2, R0
1BA898:  ADDS            R0, #0x30 ; '0'
1BA89A:  VLD1.32         {D16-D17}, [R2]!
1BA89E:  VLD1.32         {D18-D19}, [R2]
1BA8A2:  LDR.W           R2, [R1,#(dword_6B39E4 - 0x6B37C4)]
1BA8A6:  VLD1.32         {D22-D23}, [R0]
1BA8AA:  ADD.W           R0, R2, R2,LSL#4
1BA8AE:  VLD1.32         {D20-D21}, [R3]
1BA8B2:  ADD.W           R0, R1, R0,LSL#2
1BA8B6:  MOVS            R1, #1
1BA8B8:  STRB.W          R1, [R0,#0x40]
1BA8BC:  ADD.W           R1, R0, #0x30 ; '0'
1BA8C0:  VST1.32         {D22-D23}, [R1]
1BA8C4:  ADD.W           R1, R0, #0x20 ; ' '
1BA8C8:  VST1.32         {D20-D21}, [R1]
1BA8CC:  VST1.32         {D16-D17}, [R0]!
1BA8D0:  VST1.32         {D18-D19}, [R0]
1BA8D4:  BX              LR
