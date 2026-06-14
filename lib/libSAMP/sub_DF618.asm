; =========================================================
; Game Engine Function: sub_DF618
; Address            : 0xDF618 - 0xDF6D4
; =========================================================

DF618:  PUSH            {R4-R7,LR}
DF61A:  ADD             R7, SP, #0xC
DF61C:  PUSH.W          {R8-R11}
DF620:  SUB             SP, SP, #0x14
DF622:  MOV             R11, R0
DF624:  LDR             R0, =(unk_91CE0 - 0xDF632)
DF626:  LDRH.W          R2, [R1,#9]
DF62A:  ADD.W           R8, R1, #0xB
DF62E:  ADD             R0, PC; unk_91CE0
DF630:  LDR             R6, [R1]
DF632:  AND.W           R2, R2, #0xF
DF636:  LDR             R4, [R7,#arg_0]
DF638:  SUBS            R6, R6, R3
DF63A:  LDRB            R0, [R0,R2]
DF63C:  IT CC
DF63E:  MOVCC           R6, #0
DF640:  LSRS.W          R9, R6, R0
DF644:  BEQ             loc_DF652
DF646:  MOV             R0, R11
DF648:  MOV             R1, R9
DF64A:  MOV             R2, R8
DF64C:  BL              sub_DD992
DF650:  MOV             R11, R0
DF652:  LDR             R0, [R4]
DF654:  LDR             R1, [R0]
DF656:  CBZ             R1, loc_DF686
DF658:  LDR             R2, =(unk_91D45 - 0xDF662)
DF65A:  LDRD.W          R0, R3, [R11,#8]
DF65E:  ADD             R2, PC; unk_91D45
DF660:  LDRB.W          R10, [R2,R1]
DF664:  ADDS            R1, R0, #1
DF666:  CMP             R3, R1
DF668:  BCS             loc_DF67A
DF66A:  LDR.W           R0, [R11]
DF66E:  LDR             R2, [R0]
DF670:  MOV             R0, R11
DF672:  BLX             R2
DF674:  LDR.W           R0, [R11,#8]
DF678:  ADDS            R1, R0, #1
DF67A:  LDR.W           R2, [R11,#4]
DF67E:  STR.W           R1, [R11,#8]
DF682:  STRB.W          R10, [R2,R0]
DF686:  SUB.W           R9, R6, R9
DF68A:  ADDS            R6, R4, #4
DF68C:  LDRD.W          R5, R12, [R4,#0x10]
DF690:  LDM             R6, {R0,R1,R6}
DF692:  LDRD.W          R2, R3, [R0]
DF696:  LDR             R0, [R1]
DF698:  LDR             R1, [R6]
DF69A:  LDRB            R6, [R5]
DF69C:  STMEA.W         SP, {R0,R1,R6,R12}
DF6A0:  MOV             R0, R11
DF6A2:  BL              sub_DF6DC
DF6A6:  LDR             R1, [R4,#0x18]
DF6A8:  LDR             R1, [R1]
DF6AA:  CMP             R1, #1
DF6AC:  ITT GE
DF6AE:  LDRGE           R2, [R4,#0x1C]
DF6B0:  BLGE            sub_DE834
DF6B4:  CMP.W           R9, #0
DF6B8:  BEQ             loc_DF6CC
DF6BA:  MOV             R1, R9
DF6BC:  MOV             R2, R8
DF6BE:  ADD             SP, SP, #0x14
DF6C0:  POP.W           {R8-R11}
DF6C4:  POP.W           {R4-R7,LR}
DF6C8:  B.W             sub_DD992
DF6CC:  ADD             SP, SP, #0x14
DF6CE:  POP.W           {R8-R11}
DF6D2:  POP             {R4-R7,PC}
