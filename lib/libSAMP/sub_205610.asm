; =========================================================
; Game Engine Function: sub_205610
; Address            : 0x205610 - 0x205668
; =========================================================

205610:  PUSH            {R4-R7,LR}
205612:  ADD             R7, SP, #0xC
205614:  PUSH.W          {R7-R11}
205618:  MOV             R6, R1
20561A:  LDR             R1, =(_ZTVNSt6__ndk117moneypunct_bynameIwLb1EEE_ptr - 0x205624)
20561C:  MOV             R4, R0
20561E:  SUBS            R0, R2, #1
205620:  ADD             R1, PC; _ZTVNSt6__ndk117moneypunct_bynameIwLb1EEE_ptr
205622:  ADD.W           R8, R4, #0x10
205626:  LDR             R1, [R1]; `vtable for'std::moneypunct_byname<wchar_t,true> ...
205628:  ADDS            R1, #8
20562A:  STRD.W          R1, R0, [R4]
20562E:  MOV             R0, R8
205630:  BL              sub_1EE5C6
205634:  LDR             R5, =(sub_20E6C4+1 - 0x20563E)
205636:  ADD.W           R9, R4, #0x1C
20563A:  ADD             R5, PC; sub_20E6C4
20563C:  MOV             R0, R9
20563E:  BLX             R5; sub_20E6C4
205640:  ADD.W           R10, R4, #0x28 ; '('
205644:  MOV             R0, R10
205646:  BLX             R5; sub_20E6C4
205648:  ADD.W           R11, R4, #0x34 ; '4'
20564C:  MOV             R0, R11
20564E:  BLX             R5; sub_20E6C4
205650:  LDRB            R0, [R6]
205652:  LDR             R1, [R6,#8]
205654:  LSLS            R0, R0, #0x1F
205656:  IT EQ
205658:  ADDEQ           R1, R6, #1
20565A:  MOV             R0, R4
20565C:  BLX             j__ZNSt6__ndk117moneypunct_bynameIwLb1EE4initEPKc; std::moneypunct_byname<wchar_t,true>::init(char const*)
205660:  MOV             R0, R4
205662:  POP.W           {R3,R8-R11}
205666:  POP             {R4-R7,PC}
