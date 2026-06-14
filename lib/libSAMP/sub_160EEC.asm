; =========================================================
; Game Engine Function: sub_160EEC
; Address            : 0x160EEC - 0x160FA0
; =========================================================

160EEC:  PUSH            {R4-R7,LR}
160EEE:  ADD             R7, SP, #0xC
160EF0:  PUSH.W          {R8-R11}
160EF4:  SUB             SP, SP, #0x54
160EF6:  MOV             R8, R0
160EF8:  ADD             R0, SP, #0x70+var_4C
160EFA:  MOV             R6, R3
160EFC:  MOV             R11, R2
160EFE:  MOV             R9, R1
160F00:  BL              sub_F06B2
160F04:  BL              sub_F0734
160F08:  MOV             R4, R0
160F0A:  LDRD.W          R12, LR, [R7,#arg_8]
160F0E:  LDRB            R2, [R4]
160F10:  LDRD.W          R10, R0, [R7,#arg_0]
160F14:  LSLS            R2, R2, #0x1F
160F16:  BNE             loc_160F1E
160F18:  MOVS            R2, #0
160F1A:  STRH            R2, [R4]
160F1C:  B               loc_160F2E
160F1E:  LDR             R2, [R4,#8]
160F20:  MOVS            R1, #0
160F22:  STRB            R1, [R2]
160F24:  LDRB            R3, [R4]
160F26:  LDR             R2, [R4]
160F28:  STR             R1, [R4,#4]
160F2A:  LSLS            R1, R3, #0x1F
160F2C:  BNE             loc_160F32
160F2E:  MOVS            R2, #9
160F30:  B               loc_160F38
160F32:  SUBS            R1, R2, #2
160F34:  BIC.W           R2, R1, #1
160F38:  LDR             R0, [R0]
160F3A:  MOVS            R1, #0
160F3C:  LDR             R3, [R6]
160F3E:  LDR.W           LR, [LR]
160F42:  LDR.W           R6, [R10]
160F46:  LDR.W           R5, [R12]
160F4A:  STRD.W          R5, R1, [SP,#0x70+var_30]
160F4E:  STRD.W          R6, R1, [SP,#0x70+var_40]
160F52:  STRD.W          R3, R1, [SP,#0x70+var_48]
160F56:  STR.W           LR, [SP,#0x70+var_28]
160F5A:  STR             R0, [SP,#0x70+var_38]
160F5C:  MOVW            R3, #:lower16:unk_C2C22
160F60:  ADD             R0, SP, #0x70+var_48
160F62:  MOVT            R3, #:upper16:unk_C2C22
160F66:  STRD.W          R0, R1, [SP,#0x70+var_60]
160F6A:  ADD             R0, SP, #0x70+var_54
160F6C:  STRD.W          R3, R1, [SP,#0x70+var_68]
160F70:  MOV             R1, R4
160F72:  MOV             R3, R9
160F74:  STR.W           R11, [SP,#0x70+var_70]
160F78:  BL              sub_DCA40
160F7C:  LDRB            R0, [R4]
160F7E:  LDRD.W          R2, R1, [R4,#4]
160F82:  ANDS.W          R3, R0, #1
160F86:  ITT EQ
160F88:  ADDEQ           R1, R4, #1; text
160F8A:  LSREQ           R2, R0, #1
160F8C:  MOV             R0, R8; int
160F8E:  BL              sub_ED4F8
160F92:  ADD             R0, SP, #0x70+var_4C
160F94:  BL              sub_F0720
160F98:  ADD             SP, SP, #0x54 ; 'T'
160F9A:  POP.W           {R8-R11}
160F9E:  POP             {R4-R7,PC}
