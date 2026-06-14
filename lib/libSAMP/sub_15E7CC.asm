; =========================================================
; Game Engine Function: sub_15E7CC
; Address            : 0x15E7CC - 0x15E846
; =========================================================

15E7CC:  PUSH            {R4-R7,LR}
15E7CE:  ADD             R7, SP, #0xC
15E7D0:  PUSH.W          {R11}
15E7D4:  SUB             SP, SP, #0x20
15E7D6:  ADD             R5, SP, #0x30+var_24
15E7D8:  STR             R1, [SP,#0x30+var_24]
15E7DA:  MOV             R4, R0
15E7DC:  MOV             R1, R5
15E7DE:  BL              sub_15ED76
15E7E2:  CBZ             R0, loc_15E7E8
15E7E4:  LDR             R4, [R0,#0xC]
15E7E6:  B               loc_15E83C
15E7E8:  MOVS            R0, #0x28 ; '('; unsigned int
15E7EA:  BLX             j__Znwj; operator new(uint)
15E7EE:  VMOV.I32        Q8, #0
15E7F2:  LDR             R3, =(unk_BA757 - 0x15E7FE)
15E7F4:  MOV             R6, R0
15E7F6:  MOV.W           R1, #0x3F800000
15E7FA:  ADD             R3, PC; unk_BA757
15E7FC:  STR             R6, [SP,#0x30+var_28]
15E7FE:  VST1.32         {D16-D17}, [R0]!
15E802:  STR             R1, [R0]
15E804:  ADD.W           R0, R6, #0x14
15E808:  VST1.32         {D16-D17}, [R0]!
15E80C:  STR             R1, [R0]
15E80E:  STR             R5, [SP,#0x30+var_1C]
15E810:  ADD             R0, SP, #0x30+var_20
15E812:  ADD             R1, SP, #0x30+var_1C
15E814:  MOV             R2, R5
15E816:  STRD.W          R1, R0, [SP,#0x30+var_30]
15E81A:  ADD             R0, SP, #0x30+var_18
15E81C:  MOV             R1, R4
15E81E:  BL              sub_15EE48
15E822:  LDR             R4, [SP,#0x30+var_18]
15E824:  MOVS            R0, #0
15E826:  STR             R0, [SP,#0x30+var_28]
15E828:  MOV             R1, R6
15E82A:  ADD.W           R0, R4, #0xC
15E82E:  BL              sub_F629E
15E832:  ADD             R0, SP, #0x30+var_28
15E834:  MOVS            R1, #0
15E836:  LDR             R4, [R4,#0xC]
15E838:  BL              sub_F629E
15E83C:  MOV             R0, R4
15E83E:  ADD             SP, SP, #0x20 ; ' '
15E840:  POP.W           {R11}
15E844:  POP             {R4-R7,PC}
