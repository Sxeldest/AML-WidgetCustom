; =========================================================
; Game Engine Function: sub_127868
; Address            : 0x127868 - 0x1278E6
; =========================================================

127868:  PUSH            {R4-R7,LR}
12786A:  ADD             R7, SP, #0xC
12786C:  PUSH.W          {R8}
127870:  SUB             SP, SP, #8
127872:  MOV             R8, R0
127874:  MOV             R0, R1
127876:  LDRH.W          R5, [R0,#0x26]!
12787A:  MOV             R4, R1
12787C:  LDR             R2, =(unk_B7540 - 0x127884)
12787E:  MOVS            R1, #0
127880:  ADD             R2, PC; unk_B7540
127882:  LDR             R3, [R2,R1]
127884:  CMP             R3, R5
127886:  BEQ             loc_127890
127888:  ADDS            R1, #4
12788A:  CMP             R1, #8
12788C:  BNE             loc_127882
12788E:  B               loc_1278D4
127890:  CMP             R1, #8
127892:  BEQ             loc_1278D4
127894:  MOVW            R1, #0x207
127898:  STRH.W          R5, [SP,#0x18+var_14]
12789C:  STRH            R1, [R4,#0x26]
12789E:  STR             R0, [SP,#0x18+var_18]
1278A0:  BL              sub_163768
1278A4:  MOV             R6, R0
1278A6:  BL              sub_163768
1278AA:  LDR.W           R1, [R6,R5,LSL#2]
1278AE:  LDR.W           R2, [R0,#0x81C]
1278B2:  STR.W           R2, [R6,R5,LSL#2]
1278B6:  STR.W           R1, [R0,#0x81C]
1278BA:  LDR.W           R1, [R8]
1278BE:  MOV             R0, R4
1278C0:  BLX             R1
1278C2:  MOV             R4, R0
1278C4:  MOV             R0, SP
1278C6:  BL              sub_127B74
1278CA:  MOV             R0, R4
1278CC:  ADD             SP, SP, #8
1278CE:  POP.W           {R8}
1278D2:  POP             {R4-R7,PC}
1278D4:  LDR.W           R1, [R8]
1278D8:  MOV             R0, R4
1278DA:  ADD             SP, SP, #8
1278DC:  POP.W           {R8}
1278E0:  POP.W           {R4-R7,LR}
1278E4:  BX              R1
