; =========================================================
; Game Engine Function: sub_11D978
; Address            : 0x11D978 - 0x11DA00
; =========================================================

11D978:  PUSH            {R4-R7,LR}
11D97A:  ADD             R7, SP, #0xC
11D97C:  PUSH.W          {R8,R9,R11}
11D980:  SUB             SP, SP, #0x30
11D982:  MOV             R8, R0
11D984:  ADD             R0, SP, #0x48+var_24
11D986:  MOV             R6, R3
11D988:  MOV             R5, R2
11D98A:  MOV             R9, R1
11D98C:  BL              sub_F06B2
11D990:  BL              sub_F0734
11D994:  MOV             R4, R0
11D996:  LDRB            R0, [R0]
11D998:  LSLS            R0, R0, #0x1F
11D99A:  BNE             loc_11D9A2
11D99C:  MOVS            R0, #0
11D99E:  STRH            R0, [R4]
11D9A0:  B               loc_11D9B2
11D9A2:  LDR             R0, [R4,#8]
11D9A4:  MOVS            R1, #0
11D9A6:  STRB            R1, [R0]
11D9A8:  LDRB            R2, [R4]
11D9AA:  LDR             R0, [R4]
11D9AC:  STR             R1, [R4,#4]
11D9AE:  LSLS            R1, R2, #0x1F
11D9B0:  BNE             loc_11D9B6
11D9B2:  MOVS            R2, #9
11D9B4:  B               loc_11D9BC
11D9B6:  SUBS            R0, #2
11D9B8:  BIC.W           R2, R0, #1
11D9BC:  LDRH            R0, [R6]
11D9BE:  MOVS            R1, #0
11D9C0:  STRD.W          R0, R1, [SP,#0x48+var_20]
11D9C4:  ADD             R0, SP, #0x48+var_20
11D9C6:  MOVS            R3, #2
11D9C8:  STRD.W          R0, R1, [SP,#0x48+var_38]
11D9CC:  ADD             R0, SP, #0x48+var_2C
11D9CE:  STRD.W          R3, R1, [SP,#0x48+var_40]
11D9D2:  MOV             R1, R4
11D9D4:  MOV             R3, R9
11D9D6:  STR             R5, [SP,#0x48+var_48]
11D9D8:  BL              sub_DCA40
11D9DC:  LDRB            R0, [R4]
11D9DE:  LDRD.W          R2, R1, [R4,#4]
11D9E2:  ANDS.W          R3, R0, #1
11D9E6:  ITT EQ
11D9E8:  ADDEQ           R1, R4, #1; text
11D9EA:  LSREQ           R2, R0, #1
11D9EC:  MOV             R0, R8; int
11D9EE:  BL              sub_ED4F8
11D9F2:  ADD             R0, SP, #0x48+var_24
11D9F4:  BL              sub_F0720
11D9F8:  ADD             SP, SP, #0x30 ; '0'
11D9FA:  POP.W           {R8,R9,R11}
11D9FE:  POP             {R4-R7,PC}
