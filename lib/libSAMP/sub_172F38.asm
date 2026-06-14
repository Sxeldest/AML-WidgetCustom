; =========================================================
; Game Engine Function: sub_172F38
; Address            : 0x172F38 - 0x172FDA
; =========================================================

172F38:  PUSH            {R4-R7,LR}
172F3A:  ADD             R7, SP, #0xC
172F3C:  PUSH.W          {R8-R11}
172F40:  SUB             SP, SP, #8
172F42:  LDRH            R6, [R0,#0x34]
172F44:  LDR             R4, [R1]
172F46:  LDRD.W          R10, R5, [R0,#0x38]
172F4A:  STR             R4, [SP,#0x24+var_20]
172F4C:  ADDS            R4, R6, #3
172F4E:  STRH            R4, [R5,#0xA]
172F50:  ADDS            R4, R6, #2
172F52:  STRH            R4, [R5,#8]
172F54:  STRH            R4, [R5,#4]
172F56:  ADDS            R4, R6, #1
172F58:  STRH            R6, [R5,#6]
172F5A:  STRH            R4, [R5,#2]
172F5C:  STRH            R6, [R5]
172F5E:  LDR             R5, [R7,#arg_0]
172F60:  LDR.W           R9, [R1,#4]
172F64:  LDRD.W          R4, R6, [R1]
172F68:  LDR             R1, [R3]
172F6A:  STR             R1, [SP,#0x24+var_24]
172F6C:  LDR.W           LR, [R3,#4]
172F70:  LDRD.W          R1, R11, [R2]
172F74:  LDRD.W          R12, R8, [R5]
172F78:  STRD.W          R4, R6, [R10]
172F7C:  LDR             R6, [R0,#0x38]
172F7E:  LDRD.W          R4, R3, [R3]
172F82:  STRD.W          R4, R3, [R6,#8]
172F86:  LDR             R4, [R0,#0x38]
172F88:  LDR             R3, [R7,#arg_4]
172F8A:  STRD.W          R1, R9, [R4,#0x14]
172F8E:  LDR             R1, [R0,#0x38]
172F90:  STR             R3, [R4,#0x10]
172F92:  STRD.W          R12, LR, [R1,#0x1C]
172F96:  LDR             R1, [R0,#0x38]
172F98:  STR             R3, [R1,#0x24]
172F9A:  LDRD.W          R6, R2, [R2]
172F9E:  STRD.W          R6, R2, [R1,#0x28]
172FA2:  LDR             R6, [R0,#0x38]
172FA4:  LDRD.W          R1, R2, [R5]
172FA8:  STRD.W          R1, R2, [R6,#0x30]
172FAC:  ADD.W           R6, R0, #0x34 ; '4'
172FB0:  LDR             R1, [R0,#0x38]
172FB2:  LDR             R2, [SP,#0x24+var_20]
172FB4:  STRD.W          R2, R11, [R1,#0x3C]
172FB8:  LDR             R2, [R0,#0x38]
172FBA:  ADDS            R0, #0x34 ; '4'
172FBC:  STR             R3, [R1,#0x38]
172FBE:  LDR             R1, [SP,#0x24+var_24]
172FC0:  STRD.W          R1, R8, [R2,#0x44]
172FC4:  LDM             R6, {R1,R2,R6}
172FC6:  ADD.W           R5, R2, #0x50 ; 'P'
172FCA:  ADDS            R6, #0xC
172FCC:  ADDS            R1, #4
172FCE:  STR             R3, [R2,#0x4C]
172FD0:  STM             R0!, {R1,R5,R6}
172FD2:  ADD             SP, SP, #8
172FD4:  POP.W           {R8-R11}
172FD8:  POP             {R4-R7,PC}
