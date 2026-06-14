; =========================================================
; Game Engine Function: alGetSourcefv
; Address            : 0x1CCBA0 - 0x1CCDB4
; =========================================================

1CCBA0:  PUSH            {R4-R7,R11,LR}
1CCBA4:  ADD             R11, SP, #0x10
1CCBA8:  SUB             SP, SP, #0x20
1CCBAC:  MOV             R7, R0
1CCBB0:  LDR             R0, =(__stack_chk_guard_ptr - 0x1CCBC4)
1CCBB4:  MOV             R6, R1
1CCBB8:  MOV             R4, R2
1CCBBC:  LDR             R0, [PC,R0]; __stack_chk_guard
1CCBC0:  LDR             R0, [R0]
1CCBC4:  STR             R0, [R11,#var_14]
1CCBC8:  MOVW            R0, #0x1001
1CCBCC:  SUB             R0, R6, R0
1CCBD0:  CMP             R0, #0x25; switch 38 cases
1CCBD4:  BHI             def_1CCBE4; jumptable 001CCBE4 default case
1CCBD8:  ADR             R1, jpt_1CCBE4
1CCBDC:  MOV             R0, R0,LSL#2
1CCBE0:  LDR             R0, [R0,R1]
1CCBE4:  ADD             PC, R0, R1; switch jump
1CCBE8:  DCD loc_1CCC80 - 0x1CCBE8; jump table for switch statement
1CCBEC:  DCD loc_1CCC80 - 0x1CCBE8; jumptable 001CCBE4 cases 0-2,9,12,13,31-37
1CCBF0:  DCD loc_1CCC80 - 0x1CCBE8; jumptable 001CCBE4 cases 0-2,9,12,13,31-37
1CCBF4:  DCD loc_1CCD64 - 0x1CCBE8; jumptable 001CCBE4 cases 3-5
1CCBF8:  DCD loc_1CCD64 - 0x1CCBE8; jumptable 001CCBE4 cases 3-5
1CCBFC:  DCD loc_1CCD64 - 0x1CCBE8; jumptable 001CCBE4 cases 3-5
1CCC00:  DCD loc_1CCCC8 - 0x1CCBE8; jumptable 001CCBE4 cases 6-8,10,11,14-30
1CCC04:  DCD loc_1CCCC8 - 0x1CCBE8; jumptable 001CCBE4 cases 6-8,10,11,14-30
1CCC08:  DCD loc_1CCCC8 - 0x1CCBE8; jumptable 001CCBE4 cases 6-8,10,11,14-30
1CCC0C:  DCD loc_1CCC80 - 0x1CCBE8; jumptable 001CCBE4 cases 0-2,9,12,13,31-37
1CCC10:  DCD loc_1CCCC8 - 0x1CCBE8; jumptable 001CCBE4 cases 6-8,10,11,14-30
1CCC14:  DCD loc_1CCCC8 - 0x1CCBE8; jumptable 001CCBE4 cases 6-8,10,11,14-30
1CCC18:  DCD loc_1CCC80 - 0x1CCBE8; jumptable 001CCBE4 cases 0-2,9,12,13,31-37
1CCC1C:  DCD loc_1CCC80 - 0x1CCBE8; jumptable 001CCBE4 cases 0-2,9,12,13,31-37
1CCC20:  DCD loc_1CCCC8 - 0x1CCBE8; jumptable 001CCBE4 cases 6-8,10,11,14-30
1CCC24:  DCD loc_1CCCC8 - 0x1CCBE8; jumptable 001CCBE4 cases 6-8,10,11,14-30
1CCC28:  DCD loc_1CCCC8 - 0x1CCBE8; jumptable 001CCBE4 cases 6-8,10,11,14-30
1CCC2C:  DCD loc_1CCCC8 - 0x1CCBE8; jumptable 001CCBE4 cases 6-8,10,11,14-30
1CCC30:  DCD loc_1CCCC8 - 0x1CCBE8; jumptable 001CCBE4 cases 6-8,10,11,14-30
1CCC34:  DCD loc_1CCCC8 - 0x1CCBE8; jumptable 001CCBE4 cases 6-8,10,11,14-30
1CCC38:  DCD loc_1CCCC8 - 0x1CCBE8; jumptable 001CCBE4 cases 6-8,10,11,14-30
1CCC3C:  DCD loc_1CCCC8 - 0x1CCBE8; jumptable 001CCBE4 cases 6-8,10,11,14-30
1CCC40:  DCD loc_1CCCC8 - 0x1CCBE8; jumptable 001CCBE4 cases 6-8,10,11,14-30
1CCC44:  DCD loc_1CCCC8 - 0x1CCBE8; jumptable 001CCBE4 cases 6-8,10,11,14-30
1CCC48:  DCD loc_1CCCC8 - 0x1CCBE8; jumptable 001CCBE4 cases 6-8,10,11,14-30
1CCC4C:  DCD loc_1CCCC8 - 0x1CCBE8; jumptable 001CCBE4 cases 6-8,10,11,14-30
1CCC50:  DCD loc_1CCCC8 - 0x1CCBE8; jumptable 001CCBE4 cases 6-8,10,11,14-30
1CCC54:  DCD loc_1CCCC8 - 0x1CCBE8; jumptable 001CCBE4 cases 6-8,10,11,14-30
1CCC58:  DCD loc_1CCCC8 - 0x1CCBE8; jumptable 001CCBE4 cases 6-8,10,11,14-30
1CCC5C:  DCD loc_1CCCC8 - 0x1CCBE8; jumptable 001CCBE4 cases 6-8,10,11,14-30
1CCC60:  DCD loc_1CCCC8 - 0x1CCBE8; jumptable 001CCBE4 cases 6-8,10,11,14-30
1CCC64:  DCD loc_1CCC80 - 0x1CCBE8; jumptable 001CCBE4 cases 0-2,9,12,13,31-37
1CCC68:  DCD loc_1CCC80 - 0x1CCBE8; jumptable 001CCBE4 cases 0-2,9,12,13,31-37
1CCC6C:  DCD loc_1CCC80 - 0x1CCBE8; jumptable 001CCBE4 cases 0-2,9,12,13,31-37
1CCC70:  DCD loc_1CCC80 - 0x1CCBE8; jumptable 001CCBE4 cases 0-2,9,12,13,31-37
1CCC74:  DCD loc_1CCC80 - 0x1CCBE8; jumptable 001CCBE4 cases 0-2,9,12,13,31-37
1CCC78:  DCD loc_1CCC80 - 0x1CCBE8; jumptable 001CCBE4 cases 0-2,9,12,13,31-37
1CCC7C:  DCD loc_1CCC80 - 0x1CCBE8; jumptable 001CCBE4 cases 0-2,9,12,13,31-37
1CCC80:  MOV             R0, R7; jumptable 001CCBE4 cases 0-2,9,12,13,31-37
1CCC84:  MOV             R1, R6
1CCC88:  MOV             R2, R4
1CCC8C:  BL              j_alGetSourcef
1CCC90:  LDR             R0, =(__stack_chk_guard_ptr - 0x1CCCA0)
1CCC94:  LDR             R1, [R11,#var_14]
1CCC98:  LDR             R0, [PC,R0]; __stack_chk_guard
1CCC9C:  LDR             R0, [R0]
1CCCA0:  SUBS            R0, R0, R1
1CCCA4:  SUBEQ           SP, R11, #0x10
1CCCA8:  POPEQ           {R4-R7,R11,PC}
1CCCAC:  BL              __stack_chk_fail
1CCCB0:  SUB             R0, R6, #7; jumptable 001CCBE4 default case
1CCCB4:  SUB             R0, R0, #0x20000
1CCCB8:  CMP             R0, #3
1CCCBC:  BCC             loc_1CCC80; jumptable 001CCBE4 cases 0-2,9,12,13,31-37
1CCCC0:  CMP             R6, #0xC000
1CCCC4:  BEQ             loc_1CCC80; jumptable 001CCBE4 cases 0-2,9,12,13,31-37
1CCCC8:  BL              j_GetContextRef; jumptable 001CCBE4 cases 6-8,10,11,14-30
1CCCCC:  MOV             R5, R0
1CCCD0:  CMP             R5, #0
1CCCD4:  BEQ             loc_1CCC90
1CCCD8:  CMP             R4, #0
1CCCDC:  BEQ             loc_1CCD84
1CCCE0:  ADD             R0, R5, #0x7C ; '|'
1CCCE4:  MOV             R1, R7
1CCCE8:  BL              j_LookupUIntMapKey
1CCCEC:  MOV             R7, R0
1CCCF0:  CMP             R7, #0
1CCCF4:  BEQ             loc_1CCD90
1CCCF8:  MOVW            R0, #0x1031
1CCCFC:  SUB             R0, R6, R0
1CCD00:  CMP             R0, #1
1CCD04:  BHI             loc_1CCD9C
1CCD08:  LDR             R0, [R5,#0xFC]
1CCD0C:  ADD             R0, R0, #8; mutex
1CCD10:  BL              j_EnterCriticalSection
1CCD14:  LDR             R0, [R5,#0xFC]
1CCD18:  ADD             R2, SP, #0x30+var_28
1CCD1C:  MOV             R1, R6
1CCD20:  VLDR            S0, [R0,#0xC]
1CCD24:  VLDR            S2, [R0,#0x10]
1CCD28:  MOV             R0, R7
1CCD2C:  VCVT.F64.U32    D0, S0
1CCD30:  VCVT.F64.U32    D1, S2
1CCD34:  VDIV.F64        D0, D1, D0
1CCD38:  BL              sub_1CC7D8
1CCD3C:  LDR             R0, [R5,#0xFC]
1CCD40:  ADD             R0, R0, #8; mutex
1CCD44:  BL              j_LeaveCriticalSection
1CCD48:  VLDR            D0, [SP,#0x30+var_28]
1CCD4C:  VLDR            D1, [SP,#0x30+var_20]
1CCD50:  VCVT.F32.F64    S0, D0
1CCD54:  VCVT.F32.F64    S2, D1
1CCD58:  VSTR            S0, [R4]
1CCD5C:  VSTR            S2, [R4,#4]
1CCD60:  B               loc_1CCDA8
1CCD64:  ADD             R0, R4, #8; jumptable 001CCBE4 cases 3-5
1CCD68:  ADD             R3, R4, #4
1CCD6C:  STR             R0, [SP,#0x30+var_30]
1CCD70:  MOV             R0, R7
1CCD74:  MOV             R1, R6
1CCD78:  MOV             R2, R4
1CCD7C:  BL              j_alGetSource3f
1CCD80:  B               loc_1CCC90
1CCD84:  MOV             R0, R5
1CCD88:  MOVW            R1, #0xA003
1CCD8C:  B               loc_1CCDA4
1CCD90:  MOV             R0, R5
1CCD94:  MOVW            R1, #0xA001
1CCD98:  B               loc_1CCDA4
1CCD9C:  MOV             R0, R5
1CCDA0:  MOVW            R1, #0xA002
1CCDA4:  BL              j_alSetError
1CCDA8:  MOV             R0, R5
1CCDAC:  BL              j_ALCcontext_DecRef
1CCDB0:  B               loc_1CCC90
