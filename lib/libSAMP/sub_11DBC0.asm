; =========================================================
; Game Engine Function: sub_11DBC0
; Address            : 0x11DBC0 - 0x11DBFC
; =========================================================

11DBC0:  PUSH            {R7,LR}
11DBC2:  MOV             R7, SP
11DBC4:  CBZ             R3, loc_11DBDA
11DBC6:  LDR.W           R12, [R7,#8+arg_0]
11DBCA:  CMP.W           R12, #0
11DBCE:  ITT NE
11DBD0:  LDRNE.W         LR, [R3,#0x14]
11DBD4:  CMPNE.W         LR, #0
11DBD8:  BNE             loc_11DBDE
11DBDA:  MOVS            R0, #0
11DBDC:  POP             {R7,PC}
11DBDE:  LDRB.W          LR, [R12,#0x10]
11DBE2:  MOVS.W          LR, LR,LSL#31
11DBE6:  BNE             loc_11DBDA
11DBE8:  LDR.W           LR, [R0]
11DBEC:  MOV             R0, R1
11DBEE:  MOV             R1, R2
11DBF0:  MOV             R2, R3
11DBF2:  MOV             R3, R12
11DBF4:  MOV             R12, LR
11DBF6:  POP.W           {R7,LR}
11DBFA:  BX              R12
