; =========================================================
; Game Engine Function: sub_14CC08
; Address            : 0x14CC08 - 0x14CCA0
; =========================================================

14CC08:  PUSH            {R4-R7,LR}
14CC0A:  ADD             R7, SP, #0xC
14CC0C:  PUSH.W          {R11}
14CC10:  SUB.W           SP, SP, #0x440
14CC14:  LDR             R1, =(off_23496C - 0x14CC1A)
14CC16:  ADD             R1, PC; off_23496C
14CC18:  LDR             R1, [R1]; dword_23DEF4
14CC1A:  LDR             R1, [R1]
14CC1C:  LDR.W           R1, [R1,#0x3B0]
14CC20:  LDR             R4, [R1,#0x18]
14CC22:  CBZ             R4, loc_14CC96
14CC24:  LDRD.W          R1, R0, [R0]; src
14CC28:  MOVS            R3, #0
14CC2A:  ASRS            R2, R0, #0x1F
14CC2C:  ADD.W           R0, R0, R2,LSR#29
14CC30:  MOVS            R2, #1
14CC32:  ADD.W           R2, R2, R0,ASR#3; size
14CC36:  ADD             R0, SP, #0x450+var_128; int
14CC38:  BL              sub_17D4F2
14CC3C:  SUB.W           R1, R7, #-var_12; int
14CC40:  MOVS            R2, #0x10
14CC42:  MOVS            R3, #1
14CC44:  BL              sub_17D786
14CC48:  ADD             R0, SP, #0x450+var_128; int
14CC4A:  SUB.W           R1, R7, #-var_14; int
14CC4E:  MOVS            R2, #0x10
14CC50:  MOVS            R3, #1
14CC52:  BL              sub_17D786
14CC56:  LDRH.W          R2, [R7,#var_14]
14CC5A:  LSRS            R0, R2, #5
14CC5C:  CMP             R0, #0x18
14CC5E:  BHI             loc_14CC90
14CC60:  ADD.W           R6, SP, #0x450+dest
14CC64:  ADD             R0, SP, #0x450+var_128; int
14CC66:  MOV             R1, R6; dest
14CC68:  BL              sub_17D744
14CC6C:  LDRH.W          R0, [R7,#var_14]
14CC70:  MOVS            R1, #0
14CC72:  LDRH.W          R5, [R7,#var_12]
14CC76:  STRB            R1, [R6,R0]
14CC78:  MOV             R0, R4
14CC7A:  MOV             R1, R5
14CC7C:  BL              sub_14F3D8
14CC80:  CBZ             R0, loc_14CC90
14CC82:  LDR.W           R0, [R4,R5,LSL#2]
14CC86:  CBZ             R0, loc_14CC90
14CC88:  ADD.W           R1, SP, #0x450+dest
14CC8C:  BL              sub_107D98
14CC90:  ADD             R0, SP, #0x450+var_128
14CC92:  BL              sub_17D542
14CC96:  ADD.W           SP, SP, #0x440
14CC9A:  POP.W           {R11}
14CC9E:  POP             {R4-R7,PC}
