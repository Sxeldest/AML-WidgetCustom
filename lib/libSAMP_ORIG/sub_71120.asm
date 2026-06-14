; =========================================================
; Game Engine Function: sub_71120
; Address            : 0x71120 - 0x712D0
; =========================================================

71120:  PUSH            {R4-R7,LR}
71122:  ADD             R7, SP, #0xC
71124:  PUSH.W          {R8-R10}
71128:  MOV             R8, R1
7112A:  MOV             R4, R0
7112C:  CMP             R1, #0x7F
7112E:  BHI             loc_7114A
71130:  LDR             R6, [R4]
71132:  LDRD.W          R0, R1, [R6,#0xC]
71136:  SUBS            R1, R1, R0
71138:  CMP             R1, #0
7113A:  BLE.W           loc_7126C
7113E:  ADDS            R1, R0, #1
71140:  STR             R1, [R6,#0xC]
71142:  STRB.W          R8, [R0]
71146:  ADDS            R5, R4, #4
71148:  B               loc_71260
7114A:  MOVS            R0, #0
7114C:  CMP.W           R0, R8,LSR#11
71150:  BNE             loc_71196
71152:  LDR             R6, [R4]
71154:  MOV             R2, #0xFFFFFFC0
71158:  ORR.W           R5, R2, R8,LSR#6
7115C:  LDRD.W          R0, R1, [R6,#0xC]
71160:  SUBS            R1, R1, R0
71162:  CMP             R1, #0
71164:  BLE.W           loc_71278
71168:  ADDS            R1, R0, #1
7116A:  STR             R1, [R6,#0xC]
7116C:  STRB            R5, [R0]
7116E:  MOV             R5, R4
71170:  LDR.W           R0, [R5,#4]!
71174:  MOVW            R1, #0xFFFE
71178:  LDR             R4, [R4]
7117A:  MOVT            R1, #0x3FF
7117E:  ADDS            R0, #1
71180:  STR             R0, [R5]
71182:  LDRD.W          R0, R2, [R4,#0xC]
71186:  BFI.W           R8, R1, #6, #0x1A
7118A:  SUBS            R1, R2, R0
7118C:  CMP             R1, #0
7118E:  BLE             loc_71284
71190:  ADDS            R1, R0, #1
71192:  STR             R1, [R4,#0xC]
71194:  B               loc_7125C
71196:  CMP.W           R0, R8,LSR#16
7119A:  BNE             loc_711D6
7119C:  LDR             R6, [R4]
7119E:  MOV             R2, #0xFFFFFFE0
711A2:  ORR.W           R5, R2, R8,LSR#12
711A6:  LDRD.W          R0, R1, [R6,#0xC]
711AA:  SUBS            R1, R1, R0
711AC:  CMP             R1, #0
711AE:  BLE             loc_712AA
711B0:  ADDS            R1, R0, #1
711B2:  STR             R1, [R6,#0xC]
711B4:  STRB            R5, [R0]
711B6:  MOV             R5, R4
711B8:  LDR.W           R0, [R5,#4]!
711BC:  MOVW            R9, #0xFFFE
711C0:  LDR.W           R10, [R4]
711C4:  MOV.W           R6, R8,LSR#6
711C8:  ADDS            R0, #1
711CA:  STR             R0, [R5]
711CC:  LDRD.W          R0, R1, [R10,#0xC]
711D0:  MOVT            R9, #0x3FF
711D4:  B               loc_71230
711D6:  LDR             R6, [R4]
711D8:  MOV             R2, #0xFFFFFFF0
711DC:  ORR.W           R5, R2, R8,LSR#18
711E0:  LDRD.W          R0, R1, [R6,#0xC]
711E4:  SUBS            R1, R1, R0
711E6:  CMP             R1, #0
711E8:  BLE             loc_712B6
711EA:  ADDS            R1, R0, #1
711EC:  STR             R1, [R6,#0xC]
711EE:  STRB            R5, [R0]
711F0:  MOV             R5, R4
711F2:  LDR.W           R0, [R5,#4]!
711F6:  MOVW            R9, #0xFFFE
711FA:  LDR.W           R10, [R4]
711FE:  MOV.W           R6, R8,LSR#12
71202:  ADDS            R0, #1
71204:  STR             R0, [R5]
71206:  LDRD.W          R0, R1, [R10,#0xC]
7120A:  MOVT            R9, #0x3FF
7120E:  BFI.W           R6, R9, #6, #0x1A
71212:  SUBS            R1, R1, R0
71214:  CMP             R1, #0
71216:  BLE             loc_712C2
71218:  ADDS            R1, R0, #1
7121A:  STR.W           R1, [R10,#0xC]
7121E:  STRB            R6, [R0]
71220:  MOV.W           R6, R8,LSR#6
71224:  LDRD.W          R10, R0, [R4]
71228:  ADDS            R0, #1
7122A:  STR             R0, [R4,#4]
7122C:  LDRD.W          R0, R1, [R10,#0xC]
71230:  SUBS            R1, R1, R0
71232:  BFI.W           R6, R9, #6, #0x1A
71236:  CMP             R1, #0
71238:  BLE             loc_71290
7123A:  ADDS            R1, R0, #1
7123C:  STR.W           R1, [R10,#0xC]
71240:  STRB            R6, [R0]
71242:  BFI.W           R8, R9, #6, #0x1A
71246:  LDR             R0, [R4,#4]
71248:  LDR             R6, [R4]
7124A:  ADDS            R0, #1
7124C:  STR             R0, [R4,#4]
7124E:  LDR             R0, [R6,#0xC]
71250:  LDR             R1, [R6,#0x10]
71252:  SUBS            R1, R1, R0
71254:  CMP             R1, #0
71256:  BLE             loc_7129E
71258:  ADDS            R1, R0, #1
7125A:  STR             R1, [R6,#0xC]
7125C:  STRB.W          R8, [R0]
71260:  LDR             R0, [R5]
71262:  ADDS            R0, #1
71264:  STR             R0, [R5]
71266:  POP.W           {R8-R10}
7126A:  POP             {R4-R7,PC}
7126C:  MOV             R0, R6
7126E:  MOVS            R1, #1
71270:  BL              sub_712D0
71274:  LDR             R0, [R6,#0xC]
71276:  B               loc_7113E
71278:  MOV             R0, R6
7127A:  MOVS            R1, #1
7127C:  BL              sub_712D0
71280:  LDR             R0, [R6,#0xC]
71282:  B               loc_71168
71284:  MOV             R0, R4
71286:  MOVS            R1, #1
71288:  BL              sub_712D0
7128C:  LDR             R0, [R4,#0xC]
7128E:  B               loc_71190
71290:  MOV             R0, R10
71292:  MOVS            R1, #1
71294:  BL              sub_712D0
71298:  LDR.W           R0, [R10,#0xC]
7129C:  B               loc_7123A
7129E:  MOV             R0, R6
712A0:  MOVS            R1, #1
712A2:  BL              sub_712D0
712A6:  LDR             R0, [R6,#0xC]
712A8:  B               loc_71258
712AA:  MOV             R0, R6
712AC:  MOVS            R1, #1
712AE:  BL              sub_712D0
712B2:  LDR             R0, [R6,#0xC]
712B4:  B               loc_711B0
712B6:  MOV             R0, R6
712B8:  MOVS            R1, #1
712BA:  BL              sub_712D0
712BE:  LDR             R0, [R6,#0xC]
712C0:  B               loc_711EA
712C2:  MOV             R0, R10
712C4:  MOVS            R1, #1
712C6:  BL              sub_712D0
712CA:  LDR.W           R0, [R10,#0xC]
712CE:  B               loc_71218
