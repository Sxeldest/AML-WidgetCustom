; =========================================================
; Game Engine Function: sub_18CC74
; Address            : 0x18CC74 - 0x18CCDC
; =========================================================

18CC74:  PUSH            {R4,R5,R7,LR}
18CC76:  ADD             R7, SP, #8
18CC78:  SUB.W           SP, SP, #0x250
18CC7C:  MOVS            R0, #2
18CC7E:  MOV             R4, R3
18CC80:  STRH.W          R0, [SP,#0x258+var_248]
18CC84:  MOVS            R0, #0x10
18CC86:  STR             R0, [SP,#0x258+var_24C]
18CC88:  ADDS            R0, R1, #1
18CC8A:  BEQ             loc_18CCCC
18CC8C:  ADD             R0, SP, #0x258+var_24C
18CC8E:  MOV             R5, R2
18CC90:  ADD             R2, SP, #0x258+var_248
18CC92:  MOVS            R3, #0; flags
18CC94:  STRD.W          R2, R0, [SP,#0x258+addr]; addr
18CC98:  ADD             R2, SP, #0x258+buf
18CC9A:  MOV             R0, R1; fd
18CC9C:  MOV             R1, R2; buf
18CC9E:  MOV.W           R2, #0x230; n
18CCA2:  BLX             recvfrom
18CCA6:  MOV             R3, R0
18CCA8:  CMP             R0, #0
18CCAA:  BGT             loc_18CCB0
18CCAC:  ADDS            R0, R3, #1
18CCAE:  BNE             loc_18CCC8
18CCB0:  CBZ             R3, loc_18CCCC
18CCB2:  ADDS            R0, R3, #1
18CCB4:  BEQ             loc_18CCD8
18CCB6:  LDRH.W          R1, [SP,#0x258+var_248.sa_data]
18CCBA:  ADD             R2, SP, #0x258+buf
18CCBC:  LDR             R0, [SP,#0x258+var_248.sa_data+2]
18CCBE:  REV             R1, R1
18CCC0:  STR             R5, [SP,#0x258+addr]
18CCC2:  LSRS            R1, R1, #0x10
18CCC4:  BL              sub_183004
18CCC8:  MOVS            R0, #1
18CCCA:  B               loc_18CCD2
18CCCC:  MOV.W           R0, #0xFFFFFFFF
18CCD0:  STR             R0, [R4]
18CCD2:  ADD.W           SP, SP, #0x250
18CCD6:  POP             {R4,R5,R7,PC}
18CCD8:  MOVS            R0, #0
18CCDA:  B               loc_18CCD0
