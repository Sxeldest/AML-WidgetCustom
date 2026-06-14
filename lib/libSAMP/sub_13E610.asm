; =========================================================
; Game Engine Function: sub_13E610
; Address            : 0x13E610 - 0x13E690
; =========================================================

13E610:  PUSH            {R4-R7,LR}
13E612:  ADD             R7, SP, #0xC
13E614:  PUSH.W          {R8,R9,R11}
13E618:  SUB             SP, SP, #8
13E61A:  MOV             R4, R1
13E61C:  MOV             R9, R1
13E61E:  LDRH.W          R1, [R4],#6
13E622:  MOV             R6, R0
13E624:  LDR.W           R0, [R0,R1,LSL#2]
13E628:  CBZ             R0, loc_13E630
13E62A:  MOV             R0, R6
13E62C:  BL              sub_13E5CE
13E630:  MOVS            R0, #0x14; unsigned int
13E632:  BLX             j__Znwj; operator new(uint)
13E636:  MOV             R5, R0
13E638:  LDR             R0, [R4,#8]
13E63A:  LDR.W           R1, [R9,#2]; int
13E63E:  LDR             R2, [R4]; int
13E640:  LDR             R3, [R4,#4]; int
13E642:  LDR.W           R12, [R4,#0xC]
13E646:  STRD.W          R0, R12, [SP,#0x20+var_20]; float
13E64A:  MOV             R0, R5; int
13E64C:  BL              sub_F7CF4
13E650:  LDRH.W          R0, [R9]
13E654:  LDR             R1, [R4,#0x10]
13E656:  MOVW            R4, #0x1388
13E65A:  LDR             R2, [R5,#0xC]
13E65C:  ADD.W           R3, R6, R0,LSL#2
13E660:  STR.W           R5, [R6,R0,LSL#2]
13E664:  ADD             R0, R6
13E666:  STR             R2, [R3,R4]
13E668:  MOVS            R2, #1
13E66A:  STRB.W          R2, [R0,#0xFA0]
13E66E:  MOV             R0, R5
13E670:  BL              sub_F7E88
13E674:  LDRB.W          R0, [R9,#0x1A]
13E678:  CMP             R0, #0
13E67A:  MOV             R0, R5
13E67C:  ITE NE
13E67E:  MOVNE           R1, #1
13E680:  MOVEQ           R1, #0
13E682:  ADD             SP, SP, #8
13E684:  POP.W           {R8,R9,R11}
13E688:  POP.W           {R4-R7,LR}
13E68C:  B.W             sub_F7EB4
