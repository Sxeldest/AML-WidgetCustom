; =========================================================
; Game Engine Function: _ZN17CBugstarInterface18ParseParameterLineEPc
; Address            : 0x3BEC0C - 0x3BED18
; =========================================================

3BEC0C:  PUSH            {R4-R7,LR}
3BEC0E:  ADD             R7, SP, #0xC
3BEC10:  PUSH.W          {R11}
3BEC14:  SUB             SP, SP, #0x68
3BEC16:  MOV             R5, R0
3BEC18:  LDR             R0, =(__stack_chk_guard_ptr - 0x3BEC20)
3BEC1A:  MOV             R4, R1
3BEC1C:  ADD             R0, PC; __stack_chk_guard_ptr
3BEC1E:  LDR             R0, [R0]; __stack_chk_guard
3BEC20:  LDR             R0, [R0]
3BEC22:  STR             R0, [SP,#0x78+var_14]
3BEC24:  MOV             R0, R4; s
3BEC26:  BLX             puts
3BEC2A:  LDRB            R1, [R4]
3BEC2C:  MOV             R0, SP
3BEC2E:  CMP             R1, #0x3A ; ':'
3BEC30:  BNE             loc_3BEC36
3BEC32:  MOVS            R6, #1
3BEC34:  B               loc_3BEC48
3BEC36:  ADDS            R3, R4, #1
3BEC38:  MOVS            R2, #0
3BEC3A:  STRB            R1, [R0,R2]
3BEC3C:  LDRB            R1, [R3,R2]
3BEC3E:  ADDS            R2, #1
3BEC40:  CMP             R1, #0x3A ; ':'
3BEC42:  BNE             loc_3BEC3A
3BEC44:  ADD             R0, R2
3BEC46:  ADDS            R6, R2, #1
3BEC48:  MOVS            R1, #0
3BEC4A:  STRB            R1, [R0]
3BEC4C:  ADR             R1, aTargetIp; "target_ip"
3BEC4E:  MOV             R0, SP; char *
3BEC50:  BLX             strcmp
3BEC54:  CBZ             R0, loc_3BEC96
3BEC56:  ADR             R1, aTargetName; "target_name"
3BEC58:  MOV             R0, SP; char *
3BEC5A:  BLX             strcmp
3BEC5E:  CBZ             R0, loc_3BECB6
3BEC60:  ADR             R1, aUserName; "user_name"
3BEC62:  MOV             R0, SP; char *
3BEC64:  BLX             strcmp
3BEC68:  CBZ             R0, loc_3BECD6
3BEC6A:  ADR             R1, aMethod; "method"
3BEC6C:  MOV             R0, SP; char *
3BEC6E:  BLX             strcmp
3BEC72:  CMP             R0, #0
3BEC74:  BNE             loc_3BECF8
3BEC76:  LDRB            R1, [R4,R6]
3BEC78:  ADDS            R6, #1
3BEC7A:  CMP             R1, #0x20 ; ' '
3BEC7C:  BEQ             loc_3BEC76
3BEC7E:  ADD.W           R0, R5, #0x10
3BEC82:  CMP             R1, #0xA
3BEC84:  BEQ             loc_3BECF4
3BEC86:  MOV             R2, R4
3BEC88:  STRB.W          R1, [R0],#1
3BEC8C:  LDRB            R1, [R6,R2]
3BEC8E:  ADDS            R2, #1
3BEC90:  CMP             R1, #0xA
3BEC92:  BNE             loc_3BEC88
3BEC94:  B               loc_3BECF4
3BEC96:  LDRB            R1, [R4,R6]
3BEC98:  ADDS            R6, #1
3BEC9A:  CMP             R1, #0x20 ; ' '
3BEC9C:  BEQ             loc_3BEC96
3BEC9E:  ADD.W           R0, R5, #0x9A
3BECA2:  CMP             R1, #0xA
3BECA4:  BEQ             loc_3BECF4
3BECA6:  MOV             R2, R4
3BECA8:  STRB.W          R1, [R0],#1
3BECAC:  LDRB            R1, [R6,R2]
3BECAE:  ADDS            R2, #1
3BECB0:  CMP             R1, #0xA
3BECB2:  BNE             loc_3BECA8
3BECB4:  B               loc_3BECF4
3BECB6:  LDRB            R1, [R4,R6]
3BECB8:  ADDS            R6, #1
3BECBA:  CMP             R1, #0x20 ; ' '
3BECBC:  BEQ             loc_3BECB6
3BECBE:  ADD.W           R0, R5, #0x5A ; 'Z'
3BECC2:  CMP             R1, #0xA
3BECC4:  BEQ             loc_3BECF4
3BECC6:  MOV             R2, R4
3BECC8:  STRB.W          R1, [R0],#1
3BECCC:  LDRB            R1, [R6,R2]
3BECCE:  ADDS            R2, #1
3BECD0:  CMP             R1, #0xA
3BECD2:  BNE             loc_3BECC8
3BECD4:  B               loc_3BECF4
3BECD6:  LDRB            R1, [R4,R6]
3BECD8:  ADDS            R6, #1
3BECDA:  CMP             R1, #0x20 ; ' '
3BECDC:  BEQ             loc_3BECD6
3BECDE:  ADD.W           R0, R5, #0x1A
3BECE2:  CMP             R1, #0xA
3BECE4:  BEQ             loc_3BECF4
3BECE6:  MOV             R2, R4
3BECE8:  STRB.W          R1, [R0],#1
3BECEC:  LDRB            R1, [R6,R2]
3BECEE:  ADDS            R2, #1
3BECF0:  CMP             R1, #0xA
3BECF2:  BNE             loc_3BECE8
3BECF4:  MOVS            R1, #0
3BECF6:  STRB            R1, [R0]
3BECF8:  MOV             R0, R4; s
3BECFA:  BLX             puts
3BECFE:  LDR             R0, =(__stack_chk_guard_ptr - 0x3BED06)
3BED00:  LDR             R1, [SP,#0x78+var_14]
3BED02:  ADD             R0, PC; __stack_chk_guard_ptr
3BED04:  LDR             R0, [R0]; __stack_chk_guard
3BED06:  LDR             R0, [R0]
3BED08:  SUBS            R0, R0, R1
3BED0A:  ITTT EQ
3BED0C:  ADDEQ           SP, SP, #0x68 ; 'h'
3BED0E:  POPEQ.W         {R11}
3BED12:  POPEQ           {R4-R7,PC}
3BED14:  BLX             __stack_chk_fail
