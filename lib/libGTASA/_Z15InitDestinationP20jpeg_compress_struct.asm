; =========================================================
; Game Engine Function: _Z15InitDestinationP20jpeg_compress_struct
; Address            : 0x482128 - 0x48213A
; =========================================================

482128:  LDR             R1, [R0,#0x18]
48212A:  LDR             R2, =(unk_9BA2B0 - 0x482130)
48212C:  ADD             R2, PC; unk_9BA2B0
48212E:  STR             R2, [R1]
482130:  LDR             R0, [R0,#0x18]
482132:  MOV.W           R1, #0x32000
482136:  STR             R1, [R0,#4]
482138:  BX              LR
