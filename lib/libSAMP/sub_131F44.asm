; =========================================================
; Game Engine Function: sub_131F44
; Address            : 0x131F44 - 0x1326CA
; =========================================================

131F44:  PUSH            {R4-R7,LR}
131F46:  ADD             R7, SP, #0xC
131F48:  PUSH.W          {R8}
131F4C:  VPUSH           {D8-D9}
131F50:  SUB             SP, SP, #0x10
131F52:  MOV             R8, R0
131F54:  LDR             R0, =(off_2349A8 - 0x131F5E)
131F56:  VLDR            S16, [R8,#0x14]
131F5A:  ADD             R0, PC; off_2349A8
131F5C:  LDR             R0, [R0]; dword_381BF4
131F5E:  LDR             R0, [R0]
131F60:  LDRB.W          R0, [R0,#0x81]
131F64:  CBZ             R0, loc_131F80
131F66:  B               loc_131F70
131F68:  DCD off_2349A8 - 0x131F5E
131F6C:  DCFS -100.0
131F70:  VLDR            S0, =-100.0
131F74:  VMOV.F32        S2, #27.0
131F78:  VDIV.F32        S0, S16, S0
131F7C:  VMLA.F32        S16, S0, S2
131F80:  LDR.W           R5, [R8,#0x6C]
131F84:  VMOV.I32        Q8, #0
131F88:  LDR             R1, =(unk_8A59D - 0x131F9A)
131F8A:  ADD             R6, SP, #0x30+var_2C
131F8C:  ADD.W           R0, R5, #0x58 ; 'X'
131F90:  MOVS            R2, #0
131F92:  VST1.32         {D16-D17}, [R0]!
131F96:  ADD             R1, PC; unk_8A59D
131F98:  STR             R2, [R0]
131F9A:  MOV             R0, R6
131F9C:  MOVS            R2, #1
131F9E:  BL              sub_164D04
131FA2:  MOV             R0, R5
131FA4:  MOV             R1, R6
131FA6:  MOVS            R2, #0xC9
131FA8:  BL              sub_12FF60
131FAC:  B               loc_131FB4
131FAE:  ALIGN 0x10
131FB0:  DCD unk_8A59D - 0x131F9A
131FB4:  LDRB.W          R0, [SP,#0x30+var_2C]
131FB8:  LSLS            R0, R0, #0x1F
131FBA:  ITT NE
131FBC:  LDRNE           R0, [SP,#0x30+var_24]; void *
131FBE:  BLXNE           j__ZdlPv; operator delete(void *)
131FC2:  LDR.W           R5, [R8,#0x6C]
131FC6:  ADD             R6, SP, #0x30+var_2C
131FC8:  LDR             R1, =(unk_84112 - 0x131FD2)
131FCA:  MOVS            R2, #1
131FCC:  MOV             R0, R6
131FCE:  ADD             R1, PC; unk_84112
131FD0:  BL              sub_164D04
131FD4:  MOV             R0, R5
131FD6:  MOV             R1, R6
131FD8:  MOVS            R2, #0xD6
131FDA:  BL              sub_12FF60
131FDE:  B               loc_131FE4
131FE0:  DCD unk_84112 - 0x131FD2
131FE4:  LDRB.W          R0, [SP,#0x30+var_2C]
131FE8:  LSLS            R0, R0, #0x1F
131FEA:  ITT NE
131FEC:  LDRNE           R0, [SP,#0x30+var_24]; void *
131FEE:  BLXNE           j__ZdlPv; operator delete(void *)
131FF2:  LDR.W           R5, [R8,#0x6C]
131FF6:  ADD             R6, SP, #0x30+var_2C
131FF8:  LDR             R1, =(unk_89196 - 0x132002)
131FFA:  MOVS            R2, #1
131FFC:  MOV             R0, R6
131FFE:  ADD             R1, PC; unk_89196
132000:  BL              sub_164D04
132004:  MOV             R0, R5
132006:  MOV             R1, R6
132008:  MOVS            R2, #0xD3
13200A:  BL              sub_12FF60
13200E:  B               loc_132014
132010:  DCD unk_89196 - 0x132002
132014:  LDRB.W          R0, [SP,#0x30+var_2C]
132018:  LSLS            R0, R0, #0x1F
13201A:  ITT NE
13201C:  LDRNE           R0, [SP,#0x30+var_24]; void *
13201E:  BLXNE           j__ZdlPv; operator delete(void *)
132022:  LDR.W           R5, [R8,#0x6C]
132026:  ADD             R6, SP, #0x30+var_2C
132028:  LDR             R1, =(unk_8ACC2 - 0x132032)
13202A:  MOVS            R2, #1
13202C:  MOV             R0, R6
13202E:  ADD             R1, PC; unk_8ACC2
132030:  BL              sub_164D04
132034:  MOV             R0, R5
132036:  MOV             R1, R6
132038:  MOVS            R2, #0xCA
13203A:  BL              sub_12FF60
13203E:  B               loc_132044
132040:  DCD unk_8ACC2 - 0x132032
132044:  LDRB.W          R0, [SP,#0x30+var_2C]
132048:  LSLS            R0, R0, #0x1F
13204A:  ITT NE
13204C:  LDRNE           R0, [SP,#0x30+var_24]; void *
13204E:  BLXNE           j__ZdlPv; operator delete(void *)
132052:  LDR.W           R5, [R8,#0x6C]
132056:  ADD             R6, SP, #0x30+var_2C
132058:  LDR             R1, =(unk_8B3D9 - 0x132062)
13205A:  MOVS            R2, #1
13205C:  MOV             R0, R6
13205E:  ADD             R1, PC; unk_8B3D9
132060:  BL              sub_164D04
132064:  MOV             R0, R5
132066:  MOV             R1, R6
132068:  MOVS            R2, #0xC5
13206A:  BL              sub_12FF60
13206E:  B               loc_132074
132070:  DCD unk_8B3D9 - 0x132062
132074:  LDRB.W          R0, [SP,#0x30+var_2C]
132078:  LSLS            R0, R0, #0x1F
13207A:  ITT NE
13207C:  LDRNE           R0, [SP,#0x30+var_24]; void *
13207E:  BLXNE           j__ZdlPv; operator delete(void *)
132082:  LDR.W           R5, [R8,#0x6C]
132086:  ADD             R6, SP, #0x30+var_2C
132088:  LDR             R1, =(unk_87B91 - 0x132092)
13208A:  MOVS            R2, #1
13208C:  MOV             R0, R6
13208E:  ADD             R1, PC; unk_87B91
132090:  BL              sub_164D04
132094:  MOV             R0, R5
132096:  MOV             R1, R6
132098:  MOVS            R2, #0xCD
13209A:  BL              sub_12FF60
13209E:  B               loc_1320A4
1320A0:  DCD unk_87B91 - 0x132092
1320A4:  LDRB.W          R0, [SP,#0x30+var_2C]
1320A8:  LSLS            R0, R0, #0x1F
1320AA:  ITT NE
1320AC:  LDRNE           R0, [SP,#0x30+var_24]; void *
1320AE:  BLXNE           j__ZdlPv; operator delete(void *)
1320B2:  LDR.W           R5, [R8,#0x6C]
1320B6:  ADD             R6, SP, #0x30+var_2C
1320B8:  LDR             R1, =(unk_90FE4 - 0x1320C2)
1320BA:  MOVS            R2, #1
1320BC:  MOV             R0, R6
1320BE:  ADD             R1, PC; unk_90FE4
1320C0:  BL              sub_164D04
1320C4:  MOV             R0, R5
1320C6:  MOV             R1, R6
1320C8:  MOVS            R2, #0xC3
1320CA:  BL              sub_12FF60
1320CE:  B               loc_1320D4
1320D0:  DCD unk_90FE4 - 0x1320C2
1320D4:  LDRB.W          R0, [SP,#0x30+var_2C]
1320D8:  LSLS            R0, R0, #0x1F
1320DA:  ITT NE
1320DC:  LDRNE           R0, [SP,#0x30+var_24]; void *
1320DE:  BLXNE           j__ZdlPv; operator delete(void *)
1320E2:  LDR.W           R5, [R8,#0x6C]
1320E6:  ADD             R6, SP, #0x30+var_2C
1320E8:  LDR             R1, =(unk_8ACC4 - 0x1320F2)
1320EA:  MOVS            R2, #1
1320EC:  MOV             R0, R6
1320EE:  ADD             R1, PC; unk_8ACC4
1320F0:  BL              sub_164D04
1320F4:  MOV             R0, R5
1320F6:  MOV             R1, R6
1320F8:  MOVS            R2, #0xD8
1320FA:  BL              sub_12FF60
1320FE:  B               loc_132104
132100:  DCD unk_8ACC4 - 0x1320F2
132104:  LDRB.W          R0, [SP,#0x30+var_2C]
132108:  LSLS            R0, R0, #0x1F
13210A:  ITT NE
13210C:  LDRNE           R0, [SP,#0x30+var_24]; void *
13210E:  BLXNE           j__ZdlPv; operator delete(void *)
132112:  LDR.W           R5, [R8,#0x6C]
132116:  ADD             R6, SP, #0x30+var_2C
132118:  LDR             R1, =(unk_8BBB7 - 0x132122)
13211A:  MOVS            R2, #1
13211C:  MOV             R0, R6
13211E:  ADD             R1, PC; unk_8BBB7
132120:  BL              sub_164D04
132124:  MOV             R0, R5
132126:  MOV             R1, R6
132128:  MOVS            R2, #0xD9
13212A:  BL              sub_12FF60
13212E:  B               loc_132134
132130:  DCD unk_8BBB7 - 0x132122
132134:  LDRB.W          R0, [SP,#0x30+var_2C]
132138:  LSLS            R0, R0, #0x1F
13213A:  ITT NE
13213C:  LDRNE           R0, [SP,#0x30+var_24]; void *
13213E:  BLXNE           j__ZdlPv; operator delete(void *)
132142:  LDR.W           R5, [R8,#0x6C]
132146:  ADD             R6, SP, #0x30+var_2C
132148:  LDR             R1, =(unk_8FCF6 - 0x132152)
13214A:  MOVS            R2, #1
13214C:  MOV             R0, R6
13214E:  ADD             R1, PC; unk_8FCF6
132150:  BL              sub_164D04
132154:  MOV             R0, R5
132156:  MOV             R1, R6
132158:  MOVS            R2, #0xC7
13215A:  BL              sub_12FF60
13215E:  B               loc_132164
132160:  DCD unk_8FCF6 - 0x132152
132164:  LDRB.W          R0, [SP,#0x30+var_2C]
132168:  LSLS            R0, R0, #0x1F
13216A:  ITT NE
13216C:  LDRNE           R0, [SP,#0x30+var_24]; void *
13216E:  BLXNE           j__ZdlPv; operator delete(void *)
132172:  LDR.W           R5, [R8,#0x6C]
132176:  ADD             R6, SP, #0x30+var_2C
132178:  LDR             R1, =(unk_82C53 - 0x132182)
13217A:  MOVS            R2, #1
13217C:  MOV             R0, R6
13217E:  ADD             R1, PC; unk_82C53
132180:  BL              sub_164D04
132184:  MOV             R0, R5
132186:  MOV             R1, R6
132188:  MOVS            R2, #0xD5
13218A:  BL              sub_12FF60
13218E:  B               loc_132194
132190:  DCD unk_82C53 - 0x132182
132194:  LDRB.W          R0, [SP,#0x30+var_2C]
132198:  LSLS            R0, R0, #0x1F
13219A:  ITT NE
13219C:  LDRNE           R0, [SP,#0x30+var_24]; void *
13219E:  BLXNE           j__ZdlPv; operator delete(void *)
1321A2:  LDR.W           R5, [R8,#0x70]
1321A6:  VMOV.I32        Q8, #0
1321AA:  LDR             R1, =(unk_8BBB9 - 0x1321BC)
1321AC:  ADD             R6, SP, #0x30+var_2C
1321AE:  ADD.W           R0, R5, #0x58 ; 'X'
1321B2:  MOVS            R2, #0
1321B4:  VST1.32         {D16-D17}, [R0]!
1321B8:  ADD             R1, PC; unk_8BBB9
1321BA:  STR             R2, [R0]
1321BC:  MOV             R0, R6
1321BE:  MOVS            R2, #1
1321C0:  BL              sub_164D04
1321C4:  MOV             R0, R5
1321C6:  MOV             R1, R6
1321C8:  MOVS            R2, #0xD4
1321CA:  BL              sub_12FF60
1321CE:  B               loc_1321D4
1321D0:  DCD unk_8BBB9 - 0x1321BC
1321D4:  LDRB.W          R0, [SP,#0x30+var_2C]
1321D8:  LSLS            R0, R0, #0x1F
1321DA:  ITT NE
1321DC:  LDRNE           R0, [SP,#0x30+var_24]; void *
1321DE:  BLXNE           j__ZdlPv; operator delete(void *)
1321E2:  LDR.W           R5, [R8,#0x70]
1321E6:  ADD             R6, SP, #0x30+var_2C
1321E8:  LDR             R1, =(unk_8D195 - 0x1321F2)
1321EA:  MOVS            R2, #1
1321EC:  MOV             R0, R6
1321EE:  ADD             R1, PC; unk_8D195
1321F0:  BL              sub_164D04
1321F4:  MOV             R0, R5
1321F6:  MOV             R1, R6
1321F8:  MOVS            R2, #0xDB
1321FA:  BL              sub_12FF60
1321FE:  B               loc_132204
132200:  DCD unk_8D195 - 0x1321F2
132204:  LDRB.W          R0, [SP,#0x30+var_2C]
132208:  LSLS            R0, R0, #0x1F
13220A:  ITT NE
13220C:  LDRNE           R0, [SP,#0x30+var_24]; void *
13220E:  BLXNE           j__ZdlPv; operator delete(void *)
132212:  LDR.W           R5, [R8,#0x70]
132216:  ADD             R6, SP, #0x30+var_2C
132218:  LDR             R1, =(unk_8ACC6 - 0x132222)
13221A:  MOVS            R2, #1
13221C:  MOV             R0, R6
13221E:  ADD             R1, PC; unk_8ACC6
132220:  BL              sub_164D04
132224:  MOV             R0, R5
132226:  MOV             R1, R6
132228:  MOVS            R2, #0xC2
13222A:  BL              sub_12FF60
13222E:  B               loc_132234
132230:  DCD unk_8ACC6 - 0x132222
132234:  LDRB.W          R0, [SP,#0x30+var_2C]
132238:  LSLS            R0, R0, #0x1F
13223A:  ITT NE
13223C:  LDRNE           R0, [SP,#0x30+var_24]; void *
13223E:  BLXNE           j__ZdlPv; operator delete(void *)
132242:  LDR.W           R5, [R8,#0x70]
132246:  ADD             R6, SP, #0x30+var_2C
132248:  LDR             R1, =(unk_8582E - 0x132252)
13224A:  MOVS            R2, #1
13224C:  MOV             R0, R6
13224E:  ADD             R1, PC; unk_8582E
132250:  BL              sub_164D04
132254:  MOV             R0, R5
132256:  MOV             R1, R6
132258:  MOVS            R2, #0xC0
13225A:  BL              sub_12FF60
13225E:  B               loc_132264
132260:  DCD unk_8582E - 0x132252
132264:  LDRB.W          R0, [SP,#0x30+var_2C]
132268:  LSLS            R0, R0, #0x1F
13226A:  ITT NE
13226C:  LDRNE           R0, [SP,#0x30+var_24]; void *
13226E:  BLXNE           j__ZdlPv; operator delete(void *)
132272:  LDR.W           R5, [R8,#0x70]
132276:  ADD             R6, SP, #0x30+var_2C
132278:  LDR             R1, =(unk_9097D - 0x132282)
13227A:  MOVS            R2, #1
13227C:  MOV             R0, R6
13227E:  ADD             R1, PC; unk_9097D
132280:  BL              sub_164D04
132284:  MOV             R0, R5
132286:  MOV             R1, R6
132288:  MOVS            R2, #0xCF
13228A:  BL              sub_12FF60
13228E:  B               loc_132294
132290:  DCD unk_9097D - 0x132282
132294:  LDRB.W          R0, [SP,#0x30+var_2C]
132298:  LSLS            R0, R0, #0x1F
13229A:  ITT NE
13229C:  LDRNE           R0, [SP,#0x30+var_24]; void *
13229E:  BLXNE           j__ZdlPv; operator delete(void *)
1322A2:  LDR.W           R5, [R8,#0x70]
1322A6:  ADD             R6, SP, #0x30+var_2C
1322A8:  LDR             R1, =(unk_8DF93 - 0x1322B2)
1322AA:  MOVS            R2, #1
1322AC:  MOV             R0, R6
1322AE:  ADD             R1, PC; unk_8DF93
1322B0:  BL              sub_164D04
1322B4:  MOV             R0, R5
1322B6:  MOV             R1, R6
1322B8:  MOVS            R2, #0xD0
1322BA:  BL              sub_12FF60
1322BE:  B               loc_1322C4
1322C0:  DCD unk_8DF93 - 0x1322B2
1322C4:  LDRB.W          R0, [SP,#0x30+var_2C]
1322C8:  LSLS            R0, R0, #0x1F
1322CA:  ITT NE
1322CC:  LDRNE           R0, [SP,#0x30+var_24]; void *
1322CE:  BLXNE           j__ZdlPv; operator delete(void *)
1322D2:  LDR.W           R5, [R8,#0x70]
1322D6:  ADD             R6, SP, #0x30+var_2C
1322D8:  LDR             R1, =(unk_85830 - 0x1322E2)
1322DA:  MOVS            R2, #1
1322DC:  MOV             R0, R6
1322DE:  ADD             R1, PC; unk_85830
1322E0:  BL              sub_164D04
1322E4:  MOV             R0, R5
1322E6:  MOV             R1, R6
1322E8:  MOVS            R2, #0xCE
1322EA:  BL              sub_12FF60
1322EE:  LDRB.W          R0, [SP,#0x30+var_2C]
1322F2:  LSLS            R0, R0, #0x1F
1322F4:  ITT NE
1322F6:  LDRNE           R0, [SP,#0x30+var_24]; void *
1322F8:  BLXNE           j__ZdlPv; operator delete(void *)
1322FC:  LDR.W           R5, [R8,#0x70]
132300:  ADD             R6, SP, #0x30+var_2C
132302:  LDR             R1, =(unk_8B3DB - 0x13230C)
132304:  MOVS            R2, #1
132306:  MOV             R0, R6
132308:  ADD             R1, PC; unk_8B3DB
13230A:  BL              sub_164D04
13230E:  MOV             R0, R5
132310:  MOV             R1, R6
132312:  MOVS            R2, #0xCB
132314:  BL              sub_12FF60
132318:  LDRB.W          R0, [SP,#0x30+var_2C]
13231C:  LSLS            R0, R0, #0x1F
13231E:  ITT NE
132320:  LDRNE           R0, [SP,#0x30+var_24]; void *
132322:  BLXNE           j__ZdlPv; operator delete(void *)
132326:  LDR.W           R5, [R8,#0x70]
13232A:  ADD             R6, SP, #0x30+var_2C
13232C:  LDR             R1, =(unk_87B93 - 0x132336)
13232E:  MOVS            R2, #1
132330:  MOV             R0, R6
132332:  ADD             R1, PC; unk_87B93
132334:  BL              sub_164D04
132338:  MOV             R0, R5
13233A:  MOV             R1, R6
13233C:  MOVS            R2, #0xC4
13233E:  BL              sub_12FF60
132342:  LDRB.W          R0, [SP,#0x30+var_2C]
132346:  LSLS            R0, R0, #0x1F
132348:  ITT NE
13234A:  LDRNE           R0, [SP,#0x30+var_24]; void *
13234C:  BLXNE           j__ZdlPv; operator delete(void *)
132350:  LDR.W           R5, [R8,#0x70]
132354:  ADD             R6, SP, #0x30+var_2C
132356:  LDR             R1, =(unk_82C55 - 0x132360)
132358:  MOVS            R2, #1
13235A:  MOV             R0, R6
13235C:  ADD             R1, PC; unk_82C55
13235E:  BL              sub_164D04
132362:  MOV             R0, R5
132364:  MOV             R1, R6
132366:  MOVS            R2, #0xC6
132368:  BL              sub_12FF60
13236C:  LDRB.W          R0, [SP,#0x30+var_2C]
132370:  LSLS            R0, R0, #0x1F
132372:  ITT NE
132374:  LDRNE           R0, [SP,#0x30+var_24]; void *
132376:  BLXNE           j__ZdlPv; operator delete(void *)
13237A:  LDR.W           R5, [R8,#0x70]
13237E:  ADD             R6, SP, #0x30+var_2C
132380:  LDR             R1, =(unk_8B3DD - 0x13238A)
132382:  MOVS            R2, #1
132384:  MOV             R0, R6
132386:  ADD             R1, PC; unk_8B3DD
132388:  BL              sub_164D04
13238C:  MOV             R0, R5
13238E:  MOV             R1, R6
132390:  MOVS            R2, #0xDD
132392:  BL              sub_12FF60
132396:  LDRB.W          R0, [SP,#0x30+var_2C]
13239A:  LSLS            R0, R0, #0x1F
13239C:  ITT NE
13239E:  LDRNE           R0, [SP,#0x30+var_24]; void *
1323A0:  BLXNE           j__ZdlPv; operator delete(void *)
1323A4:  VMOV.F32        S0, #11.0
1323A8:  LDR.W           R0, [R8,#0x74]
1323AC:  VMOV.I32        Q8, #0
1323B0:  MOVS            R4, #0
1323B2:  ADD.W           R1, R0, #0x58 ; 'X'
1323B6:  VST1.32         {D16-D17}, [R1]!
1323BA:  STR             R4, [R1]
1323BC:  MOVS            R1, #2
1323BE:  VDIV.F32        S18, S16, S0
1323C2:  BL              sub_12FFFC
1323C6:  VMOV.F32        S0, #1.5
1323CA:  STR             R4, [R0,#0x28]
1323CC:  STR             R4, [R0,#0x20]
1323CE:  ADD             R6, SP, #0x30+var_2C
1323D0:  STR             R4, [R0,#0x18]
1323D2:  MOVS            R2, #1
1323D4:  VMUL.F32        S16, S18, S0
1323D8:  VSTR            S16, [R0,#0x24]
1323DC:  VSTR            S16, [R0,#0x1C]
1323E0:  VSTR            S16, [R0,#0x14]
1323E4:  MOV             R0, R6
1323E6:  LDR.W           R5, [R8,#0x74]
1323EA:  LDR             R1, =(unk_84F95 - 0x1323F0)
1323EC:  ADD             R1, PC; unk_84F95
1323EE:  BL              sub_164D04
1323F2:  MOV             R0, R5
1323F4:  MOV             R1, R6
1323F6:  MOVS            R2, #0xDF
1323F8:  BL              sub_12FF60
1323FC:  LDRB.W          R0, [SP,#0x30+var_2C]
132400:  LSLS            R0, R0, #0x1F
132402:  ITT NE
132404:  LDRNE           R0, [SP,#0x30+var_24]; void *
132406:  BLXNE           j__ZdlPv; operator delete(void *)
13240A:  LDR.W           R5, [R8,#0x74]
13240E:  ADD             R6, SP, #0x30+var_2C
132410:  LDR             R1, =(unk_85832 - 0x13241A)
132412:  MOVS            R2, #1
132414:  MOV             R0, R6
132416:  ADD             R1, PC; unk_85832
132418:  BL              sub_164D04
13241C:  MOV             R0, R5
13241E:  MOV             R1, R6
132420:  MOVS            R2, #0xD7
132422:  BL              sub_12FF60
132426:  LDRB.W          R0, [SP,#0x30+var_2C]
13242A:  LSLS            R0, R0, #0x1F
13242C:  ITT NE
13242E:  LDRNE           R0, [SP,#0x30+var_24]; void *
132430:  BLXNE           j__ZdlPv; operator delete(void *)
132434:  LDR.W           R5, [R8,#0x74]
132438:  ADD             R6, SP, #0x30+var_2C
13243A:  LDR             R1, =(unk_8ED10 - 0x132444)
13243C:  MOVS            R2, #1
13243E:  MOV             R0, R6
132440:  ADD             R1, PC; unk_8ED10
132442:  BL              sub_164D04
132446:  MOV             R0, R5
132448:  MOV             R1, R6
13244A:  MOVS            R2, #0xD1
13244C:  BL              sub_12FF60
132450:  LDRB.W          R0, [SP,#0x30+var_2C]
132454:  LSLS            R0, R0, #0x1F
132456:  ITT NE
132458:  LDRNE           R0, [SP,#0x30+var_24]; void *
13245A:  BLXNE           j__ZdlPv; operator delete(void *)
13245E:  LDR.W           R5, [R8,#0x74]
132462:  ADD             R6, SP, #0x30+var_2C
132464:  LDR             R1, =(unk_8F448 - 0x13246E)
132466:  MOVS            R2, #1
132468:  MOV             R0, R6
13246A:  ADD             R1, PC; unk_8F448
13246C:  BL              sub_164D04
132470:  MOV             R0, R5
132472:  MOV             R1, R6
132474:  MOVS            R2, #0xCC
132476:  BL              sub_12FF60
13247A:  LDRB.W          R0, [SP,#0x30+var_2C]
13247E:  LSLS            R0, R0, #0x1F
132480:  ITT NE
132482:  LDRNE           R0, [SP,#0x30+var_24]; void *
132484:  BLXNE           j__ZdlPv; operator delete(void *)
132488:  LDR.W           R5, [R8,#0x74]
13248C:  ADD             R6, SP, #0x30+var_2C
13248E:  LDR             R1, =(unk_8C310 - 0x132498)
132490:  MOVS            R2, #1
132492:  MOV             R0, R6
132494:  ADD             R1, PC; unk_8C310
132496:  BL              sub_164D04
13249A:  MOV             R0, R5
13249C:  MOV             R1, R6
13249E:  MOVS            R2, #0xC8
1324A0:  BL              sub_12FF60
1324A4:  LDRB.W          R0, [SP,#0x30+var_2C]
1324A8:  LSLS            R0, R0, #0x1F
1324AA:  ITT NE
1324AC:  LDRNE           R0, [SP,#0x30+var_24]; void *
1324AE:  BLXNE           j__ZdlPv; operator delete(void *)
1324B2:  LDR.W           R5, [R8,#0x74]
1324B6:  ADD             R6, SP, #0x30+var_2C
1324B8:  LDR             R1, =(unk_9097F - 0x1324C2)
1324BA:  MOVS            R2, #1
1324BC:  MOV             R0, R6
1324BE:  ADD             R1, PC; unk_9097F
1324C0:  BL              sub_164D04
1324C4:  MOV             R0, R5
1324C6:  MOV             R1, R6
1324C8:  MOVS            R2, #0xD2
1324CA:  BL              sub_12FF60
1324CE:  LDRB.W          R0, [SP,#0x30+var_2C]
1324D2:  LSLS            R0, R0, #0x1F
1324D4:  ITT NE
1324D6:  LDRNE           R0, [SP,#0x30+var_24]; void *
1324D8:  BLXNE           j__ZdlPv; operator delete(void *)
1324DC:  LDR.W           R5, [R8,#0x74]
1324E0:  ADD             R6, SP, #0x30+var_2C
1324E2:  LDR             R1, =(unk_8BBBB - 0x1324EC)
1324E4:  MOVS            R2, #1
1324E6:  MOV             R0, R6
1324E8:  ADD             R1, PC; unk_8BBBB
1324EA:  BL              sub_164D04
1324EE:  MOV             R0, R5
1324F0:  MOV             R1, R6
1324F2:  MOVS            R2, #0xDC
1324F4:  BL              sub_12FF60
1324F8:  LDRB.W          R0, [SP,#0x30+var_2C]
1324FC:  LSLS            R0, R0, #0x1F
1324FE:  ITT NE
132500:  LDRNE           R0, [SP,#0x30+var_24]; void *
132502:  BLXNE           j__ZdlPv; operator delete(void *)
132506:  LDR.W           R5, [R8,#0x74]
13250A:  ADD             R6, SP, #0x30+var_2C
13250C:  LDR             R1, =(unk_8480A - 0x132516)
13250E:  MOVS            R2, #1
132510:  MOV             R0, R6
132512:  ADD             R1, PC; unk_8480A
132514:  BL              sub_164D04
132518:  MOV             R0, R5
13251A:  MOV             R1, R6
13251C:  MOVS            R2, #0xC1
13251E:  BL              sub_12FF60
132522:  LDRB.W          R0, [SP,#0x30+var_2C]
132526:  LSLS            R0, R0, #0x1F
132528:  ITT NE
13252A:  LDRNE           R0, [SP,#0x30+var_24]; void *
13252C:  BLXNE           j__ZdlPv; operator delete(void *)
132530:  LDR.W           R5, [R8,#0x74]
132534:  ADD             R6, SP, #0x30+var_2C
132536:  LDR             R1, =(unk_83309 - 0x132540)
132538:  MOVS            R2, #1
13253A:  MOV             R0, R6
13253C:  ADD             R1, PC; unk_83309
13253E:  BL              sub_164D04
132542:  MOV             R0, R5
132544:  MOV             R1, R6
132546:  MOVS            R2, #0xDE
132548:  BL              sub_12FF60
13254C:  LDRB.W          R0, [SP,#0x30+var_2C]
132550:  LSLS            R0, R0, #0x1F
132552:  ITT NE
132554:  LDRNE           R0, [SP,#0x30+var_24]; void *
132556:  BLXNE           j__ZdlPv; operator delete(void *)
13255A:  LDR.W           R0, [R8,#0x74]
13255E:  MOVS            R1, #3
132560:  BL              sub_12FFFC
132564:  MOVS            R4, #0
132566:  VSTR            S16, [R0,#0x24]
13256A:  STR             R4, [R0,#0x28]
13256C:  VMOV.I32        Q8, #0
132570:  STR             R4, [R0,#0x20]
132572:  ADD             R6, SP, #0x30+var_2C
132574:  VSTR            S16, [R0,#0x1C]
132578:  STR             R4, [R0,#0x18]
13257A:  VSTR            S16, [R0,#0x14]
13257E:  LDR.W           R5, [R8,#0x78]
132582:  LDR             R1, =(asc_83A7E - 0x132590); "/" ...
132584:  ADD.W           R0, R5, #0x58 ; 'X'
132588:  VST1.32         {D16-D17}, [R0]!
13258C:  ADD             R1, PC; "/"
13258E:  STR             R4, [R0]
132590:  MOV             R0, R6; int
132592:  BL              sub_13055C
132596:  MOV             R0, R5
132598:  MOV             R1, R6
13259A:  MOVS            R2, #0x2F ; '/'
13259C:  BL              sub_130FE8
1325A0:  VLDR            S0, =1.2
1325A4:  LDRB.W          R1, [SP,#0x30+var_2C]
1325A8:  VMUL.F32        S0, S18, S0
1325AC:  STR             R4, [R0,#0x28]
1325AE:  STR             R4, [R0,#0x20]
1325B0:  STR             R4, [R0,#0x18]
1325B2:  VSTR            S0, [R0,#0x24]
1325B6:  VSTR            S0, [R0,#0x1C]
1325BA:  VSTR            S0, [R0,#0x14]
1325BE:  LSLS            R0, R1, #0x1F
1325C0:  ITT NE
1325C2:  LDRNE           R0, [SP,#0x30+var_24]; void *
1325C4:  BLXNE           j__ZdlPv; operator delete(void *)
1325C8:  LDR.W           R5, [R8,#0x78]
1325CC:  ADD             R6, SP, #0x30+var_2C
1325CE:  LDR             R1, =(unk_8C312 - 0x1325D8)
1325D0:  MOVS            R2, #1
1325D2:  MOV             R0, R6
1325D4:  ADD             R1, PC; unk_8C312
1325D6:  BL              sub_164D04
1325DA:  MOV             R0, R5
1325DC:  MOV             R1, R6
1325DE:  MOVS            R2, #0xA8
1325E0:  BL              sub_12FF60
1325E4:  LDRB.W          R0, [SP,#0x30+var_2C]
1325E8:  LSLS            R0, R0, #0x1F
1325EA:  ITT NE
1325EC:  LDRNE           R0, [SP,#0x30+var_24]; void *
1325EE:  BLXNE           j__ZdlPv; operator delete(void *)
1325F2:  LDR.W           R0, [R8,#0x78]
1325F6:  MOVS            R1, #4
1325F8:  BL              sub_12FFFC
1325FC:  LDR.W           R0, [R8,#0x78]
132600:  MOVS            R1, #5
132602:  BL              sub_12FFFC
132606:  LDR.W           R0, [R8,#0x78]
13260A:  MOVS            R1, #7
13260C:  BL              sub_12FFFC
132610:  LDR.W           R0, [R8,#0x78]
132614:  MOVS            R1, #9
132616:  BL              sub_12FFFC
13261A:  VMOV.F32        S0, #3.0
13261E:  MOVS            R1, #0
132620:  STR             R1, [R0,#0x28]
132622:  ADD             R6, SP, #0x30+var_2C
132624:  STR             R1, [R0,#0x20]
132626:  STR             R1, [R0,#0x18]
132628:  VMUL.F32        S0, S18, S0
13262C:  VSTR            S0, [R0,#0x24]
132630:  VSTR            S0, [R0,#0x1C]
132634:  VSTR            S0, [R0,#0x14]
132638:  MOV             R0, R6; int
13263A:  LDR.W           R5, [R8,#0x78]
13263E:  LDR             R1, =(unk_88380 - 0x132644)
132640:  ADD             R1, PC; unk_88380 ; src
132642:  BL              sub_13055C
132646:  MOV             R0, R5
132648:  MOV             R1, R6
13264A:  MOVS            R2, #0x2C ; ','
13264C:  BL              sub_130FE8
132650:  LDRB.W          R0, [SP,#0x30+var_2C]
132654:  LSLS            R0, R0, #0x1F
132656:  ITT NE
132658:  LDRNE           R0, [SP,#0x30+var_24]; void *
13265A:  BLXNE           j__ZdlPv; operator delete(void *)
13265E:  LDR.W           R5, [R8,#0x78]
132662:  ADD             R6, SP, #0x30+var_2C
132664:  LDR             R1, =(asc_836CD - 0x13266C); "." ...
132666:  MOV             R0, R6; int
132668:  ADD             R1, PC; "."
13266A:  BL              sub_13055C
13266E:  MOV             R0, R5
132670:  MOV             R1, R6
132672:  MOVS            R2, #0x2E ; '.'
132674:  BL              sub_130FE8
132678:  LDRB.W          R0, [SP,#0x30+var_2C]
13267C:  LSLS            R0, R0, #0x1F
13267E:  ITT NE
132680:  LDRNE           R0, [SP,#0x30+var_24]; void *
132682:  BLXNE           j__ZdlPv; operator delete(void *)
132686:  LDR.W           R0, [R8,#0x78]
13268A:  MOVS            R1, #0xC
13268C:  BL              sub_12FFFC
132690:  LDR.W           R0, [R8,#0x78]
132694:  MOVS            R1, #0xB
132696:  BL              sub_12FFFC
13269A:  LDR.W           R0, [R8,#0x78]
13269E:  MOVS            R1, #0xA
1326A0:  BL              sub_12FFFC
1326A4:  MOVS            R1, #0
1326A6:  VSTR            S16, [R0,#0x24]
1326AA:  STR             R1, [R0,#0x28]
1326AC:  STR             R1, [R0,#0x20]
1326AE:  VSTR            S16, [R0,#0x1C]
1326B2:  STR             R1, [R0,#0x18]
1326B4:  VSTR            S16, [R0,#0x14]
1326B8:  MOV             R0, R8
1326BA:  BL              sub_13D758
1326BE:  ADD             SP, SP, #0x10
1326C0:  VPOP            {D8-D9}
1326C4:  POP.W           {R8}
1326C8:  POP             {R4-R7,PC}
