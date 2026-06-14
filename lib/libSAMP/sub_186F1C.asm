; =========================================================
; Game Engine Function: sub_186F1C
; Address            : 0x186F1C - 0x186FA4
; =========================================================

186F1C:  PUSH            {R4-R7,LR}
186F1E:  ADD             R7, SP, #0xC
186F20:  PUSH.W          {R8,R9,R11}
186F24:  SUB             SP, SP, #0x30
186F26:  MOV             R8, R0
186F28:  ADD             R0, SP, #0x48+var_24
186F2A:  MOV             R6, R3
186F2C:  MOV             R5, R2
186F2E:  MOV             R9, R1
186F30:  BL              sub_F06B2
186F34:  BL              sub_F0734
186F38:  MOV             R4, R0
186F3A:  LDRB            R0, [R0]
186F3C:  LSLS            R0, R0, #0x1F
186F3E:  BNE             loc_186F46
186F40:  MOVS            R0, #0
186F42:  STRH            R0, [R4]
186F44:  B               loc_186F56
186F46:  LDR             R0, [R4,#8]
186F48:  MOVS            R1, #0
186F4A:  STRB            R1, [R0]
186F4C:  LDRB            R2, [R4]
186F4E:  LDR             R0, [R4]
186F50:  STR             R1, [R4,#4]
186F52:  LSLS            R1, R2, #0x1F
186F54:  BNE             loc_186F5A
186F56:  MOVS            R2, #9
186F58:  B               loc_186F60
186F5A:  SUBS            R0, #2
186F5C:  BIC.W           R2, R0, #1
186F60:  LDR             R0, [R6]
186F62:  MOVS            R1, #0
186F64:  STRD.W          R0, R1, [SP,#0x48+var_20]
186F68:  ADD             R0, SP, #0x48+var_20
186F6A:  MOVS            R3, #1
186F6C:  STRD.W          R0, R1, [SP,#0x48+var_38]
186F70:  ADD             R0, SP, #0x48+var_2C
186F72:  STRD.W          R3, R1, [SP,#0x48+var_40]
186F76:  MOV             R1, R4
186F78:  MOV             R3, R9
186F7A:  STR             R5, [SP,#0x48+var_48]
186F7C:  BL              sub_DCA40
186F80:  LDRB            R0, [R4]
186F82:  LDRD.W          R2, R1, [R4,#4]
186F86:  ANDS.W          R3, R0, #1
186F8A:  ITT EQ
186F8C:  ADDEQ           R1, R4, #1; text
186F8E:  LSREQ           R2, R0, #1
186F90:  MOV             R0, R8; int
186F92:  BL              sub_ED4F8
186F96:  ADD             R0, SP, #0x48+var_24
186F98:  BL              sub_F0720
186F9C:  ADD             SP, SP, #0x30 ; '0'
186F9E:  POP.W           {R8,R9,R11}
186FA2:  POP             {R4-R7,PC}
