; =========================================================
; Game Engine Function: MOB_Local_ConfigValueUInt
; Address            : 0x24D640 - 0x24D678
; =========================================================

24D640:  LDR             R2, =(g_mob_configGlobals_ptr - 0x24D646)
24D642:  ADD             R2, PC; g_mob_configGlobals_ptr
24D644:  LDR             R2, [R2]; g_mob_configGlobals
24D646:  LDR             R3, [R2]
24D648:  CMP             R3, #0
24D64A:  ITT NE
24D64C:  LDRNE           R2, [R3]
24D64E:  CMPNE           R2, #0
24D650:  BEQ             loc_24D674
24D652:  ADDS            R3, #4
24D654:  CMP             R2, R0
24D656:  BEQ             loc_24D66C
24D658:  LDR             R2, [R3,#4]
24D65A:  ADD.W           R12, R3, #8
24D65E:  CMP             R2, #0
24D660:  MOV             R3, R12
24D662:  ITT EQ
24D664:  MOVEQ           R0, #0
24D666:  BXEQ            LR
24D668:  CMP             R2, R0
24D66A:  BNE             loc_24D658
24D66C:  LDR             R0, [R3]
24D66E:  STR             R0, [R1]
24D670:  MOVS            R0, #1
24D672:  BX              LR
24D674:  MOVS            R0, #0
24D676:  BX              LR
