; =========================================================
; Game Engine Function: _ZN7CClouds13MovingFogInitEv
; Address            : 0x59EA30 - 0x59EA7E
; =========================================================

59EA30:  LDR             R0, =(_ZN7CClouds5ms_mfE_ptr - 0x59EA3E)
59EA32:  ADR             R1, dword_59EA80
59EA34:  VLD1.64         {D16-D17}, [R1@128]
59EA38:  MOVS            R1, #3
59EA3A:  ADD             R0, PC; _ZN7CClouds5ms_mfE_ptr
59EA3C:  MOVS            R2, #2
59EA3E:  VMOV.I32        Q9, #0
59EA42:  LDR             R0, [R0]; CClouds::ms_mf ...
59EA44:  STR.W           R2, [R0,#(dword_A25AC8 - 0xA254D0)]
59EA48:  MOVS            R2, #0
59EA4A:  STR.W           R1, [R0,#(dword_A25ACC - 0xA254D0)]
59EA4E:  MOV             R1, #0x3D75C28F
59EA56:  STR.W           R1, [R0,#(dword_A259B4 - 0xA254D0)]
59EA5A:  STR.W           R1, [R0,#(dword_A259B8 - 0xA254D0)]
59EA5E:  ADD.W           R1, R0, #0x5E8
59EA62:  STR.W           R2, [R0,#(dword_A259BC - 0xA254D0)]
59EA66:  STRH            R2, [R0,#(word_A25500 - 0xA254D0)]
59EA68:  VST1.32         {D16-D17}, [R1]
59EA6C:  ADD.W           R1, R0, #0x20 ; ' '
59EA70:  VST1.32         {D18-D19}, [R1]
59EA74:  VST1.32         {D18-D19}, [R0]!
59EA78:  VST1.32         {D18-D19}, [R0]
59EA7C:  BX              LR
