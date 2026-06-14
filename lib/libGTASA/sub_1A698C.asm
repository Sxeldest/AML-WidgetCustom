; =========================================================
; Game Engine Function: sub_1A698C
; Address            : 0x1A698C - 0x1A69CC
; =========================================================

1A698C:  LDR             R0, =(unk_9A74B8 - 0x1A6998)
1A698E:  VMOV.I32        Q8, #0
1A6992:  MOVS            R1, #0
1A6994:  ADD             R0, PC; unk_9A74B8
1A6996:  STRD.W          R1, R1, [R0,#(dword_9A7528 - 0x9A74B8)]
1A699A:  ADD.W           R1, R0, #0x60 ; '`'
1A699E:  VST1.64         {D16-D17}, [R1]
1A69A2:  ADD.W           R1, R0, #0x50 ; 'P'
1A69A6:  VST1.64         {D16-D17}, [R1]
1A69AA:  ADD.W           R1, R0, #0x40 ; '@'
1A69AE:  VST1.64         {D16-D17}, [R1]
1A69B2:  ADD.W           R1, R0, #0x30 ; '0'
1A69B6:  VST1.64         {D16-D17}, [R1]
1A69BA:  ADD.W           R1, R0, #0x20 ; ' '
1A69BE:  VST1.64         {D16-D17}, [R1]
1A69C2:  VST1.64         {D16-D17}, [R0]!
1A69C6:  VST1.64         {D16-D17}, [R0]
1A69CA:  BX              LR
