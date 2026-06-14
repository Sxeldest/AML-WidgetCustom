; =========================================================
; Game Engine Function: sub_DC970
; Address            : 0xDC970 - 0xDC9F6
; =========================================================

DC970:  PUSH            {R4-R7,LR}
DC972:  ADD             R7, SP, #0xC
DC974:  PUSH.W          {R8,R9,R11}
DC978:  SUB             SP, SP, #0x30
DC97A:  MOV             R8, R0
DC97C:  ADD             R0, SP, #0x48+var_24
DC97E:  MOV             R6, R3
DC980:  MOV             R5, R2
DC982:  MOV             R9, R1
DC984:  BL              sub_F06B2
DC988:  BL              sub_F0734
DC98C:  MOV             R4, R0
DC98E:  LDRB            R0, [R0]
DC990:  LSLS            R0, R0, #0x1F
DC992:  BNE             loc_DC99A
DC994:  MOVS            R0, #0
DC996:  STRH            R0, [R4]
DC998:  B               loc_DC9AA
DC99A:  LDR             R0, [R4,#8]
DC99C:  MOVS            R1, #0
DC99E:  STRB            R1, [R0]
DC9A0:  LDRB            R2, [R4]
DC9A2:  LDR             R0, [R4]
DC9A4:  STR             R1, [R4,#4]
DC9A6:  LSLS            R1, R2, #0x1F
DC9A8:  BNE             loc_DC9AE
DC9AA:  MOVS            R2, #9
DC9AC:  B               loc_DC9B4
DC9AE:  SUBS            R0, #2
DC9B0:  BIC.W           R2, R0, #1
DC9B4:  LDR             R0, [R6]
DC9B6:  STR             R0, [SP,#0x48+var_20]
DC9B8:  MOVS            R0, #0
DC9BA:  MOVS            R3, #0xC
DC9BC:  ADD             R1, SP, #0x48+var_20
DC9BE:  STRD.W          R3, R0, [SP,#0x48+var_40]
DC9C2:  STRD.W          R1, R0, [SP,#0x48+var_38]
DC9C6:  ADD             R0, SP, #0x48+var_2C
DC9C8:  MOV             R1, R4
DC9CA:  MOV             R3, R9
DC9CC:  STR             R5, [SP,#0x48+var_48]
DC9CE:  BL              sub_DCA40
DC9D2:  LDRB            R0, [R4]
DC9D4:  LDRD.W          R2, R1, [R4,#4]
DC9D8:  ANDS.W          R3, R0, #1
DC9DC:  ITT EQ
DC9DE:  ADDEQ           R1, R4, #1; text
DC9E0:  LSREQ           R2, R0, #1
DC9E2:  MOV             R0, R8; int
DC9E4:  BL              sub_ED4F8
DC9E8:  ADD             R0, SP, #0x48+var_24
DC9EA:  BL              sub_F0720
DC9EE:  ADD             SP, SP, #0x30 ; '0'
DC9F0:  POP.W           {R8,R9,R11}
DC9F4:  POP             {R4-R7,PC}
