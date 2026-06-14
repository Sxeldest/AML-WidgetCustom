; =========================================================
; Game Engine Function: sub_14DC2C
; Address            : 0x14DC2C - 0x14DCB4
; =========================================================

14DC2C:  PUSH            {R7,LR}
14DC2E:  MOV             R7, SP
14DC30:  SUB             SP, SP, #0x120
14DC32:  LDRD.W          R1, R0, [R0]; src
14DC36:  MOVS            R3, #0
14DC38:  ASRS            R2, R0, #0x1F
14DC3A:  ADD.W           R0, R0, R2,LSR#29
14DC3E:  MOVS            R2, #1
14DC40:  ADD.W           R2, R2, R0,ASR#3; size
14DC44:  ADD             R0, SP, #0x128+var_124; int
14DC46:  BL              sub_17D4F2
14DC4A:  SUBS            R1, R7, #2; int
14DC4C:  MOVS            R2, #0x10
14DC4E:  MOVS            R3, #1
14DC50:  BL              sub_17D786
14DC54:  ADD             R0, SP, #0x128+var_124; int
14DC56:  ADD             R1, SP, #0x128+var_10; int
14DC58:  MOVS            R2, #0x20 ; ' '
14DC5A:  MOVS            R3, #1
14DC5C:  BL              sub_17D786
14DC60:  LDR             R0, =(off_23496C - 0x14DC66)
14DC62:  ADD             R0, PC; off_23496C
14DC64:  LDR             R0, [R0]; dword_23DEF4
14DC66:  LDR             R0, [R0]
14DC68:  LDR.W           R0, [R0,#0x3B0]
14DC6C:  LDR             R0, [R0]
14DC6E:  CBZ             R0, loc_14DCAA
14DC70:  ADD.W           R2, R0, #0x13A0
14DC74:  LDRH.W          R1, [R7,#-2]
14DC78:  LDRH            R3, [R2]
14DC7A:  CMP             R3, R1
14DC7C:  BNE             loc_14DC8A
14DC7E:  LDR             R0, [R2,#0x1C]
14DC80:  CBZ             R0, loc_14DCAA
14DC82:  LDR             R1, [SP,#0x128+var_10]
14DC84:  BL              sub_141498
14DC88:  B               loc_14DCAA
14DC8A:  CMP.W           R1, #0x3EC
14DC8E:  BHI             loc_14DCAA
14DC90:  ADDS            R2, R0, R1
14DC92:  LDRB.W          R2, [R2,#0xFB4]
14DC96:  CBZ             R2, loc_14DCAA
14DC98:  ADD.W           R0, R0, R1,LSL#2
14DC9C:  LDR             R0, [R0,#4]
14DC9E:  CBZ             R0, loc_14DCAA
14DCA0:  LDR             R0, [R0]
14DCA2:  CBZ             R0, loc_14DCAA
14DCA4:  LDR             R1, [SP,#0x128+var_10]
14DCA6:  BL              sub_14A3FC
14DCAA:  ADD             R0, SP, #0x128+var_124
14DCAC:  BL              sub_17D542
14DCB0:  ADD             SP, SP, #0x120
14DCB2:  POP             {R7,PC}
