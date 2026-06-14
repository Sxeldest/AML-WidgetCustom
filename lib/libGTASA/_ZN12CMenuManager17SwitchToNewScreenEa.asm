; =========================================================
; Game Engine Function: _ZN12CMenuManager17SwitchToNewScreenEa
; Address            : 0x4319A0 - 0x431AC2
; =========================================================

4319A0:  PUSH            {R4,R5,R7,LR}
4319A2:  ADD             R7, SP, #8
4319A4:  MOV             R5, R1
4319A6:  CMP             R5, #0x10
4319A8:  MOV             R4, R0
4319AA:  IT NE
4319AC:  CMPNE           R5, #5
4319AE:  BNE             loc_4319CE
4319B0:  BLX             j__Z13IsPlayingGamev; IsPlayingGame(void)
4319B4:  CMP             R0, #1
4319B6:  BNE             locret_431AB2
4319B8:  CMP             R5, #0x10
4319BA:  ITT EQ
4319BC:  LDRBEQ.W        R0, [R4,#0x121]
4319C0:  CMPEQ           R0, #0x2A ; '*'
4319C2:  BNE             loc_4319CE
4319C4:  LDR             R0, =(SaveGameFromMenu_ptr - 0x4319CC)
4319C6:  MOVS            R1, #1
4319C8:  ADD             R0, PC; SaveGameFromMenu_ptr
4319CA:  LDR             R0, [R0]; SaveGameFromMenu
4319CC:  STRB            R1, [R0]
4319CE:  MOVW            R0, #0x1AAD
4319D2:  MOVS            R2, #0
4319D4:  LDRB.W          R1, [R4,#0x121]
4319D8:  STRB            R2, [R4,R0]
4319DA:  MOV             R0, R4; this
4319DC:  STRB.W          R1, [R4,#0x122]
4319E0:  BLX             j__ZN12CMenuManager15ResetHelperTextEv; CMenuManager::ResetHelperText(void)
4319E4:  LDRB.W          R0, [R4,#0x121]
4319E8:  CMP             R0, #4
4319EA:  ITTTT EQ
4319EC:  LDREQ.W         R1, [R4,#0x8C]
4319F0:  LDREQ.W         R2, [R4,#0x98]
4319F4:  STREQ.W         R1, [R4,#0x90]
4319F8:  STREQ.W         R2, [R4,#0x9C]
4319FC:  ADDS            R1, R5, #2
4319FE:  BEQ             loc_431A0E
431A00:  CMP             R5, #0
431A02:  ITTTT NE
431A04:  STRBNE.W        R5, [R4,#0x121]
431A08:  MOVNE           R0, #0
431A0A:  STRNE           R0, [R4,#0x38]
431A0C:  MOVNE           R0, R5
431A0E:  CBNZ            R1, loc_431A28
431A10:  LDRB.W          R1, [R4,#0xAD]
431A14:  SXTB            R0, R0
431A16:  CBZ             R1, loc_431A4E
431A18:  CMP             R0, #0x23 ; '#'
431A1A:  BEQ             loc_431A54
431A1C:  CMP             R0, #0x21 ; '!'
431A1E:  BEQ             loc_431A58
431A20:  CMP             R0, #1
431A22:  BNE             loc_431A5C
431A24:  MOVS            R1, #0
431A26:  B               loc_431A6C
431A28:  CBNZ            R5, loc_431A80
431A2A:  LDR             R1, =(aScreens_ptr - 0x431A36)
431A2C:  SXTB            R0, R0
431A2E:  LDR             R2, [R4,#0x38]
431A30:  MOVS            R3, #0xE2
431A32:  ADD             R1, PC; aScreens_ptr
431A34:  LDR             R1, [R1]; "FEP_STA" ...
431A36:  SMLABB.W        R0, R0, R3, R1
431A3A:  ADD.W           R1, R2, R2,LSL#3
431A3E:  ADD.W           R0, R0, R1,LSL#1
431A42:  MOVS            R1, #0
431A44:  LDRB            R0, [R0,#0x14]
431A46:  STRB.W          R0, [R4,#0x121]
431A4A:  STR             R1, [R4,#0x38]
431A4C:  B               loc_431A80
431A4E:  LDR             R1, =(aScreens_ptr - 0x431A54)
431A50:  ADD             R1, PC; aScreens_ptr
431A52:  B               loc_431A60
431A54:  MOVS            R1, #2
431A56:  B               loc_431A6C
431A58:  MOVS            R1, #1
431A5A:  B               loc_431A6C
431A5C:  LDR             R1, =(aScreens_ptr - 0x431A62)
431A5E:  ADD             R1, PC; aScreens_ptr
431A60:  LDR             R1, [R1]; "FEP_STA" ...
431A62:  MOVS            R2, #0xE2
431A64:  SMLABB.W        R1, R0, R2, R1
431A68:  LDRSB.W         R1, [R1,#9]
431A6C:  LDR             R2, =(aScreens_ptr - 0x431A76)
431A6E:  MOVS            R3, #0xE2
431A70:  STR             R1, [R4,#0x38]
431A72:  ADD             R2, PC; aScreens_ptr
431A74:  LDR             R2, [R2]; "FEP_STA" ...
431A76:  SMLABB.W        R0, R0, R3, R2
431A7A:  LDRB            R0, [R0,#8]
431A7C:  STRB.W          R0, [R4,#0x121]
431A80:  UXTB            R1, R0
431A82:  CMP             R1, #0x10
431A84:  ITT EQ
431A86:  MOVEQ           R2, #9
431A88:  STREQ           R2, [R4,#0x38]
431A8A:  LDRB.W          R2, [R4,#0xAD]
431A8E:  CBZ             R2, locret_431AB2
431A90:  CMP             R1, #0xB
431A92:  BEQ             loc_431AAC
431A94:  SXTB            R0, R0
431A96:  CMP             R0, #8
431A98:  BEQ             loc_431AB4
431A9A:  CMP             R0, #6
431A9C:  IT NE
431A9E:  POPNE           {R4,R5,R7,PC}
431AA0:  LDR             R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x431AA8)
431AA2:  MOVS            R1, #0
431AA4:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
431AA6:  LDR             R0, [R0]; CGame::bMissionPackGame ...
431AA8:  STRB            R1, [R0]; CGame::bMissionPackGame
431AAA:  POP             {R4,R5,R7,PC}
431AAC:  MOVS            R0, #0xD
431AAE:  STRB.W          R0, [R4,#0x121]
431AB2:  POP             {R4,R5,R7,PC}
431AB4:  LDR             R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x431ABE)
431AB6:  LDRB.W          R1, [R4,#0x123]
431ABA:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
431ABC:  LDR             R0, [R0]; CGame::bMissionPackGame ...
431ABE:  STRB            R1, [R0]; CGame::bMissionPackGame
431AC0:  POP             {R4,R5,R7,PC}
