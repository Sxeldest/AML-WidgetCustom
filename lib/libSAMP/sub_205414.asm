; =========================================================
; Game Engine Function: sub_205414
; Address            : 0x205414 - 0x20546A
; =========================================================

205414:  PUSH            {R4-R7,LR}
205416:  ADD             R7, SP, #0xC
205418:  PUSH.W          {R7-R11}
20541C:  MOV             R6, R1
20541E:  LDR             R1, =(_ZTVNSt6__ndk117moneypunct_bynameIcLb0EEE_ptr - 0x205428)
205420:  MOV             R4, R0
205422:  SUBS            R0, R2, #1
205424:  ADD             R1, PC; _ZTVNSt6__ndk117moneypunct_bynameIcLb0EEE_ptr
205426:  ADD.W           R8, R4, #0xC
20542A:  LDR             R1, [R1]; `vtable for'std::moneypunct_byname<char,false> ...
20542C:  ADDS            R1, #8
20542E:  STRD.W          R1, R0, [R4]
205432:  LDR             R5, =(sub_1EE5C6+1 - 0x20543A)
205434:  MOV             R0, R8
205436:  ADD             R5, PC; sub_1EE5C6
205438:  BLX             R5; sub_1EE5C6
20543A:  ADD.W           R9, R4, #0x18
20543E:  MOV             R0, R9
205440:  BLX             R5; sub_1EE5C6
205442:  ADD.W           R10, R4, #0x24 ; '$'
205446:  MOV             R0, R10
205448:  BLX             R5; sub_1EE5C6
20544A:  ADD.W           R11, R4, #0x30 ; '0'
20544E:  MOV             R0, R11
205450:  BLX             R5; sub_1EE5C6
205452:  LDRB            R0, [R6]
205454:  LDR             R1, [R6,#8]
205456:  LSLS            R0, R0, #0x1F
205458:  IT EQ
20545A:  ADDEQ           R1, R6, #1
20545C:  MOV             R0, R4
20545E:  BLX             j__ZNSt6__ndk117moneypunct_bynameIcLb0EE4initEPKc; std::moneypunct_byname<char,false>::init(char const*)
205462:  MOV             R0, R4
205464:  POP.W           {R3,R8-R11}
205468:  POP             {R4-R7,PC}
