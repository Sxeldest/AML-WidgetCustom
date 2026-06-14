; =========================================================
; Game Engine Function: _ZN10MobileMenu9AddScreenEP10MenuScreenb
; Address            : 0x298460 - 0x2984F2
; =========================================================

298460:  PUSH            {R4-R7,LR}
298462:  ADD             R7, SP, #0xC
298464:  PUSH.W          {R8-R10}
298468:  MOV             R5, R0
29846A:  MOV             R6, R2
29846C:  LDR             R0, [R5,#0x2C]
29846E:  MOV             R4, R1
298470:  CMP             R0, #0
298472:  ITT NE
298474:  MOVNE           R0, R5; this
298476:  BLXNE           j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
29847A:  CMP             R6, #1
29847C:  BNE             loc_2984CC
29847E:  LDRD.W          R1, R6, [R5,#0x20]
298482:  ADDS            R0, R6, #1
298484:  CMP             R1, R0
298486:  BCS             loc_2984D4
298488:  MOVW            R1, #0xAAAB
29848C:  LSLS            R0, R0, #2
29848E:  MOVT            R1, #0xAAAA
298492:  UMULL.W         R0, R1, R0, R1
298496:  MOVS            R0, #3
298498:  ADD.W           R10, R0, R1,LSR#1
29849C:  MOV.W           R0, R10,LSL#2; byte_count
2984A0:  BLX             malloc
2984A4:  LDR.W           R8, [R5,#0x28]
2984A8:  MOV             R9, R0
2984AA:  CMP.W           R8, #0
2984AE:  BEQ             loc_2984C2
2984B0:  LSLS            R2, R6, #2; size_t
2984B2:  MOV             R0, R9; void *
2984B4:  MOV             R1, R8; void *
2984B6:  BLX             memcpy_0
2984BA:  MOV             R0, R8; p
2984BC:  BLX             free
2984C0:  LDR             R6, [R5,#0x24]
2984C2:  STR.W           R9, [R5,#0x28]
2984C6:  STR.W           R10, [R5,#0x20]
2984CA:  B               loc_2984D8
2984CC:  STR             R4, [R5,#0x2C]
2984CE:  POP.W           {R8-R10}
2984D2:  POP             {R4-R7,PC}
2984D4:  LDR.W           R9, [R5,#0x28]
2984D8:  STR.W           R4, [R9,R6,LSL#2]
2984DC:  LDR             R0, [R5,#0x24]
2984DE:  ADDS            R0, #1
2984E0:  STR             R0, [R5,#0x24]
2984E2:  LDR             R0, [R4]
2984E4:  LDR             R1, [R0,#0x10]
2984E6:  MOV             R0, R4
2984E8:  POP.W           {R8-R10}
2984EC:  POP.W           {R4-R7,LR}
2984F0:  BX              R1
