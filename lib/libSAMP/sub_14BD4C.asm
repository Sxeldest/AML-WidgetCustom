; =========================================================
; Game Engine Function: sub_14BD4C
; Address            : 0x14BD4C - 0x14BDEE
; =========================================================

14BD4C:  PUSH            {R4-R7,LR}
14BD4E:  ADD             R7, SP, #0xC
14BD50:  PUSH.W          {R11}
14BD54:  SUB             SP, SP, #0x138; float
14BD56:  LDRD.W          R1, R0, [R0]; src
14BD5A:  MOVS            R3, #0
14BD5C:  ASRS            R2, R0, #0x1F
14BD5E:  ADD.W           R0, R0, R2,LSR#29
14BD62:  MOVS            R2, #1
14BD64:  ADD.W           R2, R2, R0,ASR#3; size
14BD68:  ADD             R0, SP, #0x148+var_13C; int
14BD6A:  BL              sub_17D4F2
14BD6E:  LDR             R0, =(off_23496C - 0x14BD74)
14BD70:  ADD             R0, PC; off_23496C
14BD72:  LDR             R0, [R0]; dword_23DEF4
14BD74:  LDR             R0, [R0]
14BD76:  LDR.W           R0, [R0,#0x3B0]
14BD7A:  LDR             R6, [R0,#8]
14BD7C:  CBZ             R6, loc_14BDE0
14BD7E:  ADD             R0, SP, #0x148+var_13C; int
14BD80:  SUB.W           R1, R7, #-var_12; int
14BD84:  MOVS            R2, #0x10
14BD86:  MOVS            R3, #1
14BD88:  BL              sub_17D786
14BD8C:  ADD             R0, SP, #0x148+var_13C; int
14BD8E:  ADD             R1, SP, #0x148+var_18; int
14BD90:  MOVS            R2, #0x20 ; ' '
14BD92:  MOVS            R3, #1
14BD94:  BL              sub_17D786
14BD98:  ADD             R0, SP, #0x148+var_13C; int
14BD9A:  ADD             R1, SP, #0x148+var_1C; int
14BD9C:  MOVS            R2, #0x20 ; ' '
14BD9E:  MOVS            R3, #1
14BDA0:  BL              sub_17D786
14BDA4:  ADD             R0, SP, #0x148+var_13C; int
14BDA6:  ADD             R1, SP, #0x148+var_20; int
14BDA8:  MOVS            R2, #0x20 ; ' '
14BDAA:  MOVS            R3, #1
14BDAC:  BL              sub_17D786
14BDB0:  ADD             R0, SP, #0x148+var_13C; int
14BDB2:  ADD             R1, SP, #0x148+var_24; int
14BDB4:  MOVS            R2, #0x20 ; ' '
14BDB6:  MOVS            R3, #1
14BDB8:  BL              sub_17D786
14BDBC:  ADD             R0, SP, #0x148+var_13C; int
14BDBE:  ADD             R1, SP, #0x148+var_28; int
14BDC0:  MOVS            R2, #0x20 ; ' '
14BDC2:  MOVS            R3, #1
14BDC4:  BL              sub_17D786
14BDC8:  LDRH.W          R1, [R7,#var_12]; int
14BDCC:  LDR             R0, [SP,#0x148+var_20]
14BDCE:  LDRD.W          R3, R2, [SP,#0x148+var_1C]; int
14BDD2:  LDRD.W          R5, R4, [SP,#0x148+var_28]
14BDD6:  STMEA.W         SP, {R0,R4,R5}
14BDDA:  MOV             R0, R6; int
14BDDC:  BL              sub_13E766
14BDE0:  ADD             R0, SP, #0x148+var_13C
14BDE2:  BL              sub_17D542
14BDE6:  ADD             SP, SP, #0x138
14BDE8:  POP.W           {R11}
14BDEC:  POP             {R4-R7,PC}
