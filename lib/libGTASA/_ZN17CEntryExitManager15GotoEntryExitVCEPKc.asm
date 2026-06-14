; =========================================================
; Game Engine Function: _ZN17CEntryExitManager15GotoEntryExitVCEPKc
; Address            : 0x306840 - 0x3068B0
; =========================================================

306840:  PUSH            {R4-R7,LR}
306842:  ADD             R7, SP, #0xC
306844:  PUSH.W          {R8-R10}
306848:  MOV             R8, R0
30684A:  LDR             R0, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x306850)
30684C:  ADD             R0, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
30684E:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits ...
306850:  LDR.W           R9, [R0]; CEntryExitManager::mp_poolEntryExits
306854:  LDR.W           R4, [R9,#8]
306858:  CBZ             R4, loc_30689E
30685A:  RSB.W           R1, R4, R4,LSL#4
30685E:  LDR.W           R10, [R9,#4]
306862:  MOV             R0, #0xFFFFFFF4
306866:  ADD.W           R6, R0, R1,LSL#2
30686A:  ADD.W           R0, R10, R4
30686E:  LDRSB.W         R0, [R0,#-1]
306872:  CMP             R0, #0
306874:  BLT             loc_306896
306876:  LDR.W           R1, [R9]
30687A:  ADDS            R0, R1, R6
30687C:  CMP             R0, #0x30 ; '0'
30687E:  BEQ             loc_306896
306880:  LDRB            R1, [R1,R6]
306882:  LSLS            R1, R1, #0x1D
306884:  BMI             loc_306896
306886:  SUB.W           R5, R0, #0x30 ; '0'
30688A:  MOV             R1, R8; char *
30688C:  MOVS            R2, #8; size_t
30688E:  MOV             R0, R5; char *
306890:  BLX             strncasecmp
306894:  CBZ             R0, loc_3068A4
306896:  SUBS            R4, #1
306898:  SUB.W           R6, R6, #0x3C ; '<'
30689C:  BNE             loc_30686A
30689E:  POP.W           {R8-R10}
3068A2:  POP             {R4-R7,PC}
3068A4:  MOV             R0, R5; this
3068A6:  POP.W           {R8-R10}
3068AA:  POP.W           {R4-R7,LR}
3068AE:  B               _ZN17CEntryExitManager13GotoEntryExitEP10CEntryExit; CEntryExitManager::GotoEntryExit(CEntryExit *)
