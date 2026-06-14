; =========================================================
; Game Engine Function: sub_167164
; Address            : 0x167164 - 0x167440
; =========================================================

167164:  PUSH            {R4-R7,LR}
167166:  ADD             R7, SP, #0xC
167168:  PUSH.W          {R8-R11}
16716C:  SUB             SP, SP, #4
16716E:  VPUSH           {D8-D11}
167172:  SUB             SP, SP, #8
167174:  MOV             R10, R0
167176:  LDR             R0, =(dword_381B58 - 0x16717E)
167178:  MOV             R5, R1
16717A:  ADD             R0, PC; dword_381B58
16717C:  LDR.W           R11, [R0]
167180:  MOVW            R0, #0x19AC
167184:  ADD.W           R4, R11, R0
167188:  LDR.W           R6, [R11,R0]
16718C:  CBZ             R1, loc_1671BE
16718E:  LDR.W           R1, [R4,#0x10C]
167192:  MOV             R9, R2
167194:  LDR.W           R0, [R6,#0x134]
167198:  LDR.W           R2, [R6,#0x13C]
16719C:  CMP             R1, R5
16719E:  ORR.W           R0, R0, R2
1671A2:  STR.W           R0, [R6,#0x13C]
1671A6:  BEQ             loc_1671AE
1671A8:  LDRB.W          R0, [R4,#0x16C]
1671AC:  CBZ             R0, loc_1671BE
1671AE:  LDR.W           R0, [R4,#0x108]
1671B2:  LDR.W           R2, [R6,#0x304]
1671B6:  LDR.W           R3, [R0,#0x304]
1671BA:  CMP             R3, R2
1671BC:  BEQ             loc_167212
1671BE:  STR.W           R5, [R6,#0x108]
1671C2:  ADD.W           R0, R6, #0x110
1671C6:  VLD1.32         {D16-D17}, [R10]
1671CA:  MOV             R1, R5
1671CC:  MOVS            R2, #0
1671CE:  VST1.32         {D16-D17}, [R0]
1671D2:  MOVS            R0, #0
1671D4:  STR.W           R0, [R6,#0x10C]
1671D8:  STR.W           R0, [R4,#0xBC]
1671DC:  MOV             R0, R10
1671DE:  BL              sub_167448
1671E2:  MOV             R5, R0
1671E4:  CBNZ            R0, loc_167200
1671E6:  ADD.W           R1, R10, #8
1671EA:  MOV             R0, R10
1671EC:  MOVS            R2, #1
1671EE:  BL              sub_1674C8
1671F2:  CBZ             R0, loc_167200
1671F4:  LDR.W           R0, [R6,#0x10C]
1671F8:  ORR.W           R0, R0, #1
1671FC:  STR.W           R0, [R6,#0x10C]
167200:  EOR.W           R0, R5, #1
167204:  ADD             SP, SP, #8
167206:  VPOP            {D8-D11}
16720A:  ADD             SP, SP, #4
16720C:  POP.W           {R8-R11}
167210:  POP             {R4-R7,PC}
167212:  CMP             R6, R0
167214:  BEQ             loc_167220
167216:  LDR             R2, [R6,#8]
167218:  LDR             R3, [R0,#8]
16721A:  ORRS            R2, R3
16721C:  LSLS            R2, R2, #8
16721E:  BPL             loc_1671BE
167220:  VLDR            S0, [R6,#0xC]
167224:  CMP.W           R9, #0
167228:  VLDR            S2, [R6,#0x10]
16722C:  IT EQ
16722E:  MOVEQ           R9, R10
167230:  VLDR            S4, [R9]
167234:  VLDR            S6, [R9,#4]
167238:  VLDR            S8, [R9,#8]
16723C:  VSUB.F32        S22, S4, S0
167240:  VLDR            S10, [R9,#0xC]
167244:  VSUB.F32        S20, S6, S2
167248:  VSUB.F32        S18, S8, S0
16724C:  LDRB.W          R3, [R4,#0x16D]
167250:  VSUB.F32        S16, S10, S2
167254:  LDR.W           R12, [R6,#0x16C]
167258:  CBZ             R3, loc_1672AA
16725A:  LDR.W           R3, [R6,#0x130]
16725E:  LDR.W           R2, [R4,#0x160]
167262:  CMP             R2, R3
167264:  BNE             loc_1672AA
167266:  MOVS.W          R2, R12,LSL#27
16726A:  BMI             loc_167290
16726C:  LDRB.W          R2, [R4,#0x185]
167270:  MOVS            R3, #0
167272:  VSTR            S22, [R4,#0x174]
167276:  VSTR            S20, [R4,#0x178]
16727A:  VSTR            S18, [R4,#0x17C]
16727E:  VSTR            S16, [R4,#0x180]
167282:  STR.W           R5, [R4,#0x170]
167286:  STRB.W          R3, [R4,#0x16D]
16728A:  STRB.W          R2, [R4,#0x16C]
16728E:  B               loc_1672AA
167290:  LDR.W           R2, [R4,#0x170]
167294:  CBNZ            R2, loc_1672AA
167296:  VSTR            S22, [R4,#0x174]
16729A:  VSTR            S20, [R4,#0x178]
16729E:  VSTR            S18, [R4,#0x17C]
1672A2:  VSTR            S16, [R4,#0x180]
1672A6:  STR.W           R5, [R4,#0x170]
1672AA:  CMP             R1, R5
1672AC:  BNE             loc_1672C0
1672AE:  LDRB.W          R1, [R4,#0x188]
1672B2:  LSLS            R1, R1, #0x1B
1672B4:  BPL.W           loc_16740A
1672B8:  ANDS.W          R1, R12, #0xC
1672BC:  BEQ             loc_1672C8
1672BE:  B               loc_16740A
1672C0:  TST.W           R12, #0xC
1672C4:  BNE.W           loc_16740A
1672C8:  MOVW            R1, #0x2CE0
1672CC:  LDRB.W          R2, [R4,#0x185]
1672D0:  ADD.W           R3, R11, R1
1672D4:  MOVW            R1, #0x1B98
1672D8:  ADD.W           R8, R11, R1
1672DC:  CMP             R6, R0
1672DE:  MOVW            R1, #0x1B48
1672E2:  IT EQ
1672E4:  ADDEQ.W         R8, R11, R1
1672E8:  CBZ             R2, loc_16731E
1672EA:  STR             R3, [SP,#0x48+var_44]
1672EC:  LDRD.W          R1, R2, [R9]; int
1672F0:  LDRD.W          R3, R0, [R9,#8]; int
1672F4:  STR             R0, [SP,#0x48+var_48]; float
1672F6:  MOV             R0, R8; int
1672F8:  BL              sub_171B60
1672FC:  LDR             R3, [SP,#0x48+var_44]
1672FE:  CBZ             R0, loc_16731E
167300:  LDR             R0, [R3]
167302:  STR.W           R5, [R8]
167306:  STR.W           R6, [R8,#8]
16730A:  VSTR            S22, [R8,#0x18]
16730E:  VSTR            S20, [R8,#0x1C]
167312:  VSTR            S18, [R8,#0x20]
167316:  VSTR            S16, [R8,#0x24]
16731A:  STR.W           R0, [R8,#4]
16731E:  LDRB.W          R0, [R4,#0x188]
167322:  LSLS            R0, R0, #0x1A
167324:  BPL             loc_16740A
167326:  VLDR            S0, [R9,#4]
16732A:  VLDR            S10, [R6,#0x1DC]
16732E:  VCMP.F32        S0, S10
167332:  VMRS            APSR_nzcv, FPSCR
167336:  BPL             loc_16740A
167338:  VLDR            S2, [R9,#0xC]
16733C:  VLDR            S8, [R6,#0x1D4]
167340:  VCMP.F32        S2, S8
167344:  VMRS            APSR_nzcv, FPSCR
167348:  BLE             loc_16740A
16734A:  VLDR            S4, [R9]
16734E:  VLDR            S6, [R6,#0x1D8]
167352:  VCMP.F32        S4, S6
167356:  VMRS            APSR_nzcv, FPSCR
16735A:  BPL             loc_16740A
16735C:  VLDR            S6, [R9,#8]
167360:  VLDR            S12, [R6,#0x1D0]
167364:  VCMP.F32        S6, S12
167368:  VMRS            APSR_nzcv, FPSCR
16736C:  BLE             loc_16740A
16736E:  VCMP.F32        S0, S10
167372:  VMRS            APSR_nzcv, FPSCR
167376:  VMOV.F32        S12, S0
16737A:  VCMP.F32        S2, S10
16737E:  IT GT
167380:  VMOVGT.F32      S12, S10
167384:  VMOV.F32        S14, S2
167388:  VMRS            APSR_nzcv, FPSCR
16738C:  IT GT
16738E:  VMOVGT.F32      S14, S10
167392:  VSUB.F32        S10, S2, S0
167396:  VCMP.F32        S0, S8
16739A:  VMRS            APSR_nzcv, FPSCR
16739E:  VCMP.F32        S2, S8
1673A2:  IT MI
1673A4:  VMOVMI.F32      S12, S8
1673A8:  VMRS            APSR_nzcv, FPSCR
1673AC:  IT MI
1673AE:  VMOVMI.F32      S14, S8
1673B2:  VLDR            S8, =0.7
1673B6:  VMUL.F32        S8, S10, S8
1673BA:  VSUB.F32        S10, S14, S12
1673BE:  VCMP.F32        S10, S8
1673C2:  VMRS            APSR_nzcv, FPSCR
1673C6:  BLT             loc_16740A
1673C8:  MOVW            R0, #0x1B70
1673CC:  MOV             R9, R3
1673CE:  VMOV            R2, S0; int
1673D2:  ADD.W           R8, R11, R0
1673D6:  VMOV            R1, S4; int
1673DA:  VMOV            R3, S6; int
1673DE:  VMOV            R0, S2
1673E2:  STR             R0, [SP,#0x48+var_48]; float
1673E4:  MOV             R0, R8; int
1673E6:  BL              sub_171B60
1673EA:  CBZ             R0, loc_16740A
1673EC:  LDR.W           R0, [R9]
1673F0:  MOV             R1, R9
1673F2:  VSTR            S22, [R8,#0x18]
1673F6:  VSTR            S20, [R8,#0x1C]
1673FA:  VSTR            S18, [R8,#0x20]
1673FE:  VSTR            S16, [R8,#0x24]
167402:  STRD.W          R5, R0, [R8]
167406:  STR.W           R6, [R8,#8]
16740A:  LDR.W           R0, [R4,#0x10C]
16740E:  CMP             R0, R5
167410:  BNE.W           loc_1671BE
167414:  LDR.W           R0, [R6,#0x130]
167418:  MOVS            R2, #1
16741A:  LDR.W           R1, [R6,#0x168]
16741E:  STR.W           R6, [R4,#0x108]
167422:  STRB.W          R2, [R4,#0x168]
167426:  STRD.W          R0, R1, [R4,#0x160]
16742A:  ADD.W           R0, R6, R0,LSL#4
16742E:  VSTR            S22, [R0,#0x314]
167432:  VSTR            S20, [R0,#0x318]
167436:  VSTR            S18, [R0,#0x31C]
16743A:  VSTR            S16, [R0,#0x320]
16743E:  B               loc_1671BE
