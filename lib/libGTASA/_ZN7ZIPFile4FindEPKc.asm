; =========================================================
; Game Engine Function: _ZN7ZIPFile4FindEPKc
; Address            : 0x26FCE4 - 0x26FD9C
; =========================================================

26FCE4:  PUSH            {R4-R7,LR}
26FCE6:  ADD             R7, SP, #0xC
26FCE8:  PUSH.W          {R8,R9,R11}
26FCEC:  SUB             SP, SP, #0x88
26FCEE:  MOV             R8, R0
26FCF0:  LDR             R0, =(__stack_chk_guard_ptr - 0x26FCF8)
26FCF2:  MOV             R5, R1
26FCF4:  ADD             R0, PC; __stack_chk_guard_ptr
26FCF6:  LDR             R0, [R0]; __stack_chk_guard
26FCF8:  LDR             R0, [R0]
26FCFA:  STR             R0, [SP,#0xA0+var_1C]
26FCFC:  LDRB            R0, [R5]
26FCFE:  CMP             R0, #0x2E ; '.'
26FD00:  BNE             loc_26FD0E
26FD02:  LDRB            R0, [R5,#1]
26FD04:  CMP             R0, #0x5C ; '\'
26FD06:  IT NE
26FD08:  CMPNE           R0, #0x2F ; '/'
26FD0A:  BNE             loc_26FD0E
26FD0C:  ADDS            R5, #2
26FD0E:  MOV             R0, R5; char *
26FD10:  BLX             strlen
26FD14:  ADD             R1, SP, #0xA0+var_9C
26FD16:  MOVS            R2, #0
26FD18:  LDRB            R3, [R5,R2]
26FD1A:  CMP             R3, #0x5C ; '\'
26FD1C:  IT EQ
26FD1E:  MOVEQ           R3, #0x2F ; '/'
26FD20:  STRB            R3, [R1,R2]
26FD22:  ADDS            R2, #1
26FD24:  CMP             R2, R0
26FD26:  BLS             loc_26FD18
26FD28:  CBZ             R0, loc_26FD3E
26FD2A:  MOVS            R2, #0
26FD2C:  ADDS            R3, R1, R0
26FD2E:  LDRB.W          R6, [R3,#-1]
26FD32:  CMP             R6, #0x20 ; ' '
26FD34:  BNE             loc_26FD3E
26FD36:  SUBS            R0, #1
26FD38:  STRB.W          R2, [R3,#-1]
26FD3C:  BNE             loc_26FD2C
26FD3E:  LDR.W           R0, [R8,#8]
26FD42:  ADD.W           R9, SP, #0xA0+var_9C
26FD46:  MOVS            R5, #0
26FD48:  SUBS            R4, R0, #1
26FD4A:  B               loc_26FD4E
26FD4C:  ADDS            R5, R6, #1
26FD4E:  CMP             R4, R5
26FD50:  BLT             loc_26FD7C
26FD52:  SUBS            R0, R4, R5
26FD54:  LDR.W           R1, [R8,#0xC]
26FD58:  ADD.W           R0, R0, R0,LSR#31
26FD5C:  ADD.W           R6, R5, R0,ASR#1
26FD60:  ADD.W           R0, R6, R6,LSL#1
26FD64:  ADD.W           R0, R1, R0,LSL#2
26FD68:  LDR             R1, [R0,#8]; char *
26FD6A:  MOV             R0, R9; char *
26FD6C:  BLX             strcasecmp
26FD70:  CMP             R0, #1
26FD72:  BGE             loc_26FD4C
26FD74:  SUBS            R4, R6, #1
26FD76:  CMP             R0, #0
26FD78:  BNE             loc_26FD4E
26FD7A:  B               loc_26FD80
26FD7C:  MOV.W           R6, #0xFFFFFFFF
26FD80:  LDR             R0, =(__stack_chk_guard_ptr - 0x26FD88)
26FD82:  LDR             R1, [SP,#0xA0+var_1C]
26FD84:  ADD             R0, PC; __stack_chk_guard_ptr
26FD86:  LDR             R0, [R0]; __stack_chk_guard
26FD88:  LDR             R0, [R0]
26FD8A:  SUBS            R0, R0, R1
26FD8C:  ITTTT EQ
26FD8E:  MOVEQ           R0, R6
26FD90:  ADDEQ           SP, SP, #0x88
26FD92:  POPEQ.W         {R8,R9,R11}
26FD96:  POPEQ           {R4-R7,PC}
26FD98:  BLX             __stack_chk_fail
