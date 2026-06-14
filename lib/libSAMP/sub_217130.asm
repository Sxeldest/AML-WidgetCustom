; =========================================================
; Game Engine Function: sub_217130
; Address            : 0x217130 - 0x21739C
; =========================================================

217130:  PUSH            {R4-R7,LR}
217132:  ADD             R7, SP, #0xC
217134:  PUSH.W          {R7-R11}
217138:  VPUSH           {D0-D9}
21713C:  MOV             R4, R0
21713E:  LDR             R0, =(__stack_chk_guard_ptr - 0x217146)
217140:  MOV             R10, R1
217142:  ADD             R0, PC; __stack_chk_guard_ptr
217144:  LDR             R0, [R0]; __stack_chk_guard
217146:  LDR             R0, [R0]
217148:  STR             R0, [SP,#0x70+var_34]
21714A:  LDRD.W          R0, R1, [R4]
21714E:  CMP             R0, R1
217150:  BEQ.W           loc_21737C
217154:  LDRB            R1, [R0]
217156:  CMP             R1, #0x49 ; 'I'
217158:  BNE.W           loc_21737C
21715C:  ADDS            R0, #1
21715E:  STR             R0, [R4]
217160:  CMP.W           R10, #0
217164:  BEQ             loc_217186
217166:  LDR.W           R0, [R4,#0x14C]
21716A:  STR.W           R0, [R4,#0x150]
21716E:  ADD.W           R0, R4, #0x120
217172:  STR             R0, [SP,#0x70+var_50]
217174:  ADD.W           R0, R4, #0x14C
217178:  ADD             R1, SP, #0x70+var_50
21717A:  BL              sub_21794A
21717E:  LDR.W           R0, [R4,#0x120]
217182:  STR.W           R0, [R4,#0x124]
217186:  MOV             R11, R4
217188:  VMOV.I32        Q4, #0
21718C:  LDR.W           R0, [R11,#8]!
217190:  ADD.W           R8, R11, #0x150
217194:  LDR.W           R1, [R11,#4]
217198:  SUBS            R0, R1, R0
21719A:  ASRS            R0, R0, #2
21719C:  STR             R0, [SP,#0x70+var_6C]
21719E:  ADD             R6, SP, #0x70+var_50
2171A0:  ADD.W           R0, R6, #0x1C
2171A4:  ADD.W           R5, R6, #0xC
2171A8:  STR             R0, [SP,#0x70+var_5C]
2171AA:  ADD.W           R0, R11, #0x190
2171AE:  STR             R0, [SP,#0x70+var_64]
2171B0:  ADD.W           R0, R11, #0x160
2171B4:  STR             R0, [SP,#0x70+var_60]
2171B6:  STR.W           R10, [SP,#0x70+var_68]
2171BA:  LDRD.W          R0, R1, [R4]
2171BE:  CMP             R0, R1
2171C0:  BEQ             loc_2171CA
2171C2:  LDRB            R1, [R0]
2171C4:  CMP             R1, #0x45 ; 'E'
2171C6:  BEQ.W           loc_21734A
2171CA:  CMP.W           R10, #0
2171CE:  BEQ             loc_2171FC
2171D0:  LDR             R0, [SP,#0x70+var_5C]
2171D2:  STR             R0, [SP,#0x70+var_48]
2171D4:  LDR.W           R0, [R4,#0x14C]
2171D8:  VST1.32         {D8-D9}, [R5]
2171DC:  STRD.W          R5, R5, [SP,#0x70+var_50]
2171E0:  CMP             R0, R8
2171E2:  BEQ             loc_217214
2171E4:  LDR             R3, [SP,#0x70+var_60]
2171E6:  LDRD.W          R1, R2, [R4,#0x150]
2171EA:  STR.W           R8, [R4,#0x14C]
2171EE:  STR.W           R8, [R4,#0x150]
2171F2:  STR.W           R3, [R4,#0x154]
2171F6:  ADD             R3, SP, #0x70+var_50
2171F8:  STM             R3!, {R0-R2}
2171FA:  B               loc_217230
2171FC:  MOV             R0, R4
2171FE:  BL              sub_216BAC
217202:  CMP             R0, #0
217204:  STR             R0, [SP,#0x70+var_50]
217206:  BEQ.W           loc_21737C
21720A:  MOV             R0, R11
21720C:  MOV             R1, R6
21720E:  BL              sub_216CEC
217212:  B               loc_2171BA
217214:  LDR.W           R1, [R4,#0x150]; int
217218:  MOV             R0, R8; src
21721A:  MOV             R2, R5; dest
21721C:  BL              sub_217B1E
217220:  LDRD.W          R0, R1, [R4,#0x14C]
217224:  STR.W           R0, [R4,#0x150]
217228:  SUBS            R0, R1, R0
21722A:  LDR             R1, [SP,#0x70+var_50]
21722C:  ADD             R0, R1
21722E:  STR             R0, [SP,#0x70+var_4C]
217230:  MOV             R0, R4
217232:  BL              sub_216BAC
217236:  LDR             R1, [SP,#0x70+var_50]
217238:  MOV             R9, R0
21723A:  STR             R0, [SP,#0x70+var_54]
21723C:  LDR.W           R0, [R4,#0x14C]; ptr
217240:  CMP             R1, R5
217242:  BEQ             loc_217264
217244:  STR.W           R1, [R4,#0x14C]
217248:  CMP             R0, R8
21724A:  BEQ             loc_217298
21724C:  LDRD.W          R1, R2, [SP,#0x70+var_4C]
217250:  STR.W           R1, [R4,#0x150]
217254:  LDR.W           R1, [R4,#0x154]
217258:  STR.W           R2, [R4,#0x154]
21725C:  STRD.W          R0, R0, [SP,#0x70+var_50]
217260:  STR             R1, [SP,#0x70+var_48]
217262:  B               loc_2172A8
217264:  CMP             R0, R8
217266:  MOV             R2, R5
217268:  BEQ             loc_21727A
21726A:  BLX             free
21726E:  LDR             R2, [SP,#0x70+var_50]
217270:  LDR             R0, [SP,#0x70+var_60]
217272:  STRD.W          R8, R8, [R4,#0x14C]
217276:  STR.W           R0, [R4,#0x154]
21727A:  LDR             R1, [SP,#0x70+var_4C]; int
21727C:  MOV             R0, R2; src
21727E:  MOV             R2, R8; dest
217280:  BL              sub_217B1E
217284:  LDRD.W          R1, R2, [SP,#0x70+var_50]
217288:  LDR.W           R0, [R4,#0x14C]
21728C:  SUBS            R2, R2, R1
21728E:  STR             R1, [SP,#0x70+var_4C]
217290:  ADD             R0, R2
217292:  STR.W           R0, [R4,#0x150]
217296:  B               loc_2172A8
217298:  LDRD.W          R0, R1, [SP,#0x70+var_4C]
21729C:  STRD.W          R0, R1, [R4,#0x150]
2172A0:  LDR             R0, [SP,#0x70+var_5C]
2172A2:  STR             R0, [SP,#0x70+var_48]
2172A4:  STRD.W          R5, R5, [SP,#0x70+var_50]
2172A8:  CMP.W           R9, #0
2172AC:  BEQ             loc_217376
2172AE:  ADD             R1, SP, #0x70+var_54
2172B0:  MOV             R0, R11
2172B2:  BL              sub_216CEC
2172B6:  LDRB.W          R0, [R9,#4]
2172BA:  STR.W           R9, [SP,#0x70+var_58]
2172BE:  CMP             R0, #0x21 ; '!'
2172C0:  BNE             loc_217334
2172C2:  LDR             R0, [SP,#0x70+var_64]
2172C4:  MOVS            R1, #0x10
2172C6:  LDRD.W          R10, R6, [R9,#8]
2172CA:  BL              sub_216EF0
2172CE:  MOVS            R1, #0x20 ; ' '
2172D0:  STRD.W          R10, R6, [R0,#8]
2172D4:  STRB            R1, [R0,#4]
2172D6:  MOV             R3, R10
2172D8:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle13ParameterPackE - 0x2172DE); `vtable for'`anonymous namespace'::itanium_demangle::ParameterPack ...
2172DA:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::ParameterPack
2172DC:  ADDS            R1, #8
2172DE:  STR             R1, [R0]
2172E0:  MOVS            R1, #2
2172E2:  STRB            R1, [R0,#7]
2172E4:  MOVW            R1, #0x202
2172E8:  STRH.W          R1, [R0,#5]
2172EC:  LSLS            R1, R6, #2
2172EE:  MOV             R2, R1
2172F0:  CBZ             R2, loc_2172FE
2172F2:  LDM             R3!, {R6}
2172F4:  SUBS            R2, #4
2172F6:  LDRB            R6, [R6,#6]
2172F8:  CMP             R6, #1
2172FA:  BEQ             loc_2172F0
2172FC:  B               loc_217302
2172FE:  MOVS            R2, #1
217300:  STRB            R2, [R0,#6]
217302:  MOV             R2, R1
217304:  MOV             R3, R10
217306:  CBZ             R2, loc_217314
217308:  LDM             R3!, {R6}
21730A:  SUBS            R2, #4
21730C:  LDRB            R6, [R6,#7]
21730E:  CMP             R6, #1
217310:  BEQ             loc_217306
217312:  B               loc_217318
217314:  MOVS            R2, #1
217316:  STRB            R2, [R0,#7]
217318:  CBZ             R1, loc_217328
21731A:  LDR.W           R2, [R10],#4
21731E:  SUBS            R1, #4
217320:  LDRB            R2, [R2,#5]
217322:  CMP             R2, #1
217324:  BEQ             loc_217318
217326:  B               loc_21732C
217328:  MOVS            R1, #1
21732A:  STRB            R1, [R0,#5]
21732C:  LDR.W           R10, [SP,#0x70+var_68]
217330:  STR             R0, [SP,#0x70+var_58]
217332:  ADD             R6, SP, #0x70+var_50
217334:  LDR.W           R0, [R4,#0x150]
217338:  LDR.W           R0, [R0,#-4]
21733C:  ADD             R1, SP, #0x70+var_58
21733E:  BL              sub_21AA10
217342:  MOV             R0, R6
217344:  BL              sub_215572
217348:  B               loc_2171BA
21734A:  ADDS            R0, #1
21734C:  STR             R0, [R4]
21734E:  ADD             R0, SP, #0x70+var_50
217350:  LDR             R2, [SP,#0x70+var_6C]
217352:  MOV             R1, R4
217354:  BL              sub_216D60
217358:  LDR             R0, [SP,#0x70+var_64]
21735A:  MOVS            R1, #0x10
21735C:  BL              sub_216EF0
217360:  LDR             R1, =0x1010123
217362:  STR             R1, [R0,#4]
217364:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle12TemplateArgsE - 0x21736A); `vtable for'`anonymous namespace'::itanium_demangle::TemplateArgs ...
217366:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::TemplateArgs
217368:  ADDS            R1, #8
21736A:  STR             R1, [R0]
21736C:  LDRD.W          R1, R2, [SP,#0x70+var_50]
217370:  STRD.W          R1, R2, [R0,#8]
217374:  B               loc_21737E
217376:  ADD             R0, SP, #0x70+var_50
217378:  BL              sub_215572
21737C:  MOVS            R0, #0
21737E:  LDR             R1, [SP,#0x70+var_34]
217380:  LDR             R2, =(__stack_chk_guard_ptr - 0x217386)
217382:  ADD             R2, PC; __stack_chk_guard_ptr
217384:  LDR             R2, [R2]; __stack_chk_guard
217386:  LDR             R2, [R2]
217388:  CMP             R2, R1
21738A:  ITTTT EQ
21738C:  VPOPEQ          {D0-D9}
217390:  ADDEQ           SP, SP, #4
217392:  POPEQ.W         {R8-R11}
217396:  POPEQ           {R4-R7,PC}
217398:  BLX             __stack_chk_fail
