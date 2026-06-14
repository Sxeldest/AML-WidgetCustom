; =========================================================
; Game Engine Function: sub_AF6F8
; Address            : 0xAF6F8 - 0xAF7E2
; =========================================================

AF6F8:  PUSH            {R4-R7,LR}
AF6FA:  ADD             R7, SP, #0xC
AF6FC:  PUSH.W          {R8}
AF700:  SUB             SP, SP, #0x50
AF702:  MOV             R5, R2
AF704:  MOV             R2, R0
AF706:  LDR             R0, =(__stack_chk_guard_ptr - 0xAF70C)
AF708:  ADD             R0, PC; __stack_chk_guard_ptr
AF70A:  LDR             R0, [R0]; __stack_chk_guard
AF70C:  LDR             R0, [R0]
AF70E:  STR             R0, [SP,#0x60+var_14]
AF710:  LDRB            R0, [R2]
AF712:  CMP             R0, #0
AF714:  BEQ             loc_AF7C2
AF716:  MOV             R6, R1
AF718:  B               loc_AF728
AF71A:  CMP             R0, #0x25 ; '%'
AF71C:  IT EQ
AF71E:  ADDEQ           R2, #1
AF720:  LDRB.W          R0, [R2,#1]!
AF724:  CMP             R0, #0
AF726:  BEQ             loc_AF7C2
AF728:  CMP             R0, #0x25 ; '%'
AF72A:  BNE             loc_AF71A
AF72C:  LDRB            R1, [R2,#1]
AF72E:  CMP             R1, #0x25 ; '%'
AF730:  BEQ             loc_AF71A
AF732:  ADD             R4, SP, #0x60+s
AF734:  MOVS            R1, #0x40 ; '@'
AF736:  STRD.W          R5, R3, [SP,#0x60+var_60]
AF73A:  MOV             R0, R4; s
AF73C:  BL              sub_886C0
AF740:  SUBS            R0, R4, #1
AF742:  LDRB.W          R1, [R0,#1]!; nptr
AF746:  CMP             R1, #0x20 ; ' '
AF748:  BEQ             loc_AF742
AF74A:  BIC.W           R2, R6, #1
AF74E:  CMP             R2, #8
AF750:  BNE             loc_AF760
AF752:  BLX             atof
AF756:  BLX             sub_108AA0
AF75A:  MOV             R5, R0
AF75C:  MOV             R3, R1
AF75E:  B               loc_AF7C2
AF760:  SUB.W           R2, R1, #0x2D ; '-'
AF764:  MOV.W           R12, #0
AF768:  CLZ.W           R2, R2
AF76C:  LSRS            R2, R2, #5
AF76E:  LDRB            R3, [R0,R2]
AF770:  SUBS            R3, #0x2B ; '+'
AF772:  CLZ.W           R3, R3
AF776:  LSRS            R3, R3, #5
AF778:  ADD             R3, R2
AF77A:  LDRB            R5, [R0,R3]
AF77C:  SUB.W           R2, R5, #0x30 ; '0'
AF780:  CMP             R2, #9
AF782:  BHI             loc_AF7B0
AF784:  MOVS            R6, #0
AF786:  MOV.W           LR, #0xA
AF78A:  MOVS            R2, #0
AF78C:  ADD.W           R2, R2, R2,LSL#2
AF790:  SUB.W           R4, R5, #0x30 ; '0'
AF794:  ADD.W           R8, R0, R3
AF798:  ADDS            R3, #1
AF79A:  LSLS            R2, R2, #1
AF79C:  UMLAL.W         R4, R2, R6, LR
AF7A0:  LDRB.W          R5, [R8,#1]
AF7A4:  SUB.W           R6, R5, #0x30 ; '0'
AF7A8:  CMP             R6, #0xA
AF7AA:  MOV             R6, R4
AF7AC:  BCC             loc_AF78C
AF7AE:  B               loc_AF7B4
AF7B0:  MOVS            R4, #0
AF7B2:  MOVS            R2, #0
AF7B4:  NEGS            R5, R4
AF7B6:  SBC.W           R3, R12, R2
AF7BA:  CMP             R1, #0x2D ; '-'
AF7BC:  ITT NE
AF7BE:  MOVNE           R5, R4
AF7C0:  MOVNE           R3, R2
AF7C2:  LDR             R0, [SP,#0x60+var_14]
AF7C4:  LDR             R1, =(__stack_chk_guard_ptr - 0xAF7CA)
AF7C6:  ADD             R1, PC; __stack_chk_guard_ptr
AF7C8:  LDR             R1, [R1]; __stack_chk_guard
AF7CA:  LDR             R1, [R1]
AF7CC:  CMP             R1, R0
AF7CE:  ITTTT EQ
AF7D0:  MOVEQ           R0, R5
AF7D2:  MOVEQ           R1, R3
AF7D4:  ADDEQ           SP, SP, #0x50 ; 'P'
AF7D6:  POPEQ.W         {R8}
AF7DA:  IT EQ
AF7DC:  POPEQ           {R4-R7,PC}
AF7DE:  BLX             __stack_chk_fail
