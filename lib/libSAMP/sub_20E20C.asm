; =========================================================
; Game Engine Function: sub_20E20C
; Address            : 0x20E20C - 0x20E22A
; =========================================================

20E20C:  MOVS            R2, #0
20E20E:  B.W             loc_20E212
20E212:  CMP             R1, #0x1C
20E214:  BHI             loc_20E224
20E216:  LDRB.W          R2, [R0,#0x70]
20E21A:  CBNZ            R2, loc_20E224
20E21C:  MOVS            R1, #1
20E21E:  STRB.W          R1, [R0,#0x70]
20E222:  BX              LR
20E224:  LSLS            R0, R1, #2; unsigned int
20E226:  B.W             _Znaj_0; operator new[](uint)
