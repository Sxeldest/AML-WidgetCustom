; =========================================================
; Game Engine Function: _ZN17CEntryExitManager13LinkEntryExitEP10CEntryExit
; Address            : 0x306540 - 0x3065D2
; =========================================================

306540:  PUSH            {R4-R7,LR}
306542:  ADD             R7, SP, #0xC
306544:  PUSH.W          {R8-R11}
306548:  SUB             SP, SP, #4
30654A:  MOV             R11, R0
30654C:  LDR             R0, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x306552)
30654E:  ADD             R0, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
306550:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits ...
306552:  LDR.W           R9, [R0]; CEntryExitManager::mp_poolEntryExits
306556:  LDR.W           R4, [R9,#8]
30655A:  CBZ             R4, loc_3065B0
30655C:  RSB.W           R2, R4, R4,LSL#4
306560:  LDR.W           R10, [R9,#4]
306564:  MOV             R0, #0xFFFFFFF4
306568:  ADD.W           R6, R0, R2,LSL#2
30656C:  MOVW            R2, #0x4004
306570:  ADD.W           R0, R10, R4
306574:  LDRSB.W         R0, [R0,#-1]
306578:  CMP             R0, #0
30657A:  BLT             loc_3065A8
30657C:  LDR.W           R0, [R9]
306580:  ADD.W           R8, R0, R6
306584:  CMP.W           R8, #0x30 ; '0'
306588:  BEQ             loc_3065A8
30658A:  LDRH            R0, [R0,R6]
30658C:  ANDS            R0, R2
30658E:  CMP.W           R0, #0x4000
306592:  BNE             loc_3065A8
306594:  SUB.W           R5, R8, #0x30 ; '0'
306598:  MOV             R1, R11; char *
30659A:  MOVS            R2, #8; size_t
30659C:  MOV             R0, R5; char *
30659E:  BLX             strncasecmp
3065A2:  MOVW            R2, #0x4004
3065A6:  CBZ             R0, loc_3065B8
3065A8:  SUBS            R4, #1
3065AA:  SUB.W           R6, R6, #0x3C ; '<'
3065AE:  BNE             loc_306570
3065B0:  ADD             SP, SP, #4
3065B2:  POP.W           {R8-R11}
3065B6:  POP             {R4-R7,PC}
3065B8:  STR.W           R5, [R11,#0x38]
3065BC:  LDR.W           R0, [R8,#8]
3065C0:  CMP             R0, #0
3065C2:  MOV.W           R0, #0x1800
3065C6:  IT EQ
3065C8:  STREQ.W         R11, [R8,#8]
3065CC:  STRH.W          R0, [R8,#4]
3065D0:  B               loc_3065B0
