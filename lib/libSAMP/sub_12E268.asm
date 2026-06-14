; =========================================================
; Game Engine Function: sub_12E268
; Address            : 0x12E268 - 0x12E27C
; =========================================================

12E268:  LDR             R2, =(_ZTSPFvNSt6__ndk117basic_string_viewIcNS_11char_traitsIcEEEEE_ptr - 0x12E272)
12E26A:  LDR             R3, [R1,#4]
12E26C:  MOVS            R1, #0
12E26E:  ADD             R2, PC; _ZTSPFvNSt6__ndk117basic_string_viewIcNS_11char_traitsIcEEEEE_ptr
12E270:  LDR             R2, [R2]; "PFvNSt6__ndk117basic_string_viewIcNS_11"... ...
12E272:  CMP             R3, R2
12E274:  IT EQ
12E276:  ADDEQ           R1, R0, #4
12E278:  MOV             R0, R1
12E27A:  BX              LR
