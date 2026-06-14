; =========================================================
; Game Engine Function: sub_1680DC
; Address            : 0x1680DC - 0x168204
; =========================================================

1680DC:  PUSH            {R4,R6,R7,LR}
1680DE:  ADD             R7, SP, #8
1680E0:  SUB             SP, SP, #8
1680E2:  LDR             R0, =(dword_381B58 - 0x1680EC)
1680E4:  MOVW            R2, #0x19B8
1680E8:  ADD             R0, PC; dword_381B58
1680EA:  LDR             R1, [R0]
1680EC:  ADDS            R4, R1, R2
1680EE:  LDR             R0, [R1,R2]
1680F0:  CBZ             R0, loc_168150
1680F2:  LDR             R2, [R4,#0x18]
1680F4:  LDR             R3, [R4,#0x44]
1680F6:  STR             R2, [R4,#0x1C]
1680F8:  CMP             R3, R2
1680FA:  ITT EQ
1680FC:  MOVEQ           R3, #1
1680FE:  STRBEQ.W        R3, [R4,#0x48]
168102:  LDRB.W          R3, [R1,#0xE8]
168106:  CBZ             R3, loc_168128
168108:  VLDR            S4, =-256000.0
16810C:  VLDR            S0, [R1,#0xE0]
168110:  VCMP.F32        S0, S4
168114:  VMRS            APSR_nzcv, FPSCR
168118:  ITTT GE
16811A:  VLDRGE          S2, [R1,#0xE4]
16811E:  VCMPGE.F32      S2, S4
168122:  VMRSGE          APSR_nzcv, FPSCR
168126:  BGE             loc_16819A
168128:  CMP             R2, #0
16812A:  IT NE
16812C:  MOVNE           R2, #1
16812E:  STRB.W          R2, [R4,#0x24]
168132:  ITTT NE
168134:  MOVNE           R0, #0
168136:  STRHNE          R0, [R4,#0x26]
168138:  STRNE           R0, [R4,#0x20]
16813A:  MOVS            R0, #0
16813C:  STRD.W          R0, R0, [R4,#0x2C]
168140:  STR             R0, [R4,#0x18]
168142:  STR             R0, [R4,#0x3C]
168144:  STRB.W          R0, [R4,#0x25]
168148:  STRB.W          R0, [R4,#0x28]
16814C:  STR             R0, [R4]
16814E:  B               loc_168200
168150:  LDR             R0, [R4,#0x3C]
168152:  CMP             R0, #0
168154:  BEQ             loc_168200
168156:  LDR             R0, [R0,#0x50]
168158:  LDR             R2, [R4,#0x18]
16815A:  CMP             R0, R2
16815C:  BNE             loc_168200
16815E:  LDR             R2, [R4,#0x44]
168160:  STR             R0, [R4,#0x1C]
168162:  CMP             R2, R0
168164:  ITT EQ
168166:  MOVEQ           R2, #1
168168:  STRBEQ.W        R2, [R4,#0x48]
16816C:  LDRB.W          R1, [R1,#0xE8]
168170:  CMP             R1, #0
168172:  BNE             loc_168200
168174:  CMP             R0, #0
168176:  IT NE
168178:  MOVNE           R0, #1
16817A:  STRB.W          R0, [R4,#0x24]
16817E:  ITTT NE
168180:  MOVNE           R0, #0
168182:  STRHNE          R0, [R4,#0x26]
168184:  STRNE           R0, [R4,#0x20]
168186:  MOVS            R0, #0
168188:  STRD.W          R0, R0, [R4,#0x2C]
16818C:  STR             R0, [R4,#0x18]
16818E:  STR             R0, [R4,#0x3C]
168190:  STRB.W          R0, [R4,#0x25]
168194:  STRB.W          R0, [R4,#0x28]
168198:  B               loc_168200
16819A:  VLDR            S4, [R4,#0x34]
16819E:  VLDR            S6, [R4,#0x38]
1681A2:  VSUB.F32        S0, S0, S4
1681A6:  LDR.W           R2, [R0,#0x2FC]
1681AA:  VSUB.F32        S2, S2, S6
1681AE:  VLDR            S4, [R2,#0xC]
1681B2:  VCMP.F32        S4, S0
1681B6:  VSTR            S0, [SP,#0x10+var_10]
1681BA:  VMRS            APSR_nzcv, FPSCR
1681BE:  VSTR            S2, [SP,#0x10+var_C]
1681C2:  BNE             loc_1681D2
1681C4:  VLDR            S0, [R2,#0x10]
1681C8:  VCMP.F32        S0, S2
1681CC:  VMRS            APSR_nzcv, FPSCR
1681D0:  BEQ             loc_1681FC
1681D2:  LDRB            R0, [R2,#9]
1681D4:  LSLS            R0, R0, #0x1F
1681D6:  BNE             loc_1681F0
1681D8:  MOVW            R0, #0x2CF8
1681DC:  ADD             R0, R1
1681DE:  VLDR            S0, [R0]
1681E2:  VCMP.F32        S0, #0.0
1681E6:  VMRS            APSR_nzcv, FPSCR
1681EA:  ITT LS
1681EC:  LDRLS           R1, [R1,#0x1C]
1681EE:  STRLS           R1, [R0]
1681F0:  MOV             R0, R2
1681F2:  MOV             R1, SP
1681F4:  MOVS            R2, #1
1681F6:  BL              sub_16820C
1681FA:  LDR             R0, [R4]
1681FC:  BL              sub_168010
168200:  ADD             SP, SP, #8
168202:  POP             {R4,R6,R7,PC}
