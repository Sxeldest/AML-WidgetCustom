; =========================================================
; Game Engine Function: sub_ED6AC
; Address            : 0xED6AC - 0xED704
; =========================================================

ED6AC:  PUSH            {R4-R7,LR}
ED6AE:  ADD             R7, SP, #0xC
ED6B0:  PUSH.W          {R7-R11}
ED6B4:  MOV             R6, R1
ED6B6:  LDR             R1, =(_ZTVNSt6__ndk117moneypunct_bynameIwLb0EEE_ptr - 0xED6C0)
ED6B8:  MOV             R4, R0
ED6BA:  SUBS            R0, R2, #1
ED6BC:  ADD             R1, PC; _ZTVNSt6__ndk117moneypunct_bynameIwLb0EEE_ptr
ED6BE:  ADD.W           R8, R4, #0x10
ED6C2:  LDR             R1, [R1]; `vtable for'std::moneypunct_byname<wchar_t,false> ...
ED6C4:  ADDS            R1, #8
ED6C6:  STRD.W          R1, R0, [R4]
ED6CA:  MOV             R0, R8
ED6CC:  BL              sub_F6750
ED6D0:  LDR             R5, =(sub_F6854+1 - 0xED6DA)
ED6D2:  ADD.W           R9, R4, #0x1C
ED6D6:  ADD             R5, PC; sub_F6854
ED6D8:  MOV             R0, R9
ED6DA:  BLX             R5; sub_F6854
ED6DC:  ADD.W           R10, R4, #0x28 ; '('
ED6E0:  MOV             R0, R10
ED6E2:  BLX             R5; sub_F6854
ED6E4:  ADD.W           R11, R4, #0x34 ; '4'
ED6E8:  MOV             R0, R11
ED6EA:  BLX             R5; sub_F6854
ED6EC:  LDRB            R0, [R6]
ED6EE:  LDR             R1, [R6,#8]
ED6F0:  LSLS            R0, R0, #0x1F
ED6F2:  IT EQ
ED6F4:  ADDEQ           R1, R6, #1
ED6F6:  MOV             R0, R4
ED6F8:  BLX             j__ZNSt6__ndk117moneypunct_bynameIwLb0EE4initEPKc; std::moneypunct_byname<wchar_t,false>::init(char const*)
ED6FC:  MOV             R0, R4
ED6FE:  POP.W           {R3,R8-R11}
ED702:  POP             {R4-R7,PC}
