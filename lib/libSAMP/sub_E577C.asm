; =========================================================
; Game Engine Function: sub_E577C
; Address            : 0xE577C - 0xE57C2
; =========================================================

E577C:  LDR             R1, [R0,#0x54]
E577E:  ANDS.W          R1, R1, #8
E5782:  BNE             loc_E57BA
E5784:  MOVS            R2, #0
E5786:  ADD.W           R3, R0, #0x20 ; ' '
E578A:  STR             R2, [R0,#0x1C]
E578C:  STRD.W          R2, R2, [R0,#0x14]
E5790:  LDRB.W          R2, [R0,#0x5A]
E5794:  CMP             R2, #0
E5796:  IT EQ
E5798:  ADDEQ.W         R3, R0, #0x38 ; '8'
E579C:  ADD.W           R2, R0, #0x34 ; '4'
E57A0:  IT EQ
E57A2:  ADDEQ.W         R2, R0, #0x3C ; '<'
E57A6:  LDR.W           R12, [R2]
E57AA:  LDR             R3, [R3]
E57AC:  MOVS            R2, #8
E57AE:  STR             R2, [R0,#0x54]
E57B0:  ADD.W           R2, R3, R12
E57B4:  STR             R3, [R0,#8]
E57B6:  STRD.W          R2, R2, [R0,#0xC]
E57BA:  CLZ.W           R0, R1
E57BE:  LSRS            R0, R0, #5
E57C0:  BX              LR
