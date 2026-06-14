; =========================================================
; Game Engine Function: _ZN6CPedIKC2EP4CPed
; Address            : 0x4B8D94 - 0x4B8DAA
; =========================================================

4B8D94:  MOV             R2, R0
4B8D96:  VMOV.I32        Q8, #0
4B8D9A:  STR.W           R1, [R2],#0x10
4B8D9E:  ADDS            R1, R0, #4
4B8DA0:  VST1.32         {D16-D17}, [R2]
4B8DA4:  VST1.32         {D16-D17}, [R1]
4B8DA8:  BX              LR
