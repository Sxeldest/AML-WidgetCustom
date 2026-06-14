; =========================================================
; Game Engine Function: sub_15E670
; Address            : 0x15E670 - 0x15E6BA
; =========================================================

15E670:  MOV             R1, R0
15E672:  LDR             R0, =(off_23496C - 0x15E678)
15E674:  ADD             R0, PC; off_23496C
15E676:  LDR             R0, [R0]; dword_23DEF4
15E678:  LDR             R0, [R0]
15E67A:  CBZ             R0, loc_15E6B4
15E67C:  LDR.W           R0, [R0,#0x3B0]
15E680:  LDR             R0, [R0]
15E682:  CBZ             R0, loc_15E6B4
15E684:  MOV.W           R2, #0x13A0
15E688:  LDRH            R2, [R0,R2]
15E68A:  CMP             R2, R1
15E68C:  ITTT EQ
15E68E:  MOVWEQ          R1, #0x13A2
15E692:  ADDEQ           R0, R1
15E694:  BXEQ            LR
15E696:  CMP.W           R1, #0x3EC
15E69A:  BHI             loc_15E6B4
15E69C:  ADDS            R2, R0, R1
15E69E:  LDRB.W          R2, [R2,#0xFB4]
15E6A2:  CBZ             R2, loc_15E6B4
15E6A4:  ADD.W           R2, R0, R1,LSL#2
15E6A8:  LDR             R2, [R2,#4]
15E6AA:  CBZ             R2, loc_15E6B4
15E6AC:  LDR             R2, [R2]
15E6AE:  CBZ             R2, loc_15E6B4
15E6B0:  B.W             sub_148E64
15E6B4:  LDR             R0, =(byte_8F794 - 0x15E6BA)
15E6B6:  ADD             R0, PC; byte_8F794
15E6B8:  BX              LR
