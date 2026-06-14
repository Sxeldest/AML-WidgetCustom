; =========================================================
; Game Engine Function: alIsExtensionPresent
; Address            : 0x1DCCD0 - 0x1DCDB0
; =========================================================

1DCCD0:  PUSH            {R4-R8,R10,R11,LR}
1DCCD4:  ADD             R11, SP, #0x18
1DCCD8:  MOV             R5, R0
1DCCDC:  BL              j_GetContextRef
1DCCE0:  MOV             R8, R0
1DCCE4:  CMP             R8, #0
1DCCE8:  BEQ             loc_1DCD84
1DCCEC:  CMP             R5, #0
1DCCF0:  BEQ             loc_1DCD90
1DCCF4:  MOV             R0, R5; s
1DCCF8:  BL              strlen
1DCCFC:  LDR             R7, [R8,#0x100]
1DCD00:  MOV             R6, R0
1DCD04:  CMP             R7, #0
1DCD08:  BEQ             loc_1DCD9C
1DCD0C:  LDRB            R0, [R7]
1DCD10:  CMP             R0, #0
1DCD14:  BEQ             loc_1DCD9C
1DCD18:  MOV             R0, R7; s1
1DCD1C:  MOV             R1, R5; s2
1DCD20:  MOV             R2, R6; n
1DCD24:  BL              strncasecmp
1DCD28:  CMP             R0, #0
1DCD2C:  BNE             loc_1DCD4C
1DCD30:  LDRB            R0, [R7,R6]; int
1DCD34:  MOV             R4, #1
1DCD38:  CMP             R0, #0
1DCD3C:  BEQ             loc_1DCDA0
1DCD40:  BL              isspace
1DCD44:  CMP             R0, #0
1DCD48:  BNE             loc_1DCDA0
1DCD4C:  MOV             R0, R7; s
1DCD50:  MOV             R1, #0x20 ; ' '; c
1DCD54:  BL              strchr
1DCD58:  MOV             R7, R0
1DCD5C:  CMP             R7, #0
1DCD60:  BEQ             loc_1DCD9C
1DCD64:  LDRB            R4, [R7,#1]!
1DCD68:  MOV             R0, R4; int
1DCD6C:  BL              isspace
1DCD70:  CMP             R0, #0
1DCD74:  BNE             loc_1DCD64
1DCD78:  CMP             R4, #0
1DCD7C:  BNE             loc_1DCD18
1DCD80:  B               loc_1DCD9C
1DCD84:  MOV             R4, #0
1DCD88:  MOV             R0, R4
1DCD8C:  POP             {R4-R8,R10,R11,PC}
1DCD90:  MOV             R0, R8
1DCD94:  MOVW            R1, #0xA003
1DCD98:  BL              j_alSetError
1DCD9C:  MOV             R4, #0
1DCDA0:  MOV             R0, R8
1DCDA4:  BL              j_ALCcontext_DecRef
1DCDA8:  MOV             R0, R4
1DCDAC:  POP             {R4-R8,R10,R11,PC}
