; =========================================================
; Game Engine Function: _ZN16cHandlingDataMgr13FindExactWordEPcS0_ii
; Address            : 0x570C00 - 0x570C8C
; =========================================================

570C00:  PUSH            {R4-R7,LR}
570C02:  ADD             R7, SP, #0xC
570C04:  PUSH.W          {R8-R11}
570C08:  SUB             SP, SP, #0x1C
570C0A:  LDR             R0, =(__stack_chk_guard_ptr - 0x570C1A)
570C0C:  ADD.W           R11, SP, #0x38+var_34
570C10:  LDR.W           R9, [R7,#arg_0]
570C14:  MOV             R6, R2
570C16:  ADD             R0, PC; __stack_chk_guard_ptr
570C18:  STR             R3, [SP,#0x38+var_38]
570C1A:  MOV             R10, R1
570C1C:  MOVS            R4, #0
570C1E:  LDR             R0, [R0]; __stack_chk_guard
570C20:  MOV.W           R8, #0
570C24:  LDR             R0, [R0]
570C26:  STR             R0, [SP,#0x38+var_20]
570C28:  MOV             R0, R6; char *
570C2A:  BLX             strlen
570C2E:  MOV             R5, R0
570C30:  MOV             R0, R11; char *
570C32:  MOV             R1, R6; char *
570C34:  MOV             R2, R5; size_t
570C36:  BLX             strncpy
570C3A:  MOV             R0, R10; char *
570C3C:  MOV             R1, R11; char *
570C3E:  MOV             R2, R5; size_t
570C40:  BLX             strncmp
570C44:  CMP             R0, #0
570C46:  MOV.W           R1, #0
570C4A:  IT EQ
570C4C:  MOVEQ           R1, #1
570C4E:  ORRS            R4, R1
570C50:  LDR             R1, [SP,#0x38+var_38]
570C52:  TST.W           R4, #1
570C56:  IT EQ
570C58:  ADDEQ           R6, R1
570C5A:  CMP             R0, #0
570C5C:  IT NE
570C5E:  MOVNE           R0, #1
570C60:  ADD             R8, R0
570C62:  CMP             R8, R9
570C64:  BGE             loc_570C6A
570C66:  LSLS            R0, R4, #0x1F
570C68:  BEQ             loc_570C28
570C6A:  LSLS            R0, R4, #0x1F
570C6C:  LDR             R0, =(__stack_chk_guard_ptr - 0x570C78)
570C6E:  IT NE
570C70:  MOVNE           R9, R8
570C72:  LDR             R1, [SP,#0x38+var_20]
570C74:  ADD             R0, PC; __stack_chk_guard_ptr
570C76:  LDR             R0, [R0]; __stack_chk_guard
570C78:  LDR             R0, [R0]
570C7A:  SUBS            R0, R0, R1
570C7C:  ITTTT EQ
570C7E:  MOVEQ           R0, R9
570C80:  ADDEQ           SP, SP, #0x1C
570C82:  POPEQ.W         {R8-R11}
570C86:  POPEQ           {R4-R7,PC}
570C88:  BLX             __stack_chk_fail
