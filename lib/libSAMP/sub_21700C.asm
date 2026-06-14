; =========================================================
; Game Engine Function: sub_21700C
; Address            : 0x21700C - 0x217128
; =========================================================

21700C:  PUSH            {R4-R7,LR}
21700E:  ADD             R7, SP, #0xC
217010:  PUSH.W          {R11}
217014:  SUB             SP, SP, #8
217016:  MOV             R4, R0
217018:  LDR             R0, =(__stack_chk_guard_ptr - 0x21701E)
21701A:  ADD             R0, PC; __stack_chk_guard_ptr
21701C:  LDR             R0, [R0]; __stack_chk_guard
21701E:  LDR             R0, [R0]
217020:  STR             R0, [SP,#0x18+var_14]
217022:  LDRD.W          R0, R1, [R4]
217026:  CMP             R0, R1
217028:  BEQ             loc_217090
21702A:  LDRB            R2, [R0]
21702C:  CMP             R2, #0x53 ; 'S'
21702E:  BNE             loc_217090
217030:  ADDS            R2, R0, #1
217032:  STR             R2, [R4]
217034:  CMP             R1, R2
217036:  BEQ             loc_21705A
217038:  LDRB            R1, [R2]
21703A:  SUB.W           R3, R1, #0x7B ; '{'
21703E:  CMN.W           R3, #0x1A
217042:  BCS             loc_2170AE
217044:  LDRB            R1, [R2]
217046:  CMP             R1, #0x5F ; '_'
217048:  BNE             loc_21705A
21704A:  ADDS            R0, #2
21704C:  STR             R0, [R4]
21704E:  LDRD.W          R0, R1, [R4,#0x94]
217052:  CMP             R0, R1
217054:  BEQ             loc_217090
217056:  LDR             R5, [R0]
217058:  B               loc_217092
21705A:  MOVS            R5, #0
21705C:  MOV             R1, SP
21705E:  MOV             R0, R4
217060:  STR             R5, [SP,#0x18+var_18]
217062:  BL              sub_216E90
217066:  CBNZ            R0, loc_217092
217068:  LDRD.W          R0, R1, [R4]
21706C:  CMP             R0, R1
21706E:  BEQ             loc_217090
217070:  LDRB            R1, [R0]
217072:  CMP             R1, #0x5F ; '_'
217074:  BNE             loc_217090
217076:  ADDS            R0, #1
217078:  STR             R0, [R4]
21707A:  LDRD.W          R0, R2, [R4,#0x94]
21707E:  LDR             R1, [SP,#0x18+var_18]
217080:  SUBS            R2, R2, R0
217082:  ADDS            R1, #1
217084:  CMP.W           R1, R2,ASR#2
217088:  BCS             loc_217090
21708A:  LDR.W           R5, [R0,R1,LSL#2]
21708E:  B               loc_217092
217090:  MOVS            R5, #0
217092:  LDR             R0, [SP,#0x18+var_14]
217094:  LDR             R1, =(__stack_chk_guard_ptr - 0x21709A)
217096:  ADD             R1, PC; __stack_chk_guard_ptr
217098:  LDR             R1, [R1]; __stack_chk_guard
21709A:  LDR             R1, [R1]
21709C:  CMP             R1, R0
21709E:  ITTTT EQ
2170A0:  MOVEQ           R0, R5
2170A2:  ADDEQ           SP, SP, #8
2170A4:  POPEQ.W         {R11}
2170A8:  POPEQ           {R4-R7,PC}
2170AA:  BLX             __stack_chk_fail
2170AE:  SUB.W           R2, R1, #0x61 ; 'a'; switch 9 cases
2170B2:  MOVS            R5, #0
2170B4:  CMP             R2, #8
2170B6:  BHI             def_2170B8; jumptable 002170B8 default case
2170B8:  TBB.W           [PC,R2]; switch jump
2170BC:  DCB 6; jump table for switch statement
2170BD:  DCB 0x12
2170BE:  DCB 5
2170BF:  DCB 0x16
2170C0:  DCB 5
2170C1:  DCB 5
2170C2:  DCB 5
2170C3:  DCB 5
2170C4:  DCB 0x1A
2170C5:  ALIGN 2
2170C6:  B               loc_217092; jumptable 002170B8 cases 99,101-104
2170C8:  ADDS            R0, #2; jumptable 002170B8 case 97
2170CA:  STR             R0, [R4]
2170CC:  MOVS            R0, #0
2170CE:  B               loc_2170FE
2170D0:  CMP             R1, #0x6F ; 'o'; jumptable 002170B8 default case
2170D2:  BEQ             loc_2170F8
2170D4:  CMP             R1, #0x73 ; 's'
2170D6:  BNE             loc_217092
2170D8:  ADDS            R0, #2
2170DA:  STR             R0, [R4]
2170DC:  MOVS            R0, #2
2170DE:  B               loc_2170FE
2170E0:  ADDS            R0, #2; jumptable 002170B8 case 98
2170E2:  STR             R0, [R4]
2170E4:  MOVS            R0, #1
2170E6:  B               loc_2170FE
2170E8:  ADDS            R0, #2; jumptable 002170B8 case 100
2170EA:  STR             R0, [R4]
2170EC:  MOVS            R0, #5
2170EE:  B               loc_2170FE
2170F0:  ADDS            R0, #2; jumptable 002170B8 case 105
2170F2:  STR             R0, [R4]
2170F4:  MOVS            R0, #3
2170F6:  B               loc_2170FE
2170F8:  ADDS            R0, #2
2170FA:  STR             R0, [R4]
2170FC:  MOVS            R0, #4
2170FE:  STR             R0, [SP,#0x18+var_18]
217100:  MOV             R1, SP
217102:  MOV             R0, R4
217104:  BL              sub_21C988
217108:  MOV             R5, R0
21710A:  MOV             R0, R4
21710C:  MOV             R1, R5
21710E:  BL              sub_2176FC
217112:  CMP             R0, R5
217114:  STR             R0, [SP,#0x18+var_18]
217116:  BEQ             loc_217092
217118:  MOV             R6, R0
21711A:  ADD.W           R0, R4, #0x94
21711E:  MOV             R1, SP
217120:  BL              sub_216CEC
217124:  MOV             R5, R6
217126:  B               loc_217092
