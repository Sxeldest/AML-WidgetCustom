; =========================================================
; Game Engine Function: sub_205564
; Address            : 0x205564 - 0x2055BC
; =========================================================

205564:  PUSH            {R4-R7,LR}
205566:  ADD             R7, SP, #0xC
205568:  PUSH.W          {R7-R11}
20556C:  MOV             R6, R1
20556E:  LDR             R1, =(_ZTVNSt6__ndk117moneypunct_bynameIwLb0EEE_ptr - 0x205578)
205570:  MOV             R4, R0
205572:  SUBS            R0, R2, #1
205574:  ADD             R1, PC; _ZTVNSt6__ndk117moneypunct_bynameIwLb0EEE_ptr
205576:  ADD.W           R8, R4, #0x10
20557A:  LDR             R1, [R1]; `vtable for'std::moneypunct_byname<wchar_t,false> ...
20557C:  ADDS            R1, #8
20557E:  STRD.W          R1, R0, [R4]
205582:  MOV             R0, R8
205584:  BL              sub_1EE5C6
205588:  LDR             R5, =(sub_20E6C4+1 - 0x205592)
20558A:  ADD.W           R9, R4, #0x1C
20558E:  ADD             R5, PC; sub_20E6C4
205590:  MOV             R0, R9
205592:  BLX             R5; sub_20E6C4
205594:  ADD.W           R10, R4, #0x28 ; '('
205598:  MOV             R0, R10
20559A:  BLX             R5; sub_20E6C4
20559C:  ADD.W           R11, R4, #0x34 ; '4'
2055A0:  MOV             R0, R11
2055A2:  BLX             R5; sub_20E6C4
2055A4:  LDRB            R0, [R6]
2055A6:  LDR             R1, [R6,#8]
2055A8:  LSLS            R0, R0, #0x1F
2055AA:  IT EQ
2055AC:  ADDEQ           R1, R6, #1
2055AE:  MOV             R0, R4
2055B0:  BLX             j__ZNSt6__ndk117moneypunct_bynameIwLb0EE4initEPKc; std::moneypunct_byname<wchar_t,false>::init(char const*)
2055B4:  MOV             R0, R4
2055B6:  POP.W           {R3,R8-R11}
2055BA:  POP             {R4-R7,PC}
