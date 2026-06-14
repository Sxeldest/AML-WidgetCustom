; =========================================================
; Game Engine Function: sub_14DDF8
; Address            : 0x14DDF8 - 0x14DE68
; =========================================================

14DDF8:  PUSH            {R4,R5,R7,LR}
14DDFA:  ADD             R7, SP, #8
14DDFC:  SUB             SP, SP, #0x120
14DDFE:  LDRD.W          R1, R0, [R0]; src
14DE02:  MOVS            R3, #0
14DE04:  ASRS            R2, R0, #0x1F
14DE06:  ADD.W           R0, R0, R2,LSR#29
14DE0A:  MOVS            R2, #1
14DE0C:  ADD.W           R2, R2, R0,ASR#3; size
14DE10:  ADD             R0, SP, #0x128+var_124; int
14DE12:  BL              sub_17D4F2
14DE16:  SUB.W           R1, R7, #-var_A; int
14DE1A:  MOVS            R2, #0x10
14DE1C:  MOVS            R3, #1
14DE1E:  BL              sub_17D786
14DE22:  ADD             R0, SP, #0x128+var_124; int
14DE24:  ADD             R1, SP, #0x128+var_10; int
14DE26:  MOVS            R2, #0x20 ; ' '
14DE28:  MOVS            R3, #1
14DE2A:  BL              sub_17D786
14DE2E:  LDR             R0, =(off_23496C - 0x14DE34)
14DE30:  ADD             R0, PC; off_23496C
14DE32:  LDR             R0, [R0]; dword_23DEF4
14DE34:  LDR             R0, [R0]
14DE36:  LDR.W           R0, [R0,#0x3B0]
14DE3A:  LDR             R4, [R0,#4]
14DE3C:  CBZ             R4, loc_14DE5E
14DE3E:  LDRH.W          R5, [R7,#var_A]
14DE42:  LSRS            R0, R5, #4
14DE44:  CMP             R0, #0x7C ; '|'
14DE46:  BHI             loc_14DE5E
14DE48:  MOV             R0, R4
14DE4A:  MOV             R1, R5
14DE4C:  BL              sub_F2396
14DE50:  CBZ             R0, loc_14DE5E
14DE52:  LDR.W           R0, [R4,R5,LSL#2]
14DE56:  CBZ             R0, loc_14DE5E
14DE58:  LDR             R1, [SP,#0x128+var_10]
14DE5A:  BL              sub_10A0FC
14DE5E:  ADD             R0, SP, #0x128+var_124
14DE60:  BL              sub_17D542
14DE64:  ADD             SP, SP, #0x120
14DE66:  POP             {R4,R5,R7,PC}
