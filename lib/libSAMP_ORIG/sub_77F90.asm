; =========================================================
; Game Engine Function: sub_77F90
; Address            : 0x77F90 - 0x78052
; =========================================================

77F90:  PUSH            {R4-R7,LR}
77F92:  ADD             R7, SP, #0xC
77F94:  PUSH.W          {R8-R10}
77F98:  MOV             R8, R0
77F9A:  LDRB            R0, [R1]
77F9C:  LDR.W           R6, [R8,#4]!
77FA0:  LDRD.W          R10, R9, [R1,#4]
77FA4:  ANDS.W          R2, R0, #1
77FA8:  ITT EQ
77FAA:  ADDEQ.W         R9, R1, #1
77FAE:  MOVEQ.W         R10, R0,LSR#1
77FB2:  CMP             R6, #0
77FB4:  BEQ             loc_78040
77FB6:  MOV             R5, R8
77FB8:  B               loc_77FDC
77FBA:  MOVS            R0, #0
77FBC:  CMP             R10, R4
77FBE:  IT CC
77FC0:  MOVCC           R0, #1
77FC2:  CMP             R4, R10
77FC4:  IT CC
77FC6:  MOVCC.W         R0, #0xFFFFFFFF
77FCA:  CMP             R0, #0
77FCC:  MOV             R0, R6
77FCE:  IT MI
77FD0:  ADDMI           R0, #4
77FD2:  LDR             R0, [R0]
77FD4:  IT PL
77FD6:  MOVPL           R5, R6
77FD8:  MOV             R6, R0
77FDA:  CBZ             R0, loc_7800C
77FDC:  MOV             R1, R6
77FDE:  LDRB.W          R0, [R1,#0x10]!
77FE2:  LDR             R4, [R1,#4]
77FE4:  ANDS.W          R3, R0, #1
77FE8:  IT EQ
77FEA:  LSREQ           R4, R0, #1
77FEC:  CMP             R10, R4
77FEE:  MOV             R2, R4
77FF0:  IT CC
77FF2:  MOVCC           R2, R10; n
77FF4:  CMP             R2, #0
77FF6:  BEQ             loc_77FBA
77FF8:  LDR             R0, [R6,#0x18]
77FFA:  CMP             R3, #0
77FFC:  IT EQ
77FFE:  ADDEQ           R0, R1, #1; s1
78000:  MOV             R1, R9; s2
78002:  BLX             memcmp
78006:  CMP             R0, #0
78008:  BNE             loc_77FCA
7800A:  B               loc_77FBA
7800C:  CMP             R5, R8
7800E:  BEQ             loc_78040
78010:  MOV             R0, R5
78012:  MOV             R2, R10
78014:  LDRB.W          R1, [R0,#0x10]!
78018:  LDR             R4, [R0,#4]
7801A:  ANDS.W          R3, R1, #1
7801E:  IT EQ
78020:  LSREQ           R4, R1, #1
78022:  CMP             R4, R10
78024:  IT CC
78026:  MOVCC           R2, R4; n
78028:  CBZ             R2, loc_78044
7802A:  LDR             R1, [R5,#0x18]
7802C:  CMP             R3, #0
7802E:  IT EQ
78030:  ADDEQ           R1, R0, #1; s2
78032:  MOV             R0, R9; s1
78034:  BLX             memcmp
78038:  CBZ             R0, loc_78044
7803A:  CMP.W           R0, #0xFFFFFFFF
7803E:  BGT             loc_7804A
78040:  MOV             R5, R8
78042:  B               loc_7804A
78044:  CMP             R10, R4
78046:  IT CC
78048:  MOVCC           R5, R8
7804A:  MOV             R0, R5
7804C:  POP.W           {R8-R10}
78050:  POP             {R4-R7,PC}
