; =========================================================
; Game Engine Function: _ZN7CClouds26MovingFog_GetFirstFreeSlotEv
; Address            : 0x5A1850 - 0x5A186E
; =========================================================

5A1850:  LDR             R1, =(_ZN7CClouds5ms_mfE_ptr - 0x5A1858)
5A1852:  MOVS            R0, #0
5A1854:  ADD             R1, PC; _ZN7CClouds5ms_mfE_ptr
5A1856:  LDR             R1, [R1]; CClouds::ms_mf ...
5A1858:  LDRB            R2, [R1,R0]
5A185A:  CMP             R2, #0
5A185C:  IT EQ
5A185E:  BXEQ            LR
5A1860:  ADDS            R2, R0, #1
5A1862:  CMP             R0, #0x31 ; '1'
5A1864:  MOV             R0, R2
5A1866:  BLT             loc_5A1858
5A1868:  MOV.W           R0, #0xFFFFFFFF
5A186C:  BX              LR
