; =========================================================
; Game Engine Function: MOB_ConfigValueStr_KeyStr
; Address            : 0x2616C0 - 0x26174A
; =========================================================

2616C0:  PUSH            {R4-R7,LR}
2616C2:  ADD             R7, SP, #0xC
2616C4:  PUSH.W          {R8-R10}
2616C8:  LDR             R6, =(aRoot - 0x2616D4); "root"
2616CA:  CMP             R0, #0
2616CC:  MOV             R8, R2
2616CE:  MOV             R9, R1
2616D0:  ADD             R6, PC; "root"
2616D2:  MOV.W           R4, #0
2616D6:  IT NE
2616D8:  MOVNE           R6, R0
2616DA:  LDR             R0, =(g_ex_configPairs_ptr - 0x2616E0)
2616DC:  ADD             R0, PC; g_ex_configPairs_ptr
2616DE:  LDR             R5, [R0]; g_ex_configPairs
2616E0:  LDR             R0, =(g_ex_configPairs_ptr - 0x2616E6)
2616E2:  ADD             R0, PC; g_ex_configPairs_ptr
2616E4:  LDR.W           R10, [R0]; g_ex_configPairs
2616E8:  LDR.W           R0, [R5,R4,LSL#3]; char *
2616EC:  MOV             R1, R6; char *
2616EE:  BLX             strcmp
2616F2:  CBNZ            R0, loc_261702
2616F4:  ADD.W           R0, R10, R4,LSL#3
2616F8:  MOV             R1, R9; char *
2616FA:  LDR             R0, [R0,#4]; char *
2616FC:  BLX             strcmp
261700:  CBZ             R0, loc_261712
261702:  ADDS            R0, R4, #1
261704:  CMP             R4, #0x1D
261706:  MOV             R4, R0
261708:  BLT             loc_2616E8
26170A:  MOVS            R0, #0
26170C:  POP.W           {R8-R10}
261710:  POP             {R4-R7,PC}
261712:  CMP             R4, #0
261714:  BLT             loc_26170A
261716:  LDR             R0, =(g_mob_configGlobals_ptr - 0x26171C)
261718:  ADD             R0, PC; g_mob_configGlobals_ptr
26171A:  LDR             R0, [R0]; g_mob_configGlobals
26171C:  LDR             R1, [R0]
26171E:  CMP             R1, #0
261720:  ITT NE
261722:  LDRNE           R0, [R1]
261724:  CMPNE           R0, #0
261726:  BEQ             loc_26170A
261728:  ADDS            R1, #4
26172A:  CMP             R0, R4
26172C:  BEQ             loc_26173C
26172E:  LDR             R0, [R1,#4]
261730:  ADD.W           R2, R1, #8
261734:  CMP             R0, #0
261736:  MOV             R1, R2
261738:  BNE             loc_26172A
26173A:  B               loc_26170A
26173C:  LDR             R0, [R1]
26173E:  STR.W           R0, [R8]
261742:  MOVS            R0, #1
261744:  POP.W           {R8-R10}
261748:  POP             {R4-R7,PC}
