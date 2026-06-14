; =========================================================
; Game Engine Function: sub_17DAF0
; Address            : 0x17DAF0 - 0x17DBB2
; =========================================================

17DAF0:  PUSH            {R4-R7,LR}
17DAF2:  ADD             R7, SP, #0xC
17DAF4:  PUSH.W          {R11}
17DAF8:  SUB             SP, SP, #0x10
17DAFA:  MOV             R4, R0
17DAFC:  LDR             R0, [R0]
17DAFE:  CMP             R0, #0
17DB00:  BEQ             loc_17DBAA
17DB02:  MOVS            R0, #0x10
17DB04:  STR             R0, [SP,#0x20+var_14]
17DB06:  MOVS            R0, #0x40 ; '@'; unsigned int
17DB08:  BLX             j__Znaj; operator new[](uint)
17DB0C:  MOVS            R5, #0
17DB0E:  STR             R5, [SP,#0x20+var_18]
17DB10:  STRD.W          R0, R5, [SP,#0x20+var_20]
17DB14:  MOV             R0, SP
17DB16:  MOV             R1, R4
17DB18:  BL              sub_17DBC4
17DB1C:  LDRD.W          R1, R2, [SP,#0x20+var_1C]
17DB20:  LDR             R0, [SP,#0x20+var_14]
17DB22:  CMP             R2, R1
17DB24:  SUB.W           R2, R2, R1
17DB28:  IT CC
17DB2A:  NEGCC           R5, R0
17DB2C:  CMP             R2, R5
17DB2E:  BEQ             loc_17DB84
17DB30:  MOV             R5, SP
17DB32:  ADDS            R1, #1
17DB34:  LDR             R2, [SP,#0x20+var_20]
17DB36:  SUBS            R3, R1, R0
17DB38:  IT NE
17DB3A:  MOVNE           R3, R1
17DB3C:  STR             R3, [SP,#0x20+var_1C]
17DB3E:  CMP             R3, #0
17DB40:  IT EQ
17DB42:  MOVEQ           R3, R0
17DB44:  ADD.W           R0, R2, R3,LSL#2
17DB48:  LDR.W           R6, [R0,#-4]
17DB4C:  MOV             R1, R6
17DB4E:  LDR.W           R0, [R1,#8]!
17DB52:  CBZ             R0, loc_17DB5A
17DB54:  MOV             R0, R5
17DB56:  BL              sub_17DBC4
17DB5A:  MOV             R1, R6
17DB5C:  LDR.W           R0, [R1,#0xC]!
17DB60:  CBZ             R0, loc_17DB68
17DB62:  MOV             R0, R5
17DB64:  BL              sub_17DBC4
17DB68:  MOV             R0, R6; void *
17DB6A:  BLX             j__ZdlPv; operator delete(void *)
17DB6E:  LDRD.W          R1, R2, [SP,#0x20+var_1C]
17DB72:  MOVS            R3, #0
17DB74:  LDR             R0, [SP,#0x20+var_14]
17DB76:  CMP             R2, R1
17DB78:  SUB.W           R2, R2, R1
17DB7C:  IT CC
17DB7E:  NEGCC           R3, R0
17DB80:  CMP             R2, R3
17DB82:  BNE             loc_17DB32
17DB84:  ADDS            R5, R4, #4
17DB86:  MOVS            R6, #0
17DB88:  LDR.W           R0, [R5,R6,LSL#3]; void *
17DB8C:  CBZ             R0, loc_17DB92
17DB8E:  BLX             j__ZdaPv; operator delete[](void *)
17DB92:  ADDS            R6, #1
17DB94:  CMP.W           R6, #0x100
17DB98:  BNE             loc_17DB88
17DB9A:  LDR             R0, [SP,#0x20+var_14]
17DB9C:  MOVS            R1, #0
17DB9E:  STR             R1, [R4]
17DBA0:  CBZ             R0, loc_17DBAA
17DBA2:  LDR             R0, [SP,#0x20+var_20]; void *
17DBA4:  CBZ             R0, loc_17DBAA
17DBA6:  BLX             j__ZdaPv; operator delete[](void *)
17DBAA:  ADD             SP, SP, #0x10
17DBAC:  POP.W           {R11}
17DBB0:  POP             {R4-R7,PC}
