; =========================================================
; Game Engine Function: sub_172EB6
; Address            : 0x172EB6 - 0x172F38
; =========================================================

172EB6:  PUSH            {R4-R7,LR}
172EB8:  ADD             R7, SP, #0xC
172EBA:  PUSH.W          {R8-R10}
172EBE:  LDR             R4, [R0,#0x28]
172EC0:  LDRH            R5, [R0,#0x34]
172EC2:  LDRD.W          R12, LR, [R4]
172EC6:  LDRD.W          R8, R6, [R0,#0x38]
172ECA:  ADDS            R4, R5, #3
172ECC:  STRH            R4, [R6,#0xA]
172ECE:  ADDS            R4, R5, #2
172ED0:  STRH            R4, [R6,#8]
172ED2:  STRH            R4, [R6,#4]
172ED4:  ADDS            R4, R5, #1
172ED6:  STRH            R4, [R6,#2]
172ED8:  STRH            R5, [R6,#6]
172EDA:  STRH            R5, [R6]
172EDC:  LDRD.W          R9, R5, [R1]
172EE0:  LDRD.W          R6, R1, [R1]
172EE4:  LDRD.W          R4, R10, [R2]
172EE8:  STRD.W          R6, R1, [R8]
172EEC:  ADD.W           R6, R0, #0x34 ; '4'
172EF0:  LDR             R1, [R0,#0x38]
172EF2:  STRD.W          R12, LR, [R1,#8]
172EF6:  LDR             R1, [R0,#0x38]
172EF8:  ADDS            R1, #0x10
172EFA:  STM             R1!, {R3-R5}
172EFC:  LDR             R1, [R0,#0x38]
172EFE:  STRD.W          R12, LR, [R1,#0x1C]
172F02:  LDR             R1, [R0,#0x38]
172F04:  STR             R3, [R1,#0x24]
172F06:  LDRD.W          R4, R2, [R2]
172F0A:  STRD.W          R4, R2, [R1,#0x28]
172F0E:  LDR             R1, [R0,#0x38]
172F10:  STRD.W          R12, LR, [R1,#0x30]
172F14:  LDR             R1, [R0,#0x38]
172F16:  STRD.W          R9, R10, [R1,#0x3C]
172F1A:  LDR             R2, [R0,#0x38]
172F1C:  ADDS            R0, #0x34 ; '4'
172F1E:  STR             R3, [R1,#0x38]
172F20:  STRD.W          R12, LR, [R2,#0x44]
172F24:  LDM             R6, {R1,R2,R6}
172F26:  ADD.W           R5, R2, #0x50 ; 'P'
172F2A:  ADDS            R6, #0xC
172F2C:  ADDS            R1, #4
172F2E:  STR             R3, [R2,#0x4C]
172F30:  STM             R0!, {R1,R5,R6}
172F32:  POP.W           {R8-R10}
172F36:  POP             {R4-R7,PC}
