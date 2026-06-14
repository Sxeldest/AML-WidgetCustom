; =========================================================
; Game Engine Function: sub_14BB64
; Address            : 0x14BB64 - 0x14BC68
; =========================================================

14BB64:  PUSH            {R4,R5,R7,LR}
14BB66:  ADD             R7, SP, #8
14BB68:  SUB             SP, SP, #0x138
14BB6A:  LDRD.W          R1, R0, [R0]; src
14BB6E:  MOVS            R3, #0
14BB70:  ASRS            R2, R0, #0x1F
14BB72:  ADD.W           R0, R0, R2,LSR#29
14BB76:  MOVS            R2, #1
14BB78:  ADD.W           R2, R2, R0,ASR#3; size
14BB7C:  ADD             R0, SP, #0x140+var_13C; int
14BB7E:  BL              sub_17D4F2
14BB82:  LDR             R1, [SP,#0x140+var_13C]
14BB84:  LDR             R0, [SP,#0x140+var_134]
14BB86:  CMP             R0, R1
14BB88:  BGE             loc_14BBA0
14BB8A:  LDR             R1, [SP,#0x140+var_130]
14BB8C:  ASRS            R2, R0, #3
14BB8E:  LDRB            R1, [R1,R2]
14BB90:  ADDS            R2, R0, #1
14BB92:  AND.W           R0, R0, #7
14BB96:  STR             R2, [SP,#0x140+var_134]
14BB98:  LSL.W           R0, R1, R0
14BB9C:  UXTB            R0, R0
14BB9E:  LSRS            R5, R0, #7
14BBA0:  ADD             R4, SP, #0x140+var_14
14BBA2:  ADD             R0, SP, #0x140+var_13C; int
14BBA4:  MOVS            R2, #0x20 ; ' '
14BBA6:  MOVS            R3, #1
14BBA8:  MOV             R1, R4; int
14BBAA:  BL              sub_17D786
14BBAE:  ADDS            R1, R4, #4; int
14BBB0:  ADD             R0, SP, #0x140+var_13C; int
14BBB2:  MOVS            R2, #0x20 ; ' '
14BBB4:  MOVS            R3, #1
14BBB6:  BL              sub_17D786
14BBBA:  ADD.W           R1, R4, #8; int
14BBBE:  ADD             R0, SP, #0x140+var_13C; int
14BBC0:  MOVS            R2, #0x20 ; ' '
14BBC2:  MOVS            R3, #1
14BBC4:  BL              sub_17D786
14BBC8:  ADD             R4, SP, #0x140+var_20
14BBCA:  ADD             R0, SP, #0x140+var_13C; int
14BBCC:  MOVS            R2, #0x20 ; ' '
14BBCE:  MOVS            R3, #1
14BBD0:  MOV             R1, R4; int
14BBD2:  BL              sub_17D786
14BBD6:  ADDS            R1, R4, #4; int
14BBD8:  ADD             R0, SP, #0x140+var_13C; int
14BBDA:  MOVS            R2, #0x20 ; ' '
14BBDC:  MOVS            R3, #1
14BBDE:  BL              sub_17D786
14BBE2:  ADD.W           R1, R4, #8; int
14BBE6:  ADD             R0, SP, #0x140+var_13C; int
14BBE8:  MOVS            R2, #0x20 ; ' '
14BBEA:  MOVS            R3, #1
14BBEC:  BL              sub_17D786
14BBF0:  ADD             R0, SP, #0x140+var_13C; int
14BBF2:  ADD             R1, SP, #0x140+var_24; int
14BBF4:  MOVS            R2, #0x20 ; ' '
14BBF6:  MOVS            R3, #1
14BBF8:  BL              sub_17D786
14BBFC:  ADD             R0, SP, #0x140+var_13C; int
14BBFE:  SUB.W           R1, R7, #-var_25; int
14BC02:  MOVS            R2, #8
14BC04:  MOVS            R3, #1
14BC06:  BL              sub_17D786
14BC0A:  LDRB.W          R2, [R7,#var_25]
14BC0E:  SUBS            R0, R2, #3
14BC10:  UXTB            R0, R0
14BC12:  CMP             R0, #0xFD
14BC14:  ITT LS
14BC16:  MOVLS           R2, #2
14BC18:  STRBLS.W        R2, [R7,#var_25]
14BC1C:  LDR             R3, [SP,#0x140+var_24]
14BC1E:  CMP             R3, #1
14BC20:  BLT             loc_14BC5E
14BC22:  LDR             R0, =(off_23496C - 0x14BC2C)
14BC24:  MOVW            R4, #0x13BC
14BC28:  ADD             R0, PC; off_23496C
14BC2A:  LDR             R0, [R0]; dword_23DEF4
14BC2C:  LDR             R0, [R0]
14BC2E:  LDR             R1, =(off_234970 - 0x14BC34)
14BC30:  ADD             R1, PC; off_234970
14BC32:  LDR.W           R0, [R0,#0x3B0]
14BC36:  LDR             R1, [R1]; dword_23DEF0
14BC38:  LDR             R0, [R0]
14BC3A:  LDR             R1, [R1]
14BC3C:  LDR             R4, [R0,R4]
14BC3E:  LDR             R0, [R1,#4]
14BC40:  MOVS            R1, #1
14BC42:  STRB            R1, [R4,#8]
14BC44:  LSLS            R1, R5, #0x18
14BC46:  BEQ             loc_14BC54
14BC48:  STR             R2, [SP,#0x140+var_140]
14BC4A:  ADD             R1, SP, #0x140+var_14
14BC4C:  ADD             R2, SP, #0x140+var_20
14BC4E:  BL              sub_F871C
14BC52:  B               loc_14BC5E
14BC54:  STR             R2, [SP,#0x140+var_140]
14BC56:  ADD             R1, SP, #0x140+var_14
14BC58:  ADD             R2, SP, #0x140+var_20
14BC5A:  BL              sub_F87A8
14BC5E:  ADD             R0, SP, #0x140+var_13C
14BC60:  BL              sub_17D542
14BC64:  ADD             SP, SP, #0x138
14BC66:  POP             {R4,R5,R7,PC}
