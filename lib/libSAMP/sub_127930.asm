; =========================================================
; Game Engine Function: sub_127930
; Address            : 0x127930 - 0x1279B0
; =========================================================

127930:  PUSH            {R4-R7,LR}
127932:  ADD             R7, SP, #0xC
127934:  PUSH.W          {R8,R9,R11}
127938:  SUB             SP, SP, #8
12793A:  MOV             R9, R0
12793C:  LDR             R0, [R2,#0x10]
12793E:  MOV             R4, R2
127940:  MOV             R8, R1
127942:  MOVS            R1, #0
127944:  LDRH.W          R6, [R0,#0x26]!
127948:  LDR             R2, =(unk_B7540 - 0x12794E)
12794A:  ADD             R2, PC; unk_B7540
12794C:  LDR             R3, [R2,R1]
12794E:  CMP             R3, R6
127950:  BEQ             loc_12795A
127952:  ADDS            R1, #4
127954:  CMP             R1, #8
127956:  BNE             loc_12794C
127958:  B               loc_12799C
12795A:  CMP             R1, #8
12795C:  BEQ             loc_12799C
12795E:  MOVW            R1, #0x207
127962:  STRH.W          R6, [SP,#0x20+var_1C]
127966:  STRH            R1, [R0]
127968:  STR             R0, [SP,#0x20+var_20]
12796A:  BL              sub_163768
12796E:  MOV             R5, R0
127970:  BL              sub_163768
127974:  LDR.W           R1, [R5,R6,LSL#2]
127978:  LDR.W           R2, [R0,#0x81C]
12797C:  STR.W           R2, [R5,R6,LSL#2]
127980:  STR.W           R1, [R0,#0x81C]
127984:  LDR.W           R2, [R9,#4]
127988:  MOV             R0, R8
12798A:  MOV             R1, R4
12798C:  BLX             R2
12798E:  MOV             R0, SP
127990:  BL              sub_127BAC
127994:  ADD             SP, SP, #8
127996:  POP.W           {R8,R9,R11}
12799A:  POP             {R4-R7,PC}
12799C:  LDR.W           R2, [R9,#4]
1279A0:  MOV             R0, R8
1279A2:  MOV             R1, R4
1279A4:  ADD             SP, SP, #8
1279A6:  POP.W           {R8,R9,R11}
1279AA:  POP.W           {R4-R7,LR}
1279AE:  BX              R2
