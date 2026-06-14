; =========================================================
; Game Engine Function: sub_126EC4
; Address            : 0x126EC4 - 0x126F5E
; =========================================================

126EC4:  PUSH            {R4-R7,LR}
126EC6:  ADD             R7, SP, #0xC
126EC8:  PUSH.W          {R8-R10}
126ECC:  SUB             SP, SP, #0x30
126ECE:  MOV             R8, R0
126ED0:  ADD             R0, SP, #0x48+var_24
126ED2:  MOV             R6, R3
126ED4:  MOV             R10, R2
126ED6:  MOV             R9, R1
126ED8:  BL              sub_F06B2
126EDC:  BL              sub_F0734
126EE0:  MOV             R4, R0
126EE2:  LDRB            R0, [R0]
126EE4:  LSLS            R0, R0, #0x1F
126EE6:  BNE             loc_126EEE
126EE8:  MOVS            R0, #0
126EEA:  STRH            R0, [R4]
126EEC:  B               loc_126EFE
126EEE:  LDR             R0, [R4,#8]
126EF0:  MOVS            R1, #0
126EF2:  STRB            R1, [R0]
126EF4:  LDRB            R2, [R4]
126EF6:  LDR             R0, [R4]
126EF8:  STR             R1, [R4,#4]
126EFA:  LSLS            R1, R2, #0x1F
126EFC:  BNE             loc_126F02
126EFE:  MOVS            R2, #9
126F00:  B               loc_126F08
126F02:  SUBS            R0, #2
126F04:  BIC.W           R2, R0, #1
126F08:  LDRB            R3, [R6]
126F0A:  LDRD.W          R0, R1, [R6,#4]
126F0E:  ANDS.W          R5, R3, #1
126F12:  IT EQ
126F14:  LSREQ           R0, R3, #1
126F16:  STR             R0, [SP,#0x48+var_1C]
126F18:  IT EQ
126F1A:  ADDEQ           R1, R6, #1
126F1C:  STR             R1, [SP,#0x48+var_20]
126F1E:  MOVS            R0, #0
126F20:  MOVS            R3, #0xD
126F22:  ADD             R1, SP, #0x48+var_20
126F24:  STRD.W          R3, R0, [SP,#0x48+var_40]
126F28:  STRD.W          R1, R0, [SP,#0x48+var_38]
126F2C:  ADD             R0, SP, #0x48+var_2C
126F2E:  MOV             R1, R4
126F30:  MOV             R3, R9
126F32:  STR.W           R10, [SP,#0x48+var_48]
126F36:  BL              sub_DCA40
126F3A:  LDRB            R0, [R4]
126F3C:  LDRD.W          R2, R1, [R4,#4]
126F40:  ANDS.W          R3, R0, #1
126F44:  ITT EQ
126F46:  ADDEQ           R1, R4, #1; text
126F48:  LSREQ           R2, R0, #1
126F4A:  MOV             R0, R8; int
126F4C:  BL              sub_ED4F8
126F50:  ADD             R0, SP, #0x48+var_24
126F52:  BL              sub_F0720
126F56:  ADD             SP, SP, #0x30 ; '0'
126F58:  POP.W           {R8-R10}
126F5C:  POP             {R4-R7,PC}
