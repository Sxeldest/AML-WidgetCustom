; =========================================================
; Game Engine Function: sub_1081C8
; Address            : 0x1081C8 - 0x1082AA
; =========================================================

1081C8:  PUSH            {R4-R7,LR}
1081CA:  ADD             R7, SP, #0xC
1081CC:  PUSH.W          {R11}
1081D0:  SUB             SP, SP, #0x10
1081D2:  MOV             R4, R0
1081D4:  LDR.W           R0, [R0,#0x98C]
1081D8:  CMP             R0, #5
1081DA:  ITT EQ
1081DC:  LDREQ.W         R0, [R4,#0x9A8]
1081E0:  ADDSEQ.W        R0, R0, #1
1081E4:  BEQ             loc_1081EE
1081E6:  ADD             SP, SP, #0x10
1081E8:  POP.W           {R11}
1081EC:  POP             {R4-R7,PC}
1081EE:  LDRH.W          R0, [R4,#0x9AE]
1081F2:  BL              sub_108480
1081F6:  MOV             R1, R0
1081F8:  LDRH.W          R0, [R4,#0x9AE]
1081FC:  CBZ             R1, loc_10822C
1081FE:  BL              sub_1083F0
108202:  CMP             R0, #0
108204:  ITTE EQ
108206:  MOVEQ           R1, #0
108208:  STRHEQ.W        R1, [R4,#0x9AE]
10820C:  LDRHNE.W        R1, [R4,#0x9AE]; int
108210:  LDR             R0, =(off_234A14 - 0x10821A)
108212:  LDR.W           R2, [R4,#0x984]; int
108216:  ADD             R0, PC; off_234A14
108218:  LDR.W           R3, [R4,#0x9BC]
10821C:  STR             R3, [SP,#0x20+var_20]; float
10821E:  ADD.W           R3, R4, #0x9B0; int
108222:  LDR             R0, [R0]; dword_23DEFC
108224:  LDR             R0, [R0]; int
108226:  BL              sub_107730
10822A:  B               loc_108290
10822C:  BL              sub_1084DC
108230:  CBZ             R0, loc_10825E
108232:  LDR             R0, =(off_234A14 - 0x10823C)
108234:  LDR.W           R2, [R4,#0x984]; int
108238:  ADD             R0, PC; off_234A14
10823A:  LDRH.W          R1, [R4,#0x9AE]; int
10823E:  LDRH.W          R5, [R4,#0x9C0]
108242:  LDR             R0, [R0]; dword_23DEFC
108244:  LDRH.W          R3, [R4,#0x9C2]
108248:  LDR.W           R12, [R4,#0x9BC]
10824C:  LDR             R0, [R0]; int
10824E:  STR             R3, [SP,#0x20+var_18]; int
108250:  ADD.W           R3, R4, #0x9B0; int
108254:  STRD.W          R12, R5, [SP,#0x20+var_20]; float
108258:  BL              sub_1079AC
10825C:  B               loc_108290
10825E:  LDRH.W          R0, [R4,#0x9AE]
108262:  BL              sub_1083F0
108266:  CMP             R0, #0
108268:  ITTE EQ
10826A:  MOVWEQ          R1, #0x48C7
10826E:  STRHEQ.W        R1, [R4,#0x9AE]
108272:  LDRHNE.W        R1, [R4,#0x9AE]; int
108276:  LDR             R0, =(off_234A14 - 0x108280)
108278:  LDR.W           R2, [R4,#0x984]; int
10827C:  ADD             R0, PC; off_234A14
10827E:  LDR.W           R3, [R4,#0x9BC]
108282:  STR             R3, [SP,#0x20+var_20]; float
108284:  ADD.W           R3, R4, #0x9B0; int
108288:  LDR             R0, [R0]; dword_23DEFC
10828A:  LDR             R0, [R0]; int
10828C:  BL              sub_1074A4
108290:  MOV             R5, R0
108292:  CMP             R0, #0
108294:  BEQ             loc_1081E6
108296:  LDR             R0, =(off_234B00 - 0x10829C)
108298:  ADD             R0, PC; off_234B00
10829A:  LDR             R6, [R0]; unk_2629D0
10829C:  BL              sub_108C44
1082A0:  STR.W           R0, [R4,#0x9A8]
1082A4:  STR.W           R5, [R6,R0,LSL#2]
1082A8:  B               loc_1081E6
