; =========================================================
; Game Engine Function: sub_112034
; Address            : 0x112034 - 0x1120BA
; =========================================================

112034:  PUSH            {R4-R7,LR}
112036:  ADD             R7, SP, #0xC
112038:  PUSH.W          {R8,R9,R11}
11203C:  SUB             SP, SP, #0x30
11203E:  MOV             R8, R0
112040:  ADD             R0, SP, #0x48+var_24
112042:  MOV             R6, R3
112044:  MOV             R5, R2
112046:  MOV             R9, R1
112048:  BL              sub_F06B2
11204C:  BL              sub_F0734
112050:  MOV             R4, R0
112052:  LDRB            R0, [R0]
112054:  LSLS            R0, R0, #0x1F
112056:  BNE             loc_11205E
112058:  MOVS            R0, #0
11205A:  STRH            R0, [R4]
11205C:  B               loc_11206E
11205E:  LDR             R0, [R4,#8]
112060:  MOVS            R1, #0
112062:  STRB            R1, [R0]
112064:  LDRB            R2, [R4]
112066:  LDR             R0, [R4]
112068:  STR             R1, [R4,#4]
11206A:  LSLS            R1, R2, #0x1F
11206C:  BNE             loc_112072
11206E:  MOVS            R2, #9
112070:  B               loc_112078
112072:  SUBS            R0, #2
112074:  BIC.W           R2, R0, #1
112078:  LDR             R0, [R6]
11207A:  STR             R0, [SP,#0x48+var_20]
11207C:  MOVS            R0, #0
11207E:  MOVS            R3, #0xC
112080:  ADD             R1, SP, #0x48+var_20
112082:  STRD.W          R3, R0, [SP,#0x48+var_40]
112086:  STRD.W          R1, R0, [SP,#0x48+var_38]
11208A:  ADD             R0, SP, #0x48+var_2C
11208C:  MOV             R1, R4
11208E:  MOV             R3, R9
112090:  STR             R5, [SP,#0x48+var_48]
112092:  BL              sub_DCA40
112096:  LDRB            R0, [R4]
112098:  LDRD.W          R2, R1, [R4,#4]
11209C:  ANDS.W          R3, R0, #1
1120A0:  ITT EQ
1120A2:  ADDEQ           R1, R4, #1; text
1120A4:  LSREQ           R2, R0, #1
1120A6:  MOV             R0, R8; int
1120A8:  BL              sub_ED4F8
1120AC:  ADD             R0, SP, #0x48+var_24
1120AE:  BL              sub_F0720
1120B2:  ADD             SP, SP, #0x30 ; '0'
1120B4:  POP.W           {R8,R9,R11}
1120B8:  POP             {R4-R7,PC}
