; =========================================================
; Game Engine Function: sub_ED1D0
; Address            : 0xED1D0 - 0xED35C
; =========================================================

ED1D0:  PUSH            {R4-R7,LR}
ED1D2:  ADD             R7, SP, #0xC
ED1D4:  PUSH.W          {R8-R11}
ED1D8:  SUB             SP, SP, #0x24
ED1DA:  MOV             R4, R0
ED1DC:  LDR             R0, =(aAxl - 0xED1EA); "AXL" ...
ED1DE:  LDR             R5, =(aCanTInitialize - 0xED1F0); "Can't initialize descent builder (stati"... ...
ED1E0:  ADD.W           R8, SP, #0x40+var_28
ED1E4:  LDR             R6, =(aCanTInitialize_0 - 0xED1F2); "Can't initialize descent builder (stati"... ...
ED1E6:  ADD             R0, PC; "AXL"
ED1E8:  ADD.W           R11, R8, #1
ED1EC:  ADD             R5, PC; "Can't initialize descent builder (stati"...
ED1EE:  ADD             R6, PC; "Can't initialize descent builder (stati"...
ED1F0:  MOV.W           R9, #0
ED1F4:  MOV             R10, R0
ED1F6:  LDR.W           R0, [R4,R9]
ED1FA:  CBZ             R0, loc_ED202
ED1FC:  LDR             R1, [R0]
ED1FE:  LDR             R1, [R1]
ED200:  BLX             R1
ED202:  ADD.W           R9, R9, #4
ED206:  CMP.W           R9, #0x28 ; '('
ED20A:  BNE             loc_ED1F6
ED20C:  B               loc_ED29A
ED20E:  STR             R1, [SP,#0x40+var_2C]
ED210:  BLX             j___cxa_begin_catch
ED214:  STR             R0, [SP,#0x40+var_30]
ED216:  LDR             R0, [SP,#0x40+var_2C]
ED218:  CMP             R0, #2
ED21A:  BNE             loc_ED25C
ED21C:  LDR.W           R1, [R4,R9]
ED220:  LDR             R0, [R1]
ED222:  LDR             R2, [R0,#4]
ED224:  MOV             R0, R8
ED226:  BLX             R2
ED228:  LDR             R0, [SP,#0x40+var_30]
ED22A:  LDR             R2, [SP,#0x40+var_20]
ED22C:  STR             R2, [SP,#0x40+var_2C]
ED22E:  LDR             R1, [R0]
ED230:  LDRB.W          R2, [SP,#0x40+var_28]
ED234:  STR             R2, [SP,#0x40+var_34]
ED236:  LDR             R1, [R1,#8]
ED238:  LDR.W           R2, [R4,R9]
ED23C:  STR             R2, [SP,#0x40+var_38]
ED23E:  BLX             R1
ED240:  LDR             R1, [SP,#0x40+var_38]
ED242:  MOV             R2, R5; fmt
ED244:  STRD.W          R1, R0, [SP,#0x40+var_40]
ED248:  MOV             R1, R10; tag
ED24A:  LDR             R0, [SP,#0x40+var_34]
ED24C:  LDR             R3, [SP,#0x40+var_2C]
ED24E:  LSLS            R0, R0, #0x1F
ED250:  IT EQ
ED252:  MOVEQ           R3, R11
ED254:  MOVS            R0, #6; prio
ED256:  BLX             __android_log_print
ED25A:  B               loc_ED286
ED25C:  LDR.W           R1, [R4,R9]
ED260:  LDR             R0, [R1]
ED262:  LDR             R2, [R0,#4]
ED264:  MOV             R0, R8
ED266:  BLX             R2
ED268:  LDR.W           R1, [R4,R9]
ED26C:  LDRB.W          R0, [SP,#0x40+var_28]
ED270:  LDR             R3, [SP,#0x40+var_20]
ED272:  LSLS            R0, R0, #0x1F
ED274:  STR             R1, [SP,#0x40+var_40]
ED276:  MOV.W           R0, #6; prio
ED27A:  MOV             R1, R10; tag
ED27C:  MOV             R2, R6; fmt
ED27E:  IT EQ
ED280:  MOVEQ           R3, R11
ED282:  BLX             __android_log_print
ED286:  LDRB.W          R0, [SP,#0x40+var_28]
ED28A:  LSLS            R0, R0, #0x1F
ED28C:  ITT NE
ED28E:  LDRNE           R0, [SP,#0x40+var_20]; void *
ED290:  BLXNE           j__ZdlPv; operator delete(void *)
ED294:  BLX             j___cxa_end_catch
ED298:  B               loc_ED202
ED29A:  LDRD.W          R9, R10, [R4,#0x28]
ED29E:  CMP             R9, R10
ED2A0:  BEQ             loc_ED354
ED2A2:  LDR             R5, =(aAxl - 0xED2B0); "AXL" ...
ED2A4:  ADD.W           R8, SP, #0x40+var_28
ED2A8:  LDR             R6, =(aCanTInitialize - 0xED2B2); "Can't initialize descent builder (stati"... ...
ED2AA:  LDR             R4, =(aCanTInitialize_0 - 0xED2B4); "Can't initialize descent builder (stati"... ...
ED2AC:  ADD             R5, PC; "AXL"
ED2AE:  ADD             R6, PC; "Can't initialize descent builder (stati"...
ED2B0:  ADD             R4, PC; "Can't initialize descent builder (stati"...
ED2B2:  LDR.W           R0, [R9]
ED2B6:  CBZ             R0, loc_ED2BE
ED2B8:  LDR             R1, [R0]
ED2BA:  LDR             R1, [R1]
ED2BC:  BLX             R1
ED2BE:  ADD.W           R9, R9, #4
ED2C2:  CMP             R9, R10
ED2C4:  BNE             loc_ED2B2
ED2C6:  B               loc_ED354
ED2C8:  STR             R1, [SP,#0x40+var_2C]
ED2CA:  BLX             j___cxa_begin_catch
ED2CE:  STR             R0, [SP,#0x40+var_30]
ED2D0:  LDR             R0, [SP,#0x40+var_2C]
ED2D2:  CMP             R0, #2
ED2D4:  BNE             loc_ED316
ED2D6:  LDR.W           R1, [R9]
ED2DA:  LDR             R0, [R1]
ED2DC:  LDR             R2, [R0,#4]
ED2DE:  MOV             R0, R8
ED2E0:  BLX             R2
ED2E2:  LDR             R0, [SP,#0x40+var_30]
ED2E4:  LDR             R2, [SP,#0x40+var_20]
ED2E6:  STR             R2, [SP,#0x40+var_2C]
ED2E8:  LDR             R1, [R0]
ED2EA:  LDRB.W          R2, [SP,#0x40+var_28]
ED2EE:  STR             R2, [SP,#0x40+var_34]
ED2F0:  LDR             R1, [R1,#8]
ED2F2:  LDR.W           R2, [R9]
ED2F6:  STR             R2, [SP,#0x40+var_38]
ED2F8:  BLX             R1
ED2FA:  LDR             R1, [SP,#0x40+var_38]
ED2FC:  MOV             R2, R6; fmt
ED2FE:  STRD.W          R1, R0, [SP,#0x40+var_40]
ED302:  MOV             R1, R5; tag
ED304:  LDR             R0, [SP,#0x40+var_34]
ED306:  LDR             R3, [SP,#0x40+var_2C]
ED308:  LSLS            R0, R0, #0x1F
ED30A:  IT EQ
ED30C:  MOVEQ           R3, R11
ED30E:  MOVS            R0, #6; prio
ED310:  BLX             __android_log_print
ED314:  B               loc_ED340
ED316:  LDR.W           R1, [R9]
ED31A:  LDR             R0, [R1]
ED31C:  LDR             R2, [R0,#4]
ED31E:  MOV             R0, R8
ED320:  BLX             R2
ED322:  LDRB.W          R0, [SP,#0x40+var_28]
ED326:  LDR.W           R1, [R9]
ED32A:  LDR             R3, [SP,#0x40+var_20]
ED32C:  LSLS            R0, R0, #0x1F
ED32E:  STR             R1, [SP,#0x40+var_40]
ED330:  MOV.W           R0, #6; prio
ED334:  MOV             R1, R5; tag
ED336:  MOV             R2, R4; fmt
ED338:  IT EQ
ED33A:  MOVEQ           R3, R11
ED33C:  BLX             __android_log_print
ED340:  LDRB.W          R0, [SP,#0x40+var_28]
ED344:  LSLS            R0, R0, #0x1F
ED346:  ITT NE
ED348:  LDRNE           R0, [SP,#0x40+var_20]; void *
ED34A:  BLXNE           j__ZdlPv; operator delete(void *)
ED34E:  BLX             j___cxa_end_catch
ED352:  B               loc_ED2BE
ED354:  ADD             SP, SP, #0x24 ; '$'
ED356:  POP.W           {R8-R11}
ED35A:  POP             {R4-R7,PC}
