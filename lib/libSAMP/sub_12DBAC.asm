; =========================================================
; Game Engine Function: sub_12DBAC
; Address            : 0x12DBAC - 0x12DC4A
; =========================================================

12DBAC:  PUSH            {R4-R7,LR}
12DBAE:  ADD             R7, SP, #0xC
12DBB0:  PUSH.W          {R8-R11}
12DBB4:  SUB             SP, SP, #4
12DBB6:  MOV             R11, R0
12DBB8:  LDR             R0, =(off_23496C - 0x12DBBE)
12DBBA:  ADD             R0, PC; off_23496C
12DBBC:  LDR.W           R10, [R0]; dword_23DEF4
12DBC0:  LDR.W           R0, [R10]
12DBC4:  CBZ             R0, loc_12DC36
12DBC6:  MOV             R6, R2
12DBC8:  CBZ             R2, loc_12DC36
12DBCA:  MOV             R4, R1
12DBCC:  MOV             R0, R1; s
12DBCE:  MOVS            R1, #0x20 ; ' '; c
12DBD0:  MOV             R2, R6; n
12DBD2:  BLX             memchr
12DBD6:  SUBS            R5, R0, R4
12DBD8:  CMP             R0, #0
12DBDA:  MOV.W           R9, #0
12DBDE:  IT EQ
12DBE0:  MOVEQ.W         R5, #0xFFFFFFFF
12DBE4:  ADDS.W          R8, R5, #1
12DBE8:  ITT CC
12DBEA:  SUBCC.W         R9, R6, R8
12DBEE:  MOVCC           R6, R5
12DBF0:  MOV             R0, SP
12DBF2:  MOV             R1, R4
12DBF4:  MOV             R2, R6
12DBF6:  BL              sub_12DC50
12DBFA:  LDR.W           R2, [R11,#0x58]!
12DBFE:  MOVS            R1, #0
12DC00:  CMP             R8, R5
12DC02:  IT CS
12DC04:  ADDCS.W         R1, R4, R8
12DC08:  CBZ             R2, loc_12DC2C
12DC0A:  MOV             R6, R11
12DC0C:  LDR             R3, [R2,#0x10]
12DC0E:  CMP             R3, R0
12DC10:  MOV             R3, R2
12DC12:  IT CC
12DC14:  ADDCC           R3, #4
12DC16:  LDR             R3, [R3]
12DC18:  IT CS
12DC1A:  MOVCS           R6, R2
12DC1C:  CMP             R3, #0
12DC1E:  MOV             R2, R3
12DC20:  BNE             loc_12DC0C
12DC22:  CMP             R6, R11
12DC24:  BEQ             loc_12DC2C
12DC26:  LDR             R2, [R6,#0x10]
12DC28:  CMP             R0, R2
12DC2A:  BCS             loc_12DC3E
12DC2C:  LDR.W           R0, [R10]
12DC30:  MOV             R1, R4
12DC32:  BL              sub_144460
12DC36:  ADD             SP, SP, #4
12DC38:  POP.W           {R8-R11}
12DC3C:  POP             {R4-R7,PC}
12DC3E:  ADD.W           R0, R6, #0x14
12DC42:  MOV             R2, R9
12DC44:  BL              sub_12DCAA
12DC48:  B               loc_12DC36
