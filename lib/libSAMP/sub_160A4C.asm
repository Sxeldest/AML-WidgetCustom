; =========================================================
; Game Engine Function: sub_160A4C
; Address            : 0x160A4C - 0x160AE4
; =========================================================

160A4C:  PUSH            {R4-R7,LR}
160A4E:  ADD             R7, SP, #0xC
160A50:  PUSH.W          {R8,R9,R11}
160A54:  SUB             SP, SP, #0x40
160A56:  MOV             R8, R0
160A58:  ADD             R0, SP, #0x58+var_34
160A5A:  MOV             R6, R3
160A5C:  MOV             R5, R2
160A5E:  MOV             R9, R1
160A60:  BL              sub_F06B2
160A64:  BL              sub_F0734
160A68:  LDRB            R2, [R0]
160A6A:  MOV             R4, R0
160A6C:  LDRD.W          R1, R12, [R7,#arg_0]
160A70:  LSLS            R2, R2, #0x1F
160A72:  BNE             loc_160A7A
160A74:  MOVS            R2, #0
160A76:  STRH            R2, [R4]
160A78:  B               loc_160A8A
160A7A:  LDR             R2, [R4,#8]
160A7C:  MOVS            R3, #0
160A7E:  STRB            R3, [R2]
160A80:  LDRB            R0, [R4]
160A82:  LDR             R2, [R4]
160A84:  STR             R3, [R4,#4]
160A86:  LSLS            R0, R0, #0x1F
160A88:  BNE             loc_160A8E
160A8A:  MOVS            R2, #9
160A8C:  B               loc_160A94
160A8E:  SUBS            R0, R2, #2
160A90:  BIC.W           R2, R0, #1
160A94:  LDR             R1, [R1]
160A96:  MOVS            R0, #0
160A98:  LDR.W           R3, [R12]
160A9C:  STR             R0, [SP,#0x58+var_1C]
160A9E:  STR             R0, [SP,#0x58+var_24]
160AA0:  STR             R6, [SP,#0x58+var_30]
160AA2:  STR             R3, [SP,#0x58+var_20]
160AA4:  STR             R1, [SP,#0x58+var_28]
160AA6:  MOV.W           R3, #0x11C
160AAA:  ADD             R1, SP, #0x58+var_30
160AAC:  STRD.W          R3, R0, [SP,#0x58+var_50]
160AB0:  MOV             R3, R9
160AB2:  STRD.W          R1, R0, [SP,#0x58+var_48]
160AB6:  ADD             R0, SP, #0x58+var_3C
160AB8:  MOV             R1, R4
160ABA:  STR             R5, [SP,#0x58+var_58]
160ABC:  BL              sub_DCA40
160AC0:  LDRB            R0, [R4]
160AC2:  LDRD.W          R2, R1, [R4,#4]
160AC6:  ANDS.W          R3, R0, #1
160ACA:  ITT EQ
160ACC:  ADDEQ           R1, R4, #1; text
160ACE:  LSREQ           R2, R0, #1
160AD0:  MOV             R0, R8; int
160AD2:  BL              sub_ED4F8
160AD6:  ADD             R0, SP, #0x58+var_34
160AD8:  BL              sub_F0720
160ADC:  ADD             SP, SP, #0x40 ; '@'
160ADE:  POP.W           {R8,R9,R11}
160AE2:  POP             {R4-R7,PC}
