; =========================================================
; Game Engine Function: alSourcefv
; Address            : 0x1CBAA0 - 0x1CBC10
; =========================================================

1CBAA0:  PUSH            {R4-R6,R10,R11,LR}
1CBAA4:  ADD             R11, SP, #0x10
1CBAA8:  SUB             SP, SP, #8
1CBAAC:  MOV             R6, R2
1CBAB0:  MOV             R4, R0
1CBAB4:  CMP             R6, #0
1CBAB8:  BEQ             loc_1CBB98; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBABC:  MOVW            R0, #0x1001
1CBAC0:  SUB             R0, R1, R0
1CBAC4:  CMP             R0, #0x25; switch 38 cases
1CBAC8:  BHI             def_1CBAD8; jumptable 001CBAD8 default case
1CBACC:  ADR             R2, jpt_1CBAD8
1CBAD0:  MOV             R0, R0,LSL#2
1CBAD4:  LDR             R0, [R0,R2]
1CBAD8:  ADD             PC, R0, R2; switch jump
1CBADC:  DCD loc_1CBB74 - 0x1CBADC; jump table for switch statement
1CBAE0:  DCD loc_1CBB74 - 0x1CBADC; jumptable 001CBAD8 cases 0-2,9,12,13,31-37
1CBAE4:  DCD loc_1CBB74 - 0x1CBADC; jumptable 001CBAD8 cases 0-2,9,12,13,31-37
1CBAE8:  DCD loc_1CBBD8 - 0x1CBADC; jumptable 001CBAD8 cases 3-5
1CBAEC:  DCD loc_1CBBD8 - 0x1CBADC; jumptable 001CBAD8 cases 3-5
1CBAF0:  DCD loc_1CBBD8 - 0x1CBADC; jumptable 001CBAD8 cases 3-5
1CBAF4:  DCD loc_1CBB98 - 0x1CBADC; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBAF8:  DCD loc_1CBB98 - 0x1CBADC; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBAFC:  DCD loc_1CBB98 - 0x1CBADC; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBB00:  DCD loc_1CBB74 - 0x1CBADC; jumptable 001CBAD8 cases 0-2,9,12,13,31-37
1CBB04:  DCD loc_1CBB98 - 0x1CBADC; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBB08:  DCD loc_1CBB98 - 0x1CBADC; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBB0C:  DCD loc_1CBB74 - 0x1CBADC; jumptable 001CBAD8 cases 0-2,9,12,13,31-37
1CBB10:  DCD loc_1CBB74 - 0x1CBADC; jumptable 001CBAD8 cases 0-2,9,12,13,31-37
1CBB14:  DCD loc_1CBB98 - 0x1CBADC; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBB18:  DCD loc_1CBB98 - 0x1CBADC; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBB1C:  DCD loc_1CBB98 - 0x1CBADC; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBB20:  DCD loc_1CBB98 - 0x1CBADC; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBB24:  DCD loc_1CBB98 - 0x1CBADC; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBB28:  DCD loc_1CBB98 - 0x1CBADC; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBB2C:  DCD loc_1CBB98 - 0x1CBADC; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBB30:  DCD loc_1CBB98 - 0x1CBADC; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBB34:  DCD loc_1CBB98 - 0x1CBADC; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBB38:  DCD loc_1CBB98 - 0x1CBADC; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBB3C:  DCD loc_1CBB98 - 0x1CBADC; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBB40:  DCD loc_1CBB98 - 0x1CBADC; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBB44:  DCD loc_1CBB98 - 0x1CBADC; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBB48:  DCD loc_1CBB98 - 0x1CBADC; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBB4C:  DCD loc_1CBB98 - 0x1CBADC; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBB50:  DCD loc_1CBB98 - 0x1CBADC; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBB54:  DCD loc_1CBB98 - 0x1CBADC; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBB58:  DCD loc_1CBB74 - 0x1CBADC; jumptable 001CBAD8 cases 0-2,9,12,13,31-37
1CBB5C:  DCD loc_1CBB74 - 0x1CBADC; jumptable 001CBAD8 cases 0-2,9,12,13,31-37
1CBB60:  DCD loc_1CBB74 - 0x1CBADC; jumptable 001CBAD8 cases 0-2,9,12,13,31-37
1CBB64:  DCD loc_1CBB74 - 0x1CBADC; jumptable 001CBAD8 cases 0-2,9,12,13,31-37
1CBB68:  DCD loc_1CBB74 - 0x1CBADC; jumptable 001CBAD8 cases 0-2,9,12,13,31-37
1CBB6C:  DCD loc_1CBB74 - 0x1CBADC; jumptable 001CBAD8 cases 0-2,9,12,13,31-37
1CBB70:  DCD loc_1CBB74 - 0x1CBADC; jumptable 001CBAD8 cases 0-2,9,12,13,31-37
1CBB74:  LDR             R2, [R6]; jumptable 001CBAD8 cases 0-2,9,12,13,31-37
1CBB78:  MOV             R0, R4
1CBB7C:  SUB             SP, R11, #0x10
1CBB80:  POP             {R4-R6,R10,R11,LR}
1CBB84:  B               j_alSourcef
1CBB88:  SUB             R0, R1, #7; jumptable 001CBAD8 default case
1CBB8C:  SUB             R0, R0, #0x20000
1CBB90:  CMP             R0, #3
1CBB94:  BCC             loc_1CBB74; jumptable 001CBAD8 cases 0-2,9,12,13,31-37
1CBB98:  BL              j_GetContextRef; jumptable 001CBAD8 cases 6-8,10,11,14-30
1CBB9C:  MOV             R5, R0
1CBBA0:  CMP             R5, #0
1CBBA4:  BEQ             loc_1CBBD0
1CBBA8:  CMP             R6, #0
1CBBAC:  BEQ             loc_1CBBF4
1CBBB0:  ADD             R0, R5, #0x7C ; '|'
1CBBB4:  MOV             R1, R4
1CBBB8:  BL              j_LookupUIntMapKey
1CBBBC:  CMP             R0, #0
1CBBC0:  MOV             R0, R5
1CBBC4:  MOVWEQ          R1, #0xA001
1CBBC8:  MOVWNE          R1, #0xA002; int
1CBBCC:  B               loc_1CBBFC
1CBBD0:  SUB             SP, R11, #0x10
1CBBD4:  POP             {R4-R6,R10,R11,PC}; float
1CBBD8:  LDM             R6, {R2,R3}; jumptable 001CBAD8 cases 3-5
1CBBDC:  MOV             R0, R4; int
1CBBE0:  VLDR            S0, [R6,#8]
1CBBE4:  VSTR            S0, [SP,#0x18+var_18]
1CBBE8:  BL              j_alSource3f
1CBBEC:  SUB             SP, R11, #0x10
1CBBF0:  POP             {R4-R6,R10,R11,PC}
1CBBF4:  MOV             R0, R5
1CBBF8:  MOVW            R1, #0xA003
1CBBFC:  BL              j_alSetError
1CBC00:  MOV             R0, R5
1CBC04:  SUB             SP, R11, #0x10
1CBC08:  POP             {R4-R6,R10,R11,LR}
1CBC0C:  B               j_ALCcontext_DecRef
