; =========================================================
; Game Engine Function: _ZN17CEntryExitManager22PostEntryExitsCreationEv
; Address            : 0x306650 - 0x306726
; =========================================================

306650:  PUSH            {R4-R7,LR}
306652:  ADD             R7, SP, #0xC
306654:  PUSH.W          {R8-R11}
306658:  SUB             SP, SP, #4
30665A:  LDR             R0, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x306660)
30665C:  ADD             R0, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
30665E:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits ...
306660:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits
306662:  LDR             R6, [R0,#8]
306664:  CMP             R6, #0
306666:  BEQ             loc_30671E
306668:  LDR             R1, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x306672)
30666A:  MOVW            R3, #0x4004
30666E:  ADD             R1, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
306670:  LDR.W           R8, [R1]; CEntryExitManager::mp_poolEntryExits ...
306674:  B               loc_30669A
306676:  CBNZ            R6, loc_306696
306678:  B               loc_30671E
30667A:  LDR             R0, [SP,#0x20+var_20]
30667C:  STR             R5, [R0]
30667E:  LDR.W           R0, [R9,#8]
306682:  CMP             R0, #0
306684:  MOV.W           R0, #0x1800
306688:  IT EQ
30668A:  STREQ.W         R11, [R9,#8]
30668E:  STRH.W          R0, [R9,#4]
306692:  CMP             R6, #0
306694:  BEQ             loc_30671E
306696:  LDR.W           R0, [R8]; CEntryExitManager::mp_poolEntryExits
30669A:  LDR             R4, [R0,#4]
30669C:  SUBS            R6, #1
30669E:  LDRSB           R1, [R4,R6]
3066A0:  CMP             R1, #0
3066A2:  BLT             loc_306676
3066A4:  LDR             R1, [R0]
3066A6:  RSB.W           R2, R6, R6,LSL#4
3066AA:  ADD.W           R11, R1, R2,LSL#2
3066AE:  CMP.W           R11, #0
3066B2:  BEQ             loc_306676
3066B4:  LDRB.W          R2, [R11,#0x30]
3066B8:  LSLS            R2, R2, #0x1D
3066BA:  BPL             loc_306676
3066BC:  MOV             R5, R11
3066BE:  LDR.W           R2, [R5,#0x38]!
3066C2:  STR             R5, [SP,#0x20+var_20]
3066C4:  CMP             R2, #0
3066C6:  BNE             loc_306676
3066C8:  LDR.W           R10, [R0,#8]
3066CC:  CMP.W           R10, #0
3066D0:  BEQ             loc_306676
3066D2:  RSB.W           R0, R10, R10,LSL#4
3066D6:  ADD.W           R0, R1, R0,LSL#2
3066DA:  SUB.W           R9, R0, #0xC
3066DE:  ADD.W           R0, R4, R10
3066E2:  LDRSB.W         R0, [R0,#-1]
3066E6:  CMP             R0, #0
3066E8:  BLT             loc_306712
3066EA:  CMP.W           R9, #0x30 ; '0'
3066EE:  BEQ             loc_306712
3066F0:  LDRH.W          R0, [R9]
3066F4:  ANDS            R0, R3
3066F6:  CMP.W           R0, #0x4000
3066FA:  BNE             loc_306712
3066FC:  SUB.W           R5, R9, #0x30 ; '0'
306700:  MOV             R1, R11; char *
306702:  MOVS            R2, #8; size_t
306704:  MOV             R0, R5; char *
306706:  BLX             strncasecmp
30670A:  MOVW            R3, #0x4004
30670E:  CMP             R0, #0
306710:  BEQ             loc_30667A
306712:  SUBS.W          R10, R10, #1
306716:  SUB.W           R9, R9, #0x3C ; '<'
30671A:  BNE             loc_3066DE
30671C:  B               loc_306676
30671E:  ADD             SP, SP, #4
306720:  POP.W           {R8-R11}
306724:  POP             {R4-R7,PC}
