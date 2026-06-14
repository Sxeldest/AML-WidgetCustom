; =========================================================
; Game Engine Function: sub_ED758
; Address            : 0xED758 - 0xED7B0
; =========================================================

ED758:  PUSH            {R4-R7,LR}
ED75A:  ADD             R7, SP, #0xC
ED75C:  PUSH.W          {R7-R11}
ED760:  MOV             R6, R1
ED762:  LDR             R1, =(_ZTVNSt6__ndk117moneypunct_bynameIwLb1EEE_ptr - 0xED76C)
ED764:  MOV             R4, R0
ED766:  SUBS            R0, R2, #1
ED768:  ADD             R1, PC; _ZTVNSt6__ndk117moneypunct_bynameIwLb1EEE_ptr
ED76A:  ADD.W           R8, R4, #0x10
ED76E:  LDR             R1, [R1]; `vtable for'std::moneypunct_byname<wchar_t,true> ...
ED770:  ADDS            R1, #8
ED772:  STRD.W          R1, R0, [R4]
ED776:  MOV             R0, R8
ED778:  BL              sub_F6750
ED77C:  LDR             R5, =(sub_F6854+1 - 0xED786)
ED77E:  ADD.W           R9, R4, #0x1C
ED782:  ADD             R5, PC; sub_F6854
ED784:  MOV             R0, R9
ED786:  BLX             R5; sub_F6854
ED788:  ADD.W           R10, R4, #0x28 ; '('
ED78C:  MOV             R0, R10
ED78E:  BLX             R5; sub_F6854
ED790:  ADD.W           R11, R4, #0x34 ; '4'
ED794:  MOV             R0, R11
ED796:  BLX             R5; sub_F6854
ED798:  LDRB            R0, [R6]
ED79A:  LDR             R1, [R6,#8]
ED79C:  LSLS            R0, R0, #0x1F
ED79E:  IT EQ
ED7A0:  ADDEQ           R1, R6, #1
ED7A2:  MOV             R0, R4
ED7A4:  BLX             j__ZNSt6__ndk117moneypunct_bynameIwLb1EE4initEPKc; std::moneypunct_byname<wchar_t,true>::init(char const*)
ED7A8:  MOV             R0, R4
ED7AA:  POP.W           {R3,R8-R11}
ED7AE:  POP             {R4-R7,PC}
