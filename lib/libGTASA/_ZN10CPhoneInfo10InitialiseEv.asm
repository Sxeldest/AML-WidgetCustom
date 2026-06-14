; =========================================================
; Game Engine Function: _ZN10CPhoneInfo10InitialiseEv
; Address            : 0x31C65C - 0x31C732
; =========================================================

31C65C:  PUSH            {R4-R7,LR}
31C65E:  ADD             R7, SP, #0xC
31C660:  PUSH.W          {R8-R11}
31C664:  LDR             R1, =(_ZN6CPools16ms_pBuildingPoolE_ptr - 0x31C670)
31C666:  MOV.W           R12, #0
31C66A:  LDR             R2, =(byte_7AF320 - 0x31C676)
31C66C:  ADD             R1, PC; _ZN6CPools16ms_pBuildingPoolE_ptr
31C66E:  LDR             R3, =(dword_7AF324 - 0x31C67A)
31C670:  LDR             R6, =(byte_7AF328 - 0x31C67E)
31C672:  ADD             R2, PC; byte_7AF320
31C674:  LDR             R1, [R1]; CPools::ms_pBuildingPool ...
31C676:  ADD             R3, PC; dword_7AF324
31C678:  LDR             R5, =(dword_7AF32C - 0x31C684)
31C67A:  ADD             R6, PC; byte_7AF328
31C67C:  STRB.W          R12, [R2]
31C680:  ADD             R5, PC; dword_7AF32C
31C682:  LDR.W           R11, [R1]; CPools::ms_pBuildingPool
31C686:  STR.W           R12, [R3]
31C68A:  STRB.W          R12, [R6]
31C68E:  STR.W           R12, [R5]
31C692:  STRD.W          R12, R12, [R0]
31C696:  LDR.W           R1, [R11,#8]
31C69A:  CMP             R1, #0
31C69C:  BEQ             loc_31C72C
31C69E:  RSB.W           R3, R1, R1,LSL#4
31C6A2:  MOV             R6, #0xFFFFFFEA
31C6A6:  SUBS            R1, #1
31C6A8:  MOV.W           R8, #0x34 ; '4'
31C6AC:  ADD.W           R3, R6, R3,LSL#2
31C6B0:  LDR             R6, =(MI_PHONEBOOTH1_ptr - 0x31C6BA)
31C6B2:  MOV.W           R9, #0
31C6B6:  ADD             R6, PC; MI_PHONEBOOTH1_ptr
31C6B8:  LDR.W           LR, [R6]; MI_PHONEBOOTH1
31C6BC:  LDR.W           R4, [R11,#4]
31C6C0:  LDRSB           R4, [R4,R1]
31C6C2:  CMP             R4, #0
31C6C4:  BLT             loc_31C724
31C6C6:  LDR.W           R4, [R11]
31C6CA:  ADDS            R6, R4, R3
31C6CC:  CMP             R6, #0x26 ; '&'
31C6CE:  BEQ             loc_31C724
31C6D0:  LDRSH           R4, [R4,R3]
31C6D2:  LDRH.W          R5, [LR]
31C6D6:  CMP             R4, R5
31C6D8:  BNE             loc_31C724
31C6DA:  ADD.W           R5, R0, #8
31C6DE:  SUB.W           R10, R6, #0x26 ; '&'
31C6E2:  MLA.W           R4, R9, R8, R5
31C6E6:  STR.W           R12, [R4,#0x2C]
31C6EA:  LDR.W           R9, [R0]
31C6EE:  LDR.W           R4, [R6,#-0x12]
31C6F2:  MLA.W           R9, R9, R8, R5
31C6F6:  ADD.W           R2, R4, #0x30 ; '0'
31C6FA:  CMP             R4, #0
31C6FC:  IT EQ
31C6FE:  SUBEQ.W         R2, R6, #0x22 ; '"'
31C702:  VLDR            D16, [R2]
31C706:  LDR             R2, [R2,#8]
31C708:  STR.W           R2, [R9,#8]
31C70C:  VSTR            D16, [R9]
31C710:  LDR             R2, [R0]
31C712:  MLA.W           R2, R2, R8, R5
31C716:  STR.W           R10, [R2,#0x28]
31C71A:  LDR             R2, [R0]
31C71C:  ADD.W           R9, R2, #1
31C720:  STR.W           R9, [R0]
31C724:  SUBS            R1, #1
31C726:  SUBS            R3, #0x3C ; '<'
31C728:  ADDS            R4, R1, #1
31C72A:  BNE             loc_31C6BC
31C72C:  POP.W           {R8-R11}
31C730:  POP             {R4-R7,PC}
