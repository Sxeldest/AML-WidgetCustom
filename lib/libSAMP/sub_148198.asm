; =========================================================
; Game Engine Function: sub_148198
; Address            : 0x148198 - 0x148262
; =========================================================

148198:  PUSH            {R4,R6,R7,LR}
14819A:  ADD             R7, SP, #8
14819C:  MOV             R4, R0
14819E:  LDRB.W          R0, [R0,#0x34]
1481A2:  CMP             R0, #0
1481A4:  BEQ             loc_148234
1481A6:  LDR             R0, [R4]
1481A8:  CMP             R0, #1
1481AA:  BEQ             loc_1481F6
1481AC:  CMP             R0, #2
1481AE:  BNE             loc_148234
1481B0:  LDRH            R0, [R4,#8]
1481B2:  CMP.W           R0, #0x3E8
1481B6:  BHI             loc_148234
1481B8:  LDR             R1, =(off_23496C - 0x1481BE)
1481BA:  ADD             R1, PC; off_23496C
1481BC:  LDR             R1, [R1]; dword_23DEF4
1481BE:  LDR             R1, [R1]
1481C0:  LDR.W           R1, [R1,#0x3B0]
1481C4:  LDR             R1, [R1,#0x10]
1481C6:  ADDS            R2, R1, R0
1481C8:  LDRB            R2, [R2,#4]
1481CA:  CBZ             R2, loc_148234
1481CC:  ADD.W           R0, R1, R0,LSL#2
1481D0:  LDR.W           R0, [R0,#0x3EC]
1481D4:  CBZ             R0, loc_148234
1481D6:  LDR             R1, [R0,#4]
1481D8:  VLDR            D16, [R4,#0x10]
1481DC:  LDR             R2, [R4,#0x18]
1481DE:  LDR             R1, [R1,#0x14]
1481E0:  STR             R2, [R1,#0x38]
1481E2:  VSTR            D16, [R1,#0x30]
1481E6:  ADD.W           R1, R4, #0x1C
1481EA:  BL              sub_1019BC
1481EE:  MOV.W           R0, #0x100
1481F2:  STRH            R0, [R4,#0x34]
1481F4:  B               loc_148234
1481F6:  LDR             R0, =(off_234970 - 0x1481FC)
1481F8:  ADD             R0, PC; off_234970
1481FA:  LDR             R0, [R0]; dword_23DEF0
1481FC:  LDR             R0, [R0]
1481FE:  BL              sub_E35A0
148202:  LDR             R1, [R4,#4]
148204:  BL              sub_105696
148208:  CBZ             R0, loc_148234
14820A:  VLDR            D16, [R4,#0x10]
14820E:  LDR             R1, [R4,#0x18]
148210:  STR             R1, [R0,#0x10]
148212:  VSTR            D16, [R0,#8]
148216:  VLDR            D16, [R4,#0x1C]
14821A:  LDR             R1, [R4,#0x24]
14821C:  STR             R1, [R0,#0x1C]
14821E:  VSTR            D16, [R0,#0x14]
148222:  VLDR            D16, [R4,#0x28]
148226:  LDR             R1, [R4,#0x30]
148228:  STR             R1, [R0,#0x28]
14822A:  VSTR            D16, [R0,#0x20]
14822E:  MOVS            R0, #0
148230:  STRB.W          R0, [R4,#0x34]
148234:  LDRB.W          R0, [R4,#0x35]
148238:  CBZ             R0, locret_148260
14823A:  LDR             R0, [R4]
14823C:  CMP             R0, #2
14823E:  BNE             locret_148260
148240:  BL              sub_F0B30
148244:  LDR             R1, [R4,#0xC]
148246:  SUBS            R0, R0, R1
148248:  CMP             R0, #0xFB
14824A:  BCC             locret_148260
14824C:  MOV             R0, R4
14824E:  MOVS            R1, #2
148250:  BL              sub_147F30
148254:  MOVS            R0, #0
148256:  STRB.W          R0, [R4,#0x35]
14825A:  BL              sub_F0B30
14825E:  STR             R0, [R4,#0xC]
148260:  POP             {R4,R6,R7,PC}
