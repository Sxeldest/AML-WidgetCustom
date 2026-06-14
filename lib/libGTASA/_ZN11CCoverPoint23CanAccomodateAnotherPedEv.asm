; =========================================================
; Game Engine Function: _ZN11CCoverPoint23CanAccomodateAnotherPedEv
; Address            : 0x4D6110 - 0x4D6140
; =========================================================

4D6110:  LDRSB.W         R1, [R0]
4D6114:  CMP             R1, #0
4D6116:  ITT EQ
4D6118:  MOVEQ           R0, #0
4D611A:  BXEQ            LR
4D611C:  CMP             R1, #2
4D611E:  BNE             loc_4D6134
4D6120:  LDR             R1, [R0,#0x14]
4D6122:  CMP             R1, #0
4D6124:  ITT EQ
4D6126:  MOVEQ           R0, #1
4D6128:  BXEQ            LR
4D612A:  LDR             R0, [R0,#0x18]
4D612C:  CMP             R0, #0
4D612E:  IT NE
4D6130:  MOVNE           R0, #1
4D6132:  BX              LR
4D6134:  LDR             R1, [R0,#0x14]
4D6136:  MOVS            R0, #0
4D6138:  CMP             R1, #0
4D613A:  IT EQ
4D613C:  MOVEQ           R0, #1
4D613E:  BX              LR
