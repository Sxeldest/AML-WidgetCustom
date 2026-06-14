; =========================================================
; Game Engine Function: MOB_Local_ConfigValueStr
; Address            : 0x24D5E4 - 0x24D61C
; =========================================================

24D5E4:  LDR             R2, =(g_mob_configGlobals_ptr - 0x24D5EA)
24D5E6:  ADD             R2, PC; g_mob_configGlobals_ptr
24D5E8:  LDR             R2, [R2]; g_mob_configGlobals
24D5EA:  LDR             R3, [R2]
24D5EC:  CMP             R3, #0
24D5EE:  ITT NE
24D5F0:  LDRNE           R2, [R3]
24D5F2:  CMPNE           R2, #0
24D5F4:  BEQ             loc_24D618
24D5F6:  ADDS            R3, #4
24D5F8:  CMP             R2, R0
24D5FA:  BEQ             loc_24D610
24D5FC:  LDR             R2, [R3,#4]
24D5FE:  ADD.W           R12, R3, #8
24D602:  CMP             R2, #0
24D604:  MOV             R3, R12
24D606:  ITT EQ
24D608:  MOVEQ           R0, #0
24D60A:  BXEQ            LR
24D60C:  CMP             R2, R0
24D60E:  BNE             loc_24D5FC
24D610:  LDR             R0, [R3]
24D612:  STR             R0, [R1]
24D614:  MOVS            R0, #1
24D616:  BX              LR
24D618:  MOVS            R0, #0
24D61A:  BX              LR
