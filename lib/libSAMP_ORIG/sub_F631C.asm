; =========================================================
; Game Engine Function: sub_F631C
; Address            : 0xF631C - 0xF633A
; =========================================================

F631C:  MOVS            R2, #0
F631E:  B.W             loc_F6322
F6322:  CMP             R1, #0x1C
F6324:  BHI             loc_F6334
F6326:  LDRB.W          R2, [R0,#0x70]
F632A:  CBNZ            R2, loc_F6334
F632C:  MOVS            R1, #1
F632E:  STRB.W          R1, [R0,#0x70]
F6332:  BX              LR
F6334:  LSLS            R0, R1, #2; unsigned int
F6336:  B.W             _Znaj_0; operator new[](uint)
