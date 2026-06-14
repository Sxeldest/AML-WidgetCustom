; =========================================================
; Game Engine Function: _ZN10MobileMenu14ProcessPendingEv
; Address            : 0x29A5E6 - 0x29A6A4
; =========================================================

29A5E6:  PUSH            {R4-R7,LR}
29A5E8:  ADD             R7, SP, #0xC
29A5EA:  PUSH.W          {R8,R9,R11}
29A5EE:  MOV             R4, R0
29A5F0:  LDR             R6, [R4,#0x24]
29A5F2:  CMP             R6, #2
29A5F4:  BCC             loc_29A606
29A5F6:  LDRD.W          R1, R0, [R4,#0x28]
29A5FA:  ADD.W           R2, R1, R6,LSL#2
29A5FE:  LDR.W           R2, [R2,#-8]
29A602:  CMP             R0, R2
29A604:  BEQ             loc_29A67E
29A606:  LDR             R1, [R4,#0x20]
29A608:  ADDS            R0, R6, #1
29A60A:  CMP             R1, R0
29A60C:  BCS             loc_29A650
29A60E:  MOVW            R1, #0xAAAB
29A612:  LSLS            R0, R0, #2
29A614:  MOVT            R1, #0xAAAA
29A618:  UMULL.W         R0, R1, R0, R1
29A61C:  MOVS            R0, #3
29A61E:  ADD.W           R9, R0, R1,LSR#1
29A622:  MOV.W           R0, R9,LSL#2; byte_count
29A626:  BLX             malloc
29A62A:  LDR.W           R8, [R4,#0x28]
29A62E:  MOV             R5, R0
29A630:  CMP.W           R8, #0
29A634:  BEQ             loc_29A648
29A636:  LSLS            R2, R6, #2; size_t
29A638:  MOV             R0, R5; void *
29A63A:  MOV             R1, R8; void *
29A63C:  BLX             memcpy_0
29A640:  MOV             R0, R8; p
29A642:  BLX             free
29A646:  LDR             R6, [R4,#0x24]
29A648:  STR             R5, [R4,#0x28]
29A64A:  STR.W           R9, [R4,#0x20]
29A64E:  B               loc_29A652
29A650:  LDR             R5, [R4,#0x28]
29A652:  LDR             R0, [R4,#0x2C]
29A654:  STR.W           R0, [R5,R6,LSL#2]
29A658:  LDR             R1, [R4,#0x24]
29A65A:  LDR             R0, [R4,#0x2C]
29A65C:  ADDS            R1, #1
29A65E:  STR             R1, [R4,#0x24]
29A660:  LDR             R1, [R0]
29A662:  LDR             R1, [R1,#0x10]
29A664:  BLX             R1
29A666:  LDRB.W          R0, [R4,#0x6E]
29A66A:  CMP             R0, #0
29A66C:  ITT NE
29A66E:  MOVNE           R0, #0
29A670:  STRBNE.W        R0, [R4,#0x6E]
29A674:  MOVS            R0, #0
29A676:  STR             R0, [R4,#0x2C]
29A678:  POP.W           {R8,R9,R11}
29A67C:  POP             {R4-R7,PC}
29A67E:  SUBS            R2, R6, #1
29A680:  LDR.W           R0, [R1,R2,LSL#2]
29A684:  STR             R2, [R4,#0x24]
29A686:  CMP             R0, #0
29A688:  BEQ             loc_29A694
29A68A:  LDR             R1, [R0]
29A68C:  LDR             R1, [R1,#4]
29A68E:  BLX             R1
29A690:  LDRD.W          R2, R1, [R4,#0x24]
29A694:  ADD.W           R0, R1, R2,LSL#2
29A698:  LDR.W           R0, [R0,#-4]
29A69C:  LDR             R1, [R0]
29A69E:  LDR             R1, [R1,#0x10]
29A6A0:  BLX             R1
29A6A2:  B               loc_29A674
