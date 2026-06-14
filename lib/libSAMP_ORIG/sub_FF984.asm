; =========================================================
; Game Engine Function: sub_FF984
; Address            : 0xFF984 - 0xFFA2E
; =========================================================

FF984:  PUSH            {R4,R5,R7,LR}
FF986:  ADD             R7, SP, #8
FF988:  SUB             SP, SP, #0x18
FF98A:  MOV             R5, R0
FF98C:  LDR             R0, =(__stack_chk_guard_ptr - 0xFF992)
FF98E:  ADD             R0, PC; __stack_chk_guard_ptr
FF990:  LDR             R0, [R0]; __stack_chk_guard
FF992:  LDR             R0, [R0]
FF994:  STR             R0, [SP,#0x20+var_C]
FF996:  LDRD.W          R0, R1, [R5]
FF99A:  CMP             R0, R1
FF99C:  BEQ             loc_FFA14
FF99E:  LDRB            R1, [R0]
FF9A0:  CMP             R1, #0x68 ; 'h'
FF9A2:  BNE             loc_FF9D2
FF9A4:  ADDS            R0, #1
FF9A6:  STR             R0, [R5]
FF9A8:  ADD             R0, SP, #0x20+var_14
FF9AA:  MOV             R1, R5
FF9AC:  MOVS            R2, #1
FF9AE:  MOVS            R4, #1
FF9B0:  BL              sub_FE75C
FF9B4:  LDRD.W          R0, R1, [SP,#0x20+var_14]
FF9B8:  CMP             R0, R1
FF9BA:  BEQ             loc_FFA16
FF9BC:  LDRD.W          R0, R1, [R5]
FF9C0:  CMP             R0, R1
FF9C2:  BEQ             loc_FFA14
FF9C4:  LDRB            R1, [R0]
FF9C6:  CMP             R1, #0x5F ; '_'
FF9C8:  BNE             loc_FFA14
FF9CA:  ADDS            R0, #1
FF9CC:  STR             R0, [R5]
FF9CE:  MOVS            R4, #0
FF9D0:  B               loc_FFA16
FF9D2:  LDRB            R1, [R0]
FF9D4:  CMP             R1, #0x76 ; 'v'
FF9D6:  BNE             loc_FFA14
FF9D8:  ADDS            R0, #1
FF9DA:  STR             R0, [R5]
FF9DC:  ADD             R0, SP, #0x20+var_14
FF9DE:  MOV             R1, R5
FF9E0:  MOVS            R2, #1
FF9E2:  MOVS            R4, #1
FF9E4:  BL              sub_FE75C
FF9E8:  LDRD.W          R0, R1, [SP,#0x20+var_14]
FF9EC:  CMP             R0, R1
FF9EE:  BEQ             loc_FFA16
FF9F0:  LDRD.W          R0, R1, [R5]
FF9F4:  CMP             R0, R1
FF9F6:  BEQ             loc_FFA14
FF9F8:  LDRB            R1, [R0]
FF9FA:  CMP             R1, #0x5F ; '_'
FF9FC:  BNE             loc_FFA14
FF9FE:  ADDS            R0, #1
FFA00:  STR             R0, [R5]
FFA02:  ADD             R0, SP, #0x20+var_1C
FFA04:  MOV             R1, R5
FFA06:  MOVS            R2, #1
FFA08:  MOVS            R4, #1
FFA0A:  BL              sub_FE75C
FFA0E:  LDRD.W          R0, R1, [SP,#0x20+var_1C]
FFA12:  B               loc_FF9B8
FFA14:  MOVS            R4, #1
FFA16:  LDR             R0, [SP,#0x20+var_C]
FFA18:  LDR             R1, =(__stack_chk_guard_ptr - 0xFFA1E)
FFA1A:  ADD             R1, PC; __stack_chk_guard_ptr
FFA1C:  LDR             R1, [R1]; __stack_chk_guard
FFA1E:  LDR             R1, [R1]
FFA20:  CMP             R1, R0
FFA22:  ITTT EQ
FFA24:  MOVEQ           R0, R4
FFA26:  ADDEQ           SP, SP, #0x18
FFA28:  POPEQ           {R4,R5,R7,PC}
FFA2A:  BLX             __stack_chk_fail
