; =========================================================
; Game Engine Function: sub_2054BC
; Address            : 0x2054BC - 0x205512
; =========================================================

2054BC:  PUSH            {R4-R7,LR}
2054BE:  ADD             R7, SP, #0xC
2054C0:  PUSH.W          {R7-R11}
2054C4:  MOV             R6, R1
2054C6:  LDR             R1, =(_ZTVNSt6__ndk117moneypunct_bynameIcLb1EEE_ptr - 0x2054D0)
2054C8:  MOV             R4, R0
2054CA:  SUBS            R0, R2, #1
2054CC:  ADD             R1, PC; _ZTVNSt6__ndk117moneypunct_bynameIcLb1EEE_ptr
2054CE:  ADD.W           R8, R4, #0xC
2054D2:  LDR             R1, [R1]; `vtable for'std::moneypunct_byname<char,true> ...
2054D4:  ADDS            R1, #8
2054D6:  STRD.W          R1, R0, [R4]
2054DA:  LDR             R5, =(sub_1EE5C6+1 - 0x2054E2)
2054DC:  MOV             R0, R8
2054DE:  ADD             R5, PC; sub_1EE5C6
2054E0:  BLX             R5; sub_1EE5C6
2054E2:  ADD.W           R9, R4, #0x18
2054E6:  MOV             R0, R9
2054E8:  BLX             R5; sub_1EE5C6
2054EA:  ADD.W           R10, R4, #0x24 ; '$'
2054EE:  MOV             R0, R10
2054F0:  BLX             R5; sub_1EE5C6
2054F2:  ADD.W           R11, R4, #0x30 ; '0'
2054F6:  MOV             R0, R11
2054F8:  BLX             R5; sub_1EE5C6
2054FA:  LDRB            R0, [R6]
2054FC:  LDR             R1, [R6,#8]
2054FE:  LSLS            R0, R0, #0x1F
205500:  IT EQ
205502:  ADDEQ           R1, R6, #1
205504:  MOV             R0, R4
205506:  BLX             j__ZNSt6__ndk117moneypunct_bynameIcLb1EE4initEPKc; std::moneypunct_byname<char,true>::init(char const*)
20550A:  MOV             R0, R4
20550C:  POP.W           {R3,R8-R11}
205510:  POP             {R4-R7,PC}
