; =========================================================
; Game Engine Function: sub_148F74
; Address            : 0x148F74 - 0x149014
; =========================================================

148F74:  PUSH            {R7,LR}
148F76:  MOV             R7, SP
148F78:  CBZ             R1, loc_148FBE
148F7A:  CBZ             R2, loc_148FBE
148F7C:  MOVW            R2, #0x17B4
148F80:  ADDS            R3, R0, R2
148F82:  LDRD.W          R2, R12, [R3]
148F86:  CMP             R2, R12
148F88:  BEQ             loc_149004
148F8A:  LDRH.W          LR, [R2]
148F8E:  CMP.W           LR, #0x3EC
148F92:  BHI             loc_148FB6
148F94:  ADD.W           R3, R0, LR
148F98:  LDRB.W          R3, [R3,#0xFB4]
148F9C:  CBZ             R3, loc_148FB6
148F9E:  ADD.W           R3, R0, LR,LSL#2
148FA2:  LDR             R3, [R3,#4]
148FA4:  CBZ             R3, loc_148FB6
148FA6:  LDR             R3, [R3]
148FA8:  CBZ             R3, loc_148FB6
148FAA:  LDR.W           R3, [R3,#0x128]
148FAE:  CBZ             R3, loc_148FB6
148FB0:  LDR             R3, [R3,#0x5C]
148FB2:  CMP             R3, R1
148FB4:  BEQ             loc_149004
148FB6:  ADDS            R2, #4
148FB8:  CMP             R2, R12
148FBA:  BNE             loc_148F8A
148FBC:  B               loc_14900C
148FBE:  MOVW            R12, #0xF050
148FC2:  ADDW            R0, R0, #0xFB4
148FC6:  MOVS            R2, #0
148FC8:  MOVT            R12, #0xFFFF
148FCC:  LDRB            R3, [R0,R2]
148FCE:  CBZ             R3, loc_148FF2
148FD0:  ADD.W           R3, R0, R2,LSL#2
148FD4:  LDR.W           R3, [R3,R12]
148FD8:  CBZ             R3, loc_148FF2
148FDA:  LDR             R3, [R3]
148FDC:  CBZ             R3, loc_148FF2
148FDE:  LDR.W           LR, [R3,#0x128]
148FE2:  CMP.W           LR, #0
148FE6:  ITT NE
148FE8:  LDRNE.W         LR, [LR,#0x5C]
148FEC:  CMPNE.W         LR, #0
148FF0:  BNE             loc_148FFC
148FF2:  ADDS            R2, #1
148FF4:  CMP.W           R2, #0x3EC
148FF8:  BNE             loc_148FCC
148FFA:  B               loc_14900C
148FFC:  CMP             LR, R1
148FFE:  BNE             loc_148FF2
149000:  LDRH            R0, [R3,#0x14]
149002:  B               loc_149010
149004:  CMP             R2, R12
149006:  BEQ             loc_14900C
149008:  LDR             R0, [R2]
14900A:  B               loc_149010
14900C:  MOVW            R0, #0xFFFF
149010:  UXTH            R0, R0
149012:  POP             {R7,PC}
