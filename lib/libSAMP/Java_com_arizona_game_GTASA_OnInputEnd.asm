; =========================================================
; Game Engine Function: Java_com_arizona_game_GTASA_OnInputEnd
; Address            : 0x17CC88 - 0x17CD12
; =========================================================

17CC88:  PUSH            {R4,R5,R7,LR}
17CC8A:  ADD             R7, SP, #8
17CC8C:  SUB             SP, SP, #0x20
17CC8E:  LDR             R1, =(off_234A24 - 0x17CC94)
17CC90:  ADD             R1, PC; off_234A24
17CC92:  LDR             R4, [R1]; dword_23DEEC
17CC94:  LDR             R1, [R4]
17CC96:  CBZ             R1, loc_17CD0E
17CC98:  LDR             R1, =(dword_381BF4 - 0x17CC9E)
17CC9A:  ADD             R1, PC; dword_381BF4
17CC9C:  LDR             R1, [R1]
17CC9E:  LDRB.W          R3, [R1,#0x85]
17CCA2:  CBZ             R3, loc_17CCA8
17CCA4:  CBNZ            R2, loc_17CCB0
17CCA6:  B               loc_17CD0E
17CCA8:  CBZ             R2, loc_17CD0E
17CCAA:  LDRB.W          R1, [R1,#0x84]
17CCAE:  CBZ             R1, loc_17CD0E
17CCB0:  LDR             R1, [R0]
17CCB2:  SUB.W           R12, R7, #-var_9
17CCB6:  LDR.W           R3, [R1,#0x2A4]
17CCBA:  MOVS            R1, #1
17CCBC:  STRB.W          R1, [R7,#var_9]
17CCC0:  MOV             R1, R2
17CCC2:  MOV             R2, R12
17CCC4:  BLX             R3
17CCC6:  MOV             R1, R0; s
17CCC8:  ADD             R0, SP, #0x28+var_18; int
17CCCA:  BL              sub_DC6DC
17CCCE:  LDR             R3, [R4]
17CCD0:  LDRB.W          R4, [SP,#0x28+var_18]
17CCD4:  LDRD.W          R2, R1, [SP,#0x28+var_14]
17CCD8:  ANDS.W          R5, R4, #1
17CCDC:  LDR             R5, [R3,#0x58]
17CCDE:  ITT EQ
17CCE0:  ADDEQ           R1, R0, #1; int
17CCE2:  LSREQ           R2, R4, #1; n
17CCE4:  ADD             R0, SP, #0x28+var_24; int
17CCE6:  BL              sub_164DB4
17CCEA:  ADD             R1, SP, #0x28+var_24
17CCEC:  MOV             R0, R5
17CCEE:  BL              sub_12F968
17CCF2:  LDRB.W          R0, [SP,#0x28+var_24]
17CCF6:  LSLS            R0, R0, #0x1F
17CCF8:  ITT NE
17CCFA:  LDRNE           R0, [SP,#0x28+var_1C]; void *
17CCFC:  BLXNE           j__ZdlPv; operator delete(void *)
17CD00:  LDRB.W          R0, [SP,#0x28+var_18]
17CD04:  LSLS            R0, R0, #0x1F
17CD06:  ITT NE
17CD08:  LDRNE           R0, [SP,#0x28+var_10]; void *
17CD0A:  BLXNE           j__ZdlPv; operator delete(void *)
17CD0E:  ADD             SP, SP, #0x20 ; ' '
17CD10:  POP             {R4,R5,R7,PC}
