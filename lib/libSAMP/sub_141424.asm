; =========================================================
; Game Engine Function: sub_141424
; Address            : 0x141424 - 0x141462
; =========================================================

141424:  CMP.W           R1, #0x3EC
141428:  BHI             locret_141460
14142A:  LDR             R2, =(off_23496C - 0x141430)
14142C:  ADD             R2, PC; off_23496C
14142E:  LDR             R2, [R2]; dword_23DEF4
141430:  LDR             R2, [R2]
141432:  LDR.W           R2, [R2,#0x3B0]
141436:  LDR             R2, [R2]
141438:  CBZ             R2, locret_141460
14143A:  ADDS            R3, R2, R1
14143C:  LDRB.W          R3, [R3,#0xFB4]
141440:  CBZ             R3, locret_141460
141442:  ADD.W           R2, R2, R1,LSL#2
141446:  LDR             R2, [R2,#4]
141448:  LDR             R2, [R2]
14144A:  LDRB            R2, [R2,#0x19]
14144C:  ORR.W           R2, R2, #0x20 ; ' '
141450:  CMP             R2, #0x20 ; ' '
141452:  IT EQ
141454:  BXEQ            LR
141456:  MOVS            R2, #0
141458:  STR             R1, [R0,#4]
14145A:  MOVS            R1, #1
14145C:  STRB            R2, [R0,#8]
14145E:  STRB            R1, [R0,#0x11]
141460:  BX              LR
