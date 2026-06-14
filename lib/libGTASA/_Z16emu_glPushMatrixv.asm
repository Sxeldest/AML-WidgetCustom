; =========================================================
; Game Engine Function: _Z16emu_glPushMatrixv
; Address            : 0x1BA74C - 0x1BA7B2
; =========================================================

1BA74C:  LDR             R0, =(curStack_ptr - 0x1BA752)
1BA74E:  ADD             R0, PC; curStack_ptr
1BA750:  LDR             R0, [R0]; curStack
1BA752:  LDR             R0, [R0]; ModelViewStack
1BA754:  LDR.W           R1, [R0,#(dword_6B39E4 - 0x6B37C4)]
1BA758:  ADDS            R2, R1, #1
1BA75A:  STR.W           R2, [R0,#(dword_6B39E4 - 0x6B37C4)]
1BA75E:  ADD.W           R1, R1, R1,LSL#4
1BA762:  ADD.W           R1, R0, R1,LSL#2
1BA766:  ADD.W           R3, R1, #0x20 ; ' '
1BA76A:  MOV             R2, R1
1BA76C:  VLD1.32         {D18-D19}, [R3]
1BA770:  VLD1.32         {D16-D17}, [R2]!
1BA774:  VLD1.32         {D20-D21}, [R2]
1BA778:  ADD.W           R2, R1, #0x30 ; '0'
1BA77C:  VLD1.32         {D22-D23}, [R2]
1BA780:  ADD.W           R2, R1, #0x74 ; 't'
1BA784:  VST1.32         {D22-D23}, [R2]
1BA788:  ADD.W           R2, R1, #0x64 ; 'd'
1BA78C:  VST1.32         {D18-D19}, [R2]
1BA790:  MOVS            R2, #1
1BA792:  STRB.W          R2, [R1,#0x84]
1BA796:  ADDS            R1, #0x44 ; 'D'
1BA798:  VST1.32         {D16-D17}, [R1]!
1BA79C:  VST1.32         {D20-D21}, [R1]
1BA7A0:  LDR.W           R1, [R0,#(dword_6B39E4 - 0x6B37C4)]
1BA7A4:  ADD.W           R1, R1, R1,LSL#4
1BA7A8:  ADD.W           R0, R0, R1,LSL#2
1BA7AC:  STRB.W          R2, [R0,#0x40]
1BA7B0:  BX              LR
