; =========================================================
; Game Engine Function: aluHandleDisconnect
; Address            : 0x24BB58 - 0x24BBC4
; =========================================================

24BB58:  PUSH            {R4,R5,R7,LR}
24BB5A:  ADD             R7, SP, #8
24BB5C:  MOV             R1, #0x161A8
24BB64:  LDR.W           LR, [R0,R1]
24BB68:  MOVS            R1, #0
24BB6A:  STRB            R1, [R0,#4]
24BB6C:  CMP.W           LR, #0
24BB70:  IT EQ
24BB72:  POPEQ           {R4,R5,R7,PC}
24BB74:  MOVW            R0, #0x1012
24BB78:  MOVW            R12, #0x1014
24BB7C:  LDR.W           R2, [LR,#0x74]
24BB80:  CBZ             R2, loc_24BBB4
24BB82:  LDR.W           R3, [LR,#0x70]
24BB86:  LSLS            R2, R2, #2
24BB88:  LDR             R4, [R3]
24BB8A:  LDR.W           R5, [R4,#0x80]
24BB8E:  CMP             R5, R0
24BB90:  BNE             loc_24BBAC
24BB92:  STR.W           R12, [R4,#0x80]
24BB96:  LDR             R4, [R3]
24BB98:  LDR.W           R5, [R4,#0x94]
24BB9C:  STR.W           R5, [R4,#0x98]
24BBA0:  LDR             R4, [R3]
24BBA2:  STR.W           R1, [R4,#0x88]
24BBA6:  LDR             R4, [R3]
24BBA8:  STR.W           R1, [R4,#0x8C]
24BBAC:  SUBS            R2, #4
24BBAE:  ADD.W           R3, R3, #4
24BBB2:  BNE             loc_24BB88
24BBB4:  LDR.W           R2, [LR,#0x90]
24BBB8:  STR.W           R1, [LR,#0x74]
24BBBC:  CMP             R2, #0
24BBBE:  MOV             LR, R2
24BBC0:  BNE             loc_24BB7C
24BBC2:  POP             {R4,R5,R7,PC}
