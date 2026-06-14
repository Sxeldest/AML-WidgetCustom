; =========================================================
; Game Engine Function: _ZN6CWorld20CastShadowSectorListER8CPtrListffff
; Address            : 0x42767C - 0x4276A4
; =========================================================

42767C:  LDR             R0, [R0]
42767E:  CMP             R0, #0
427680:  IT EQ
427682:  BXEQ            LR
427684:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x42768A)
427686:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
427688:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
42768A:  LDRH            R1, [R1]; CWorld::ms_nCurrentScanCode
42768C:  LDRD.W          R2, R0, [R0]
427690:  LDRH            R3, [R2,#0x30]
427692:  CMP             R3, R1
427694:  ITTT NE
427696:  LDRBNE          R3, [R2,#0x1C]
427698:  MOVSNE.W        R3, R3,LSL#31
42769C:  STRHNE          R1, [R2,#0x30]
42769E:  CMP             R0, #0
4276A0:  BNE             loc_42768C
4276A2:  BX              LR
