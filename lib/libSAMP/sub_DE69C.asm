; =========================================================
; Game Engine Function: sub_DE69C
; Address            : 0xDE69C - 0xDE7CA
; =========================================================

DE69C:  PUSH            {R4-R7,LR}
DE69E:  ADD             R7, SP, #0xC
DE6A0:  PUSH.W          {R8-R11}
DE6A4:  SUB             SP, SP, #0x14
DE6A6:  MOV             R9, R1
DE6A8:  LDR             R1, [R0]
DE6AA:  MOV             R10, R0
DE6AC:  CBZ             R1, loc_DE6D8
DE6AE:  LDR             R2, =(unk_91D45 - 0xDE6B8)
DE6B0:  LDRD.W          R0, R3, [R9,#8]
DE6B4:  ADD             R2, PC; unk_91D45
DE6B6:  LDRB            R6, [R2,R1]
DE6B8:  ADDS            R1, R0, #1
DE6BA:  CMP             R3, R1
DE6BC:  BCS             loc_DE6CE
DE6BE:  LDR.W           R0, [R9]
DE6C2:  LDR             R2, [R0]
DE6C4:  MOV             R0, R9
DE6C6:  BLX             R2
DE6C8:  LDR.W           R0, [R9,#8]
DE6CC:  ADDS            R1, R0, #1
DE6CE:  LDR.W           R2, [R9,#4]
DE6D2:  STR.W           R1, [R9,#8]
DE6D6:  STRB            R6, [R2,R0]
DE6D8:  LDRB.W          LR, [R10,#0xC]
DE6DC:  LDRD.W          R2, R3, [R10,#4]
DE6E0:  CMP.W           LR, #0
DE6E4:  BEQ             loc_DE72C
DE6E6:  SUB.W           R0, R7, #-var_2F
DE6EA:  SUB.W           R12, R3, #1
DE6EE:  ADD             R0, R3
DE6F0:  CMP             R3, #3
DE6F2:  ADD.W           R8, R0, #1
DE6F6:  BLT             loc_DE73C
DE6F8:  LDR             R4, =(a00010203040506 - 0xDE708); "000102030405060708091011121314151617181"... ...
DE6FA:  MOVW            R11, #0x851F
DE6FE:  MOVS            R0, #1
DE700:  ADD.W           R6, R0, R12,LSR#1
DE704:  ADD             R4, PC; "000102030405060708091011121314151617181"...
DE706:  MOVT            R11, #0x51EB
DE70A:  MOVS            R5, #0x64 ; 'd'
DE70C:  MOV             R1, R8
DE70E:  UMULL.W         R3, R0, R2, R11
DE712:  SUBS            R6, #1
DE714:  CMP             R6, #1
DE716:  MOV.W           R3, R0,LSR#5
DE71A:  MLS.W           R0, R3, R5, R2
DE71E:  MOV             R2, R3
DE720:  LDRH.W          R0, [R4,R0,LSL#1]
DE724:  STRH.W          R0, [R1,#-2]!
DE728:  BHI             loc_DE70E
DE72A:  B               loc_DE740
DE72C:  ADD             R0, SP, #0x30+var_24
DE72E:  SUB.W           R1, R7, #-var_2F
DE732:  BL              sub_DCEB4
DE736:  LDR.W           R8, [SP,#0x30+var_20]
DE73A:  B               loc_DE776
DE73C:  MOV             R3, R2
DE73E:  MOV             R1, R8
DE740:  MOVS.W          R0, R12,LSL#31
DE744:  BNE             loc_DE74A
DE746:  MOV             R2, R3
DE748:  B               loc_DE768
DE74A:  MOV             R0, #0xCCCCCCCD
DE752:  UMULL.W         R0, R2, R3, R0
DE756:  LSRS            R2, R2, #3
DE758:  ADD.W           R0, R2, R2,LSL#2
DE75C:  SUB.W           R0, R3, R0,LSL#1
DE760:  ORR.W           R0, R0, #0x30 ; '0'
DE764:  STRB.W          R0, [R1,#-1]!
DE768:  STRB.W          LR, [R1,#-1]
DE76C:  SUBS            R1, #2
DE76E:  ADD             R0, SP, #0x30+var_24
DE770:  MOVS            R3, #1
DE772:  BL              sub_DCEB4
DE776:  SUB.W           R0, R7, #-var_2F
DE77A:  MOV             R1, R8
DE77C:  MOV             R2, R9
DE77E:  BL              sub_DCF1C
DE782:  LDR.W           R1, [R10,#0x10]
DE786:  MOV             R5, R0
DE788:  CMP             R1, #1
DE78A:  BLT             loc_DE798
DE78C:  ADD.W           R2, R10, #0x14
DE790:  MOV             R0, R5
DE792:  BL              sub_DE834
DE796:  MOV             R5, R0
DE798:  LDRD.W          R0, R2, [R5,#8]
DE79C:  LDRB.W          R6, [R10,#0x15]
DE7A0:  ADDS            R1, R0, #1
DE7A2:  CMP             R2, R1
DE7A4:  BCS             loc_DE7B2
DE7A6:  LDR             R0, [R5]
DE7A8:  LDR             R2, [R0]
DE7AA:  MOV             R0, R5
DE7AC:  BLX             R2
DE7AE:  LDR             R0, [R5,#8]
DE7B0:  ADDS            R1, R0, #1
DE7B2:  LDR             R2, [R5,#4]
DE7B4:  STR             R1, [R5,#8]
DE7B6:  MOV             R1, R5
DE7B8:  STRB            R6, [R2,R0]
DE7BA:  LDR.W           R0, [R10,#0x18]
DE7BE:  BL              sub_DE870
DE7C2:  ADD             SP, SP, #0x14
DE7C4:  POP.W           {R8-R11}
DE7C8:  POP             {R4-R7,PC}
