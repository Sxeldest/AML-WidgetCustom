; =========================================================
; Game Engine Function: sub_7DB8C
; Address            : 0x7DB8C - 0x7DBD6
; =========================================================

7DB8C:  PUSH            {R4,R6,R7,LR}
7DB8E:  ADD             R7, SP, #8
7DB90:  SUB             SP, SP, #8
7DB92:  MOV             R4, R0
7DB94:  LDR             R0, =(off_114CC4 - 0x7DB9A)
7DB96:  ADD             R0, PC; off_114CC4
7DB98:  LDR             R1, [R0]; off_1ABEF8
7DB9A:  LDR             R0, [R4,#4]
7DB9C:  LDR             R1, [R1]
7DB9E:  BLX             R1
7DBA0:  LDR             R0, =(off_114CC8 - 0x7DBA6)
7DBA2:  ADD             R0, PC; off_114CC8
7DBA4:  LDR             R1, [R0]; off_1ABF50
7DBA6:  LDR             R0, [R4,#4]
7DBA8:  LDR             R1, [R1]
7DBAA:  MOVS            R2, #0
7DBAC:  MOVS            R3, #0
7DBAE:  STR             R2, [SP,#0x10+var_10]
7DBB0:  MOVS            R2, #0
7DBB2:  BLX             R1
7DBB4:  LDR             R0, [R4,#0x40]
7DBB6:  MOVW            R1, #0xFBC
7DBBA:  BLX             j_opus_decoder_ctl
7DBBE:  MOVW            R0, #0x25C4
7DBC2:  MOVS            R1, #0
7DBC4:  ADD             R0, R4
7DBC6:  STRB            R1, [R4]
7DBC8:  STRB            R1, [R0,#4]
7DBCA:  STR             R1, [R0]
7DBCC:  MOVW            R0, #0xFFFF
7DBD0:  STRH            R0, [R4,#8]
7DBD2:  ADD             SP, SP, #8
7DBD4:  POP             {R4,R6,R7,PC}
