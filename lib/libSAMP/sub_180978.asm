; =========================================================
; Game Engine Function: sub_180978
; Address            : 0x180978 - 0x1809D8
; =========================================================

180978:  PUSH            {R4,R5,R7,LR}
18097A:  ADD             R7, SP, #8
18097C:  SUB             SP, SP, #8
18097E:  MOV             R5, R0
180980:  BL              sub_180A0C
180984:  CBZ             R0, loc_1809D0
180986:  MOV             R4, R0
180988:  BL              sub_16201C
18098C:  LDR             R1, [R4,#0x14]
18098E:  LDR             R2, [R4,#0xC]
180990:  MOVS            R3, #1
180992:  BL              sub_16206C
180996:  LDR             R1, [R4,#0x14]
180998:  LDR             R2, [R4,#0xC]
18099A:  LDRB            R0, [R1]
18099C:  CMP             R0, #0x14
18099E:  BEQ             loc_1809AE
1809A0:  CMP             R2, #6
1809A2:  BCC             loc_1809D2
1809A4:  CMP             R0, #0x28 ; '('
1809A6:  ITT EQ
1809A8:  LDRBEQ          R0, [R1,#5]
1809AA:  CMPEQ           R0, #0x14
1809AC:  BNE             loc_1809D2
1809AE:  LDRD.W          R3, R0, [R4,#4]
1809B2:  STR             R0, [SP,#0x10+var_10]
1809B4:  MOV             R0, R5
1809B6:  BL              sub_180BD0
1809BA:  LDR             R0, [R5]
1809BC:  MOV             R1, R4
1809BE:  LDR             R2, [R0,#0x40]
1809C0:  MOV             R0, R5
1809C2:  BLX             R2
1809C4:  MOV             R0, R5
1809C6:  BL              sub_180A0C
1809CA:  MOV             R4, R0
1809CC:  CMP             R0, #0
1809CE:  BNE             loc_180996
1809D0:  MOVS            R4, #0
1809D2:  MOV             R0, R4
1809D4:  ADD             SP, SP, #8
1809D6:  POP             {R4,R5,R7,PC}
