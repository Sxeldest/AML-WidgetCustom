; =========================================================
; Game Engine Function: sub_EF6B4
; Address            : 0xEF6B4 - 0xEF74C
; =========================================================

EF6B4:  PUSH            {R4-R7,LR}
EF6B6:  ADD             R7, SP, #0xC
EF6B8:  PUSH.W          {R8}
EF6BC:  SUB             SP, SP, #8
EF6BE:  MOV             R4, R0
EF6C0:  CBZ             R1, loc_EF6DA
EF6C2:  LDRB            R0, [R4,#4]
EF6C4:  CBNZ            R0, loc_EF6DA
EF6C6:  LDR             R2, [R4]
EF6C8:  MOVS            R3, #0x4F ; 'O'
EF6CA:  LDRD.W          R0, R1, [R4,#8]
EF6CE:  STR             R3, [SP,#0x18+var_18]
EF6D0:  MOVS            R3, #0x65 ; 'e'
EF6D2:  BL              sub_EFCE0
EF6D6:  STR             R0, [R4,#8]
EF6D8:  B               loc_EF744
EF6DA:  LDR             R0, [R4,#0xC]
EF6DC:  MOV             R1, #0x51EB851F
EF6E4:  LDR             R0, [R0,#0xC]
EF6E6:  UMULL.W         R1, R2, R0, R1
EF6EA:  LSRS            R1, R2, #5
EF6EC:  MOVS            R2, #0x64 ; 'd'
EF6EE:  MLS.W           R0, R1, R2, R0
EF6F2:  LDR             R1, =(a00010203040506 - 0xEF6F8); "000102030405060708091011121314151617181"... ...
EF6F4:  ADD             R1, PC; "000102030405060708091011121314151617181"...
EF6F6:  CMP             R0, #0xA
EF6F8:  ADD.W           R8, R1, R0,LSL#1
EF6FC:  ITE CS
EF6FE:  LDRBCS.W        R6, [R8]
EF702:  MOVCC           R6, #0x20 ; ' '
EF704:  LDR             R5, [R4,#8]
EF706:  LDRD.W          R0, R2, [R5,#8]
EF70A:  ADDS            R1, R0, #1
EF70C:  CMP             R2, R1
EF70E:  BCS             loc_EF71C
EF710:  LDR             R0, [R5]
EF712:  LDR             R2, [R0]
EF714:  MOV             R0, R5
EF716:  BLX             R2
EF718:  LDR             R0, [R5,#8]
EF71A:  ADDS            R1, R0, #1
EF71C:  LDR             R2, [R5,#4]
EF71E:  STR             R1, [R5,#8]
EF720:  STRB            R6, [R2,R0]
EF722:  LDR             R4, [R4,#8]
EF724:  LDRD.W          R0, R2, [R4,#8]
EF728:  ADDS            R1, R0, #1
EF72A:  CMP             R2, R1
EF72C:  BCS             loc_EF73A
EF72E:  LDR             R0, [R4]
EF730:  LDR             R2, [R0]
EF732:  MOV             R0, R4
EF734:  BLX             R2
EF736:  LDR             R0, [R4,#8]
EF738:  ADDS            R1, R0, #1
EF73A:  LDR             R2, [R4,#4]
EF73C:  STR             R1, [R4,#8]
EF73E:  LDRB.W          R1, [R8,#1]
EF742:  STRB            R1, [R2,R0]
EF744:  ADD             SP, SP, #8
EF746:  POP.W           {R8}
EF74A:  POP             {R4-R7,PC}
