; =========================================================
; Game Engine Function: sub_1816D8
; Address            : 0x1816D8 - 0x18179C
; =========================================================

1816D8:  PUSH            {R4-R7,LR}
1816DA:  ADD             R7, SP, #0xC
1816DC:  PUSH.W          {R8-R11}
1816E0:  SUB             SP, SP, #4
1816E2:  CMP             R1, #0
1816E4:  BEQ             loc_181786
1816E6:  MOV             R5, R0
1816E8:  LDRB            R0, [R1]
1816EA:  MOV             R4, R1
1816EC:  CMP             R0, #0
1816EE:  BEQ             loc_181786
1816F0:  MOV             R0, R4; s
1816F2:  BLX             strlen
1816F6:  CMP             R0, #0xF
1816F8:  BHI             loc_181786
1816FA:  LDR.W           R0, [R5,#0x378]
1816FE:  CMP             R0, #0
181700:  BEQ             loc_181786
181702:  BL              sub_17E2E4
181706:  ADD.W           R8, R5, #0x370
18170A:  MOV             R9, R0
18170C:  MOV             R0, R8
18170E:  BL              sub_18CB76
181712:  LDR.W           R0, [R5,#0x378]
181716:  CBZ             R0, loc_181782
181718:  ADD.W           R10, R5, #0x374
18171C:  MOV.W           R11, #0
181720:  ADDS            R1, R4, #1
181722:  STR             R1, [SP,#0x20+var_20]
181724:  LDR.W           R2, [R10]
181728:  LDR.W           R6, [R2,R11,LSL#2]
18172C:  LDR             R1, [R6,#4]
18172E:  CBZ             R1, loc_181758
181730:  CMP             R1, R9
181732:  BCS             loc_181758
181734:  SUBS            R1, R0, #1
181736:  LDR.W           R0, [R2,R1,LSL#2]
18173A:  STR.W           R0, [R2,R11,LSL#2]
18173E:  MOV             R0, R10
181740:  BL              sub_18162E
181744:  LDR             R0, [R6]; void *
181746:  CBZ             R0, loc_18174C
181748:  BLX             j__ZdaPv; operator delete[](void *)
18174C:  MOV             R0, R6; void *
18174E:  BLX             j__ZdlPv; operator delete(void *)
181752:  LDR.W           R0, [R5,#0x378]
181756:  B               loc_18177E
181758:  LDR             R3, [R6]
18175A:  LDRB            R2, [R4]
18175C:  LDRB            R1, [R3]
18175E:  CMP             R1, R2
181760:  BNE             loc_181774
181762:  ADDS            R3, #1
181764:  LDR             R6, [SP,#0x20+var_20]
181766:  CBZ             R1, loc_181792
181768:  LDRB.W          R2, [R6],#1
18176C:  LDRB.W          R1, [R3],#1
181770:  CMP             R1, R2
181772:  BEQ             loc_181766
181774:  CMP             R1, #0x2A ; '*'
181776:  BNE             loc_18177A
181778:  CBNZ            R2, loc_181792
18177A:  ADD.W           R11, R11, #1
18177E:  CMP             R11, R0
181780:  BCC             loc_181724
181782:  MOVS            R4, #0
181784:  B               loc_181794
181786:  MOVS            R4, #0
181788:  MOV             R0, R4
18178A:  ADD             SP, SP, #4
18178C:  POP.W           {R8-R11}
181790:  POP             {R4-R7,PC}
181792:  MOVS            R4, #1
181794:  MOV             R0, R8
181796:  BL              sub_18CB7A
18179A:  B               loc_181788
