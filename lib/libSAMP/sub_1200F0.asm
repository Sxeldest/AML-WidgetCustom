; =========================================================
; Game Engine Function: sub_1200F0
; Address            : 0x1200F0 - 0x120174
; =========================================================

1200F0:  PUSH            {R4-R7,LR}
1200F2:  ADD             R7, SP, #0xC
1200F4:  PUSH.W          {R8,R9,R11}
1200F8:  SUB             SP, SP, #0x30
1200FA:  MOV             R8, R0
1200FC:  ADD             R0, SP, #0x48+var_24
1200FE:  MOV             R6, R3
120100:  MOV             R5, R2
120102:  MOV             R9, R1
120104:  BL              sub_F06B2
120108:  BL              sub_F0734
12010C:  MOV             R4, R0
12010E:  LDRB            R0, [R0]
120110:  LSLS            R0, R0, #0x1F
120112:  BNE             loc_12011A
120114:  MOVS            R0, #0
120116:  STRH            R0, [R4]
120118:  B               loc_12012A
12011A:  LDR             R0, [R4,#8]
12011C:  MOVS            R1, #0
12011E:  STRB            R1, [R0]
120120:  LDRB            R2, [R4]
120122:  LDR             R0, [R4]
120124:  STR             R1, [R4,#4]
120126:  LSLS            R1, R2, #0x1F
120128:  BNE             loc_12012E
12012A:  MOVS            R2, #9
12012C:  B               loc_120134
12012E:  SUBS            R0, #2
120130:  BIC.W           R2, R0, #1
120134:  STR             R6, [SP,#0x48+var_20]
120136:  MOVS            R0, #0
120138:  MOVS            R3, #0xC
12013A:  ADD             R1, SP, #0x48+var_20
12013C:  STRD.W          R3, R0, [SP,#0x48+var_40]
120140:  STRD.W          R1, R0, [SP,#0x48+var_38]
120144:  ADD             R0, SP, #0x48+var_2C
120146:  MOV             R1, R4
120148:  MOV             R3, R9
12014A:  STR             R5, [SP,#0x48+var_48]
12014C:  BL              sub_DCA40
120150:  LDRB            R0, [R4]
120152:  LDRD.W          R2, R1, [R4,#4]
120156:  ANDS.W          R3, R0, #1
12015A:  ITT EQ
12015C:  ADDEQ           R1, R4, #1; text
12015E:  LSREQ           R2, R0, #1
120160:  MOV             R0, R8; int
120162:  BL              sub_ED4F8
120166:  ADD             R0, SP, #0x48+var_24
120168:  BL              sub_F0720
12016C:  ADD             SP, SP, #0x30 ; '0'
12016E:  POP.W           {R8,R9,R11}
120172:  POP             {R4-R7,PC}
