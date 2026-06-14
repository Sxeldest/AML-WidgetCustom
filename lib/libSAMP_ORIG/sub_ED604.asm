; =========================================================
; Game Engine Function: sub_ED604
; Address            : 0xED604 - 0xED65A
; =========================================================

ED604:  PUSH            {R4-R7,LR}
ED606:  ADD             R7, SP, #0xC
ED608:  PUSH.W          {R7-R11}
ED60C:  MOV             R6, R1
ED60E:  LDR             R1, =(_ZTVNSt6__ndk117moneypunct_bynameIcLb1EEE_ptr - 0xED618)
ED610:  MOV             R4, R0
ED612:  SUBS            R0, R2, #1
ED614:  ADD             R1, PC; _ZTVNSt6__ndk117moneypunct_bynameIcLb1EEE_ptr
ED616:  ADD.W           R8, R4, #0xC
ED61A:  LDR             R1, [R1]; `vtable for'std::moneypunct_byname<char,true> ...
ED61C:  ADDS            R1, #8
ED61E:  STRD.W          R1, R0, [R4]
ED622:  LDR             R5, =(sub_F6750+1 - 0xED62A)
ED624:  MOV             R0, R8
ED626:  ADD             R5, PC; sub_F6750
ED628:  BLX             R5; sub_F6750
ED62A:  ADD.W           R9, R4, #0x18
ED62E:  MOV             R0, R9
ED630:  BLX             R5; sub_F6750
ED632:  ADD.W           R10, R4, #0x24 ; '$'
ED636:  MOV             R0, R10
ED638:  BLX             R5; sub_F6750
ED63A:  ADD.W           R11, R4, #0x30 ; '0'
ED63E:  MOV             R0, R11
ED640:  BLX             R5; sub_F6750
ED642:  LDRB            R0, [R6]
ED644:  LDR             R1, [R6,#8]
ED646:  LSLS            R0, R0, #0x1F
ED648:  IT EQ
ED64A:  ADDEQ           R1, R6, #1
ED64C:  MOV             R0, R4
ED64E:  BLX             j__ZNSt6__ndk117moneypunct_bynameIcLb1EE4initEPKc; std::moneypunct_byname<char,true>::init(char const*)
ED652:  MOV             R0, R4
ED654:  POP.W           {R3,R8-R11}
ED658:  POP             {R4-R7,PC}
