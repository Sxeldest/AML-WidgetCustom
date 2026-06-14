; =========================================================
; Game Engine Function: sub_F5B3C
; Address            : 0xF5B3C - 0xF5C86
; =========================================================

F5B3C:  PUSH            {R4-R7,LR}
F5B3E:  ADD             R7, SP, #0xC
F5B40:  PUSH.W          {R8,R9,R11}
F5B44:  MOV             R4, R0
F5B46:  LDR             R0, =(off_2400BC - 0xF5B4C)
F5B48:  ADD             R0, PC; off_2400BC
F5B4A:  LDR             R1, [R0]
F5B4C:  CBZ             R1, loc_F5B52
F5B4E:  MOV             R0, R4
F5B50:  BLX             R1
F5B52:  LDR             R0, =(off_23496C - 0xF5B58)
F5B54:  ADD             R0, PC; off_23496C
F5B56:  LDR             R6, [R0]; dword_23DEF4
F5B58:  LDR             R0, [R6]
F5B5A:  CMP             R0, #0
F5B5C:  BEQ             loc_F5C1E
F5B5E:  LDR.W           R0, [R0,#0x3B0]
F5B62:  LDR             R0, [R0]
F5B64:  CMP             R0, #0
F5B66:  BEQ             loc_F5C1E
F5B68:  MOVW            R1, #0x13BC
F5B6C:  LDR             R0, [R0,R1]
F5B6E:  CMP             R0, #0
F5B70:  BEQ             loc_F5C1E
F5B72:  LDR.W           R9, [R0,#0x1C]
F5B76:  CMP.W           R9, #0
F5B7A:  BEQ             loc_F5C1E
F5B7C:  LDR             R0, =(byte_2400C8 - 0xF5B82)
F5B7E:  ADD             R0, PC; byte_2400C8
F5B80:  LDRB            R0, [R0]
F5B82:  CBZ             R0, loc_F5BFC
F5B84:  LDRH            R5, [R4,#0xE]
F5B86:  MOV             R8, #0x951FD0
F5B8E:  CMP             R5, #0x35 ; '5'
F5B90:  IT NE
F5B92:  CMPNE           R5, #4
F5B94:  BNE             loc_F5BBC
F5B96:  LDR             R0, =(off_23494C - 0xF5BA0)
F5B98:  MOV.W           R2, #0xFFFFFFFF
F5B9C:  ADD             R0, PC; off_23494C
F5B9E:  LDR             R0, [R0]; dword_23DF24
F5BA0:  LDR             R1, [R0]
F5BA2:  ADD             R1, R8
F5BA4:  STR             R2, [R1,#0x50]
F5BA6:  LDR             R1, [R0]
F5BA8:  ADD             R1, R8
F5BAA:  STR             R2, [R1,#0x54]
F5BAC:  MOVS            R1, #0
F5BAE:  LDR             R0, [R0]
F5BB0:  STRB.W          R1, [R0,R8]
F5BB4:  MOV             R0, R4
F5BB6:  MOV             R1, R9
F5BB8:  BL              sub_F5CEC
F5BBC:  BIC.W           R0, R5, #2
F5BC0:  CMP             R0, #0x10
F5BC2:  BNE             loc_F5BFC
F5BC4:  LDR             R0, [R6]
F5BC6:  LDR.W           R0, [R0,#0x3B0]
F5BCA:  LDR             R5, [R0,#4]
F5BCC:  MOV             R0, R9
F5BCE:  BL              sub_104326
F5BD2:  CBZ             R0, loc_F5C3E
F5BD4:  MOVW            R1, #0xEA60
F5BD8:  ADDS            R2, R5, R1
F5BDA:  LDRD.W          R1, R2, [R2]
F5BDE:  CMP             R1, R2
F5BE0:  BEQ             loc_F5C24
F5BE2:  MOV.W           R12, #0x1F40
F5BE6:  LDR             R3, [R1]
F5BE8:  ADD.W           R3, R5, R3,LSL#2
F5BEC:  LDR.W           R3, [R3,R12]
F5BF0:  CMP             R3, R0
F5BF2:  BEQ             loc_F5C24
F5BF4:  ADDS            R1, #4
F5BF6:  CMP             R1, R2
F5BF8:  BNE             loc_F5BE6
F5BFA:  B               loc_F5C3E
F5BFC:  LDR             R0, =(dword_237994 - 0xF5C02)
F5BFE:  ADD             R0, PC; dword_237994
F5C00:  LDR             R1, [R0]
F5C02:  ADDS            R2, R1, #1
F5C04:  BEQ             loc_F5C1E
F5C06:  LDR             R2, =(off_23494C - 0xF5C14)
F5C08:  MOV             R3, #0x6E04DC
F5C10:  ADD             R2, PC; off_23494C
F5C12:  LDR             R2, [R2]; dword_23DF24
F5C14:  LDR             R2, [R2]
F5C16:  STR             R1, [R2,R3]
F5C18:  MOV.W           R1, #0xFFFFFFFF
F5C1C:  STR             R1, [R0]
F5C1E:  POP.W           {R8,R9,R11}
F5C22:  POP             {R4-R7,PC}
F5C24:  CMP             R1, R2
F5C26:  BEQ             loc_F5C3E
F5C28:  LDR             R0, [R1]
F5C2A:  UXTH            R1, R0
F5C2C:  LSRS            R0, R1, #4
F5C2E:  CMP             R0, #0x7C ; '|'
F5C30:  BHI             loc_F5C3E
F5C32:  LDR             R0, [R6]
F5C34:  LDR.W           R0, [R0,#0x3B0]
F5C38:  LDR             R0, [R0,#4]
F5C3A:  BL              sub_F2396
F5C3E:  LDR             R0, =(off_23494C - 0xF5C48)
F5C40:  MOV.W           R2, #0xFFFFFFFF
F5C44:  ADD             R0, PC; off_23494C
F5C46:  LDR             R0, [R0]; dword_23DF24
F5C48:  LDR             R1, [R0]
F5C4A:  ADD             R1, R8
F5C4C:  STR             R2, [R1,#0x50]
F5C4E:  LDR             R1, [R0]
F5C50:  ADD             R1, R8
F5C52:  STR             R2, [R1,#0x54]
F5C54:  MOVS            R2, #0
F5C56:  LDR             R3, [R0]
F5C58:  LDR             R1, =(dword_237994 - 0xF5C5E)
F5C5A:  ADD             R1, PC; dword_237994
F5C5C:  STRB.W          R2, [R3,R8]
F5C60:  LDR             R3, [R1]
F5C62:  ADDS            R3, #1
F5C64:  BNE             loc_F5C76
F5C66:  LDR             R0, [R0]
F5C68:  MOV             R3, #0x6E04DC
F5C70:  LDR             R6, [R0,R3]
F5C72:  STR             R6, [R1]
F5C74:  STR             R2, [R0,R3]
F5C76:  MOV             R0, R4
F5C78:  MOV             R1, R9
F5C7A:  POP.W           {R8,R9,R11}
F5C7E:  POP.W           {R4-R7,LR}
F5C82:  B.W             sub_F5D68
