; =========================================================
; Game Engine Function: sub_1DC004
; Address            : 0x1DC004 - 0x1DC180
; =========================================================

1DC004:  PUSH            {R11,LR}
1DC008:  MOV             R11, SP
1DC00C:  SUB             R2, R2, #1; switch 22 cases
1DC010:  CMP             R2, #0x15
1DC014:  BHI             def_1DC024; jumptable 001DC024 default case, cases 11,14
1DC018:  ADR             LR, jpt_1DC024
1DC01C:  MOV             R12, R2,LSL#2
1DC020:  LDR             R2, [R12,LR]
1DC024:  ADD             PC, R2, LR; switch jump
1DC028:  DCD loc_1DC080 - 0x1DC028; jump table for switch statement
1DC02C:  DCD loc_1DC08C - 0x1DC028; jumptable 001DC024 case 2
1DC030:  DCD loc_1DC098 - 0x1DC028; jumptable 001DC024 case 3
1DC034:  DCD loc_1DC0A4 - 0x1DC028; jumptable 001DC024 case 4
1DC038:  DCD loc_1DC0B0 - 0x1DC028; jumptable 001DC024 case 5
1DC03C:  DCD loc_1DC0BC - 0x1DC028; jumptable 001DC024 case 6
1DC040:  DCD loc_1DC0C8 - 0x1DC028; jumptable 001DC024 case 7
1DC044:  DCD loc_1DC0D4 - 0x1DC028; jumptable 001DC024 case 8
1DC048:  DCD loc_1DC0E0 - 0x1DC028; jumptable 001DC024 case 9
1DC04C:  DCD loc_1DC0EC - 0x1DC028; jumptable 001DC024 case 10
1DC050:  DCD def_1DC024 - 0x1DC028; jumptable 001DC024 default case, cases 11,14
1DC054:  DCD loc_1DC108 - 0x1DC028; jumptable 001DC024 case 12
1DC058:  DCD loc_1DC114 - 0x1DC028; jumptable 001DC024 case 13
1DC05C:  DCD def_1DC024 - 0x1DC028; jumptable 001DC024 default case, cases 11,14
1DC060:  DCD loc_1DC120 - 0x1DC028; jumptable 001DC024 case 15
1DC064:  DCD loc_1DC12C - 0x1DC028; jumptable 001DC024 case 16
1DC068:  DCD loc_1DC138 - 0x1DC028; jumptable 001DC024 case 17
1DC06C:  DCD loc_1DC144 - 0x1DC028; jumptable 001DC024 case 18
1DC070:  DCD loc_1DC150 - 0x1DC028; jumptable 001DC024 case 19
1DC074:  DCD loc_1DC15C - 0x1DC028; jumptable 001DC024 case 20
1DC078:  DCD loc_1DC168 - 0x1DC028; jumptable 001DC024 case 21
1DC07C:  DCD loc_1DC174 - 0x1DC028; jumptable 001DC024 case 22
1DC080:  LDR             R0, [R0,#4]; jumptable 001DC024 case 1
1DC084:  STR             R0, [R3]
1DC088:  POP             {R11,PC}
1DC08C:  LDR             R0, [R0,#8]; jumptable 001DC024 case 2
1DC090:  STR             R0, [R3]
1DC094:  POP             {R11,PC}
1DC098:  LDR             R0, [R0,#0xC]; jumptable 001DC024 case 3
1DC09C:  STR             R0, [R3]
1DC0A0:  POP             {R11,PC}
1DC0A4:  LDR             R0, [R0,#0x10]; jumptable 001DC024 case 4
1DC0A8:  STR             R0, [R3]
1DC0AC:  POP             {R11,PC}
1DC0B0:  LDR             R0, [R0,#0x38]; jumptable 001DC024 case 5
1DC0B4:  STR             R0, [R3]
1DC0B8:  POP             {R11,PC}
1DC0BC:  LDR             R0, [R0,#0x14]; jumptable 001DC024 case 6
1DC0C0:  STR             R0, [R3]
1DC0C4:  POP             {R11,PC}
1DC0C8:  LDR             R0, [R0,#0x18]; jumptable 001DC024 case 7
1DC0CC:  STR             R0, [R3]
1DC0D0:  POP             {R11,PC}
1DC0D4:  LDR             R0, [R0,#0x3C]; jumptable 001DC024 case 8
1DC0D8:  STR             R0, [R3]
1DC0DC:  POP             {R11,PC}
1DC0E0:  LDR             R0, [R0,#0x1C]; jumptable 001DC024 case 9
1DC0E4:  STR             R0, [R3]
1DC0E8:  POP             {R11,PC}
1DC0EC:  LDR             R0, [R0,#0x20]; jumptable 001DC024 case 10
1DC0F0:  STR             R0, [R3]
1DC0F4:  POP             {R11,PC}
1DC0F8:  MOV             R0, R1; jumptable 001DC024 default case, cases 11,14
1DC0FC:  MOVW            R1, #0xA002
1DC100:  POP             {R11,LR}
1DC104:  B               j_alSetError
1DC108:  LDR             R0, [R0,#0x24]; jumptable 001DC024 case 12
1DC10C:  STR             R0, [R3]
1DC110:  POP             {R11,PC}
1DC114:  LDR             R0, [R0,#0x28]; jumptable 001DC024 case 13
1DC118:  STR             R0, [R3]
1DC11C:  POP             {R11,PC}
1DC120:  LDR             R0, [R0,#0x58]; jumptable 001DC024 case 15
1DC124:  STR             R0, [R3]
1DC128:  POP             {R11,PC}
1DC12C:  LDR             R0, [R0,#0x5C]; jumptable 001DC024 case 16
1DC130:  STR             R0, [R3]
1DC134:  POP             {R11,PC}
1DC138:  LDR             R0, [R0,#0x60]; jumptable 001DC024 case 17
1DC13C:  STR             R0, [R3]
1DC140:  POP             {R11,PC}
1DC144:  LDR             R0, [R0,#0x64]; jumptable 001DC024 case 18
1DC148:  STR             R0, [R3]
1DC14C:  POP             {R11,PC}
1DC150:  LDR             R0, [R0,#0x2C]; jumptable 001DC024 case 19
1DC154:  STR             R0, [R3]
1DC158:  POP             {R11,PC}
1DC15C:  LDR             R0, [R0,#0x68]; jumptable 001DC024 case 20
1DC160:  STR             R0, [R3]
1DC164:  POP             {R11,PC}
1DC168:  LDR             R0, [R0,#0x6C]; jumptable 001DC024 case 21
1DC16C:  STR             R0, [R3]
1DC170:  POP             {R11,PC}
1DC174:  LDR             R0, [R0,#0x30]; jumptable 001DC024 case 22
1DC178:  STR             R0, [R3]
1DC17C:  POP             {R11,PC}
