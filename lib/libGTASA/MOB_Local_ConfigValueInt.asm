; =========================================================
; Game Engine Function: MOB_Local_ConfigValueInt
; Address            : 0x24D67C - 0x24D6B4
; =========================================================

24D67C:  LDR             R2, =(g_mob_configGlobals_ptr - 0x24D682)
24D67E:  ADD             R2, PC; g_mob_configGlobals_ptr
24D680:  LDR             R2, [R2]; g_mob_configGlobals
24D682:  LDR             R3, [R2]
24D684:  CMP             R3, #0
24D686:  ITT NE
24D688:  LDRNE           R2, [R3]
24D68A:  CMPNE           R2, #0
24D68C:  BEQ             loc_24D6B0
24D68E:  ADDS            R3, #4
24D690:  CMP             R2, R0
24D692:  BEQ             loc_24D6A8
24D694:  LDR             R2, [R3,#4]
24D696:  ADD.W           R12, R3, #8
24D69A:  CMP             R2, #0
24D69C:  MOV             R3, R12
24D69E:  ITT EQ
24D6A0:  MOVEQ           R0, #0
24D6A2:  BXEQ            LR
24D6A4:  CMP             R2, R0
24D6A6:  BNE             loc_24D694
24D6A8:  LDR             R0, [R3]
24D6AA:  STR             R0, [R1]
24D6AC:  MOVS            R0, #1
24D6AE:  BX              LR
24D6B0:  MOVS            R0, #0
24D6B2:  BX              LR
