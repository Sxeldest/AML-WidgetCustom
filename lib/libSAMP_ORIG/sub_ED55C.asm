; =========================================================
; Game Engine Function: sub_ED55C
; Address            : 0xED55C - 0xED5B2
; =========================================================

ED55C:  PUSH            {R4-R7,LR}
ED55E:  ADD             R7, SP, #0xC
ED560:  PUSH.W          {R7-R11}
ED564:  MOV             R6, R1
ED566:  LDR             R1, =(_ZTVNSt6__ndk117moneypunct_bynameIcLb0EEE_ptr - 0xED570)
ED568:  MOV             R4, R0
ED56A:  SUBS            R0, R2, #1
ED56C:  ADD             R1, PC; _ZTVNSt6__ndk117moneypunct_bynameIcLb0EEE_ptr
ED56E:  ADD.W           R8, R4, #0xC
ED572:  LDR             R1, [R1]; `vtable for'std::moneypunct_byname<char,false> ...
ED574:  ADDS            R1, #8
ED576:  STRD.W          R1, R0, [R4]
ED57A:  LDR             R5, =(sub_F6750+1 - 0xED582)
ED57C:  MOV             R0, R8
ED57E:  ADD             R5, PC; sub_F6750
ED580:  BLX             R5; sub_F6750
ED582:  ADD.W           R9, R4, #0x18
ED586:  MOV             R0, R9
ED588:  BLX             R5; sub_F6750
ED58A:  ADD.W           R10, R4, #0x24 ; '$'
ED58E:  MOV             R0, R10
ED590:  BLX             R5; sub_F6750
ED592:  ADD.W           R11, R4, #0x30 ; '0'
ED596:  MOV             R0, R11
ED598:  BLX             R5; sub_F6750
ED59A:  LDRB            R0, [R6]
ED59C:  LDR             R1, [R6,#8]
ED59E:  LSLS            R0, R0, #0x1F
ED5A0:  IT EQ
ED5A2:  ADDEQ           R1, R6, #1
ED5A4:  MOV             R0, R4
ED5A6:  BLX             j__ZNSt6__ndk117moneypunct_bynameIcLb0EE4initEPKc; std::moneypunct_byname<char,false>::init(char const*)
ED5AA:  MOV             R0, R4
ED5AC:  POP.W           {R3,R8-R11}
ED5B0:  POP             {R4-R7,PC}
