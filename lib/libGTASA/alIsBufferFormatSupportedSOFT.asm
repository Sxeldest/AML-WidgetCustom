; =========================================================
; Game Engine Function: alIsBufferFormatSupportedSOFT
; Address            : 0x246C72 - 0x246CBC
; =========================================================

246C72:  PUSH            {R4,R6,R7,LR}
246C74:  ADD             R7, SP, #8
246C76:  MOV             R4, R0
246C78:  BLX             j_GetContextRef
246C7C:  CBZ             R0, loc_246C9E
246C7E:  MOVW            R1, #0x1204
246C82:  SUBS            R1, R4, R1
246C84:  CMP             R1, #0xF
246C86:  BCC             loc_246CB2
246C88:  SUB.W           R1, R4, #0x10000
246C8C:  SUBS            R1, #4
246C8E:  CMP             R1, #0xD
246C90:  BLS             loc_246CA4
246C92:  SUB.W           R1, R4, #0x1100
246C96:  CMP             R1, #4
246C98:  BCC             loc_246CB2
246C9A:  MOVS            R4, #0
246C9C:  B               loc_246CB4
246C9E:  MOVS            R4, #0
246CA0:  MOV             R0, R4
246CA2:  POP             {R4,R6,R7,PC}
246CA4:  MOVS            R2, #1
246CA6:  LSL.W           R1, R2, R1
246CAA:  MOVW            R2, #0x3003
246CAE:  TST             R1, R2
246CB0:  BEQ             loc_246C92
246CB2:  MOVS            R4, #1
246CB4:  BLX             j_ALCcontext_DecRef
246CB8:  MOV             R0, R4
246CBA:  POP             {R4,R6,R7,PC}
