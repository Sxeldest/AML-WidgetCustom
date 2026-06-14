; =========================================================
; Game Engine Function: _ZN17CEntryExitManager17GetEntryExitIndexEPKctt
; Address            : 0x3065D8 - 0x30664C
; =========================================================

3065D8:  PUSH            {R4-R7,LR}
3065DA:  ADD             R7, SP, #0xC
3065DC:  PUSH.W          {R8-R11}
3065E0:  SUB             SP, SP, #4
3065E2:  MOV             R8, R0
3065E4:  LDR             R0, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x3065EE)
3065E6:  MOV             R9, R2
3065E8:  MOV             R11, R1
3065EA:  ADD             R0, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
3065EC:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits ...
3065EE:  LDR.W           R10, [R0]; CEntryExitManager::mp_poolEntryExits
3065F2:  LDR.W           R0, [R10,#8]
3065F6:  CBZ             R0, loc_30663E
3065F8:  RSB.W           R2, R0, R0,LSL#4
3065FC:  LDR.W           R4, [R10,#4]
306600:  MOV             R1, #0xFFFFFFF4
306604:  SUBS            R6, R0, #1
306606:  ADD.W           R5, R1, R2,LSL#2
30660A:  LDRSB           R0, [R4,R6]
30660C:  CMP             R0, #0
30660E:  BLT             loc_306636
306610:  LDR.W           R1, [R10]
306614:  ADDS            R0, R1, R5
306616:  CMP             R0, #0x30 ; '0'
306618:  BEQ             loc_306636
30661A:  LDRH            R1, [R1,R5]
30661C:  AND.W           R2, R1, R11
306620:  CMP             R2, R11
306622:  IT EQ
306624:  ANDSEQ.W        R1, R1, R9
306628:  BNE             loc_306636
30662A:  SUBS            R0, #0x30 ; '0'; char *
30662C:  MOV             R1, R8; char *
30662E:  MOVS            R2, #8; size_t
306630:  BLX             strncasecmp
306634:  CBZ             R0, loc_306642
306636:  SUBS            R6, #1
306638:  SUBS            R5, #0x3C ; '<'
30663A:  ADDS            R0, R6, #1
30663C:  BNE             loc_30660A
30663E:  MOV.W           R6, #0xFFFFFFFF
306642:  MOV             R0, R6
306644:  ADD             SP, SP, #4
306646:  POP.W           {R8-R11}
30664A:  POP             {R4-R7,PC}
