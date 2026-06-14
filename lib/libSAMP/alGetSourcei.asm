; =========================================================
; Game Engine Function: alGetSourcei
; Address            : 0x1CCDBC - 0x1CD144
; =========================================================

1CCDBC:  PUSH            {R4-R7,R11,LR}
1CCDC0:  ADD             R11, SP, #0x10
1CCDC4:  SUB             SP, SP, #0x18
1CCDC8:  MOV             R6, R0
1CCDCC:  LDR             R0, =(__stack_chk_guard_ptr - 0x1CCDE0)
1CCDD0:  MOV             R5, R2
1CCDD4:  MOV             R7, R1
1CCDD8:  LDR             R0, [PC,R0]; __stack_chk_guard
1CCDDC:  LDR             R0, [R0]
1CCDE0:  STR             R0, [SP,#0x28+var_14]
1CCDE4:  BL              j_GetContextRef
1CCDE8:  MOV             R4, R0
1CCDEC:  CMP             R4, #0
1CCDF0:  BEQ             loc_1CCF78
1CCDF4:  CMP             R5, #0
1CCDF8:  BEQ             loc_1CCF58
1CCDFC:  ADD             R0, R4, #0x7C ; '|'
1CCE00:  MOV             R1, R6
1CCE04:  BL              j_LookupUIntMapKey
1CCE08:  MOV             R6, R0
1CCE0C:  CMP             R6, #0
1CCE10:  BEQ             loc_1CCF64
1CCE14:  CMP             R7, #0xC000
1CCE18:  BGE             loc_1CCF98
1CCE1C:  MOVW            R0, #0x1001
1CCE20:  SUB             R0, R7, R0
1CCE24:  CMP             R0, #0x32; switch 51 cases
1CCE28:  BHI             def_1CCE38; jumptable 001CCE38 default case
1CCE2C:  ADR             R1, jpt_1CCE38
1CCE30:  MOV             R0, R0,LSL#2
1CCE34:  LDR             R0, [R0,R1]
1CCE38:  ADD             PC, R0, R1; switch jump
1CCE3C:  DCD loc_1CD024 - 0x1CCE3C; jump table for switch statement
1CCE40:  DCD loc_1CD02C - 0x1CCE3C; jumptable 001CCE38 case 1
1CCE44:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCE48:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCE4C:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCE50:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCE54:  DCD loc_1CD034 - 0x1CCE3C; jumptable 001CCE38 case 6
1CCE58:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCE5C:  DCD loc_1CD040 - 0x1CCE3C; jumptable 001CCE38 case 8
1CCE60:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCE64:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCE68:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCE6C:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCE70:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCE74:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCE78:  DCD loc_1CD094 - 0x1CCE3C; jumptable 001CCE38 case 15
1CCE7C:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCE80:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCE84:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCE88:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCE8C:  DCD loc_1CD0A0 - 0x1CCE3C; jumptable 001CCE38 case 20
1CCE90:  DCD loc_1CD0AC - 0x1CCE3C; jumptable 001CCE38 case 21
1CCE94:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCE98:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCE9C:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCEA0:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCEA4:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCEA8:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCEAC:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCEB0:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCEB4:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCEB8:  DCD loc_1CD0EC - 0x1CCE3C; jumptable 001CCE38 case 31
1CCEBC:  DCD loc_1CD0F4 - 0x1CCE3C; jumptable 001CCE38 case 32
1CCEC0:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCEC4:  DCD loc_1CD0FC - 0x1CCE3C; jumptable 001CCE38 case 34
1CCEC8:  DCD loc_1CCF08 - 0x1CCE3C; jumptable 001CCE38 cases 35-37
1CCECC:  DCD loc_1CCF08 - 0x1CCE3C; jumptable 001CCE38 cases 35-37
1CCED0:  DCD loc_1CCF08 - 0x1CCE3C; jumptable 001CCE38 cases 35-37
1CCED4:  DCD loc_1CD104 - 0x1CCE3C; jumptable 001CCE38 case 38
1CCED8:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCEDC:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCEE0:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCEE4:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCEE8:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCEEC:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCEF0:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCEF4:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCEF8:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCEFC:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCF00:  DCD loc_1CD018 - 0x1CCE3C; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCF04:  DCD loc_1CD110 - 0x1CCE3C; jumptable 001CCE38 case 50
1CCF08:  LDR             R0, [R4,#0xFC]; jumptable 001CCE38 cases 35-37
1CCF0C:  ADD             R0, R0, #8; mutex
1CCF10:  BL              j_EnterCriticalSection
1CCF14:  LDR             R0, [R4,#0xFC]
1CCF18:  MOV             R2, SP
1CCF1C:  MOV             R1, R7
1CCF20:  VLDR            S0, [R0,#0xC]
1CCF24:  VLDR            S2, [R0,#0x10]
1CCF28:  MOV             R0, R6
1CCF2C:  VCVT.F64.U32    D0, S0
1CCF30:  VCVT.F64.U32    D1, S2
1CCF34:  VDIV.F64        D0, D1, D0
1CCF38:  BL              sub_1CC7D8
1CCF3C:  LDR             R0, [R4,#0xFC]
1CCF40:  ADD             R0, R0, #8; mutex
1CCF44:  BL              j_LeaveCriticalSection
1CCF48:  VLDR            D0, [SP,#0x28+var_28]
1CCF4C:  VCVT.S32.F64    S0, D0
1CCF50:  VSTR            S0, [R5]
1CCF54:  B               loc_1CCF70
1CCF58:  MOV             R0, R4
1CCF5C:  MOVW            R1, #0xA003
1CCF60:  B               loc_1CCF6C
1CCF64:  MOV             R0, R4
1CCF68:  MOVW            R1, #0xA001
1CCF6C:  BL              j_alSetError
1CCF70:  MOV             R0, R4
1CCF74:  BL              j_ALCcontext_DecRef
1CCF78:  LDR             R0, =(__stack_chk_guard_ptr - 0x1CCF88)
1CCF7C:  LDR             R1, [SP,#0x28+var_14]
1CCF80:  LDR             R0, [PC,R0]; __stack_chk_guard
1CCF84:  LDR             R0, [R0]
1CCF88:  SUBS            R0, R0, R1
1CCF8C:  SUBEQ           SP, R11, #0x10
1CCF90:  POPEQ           {R4-R7,R11,PC}
1CCF94:  BL              __stack_chk_fail
1CCF98:  MOV             R0, #0x20009
1CCFA0:  CMP             R7, R0
1CCFA4:  BLE             loc_1CCFE4
1CCFA8:  MOV             R0, #0x2000A
1CCFB0:  CMP             R7, R0
1CCFB4:  BEQ             loc_1CD11C
1CCFB8:  MOV             R0, #0x2000B
1CCFC0:  CMP             R7, R0
1CCFC4:  BEQ             loc_1CD128
1CCFC8:  MOV             R0, #0x2000C
1CCFD0:  CMP             R7, R0
1CCFD4:  BNE             loc_1CD018; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCFD8:  LDRB            R0, [R6,#0xB2]
1CCFDC:  STR             R0, [R5]
1CCFE0:  B               loc_1CCF70
1CCFE4:  CMP             R7, #0xC000
1CCFE8:  BEQ             loc_1CD134
1CCFEC:  CMP             R7, #0xD000
1CCFF0:  BNE             loc_1CD018; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CCFF4:  LDR             R0, [R6,#0x50]
1CCFF8:  STR             R0, [R5]
1CCFFC:  B               loc_1CCF70
1CD000:  MOVW            R0, #0x202; jumptable 001CCE38 default case
1CD004:  CMP             R7, R0
1CD008:  BNE             loc_1CD018; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CD00C:  LDRB            R0, [R6,#0x4C]
1CD010:  STR             R0, [R5]
1CD014:  B               loc_1CCF70
1CD018:  MOV             R0, R4; jumptable 001CCE38 cases 2-5,7,9-14,16-19,22-30,33,39-49
1CD01C:  MOVW            R1, #0xA002
1CD020:  B               loc_1CCF6C
1CD024:  VLDR            S0, [R6,#0x14]; jumptable 001CCE38 case 0
1CD028:  B               loc_1CD138
1CD02C:  VLDR            S0, [R6,#0x18]; jumptable 001CCE38 case 1
1CD030:  B               loc_1CD138
1CD034:  LDRB            R0, [R6,#0x4D]; jumptable 001CCE38 case 6
1CD038:  STR             R0, [R5]
1CD03C:  B               loc_1CCF70
1CD040:  LDR             R0, [R4,#0xFC]; jumptable 001CCE38 case 8
1CD044:  ADD             R0, R0, #8; mutex
1CD048:  BL              j_EnterCriticalSection
1CD04C:  LDR             R0, [R6,#0x6C]
1CD050:  MOVW            R2, #0x1028
1CD054:  LDR             R1, [R6,#0xCC]
1CD058:  CMP             R1, R2
1CD05C:  LDRNE           R1, [R6,#0x74]
1CD060:  CMPNE           R1, #0
1CD064:  BEQ             loc_1CD074
1CD068:  LDR             R0, [R0,#4]
1CD06C:  SUBS            R1, R1, #1
1CD070:  BNE             loc_1CD068
1CD074:  MOV             R1, #0
1CD078:  CMP             R0, #0
1CD07C:  BEQ             loc_1CD08C
1CD080:  LDR             R0, [R0]
1CD084:  CMP             R0, #0
1CD088:  LDRNE           R1, [R0,#0x44]
1CD08C:  STR             R1, [R5]
1CD090:  B               loc_1CD0DC
1CD094:  LDR             R0, [R6,#0x5C]; jumptable 001CCE38 case 15
1CD098:  STR             R0, [R5]
1CD09C:  B               loc_1CCF70
1CD0A0:  LDR             R0, [R6,#0x70]; jumptable 001CCE38 case 20
1CD0A4:  STR             R0, [R5]
1CD0A8:  B               loc_1CCF70
1CD0AC:  LDR             R0, [R4,#0xFC]; jumptable 001CCE38 case 21
1CD0B0:  ADD             R0, R0, #8; mutex
1CD0B4:  BL              j_EnterCriticalSection
1CD0B8:  LDRB            R1, [R6,#0x4D]
1CD0BC:  MOV             R0, #0
1CD0C0:  CMP             R1, #0
1CD0C4:  BNE             loc_1CD0D8
1CD0C8:  LDR             R1, [R6,#0xCC]
1CD0CC:  MOVW            R2, #0x1029
1CD0D0:  CMP             R1, R2
1CD0D4:  LDREQ           R0, [R6,#0x74]
1CD0D8:  STR             R0, [R5]
1CD0DC:  LDR             R0, [R4,#0xFC]
1CD0E0:  ADD             R0, R0, #8; mutex
1CD0E4:  BL              j_LeaveCriticalSection
1CD0E8:  B               loc_1CCF70
1CD0EC:  VLDR            S0, [R6,#0x1C]; jumptable 001CCE38 case 31
1CD0F0:  B               loc_1CD138
1CD0F4:  VLDR            S0, [R6,#0x24]; jumptable 001CCE38 case 32
1CD0F8:  B               loc_1CD138
1CD0FC:  VLDR            S0, [R6,#0x20]; jumptable 001CCE38 case 34
1CD100:  B               loc_1CD138
1CD104:  LDR             R0, [R6,#0xCC]; jumptable 001CCE38 case 38
1CD108:  STR             R0, [R5]
1CD10C:  B               loc_1CCF70
1CD110:  LDRB            R0, [R6,#0x54]; jumptable 001CCE38 case 50
1CD114:  STR             R0, [R5]
1CD118:  B               loc_1CCF70
1CD11C:  LDRB            R0, [R6,#0xB0]
1CD120:  STR             R0, [R5]
1CD124:  B               loc_1CCF70
1CD128:  LDRB            R0, [R6,#0xB1]
1CD12C:  STR             R0, [R5]
1CD130:  B               loc_1CCF70
1CD134:  VLDR            S0, [R6,#0xC0]
1CD138:  VCVT.S32.F32    S0, S0
1CD13C:  VSTR            S0, [R5]
1CD140:  B               loc_1CCF70
