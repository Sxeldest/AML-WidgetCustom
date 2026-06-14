; =========================================================
; Game Engine Function: sub_183004
; Address            : 0x183004 - 0x183A34
; =========================================================

183004:  PUSH            {R4-R7,LR}
183006:  ADD             R7, SP, #0xC
183008:  PUSH.W          {R8-R11}
18300C:  SUB.W           SP, SP, #0x25C
183010:  LDR.W           R10, [R7,#arg_0]
183014:  MOV             R8, R0
183016:  STRH.W          R1, [SP,#0x278+var_24]
18301A:  MOV             R4, R3
18301C:  LDR.W           R11, [SP,#0x278+var_24]
183020:  MOV             R9, R2
183022:  LDR.W           R0, [R10]
183026:  MOV             R1, R8
183028:  STR.W           R8, [SP,#0x278+var_28]
18302C:  MOV             R2, R11
18302E:  LDR.W           R3, [R0,#0xBC]
183032:  MOV             R0, R10
183034:  BLX             R3
183036:  MOV             R1, R0
183038:  LDR.W           R0, [R10]
18303C:  LDR             R2, [R0,#0x74]
18303E:  MOV             R0, R10
183040:  BLX             R2
183042:  CMP             R0, #0
183044:  BEQ             loc_1830D4
183046:  LDR.W           R0, [R10,#0x384]
18304A:  CMP             R0, #0
18304C:  BEQ.W           loc_183344
183050:  LSLS            R5, R4, #3
183052:  MOVS            R4, #0
183054:  LDR.W           R0, [R10,#0x380]
183058:  MOV             R2, R5
18305A:  MOV             R3, R8
18305C:  LDR.W           R0, [R0,R4,LSL#2]
183060:  LDR             R1, [R0]
183062:  LDR             R6, [R1,#0x20]
183064:  MOV             R1, R9
183066:  STR.W           R11, [SP,#0x278+cp]
18306A:  BLX             R6
18306C:  LDR.W           R0, [R10,#0x384]
183070:  ADDS            R4, #1
183072:  CMP             R4, R0
183074:  BCC             loc_183054
183076:  MOVS            R1, #0x24 ; '$'
183078:  CMP             R0, #0
18307A:  STRH.W          R1, [SP,#0x278+var_13C]
18307E:  BEQ.W           loc_18334A
183082:  LDR.W           R0, [R10,#0x380]
183086:  MOVS            R2, #0x10
183088:  MOV             R3, R8
18308A:  LDR             R0, [R0]
18308C:  LDR             R1, [R0]
18308E:  LDR             R6, [R1,#0x1C]
183090:  ADD             R1, SP, #0x278+var_13C
183092:  STR.W           R11, [SP,#0x278+cp]
183096:  BLX             R6
183098:  LDR.W           R0, [R10,#0x384]
18309C:  LDR.W           R8, [SP,#0x278+var_28]
1830A0:  CMP             R0, #2
1830A2:  BCC             loc_1830CE
1830A4:  ADD             R4, SP, #0x278+var_13C
1830A6:  MOVS            R5, #1
1830A8:  LDR.W           R0, [R10,#0x380]
1830AC:  MOV             R3, R8
1830AE:  LDR             R2, [SP,#0x278+var_24]
1830B0:  LDR.W           R0, [R0,R5,LSL#2]
1830B4:  LDR             R1, [R0]
1830B6:  LDR             R6, [R1,#0x1C]
1830B8:  MOV             R1, R4
1830BA:  STR             R2, [SP,#0x278+cp]
1830BC:  MOVS            R2, #0x10
1830BE:  BLX             R6
1830C0:  LDR.W           R0, [R10,#0x384]
1830C4:  ADDS            R5, #1
1830C6:  LDR.W           R8, [SP,#0x278+var_28]
1830CA:  CMP             R5, R0
1830CC:  BCC             loc_1830A8
1830CE:  LDRH.W          R11, [SP,#0x278+var_24]
1830D2:  B               loc_18334A
1830D4:  CMP             R4, #2
1830D6:  MOV             R8, R4
1830D8:  BHI             loc_1830F8
1830DA:  LDRB.W          R0, [R9]
1830DE:  CMP             R0, #0x24 ; '$'
1830E0:  BNE             loc_1830F8
1830E2:  LDR.W           R5, [R10,#0x38C]
1830E6:  LDR.W           R0, [R10,#0x398]
1830EA:  CMP             R5, R0
1830EC:  ITT NE
1830EE:  LDRBNE.W        R1, [R5,#0x11C]
1830F2:  CMPNE           R1, #0
1830F4:  BNE.W           loc_18344E
1830F8:  LDRB.W          R0, [R9]
1830FC:  CMP.W           R8, #2
183100:  BHI             loc_1831D8
183102:  CMP             R0, #0x1F
183104:  BNE             loc_1831D8
183106:  LDR.W           R5, [R10,#0x38C]
18310A:  LDR.W           R0, [R10,#0x398]
18310E:  CMP             R5, R0
183110:  ITT NE
183112:  LDRBNE.W        R1, [R5,#0x11C]
183116:  CMPNE           R1, #0
183118:  BEQ.W           loc_1836EE
18311C:  LDR.W           R1, [R5,#0x120]
183120:  CMP             R5, #0
183122:  STR.W           R1, [R10,#0x38C]
183126:  BEQ.W           loc_1836EE
18312A:  ADD             R6, SP, #0x278+var_28
18312C:  MOV             R4, R5
18312E:  MOV.W           R11, #0
183132:  LDR.W           R2, [R4,#0x118]
183136:  CMP             R2, #1
183138:  BNE             loc_18314C
18313A:  MOV             R0, R4
18313C:  MOV             R1, R6
18313E:  BL              sub_17E580
183142:  CBNZ            R0, loc_18316C
183144:  LDR.W           R1, [R10,#0x38C]
183148:  LDR.W           R0, [R10,#0x398]
18314C:  CMP             R1, R0
18314E:  ITT NE
183150:  LDRBNE.W        R2, [R1,#0x11C]
183154:  CMPNE           R2, #0
183156:  BEQ.W           loc_183684
18315A:  LDR.W           R2, [R1,#0x120]
18315E:  MOV             R4, R1
183160:  CMP             R1, #0
183162:  STR.W           R2, [R10,#0x38C]
183166:  MOV             R1, R2
183168:  BNE             loc_183132
18316A:  B               loc_183684
18316C:  CMP             R4, R5
18316E:  BEQ             loc_183196
183170:  LDR.W           R2, [R10,#0x38C]
183174:  MOV.W           R1, #0xFFFFFFFF
183178:  LDR.W           R0, [R10,#0x398]
18317C:  STRH            R1, [R4,#4]
18317E:  STR             R1, [R4]
183180:  CMP             R2, R0
183182:  ITT NE
183184:  LDRBNE.W        R1, [R2,#0x11C]
183188:  CMPNE           R1, #0
18318A:  BEQ.W           loc_183680
18318E:  LDR.W           R1, [R2,#0x120]
183192:  MOV             R4, R2
183194:  B               loc_1831CA
183196:  LDRD.W          R1, R0, [R10,#0x394]
18319A:  MOVS            R3, #0
18319C:  LDR.W           R2, [R10,#0x39C]
1831A0:  LDR.W           R4, [R10,#0x38C]
1831A4:  STRB.W          R3, [R1,#0x11C]
1831A8:  ADDS            R2, #1
1831AA:  LDR.W           R1, [R1,#0x120]
1831AE:  CMP             R4, R0
1831B0:  STR.W           R2, [R10,#0x39C]
1831B4:  STR.W           R1, [R10,#0x394]
1831B8:  ITT NE
1831BA:  LDRBNE.W        R1, [R4,#0x11C]
1831BE:  CMPNE           R1, #0
1831C0:  BEQ.W           loc_183690
1831C4:  LDR.W           R1, [R4,#0x120]
1831C8:  MOV             R5, R4
1831CA:  STR.W           R1, [R10,#0x38C]
1831CE:  MOV.W           R11, #1
1831D2:  CMP             R4, #0
1831D4:  BNE             loc_183132
1831D6:  B               loc_183684
1831D8:  CMP.W           R8, #2
1831DC:  BHI.W           loc_18336E
1831E0:  CMP             R0, #0x19
1831E2:  BNE.W           loc_18336E
1831E6:  LDR.W           R0, [R10,#0x384]
1831EA:  CBZ             R0, loc_183214
1831EC:  MOV.W           R4, R8,LSL#3
1831F0:  MOVS            R5, #0
1831F2:  LDR.W           R0, [R10,#0x380]
1831F6:  LDRD.W          R3, R2, [SP,#0x278+var_28]
1831FA:  LDR.W           R0, [R0,R5,LSL#2]
1831FE:  LDR             R1, [R0]
183200:  LDR             R6, [R1,#0x20]
183202:  MOV             R1, R9
183204:  STR             R2, [SP,#0x278+cp]
183206:  MOV             R2, R4
183208:  BLX             R6
18320A:  LDR.W           R0, [R10,#0x384]
18320E:  ADDS            R5, #1
183210:  CMP             R5, R0
183212:  BCC             loc_1831F2
183214:  LDR.W           R6, [R10,#0x38C]
183218:  LDR.W           R0, [R10,#0x398]
18321C:  CMP             R6, R0
18321E:  ITT NE
183220:  LDRBNE.W        R0, [R6,#0x11C]
183224:  CMPNE           R0, #0
183226:  BEQ.W           loc_183364
18322A:  LDR.W           R0, [R6,#0x120]
18322E:  CMP             R6, #0
183230:  STR.W           R0, [R10,#0x38C]
183234:  BEQ.W           loc_183364
183238:  ADD.W           R11, SP, #0x278+var_28
18323C:  MOV             R5, R6
18323E:  STR             R6, [SP,#0x278+var_258]
183240:  MOV             R0, R5
183242:  MOV             R1, R11
183244:  BL              sub_17E580
183248:  CMP             R0, #0
18324A:  BEQ             loc_1832E6
18324C:  LDRD.W          R1, R2, [SP,#0x278+var_28]
183250:  MOVS            R0, #1
183252:  STR             R0, [SP,#0x278+cp]
183254:  MOV             R0, R10
183256:  MOVS            R3, #1
183258:  BL              sub_181978
18325C:  MOV             R8, R0
18325E:  CBNZ            R0, loc_183270
183260:  LDRD.W          R1, R2, [SP,#0x278+var_28]
183264:  MOV             R0, R10
183266:  MOVS            R3, #6
183268:  BL              sub_182A98
18326C:  MOV             R8, R0
18326E:  CBZ             R0, loc_1832D6
183270:  BL              sub_17E348
183274:  MOV             R9, R0
183276:  MOVS            R0, #4
183278:  STR.W           R0, [R8,#0x83C]
18327C:  MOVS            R0, #1
18327E:  STRB.W          R0, [R8,#0x6C8]
183282:  ADD             R0, SP, #0x278+var_13C
183284:  MOV             R6, R1
183286:  BL              sub_17D4A8
18328A:  MOVS            R1, #0xB
18328C:  STRB.W          R1, [SP,#0x278+var_254]
183290:  ADD             R1, SP, #0x278+var_254
183292:  MOVS            R2, #8
183294:  MOVS            R3, #1
183296:  BL              sub_17D628
18329A:  LDRB.W          R2, [R5,#0x116]
18329E:  CBZ             R2, loc_1832AA
1832A0:  ADD.W           R1, R5, #0x16
1832A4:  ADD             R0, SP, #0x278+var_13C
1832A6:  BL              sub_17D566
1832AA:  LDR             R1, [SP,#0x278+var_130]
1832AC:  LDRD.W          R0, R3, [SP,#0x278+var_28]
1832B0:  LDR             R2, [SP,#0x278+var_13C]
1832B2:  MOVS            R4, #8
1832B4:  STR             R6, [SP,#0x278+var_25C]
1832B6:  STR             R4, [SP,#0x278+cp]
1832B8:  MOVS            R4, #0
1832BA:  STRD.W          R4, R0, [SP,#0x278+var_274]
1832BE:  MOV             R0, R10
1832C0:  STRD.W          R3, R4, [SP,#0x278+var_26C]
1832C4:  MOVS            R3, #0
1832C6:  STRD.W          R4, R9, [SP,#0x278+var_264]
1832CA:  BL              sub_1825E8
1832CE:  ADD             R0, SP, #0x278+var_13C
1832D0:  BL              sub_17D542
1832D4:  LDR             R6, [SP,#0x278+var_258]
1832D6:  CMP             R5, R6
1832D8:  BEQ             loc_18330A
1832DA:  MOVW            R0, #0xFFFF
1832DE:  STRH            R0, [R5,#4]
1832E0:  MOV.W           R0, #0xFFFFFFFF
1832E4:  STR             R0, [R5]
1832E6:  LDR.W           R5, [R10,#0x38C]
1832EA:  LDR.W           R0, [R10,#0x398]
1832EE:  CMP             R5, R0
1832F0:  ITT NE
1832F2:  LDRBNE.W        R0, [R5,#0x11C]
1832F6:  CMPNE           R0, #0
1832F8:  BEQ.W           loc_183556
1832FC:  LDR.W           R0, [R5,#0x120]
183300:  CMP             R5, #0
183302:  STR.W           R0, [R10,#0x38C]
183306:  BNE             loc_183240
183308:  B               loc_183556
18330A:  ADD.W           R2, R10, #0x394
18330E:  MOVS            R3, #0
183310:  LDR.W           R6, [R10,#0x38C]
183314:  LDM             R2, {R0-R2}
183316:  ADDS            R2, #1
183318:  CMP             R6, R1
18331A:  STRB.W          R3, [R0,#0x11C]
18331E:  LDR.W           R0, [R0,#0x120]
183322:  STR.W           R2, [R10,#0x39C]
183326:  STR.W           R0, [R10,#0x394]
18332A:  ITT NE
18332C:  LDRBNE.W        R0, [R6,#0x11C]
183330:  CMPNE           R0, #0
183332:  BEQ             loc_183364
183334:  LDR.W           R0, [R6,#0x120]
183338:  CMP             R6, #0
18333A:  STR.W           R0, [R10,#0x38C]
18333E:  BNE.W           loc_18323C
183342:  B               loc_183364
183344:  MOVS            R0, #0x24 ; '$'
183346:  STRH.W          R0, [SP,#0x278+var_13C]
18334A:  LDR.W           R1, [R10,#0x7EC]
18334E:  UXTH.W          R2, R11
183352:  LDR             R0, =(off_234E88 - 0x18335E)
183354:  STRD.W          R8, R2, [SP,#0x278+cp]
183358:  ADD             R2, SP, #0x278+var_13C
18335A:  ADD             R0, PC; off_234E88
18335C:  LDR             R0, [R0]; unk_382751
18335E:  MOVS            R3, #2
183360:  BL              sub_18CCDC
183364:  ADD.W           SP, SP, #0x25C
183368:  POP.W           {R8-R11}
18336C:  POP             {R4-R7,PC}
18336E:  CMP.W           R8, #2
183372:  BHI.W           loc_18350A
183376:  CMP             R0, #0x1D
183378:  BNE.W           loc_18350A
18337C:  LDR.W           R5, [R10,#0x38C]
183380:  LDR.W           R0, [R10,#0x398]
183384:  CMP             R5, R0
183386:  ITT NE
183388:  LDRBNE.W        R1, [R5,#0x11C]
18338C:  CMPNE           R1, #0
18338E:  BEQ.W           loc_1836EE
183392:  LDR.W           R1, [R5,#0x120]
183396:  CMP             R5, #0
183398:  STR.W           R1, [R10,#0x38C]
18339C:  BEQ.W           loc_1836EE
1833A0:  ADD             R6, SP, #0x278+var_28
1833A2:  MOV             R4, R5
1833A4:  MOV.W           R11, #0
1833A8:  LDR.W           R2, [R4,#0x118]
1833AC:  CMP             R2, #1
1833AE:  BNE             loc_1833C2
1833B0:  MOV             R0, R4
1833B2:  MOV             R1, R6
1833B4:  BL              sub_17E580
1833B8:  CBNZ            R0, loc_1833E2
1833BA:  LDR.W           R1, [R10,#0x38C]
1833BE:  LDR.W           R0, [R10,#0x398]
1833C2:  CMP             R1, R0
1833C4:  ITT NE
1833C6:  LDRBNE.W        R2, [R1,#0x11C]
1833CA:  CMPNE           R2, #0
1833CC:  BEQ.W           loc_1839DA
1833D0:  LDR.W           R2, [R1,#0x120]
1833D4:  MOV             R4, R1
1833D6:  CMP             R1, #0
1833D8:  STR.W           R2, [R10,#0x38C]
1833DC:  MOV             R1, R2
1833DE:  BNE             loc_1833A8
1833E0:  B               loc_1839DA
1833E2:  CMP             R4, R5
1833E4:  BEQ             loc_18340C
1833E6:  LDR.W           R2, [R10,#0x38C]
1833EA:  MOV.W           R1, #0xFFFFFFFF
1833EE:  LDR.W           R0, [R10,#0x398]
1833F2:  STRH            R1, [R4,#4]
1833F4:  STR             R1, [R4]
1833F6:  CMP             R2, R0
1833F8:  ITT NE
1833FA:  LDRBNE.W        R1, [R2,#0x11C]
1833FE:  CMPNE           R1, #0
183400:  BEQ.W           loc_1839D6
183404:  LDR.W           R1, [R2,#0x120]
183408:  MOV             R4, R2
18340A:  B               loc_183440
18340C:  LDRD.W          R1, R0, [R10,#0x394]
183410:  MOVS            R3, #0
183412:  LDR.W           R2, [R10,#0x39C]
183416:  LDR.W           R4, [R10,#0x38C]
18341A:  STRB.W          R3, [R1,#0x11C]
18341E:  ADDS            R2, #1
183420:  LDR.W           R1, [R1,#0x120]
183424:  CMP             R4, R0
183426:  STR.W           R2, [R10,#0x39C]
18342A:  STR.W           R1, [R10,#0x394]
18342E:  ITT NE
183430:  LDRBNE.W        R1, [R4,#0x11C]
183434:  CMPNE           R1, #0
183436:  BEQ.W           loc_1839E8
18343A:  LDR.W           R1, [R4,#0x120]
18343E:  MOV             R5, R4
183440:  STR.W           R1, [R10,#0x38C]
183444:  MOV.W           R11, #1
183448:  CMP             R4, #0
18344A:  BNE             loc_1833A8
18344C:  B               loc_1839DA
18344E:  LDR.W           R1, [R5,#0x120]
183452:  CMP             R5, #0
183454:  STR.W           R1, [R10,#0x38C]
183458:  BEQ.W           loc_1830F8
18345C:  ADD             R6, SP, #0x278+var_28
18345E:  MOV             R4, R5
183460:  MOV.W           R11, #0
183464:  LDR.W           R2, [R4,#0x118]
183468:  CMP             R2, #1
18346A:  BNE             loc_18347E
18346C:  MOV             R0, R4
18346E:  MOV             R1, R6
183470:  BL              sub_17E580
183474:  CBNZ            R0, loc_18349E
183476:  LDR.W           R1, [R10,#0x38C]
18347A:  LDR.W           R0, [R10,#0x398]
18347E:  CMP             R1, R0
183480:  ITT NE
183482:  LDRBNE.W        R2, [R1,#0x11C]
183486:  CMPNE           R2, #0
183488:  BEQ.W           loc_183966
18348C:  LDR.W           R2, [R1,#0x120]
183490:  MOV             R4, R1
183492:  CMP             R1, #0
183494:  STR.W           R2, [R10,#0x38C]
183498:  MOV             R1, R2
18349A:  BNE             loc_183464
18349C:  B               loc_183966
18349E:  CMP             R4, R5
1834A0:  BEQ             loc_1834C8
1834A2:  LDR.W           R2, [R10,#0x38C]
1834A6:  MOV.W           R1, #0xFFFFFFFF
1834AA:  LDR.W           R0, [R10,#0x398]
1834AE:  STRH            R1, [R4,#4]
1834B0:  STR             R1, [R4]
1834B2:  CMP             R2, R0
1834B4:  ITT NE
1834B6:  LDRBNE.W        R1, [R2,#0x11C]
1834BA:  CMPNE           R1, #0
1834BC:  BEQ.W           loc_183962
1834C0:  LDR.W           R1, [R2,#0x120]
1834C4:  MOV             R4, R2
1834C6:  B               loc_1834FC
1834C8:  LDRD.W          R1, R0, [R10,#0x394]
1834CC:  MOVS            R3, #0
1834CE:  LDR.W           R2, [R10,#0x39C]
1834D2:  LDR.W           R4, [R10,#0x38C]
1834D6:  STRB.W          R3, [R1,#0x11C]
1834DA:  ADDS            R2, #1
1834DC:  LDR.W           R1, [R1,#0x120]
1834E0:  CMP             R4, R0
1834E2:  STR.W           R2, [R10,#0x39C]
1834E6:  STR.W           R1, [R10,#0x394]
1834EA:  ITT NE
1834EC:  LDRBNE.W        R1, [R4,#0x11C]
1834F0:  CMPNE           R1, #0
1834F2:  BEQ.W           loc_183974
1834F6:  LDR.W           R1, [R4,#0x120]
1834FA:  MOV             R5, R4
1834FC:  STR.W           R1, [R10,#0x38C]
183500:  MOV.W           R11, #1
183504:  CMP             R4, #0
183506:  BNE             loc_183464
183508:  B               loc_183966
18350A:  CMP.W           R8, #3
18350E:  IT EQ
183510:  CMPEQ           R0, #0x18
183512:  BEQ             loc_183562
183514:  CMP.W           R8, #3
183518:  IT EQ
18351A:  CMPEQ           R0, #0x1A
18351C:  BNE.W           loc_1836EE
183520:  LDR.W           R0, [R10,#0x384]
183524:  CBZ             R0, loc_18354A
183526:  MOVS            R4, #0
183528:  LDR.W           R0, [R10,#0x380]
18352C:  LDRD.W          R3, R2, [SP,#0x278+var_28]
183530:  LDR.W           R0, [R0,R4,LSL#2]
183534:  LDR             R1, [R0]
183536:  LDR             R6, [R1,#0x20]
183538:  MOV             R1, R9
18353A:  STR             R2, [SP,#0x278+cp]
18353C:  MOVS            R2, #0x18
18353E:  BLX             R6
183540:  LDR.W           R0, [R10,#0x384]
183544:  ADDS            R4, #1
183546:  CMP             R4, R0
183548:  BCC             loc_183528
18354A:  LDR             R0, =(word_381C0C - 0x183554)
18354C:  LDRH.W          R1, [R9,#1]
183550:  ADD             R0, PC; word_381C0C
183552:  STRH            R1, [R0]
183554:  B               loc_183364
183556:  CMP             R6, #0
183558:  BEQ.W           loc_183364
18355C:  STR.W           R6, [R10,#0x38C]
183560:  B               loc_183364
183562:  LDR.W           R0, [R10,#0x384]
183566:  CBZ             R0, loc_18358C
183568:  MOVS            R4, #0
18356A:  LDR.W           R0, [R10,#0x380]
18356E:  LDRD.W          R3, R2, [SP,#0x278+var_28]
183572:  LDR.W           R0, [R0,R4,LSL#2]
183576:  LDR             R1, [R0]
183578:  LDR             R6, [R1,#0x20]
18357A:  MOV             R1, R9
18357C:  STR             R2, [SP,#0x278+cp]
18357E:  MOVS            R2, #0x18
183580:  BLX             R6
183582:  LDR.W           R0, [R10,#0x384]
183586:  ADDS            R4, #1
183588:  CMP             R4, R0
18358A:  BCC             loc_18356A
18358C:  LDRD.W          R1, R2, [SP,#0x278+var_28]
183590:  MOVS            R0, #1
183592:  STR             R0, [SP,#0x278+cp]
183594:  MOV             R0, R10
183596:  MOVS            R3, #1
183598:  BL              sub_181978
18359C:  CBZ             R0, loc_18360C
18359E:  LDRB.W          R1, [R0,#0x6C8]
1835A2:  CBNZ            R1, loc_18361A
1835A4:  LDR.W           R0, [R0,#0x83C]
1835A8:  CMP             R0, #8
1835AA:  BHI.W           loc_1836EE
1835AE:  MOVS            R1, #1
1835B0:  LSL.W           R0, R1, R0
1835B4:  TST.W           R0, #0x106
1835B8:  BEQ.W           loc_1836EE
1835BC:  LDR.W           R0, [R10,#0x384]
1835C0:  MOVS            R1, #0x1D
1835C2:  STRH.W          R1, [SP,#0x278+var_13C]
1835C6:  CBZ             R0, loc_1835EE
1835C8:  ADD             R4, SP, #0x278+var_13C
1835CA:  MOVS            R5, #0
1835CC:  LDR.W           R0, [R10,#0x380]
1835D0:  LDRD.W          R3, R2, [SP,#0x278+var_28]
1835D4:  LDR.W           R0, [R0,R5,LSL#2]
1835D8:  LDR             R1, [R0]
1835DA:  LDR             R6, [R1,#0x1C]
1835DC:  MOV             R1, R4
1835DE:  STR             R2, [SP,#0x278+cp]
1835E0:  MOVS            R2, #0x10
1835E2:  BLX             R6
1835E4:  LDR.W           R0, [R10,#0x384]
1835E8:  ADDS            R5, #1
1835EA:  CMP             R5, R0
1835EC:  BCC             loc_1835CC
1835EE:  LDR             R0, [SP,#0x278+var_28]
1835F0:  LDRH.W          R2, [SP,#0x278+var_24]
1835F4:  LDR.W           R1, [R10,#0x7EC]
1835F8:  LDR             R3, =(off_234E88 - 0x183604)
1835FA:  STRD.W          R0, R2, [SP,#0x278+cp]
1835FE:  ADD             R2, SP, #0x278+var_13C
183600:  ADD             R3, PC; off_234E88
183602:  LDR             R0, [R3]; unk_382751
183604:  MOVS            R3, #2
183606:  BL              sub_18CCDC
18360A:  B               loc_1836EE
18360C:  LDRD.W          R1, R2, [SP,#0x278+var_28]
183610:  MOV             R0, R10
183612:  MOVS            R3, #6
183614:  BL              sub_182A98
183618:  CBZ             R0, loc_18366A
18361A:  MOVS            R0, #0x19
18361C:  STRB.W          R0, [SP,#0x278+var_13C]
183620:  MOVS            R1, #0
183622:  LDR.W           R0, [R10,#0x384]
183626:  STRB.W          R1, [SP,#0x278+var_13C+1]
18362A:  CBZ             R0, loc_183652
18362C:  ADD             R4, SP, #0x278+var_13C
18362E:  MOVS            R5, #0
183630:  LDR.W           R0, [R10,#0x380]
183634:  LDRD.W          R3, R2, [SP,#0x278+var_28]
183638:  LDR.W           R0, [R0,R5,LSL#2]
18363C:  LDR             R1, [R0]
18363E:  LDR             R6, [R1,#0x1C]
183640:  MOV             R1, R4
183642:  STR             R2, [SP,#0x278+cp]
183644:  MOVS            R2, #0x10
183646:  BLX             R6
183648:  LDR.W           R0, [R10,#0x384]
18364C:  ADDS            R5, #1
18364E:  CMP             R5, R0
183650:  BCC             loc_183630
183652:  LDR             R0, [SP,#0x278+var_28]
183654:  LDRH.W          R2, [SP,#0x278+var_24]
183658:  LDR.W           R1, [R10,#0x7EC]
18365C:  LDR             R3, =(off_234E88 - 0x183668)
18365E:  STRD.W          R0, R2, [SP,#0x278+cp]
183662:  ADD             R2, SP, #0x278+var_13C
183664:  ADD             R3, PC; off_234E88
183666:  LDR             R0, [R3]; unk_382751
183668:  B               loc_18335E
18366A:  MOVS            R0, #0x1F
18366C:  B               loc_18361C
18366E:  ALIGN 0x10
183670:  DCD off_234E88 - 0x18335E
183674:  DCD word_381C0C - 0x183554
183678:  DCD off_234E88 - 0x183604
18367C:  DCD off_234E88 - 0x183668
183680:  MOV.W           R11, #1
183684:  CBZ             R5, loc_18368A
183686:  STR.W           R5, [R10,#0x38C]
18368A:  MOVS.W          R0, R11,LSL#31
18368E:  BEQ             loc_1836EE
183690:  MOVS            R0, #0x1D; size
183692:  BLX             malloc
183696:  MOV             R6, R0
183698:  LDR             R4, =(unk_381C10 - 0x1836AA)
18369A:  MOVS            R0, #0x1F
18369C:  MOV             R1, R6
18369E:  STRB.W          R0, [R1,#0x1C]!
1836A2:  MOVS            R0, #0
1836A4:  STRB            R0, [R6,#0x18]
1836A6:  ADD             R4, PC; unk_381C10
1836A8:  MOVS            R5, #1
1836AA:  MOVS            R0, #8
1836AC:  STRD.W          R5, R0, [R6,#0xC]
1836B0:  MOV.W           R2, #0xFFFFFFFF
1836B4:  LDRH.W          R0, [SP,#0x278+var_24]
1836B8:  STR             R1, [R6,#0x14]
1836BA:  LDR             R1, [SP,#0x278+var_28]
1836BC:  STRH            R0, [R6,#8]
1836BE:  MOV             R0, R4; mutex
1836C0:  STRH            R2, [R6]
1836C2:  STR             R1, [R6,#4]
1836C4:  BLX             EnterCriticalSection_0
1836C8:  ADDW            R0, R10, #0x9A8
1836CC:  BL              sub_184892
1836D0:  STR             R6, [R0]
1836D2:  LDR.W           R0, [R10,#0x9B4]
1836D6:  LDR.W           R1, [R10,#0x9BC]
1836DA:  STRB            R5, [R0,#4]
1836DC:  LDR             R0, [R0,#8]
1836DE:  ADDS            R1, #1
1836E0:  STR.W           R0, [R10,#0x9B4]
1836E4:  MOV             R0, R4; mutex
1836E6:  STR.W           R1, [R10,#0x9BC]
1836EA:  BLX             LeaveCriticalSection_0
1836EE:  LDRD.W          R1, R2, [SP,#0x278+var_28]
1836F2:  MOVS            R0, #1
1836F4:  STR             R0, [SP,#0x278+cp]
1836F6:  MOV             R0, R10
1836F8:  MOVS            R3, #1
1836FA:  BL              sub_181978
1836FE:  CBZ             R0, loc_18377C
183700:  MOV             R4, R0
183702:  MOVS            R0, #0x80000007
183708:  TST.W           R8, R0
18370C:  ITTTT EQ
18370E:  LDREQ.W         R0, [R4,#0x83C]
183712:  CMPEQ           R0, #7
183714:  ADDEQ.W         R0, R4, #0x18
183718:  ADDWEQ          R1, R4, #0x81C
18371C:  IT EQ
18371E:  BLEQ            sub_1876C8
183722:  LDRD.W          R3, R0, [SP,#0x278+var_28]
183726:  ADD.W           R2, R10, #0x380
18372A:  LDR.W           R1, [R10,#0x7E0]
18372E:  STRD.W          R0, R2, [SP,#0x278+cp]
183732:  ADD.W           R0, R4, #0x18
183736:  STR             R1, [SP,#0x278+var_270]
183738:  MOV             R1, R9
18373A:  MOV             R2, R8
18373C:  BL              sub_187A22
183740:  CMP             R0, #0
183742:  BNE.W           loc_183364
183746:  LDRB.W          R0, [R9]
18374A:  CMP.W           R8, #3
18374E:  BGT             loc_18375A
183750:  AND.W           R1, R0, #0xFD
183754:  CMP             R1, #0x18
183756:  BEQ.W           loc_183364
18375A:  CMP.W           R8, #2
18375E:  BGT             loc_18376A
183760:  AND.W           R1, R0, #0xFB
183764:  CMP             R1, #0x19
183766:  BEQ.W           loc_183364
18376A:  SUBS            R1, R0, #7
18376C:  CMP             R1, #2
18376E:  BCS.W           loc_18390C
183772:  CMP.W           R8, #4
183776:  BHI.W           loc_183364
18377A:  B               loc_183924
18377C:  LDR.W           R0, [R10,#0x384]
183780:  MOV.W           R6, R8,LSL#3
183784:  CBZ             R0, loc_1837AA
183786:  MOVS            R4, #0
183788:  LDR.W           R0, [R10,#0x380]
18378C:  LDRD.W          R3, R2, [SP,#0x278+var_28]
183790:  LDR.W           R0, [R0,R4,LSL#2]
183794:  LDR             R1, [R0]
183796:  LDR             R5, [R1,#0x20]
183798:  MOV             R1, R9
18379A:  STR             R2, [SP,#0x278+cp]
18379C:  MOV             R2, R6
18379E:  BLX             R5
1837A0:  LDR.W           R0, [R10,#0x384]
1837A4:  ADDS            R4, #1
1837A6:  CMP             R4, R0
1837A8:  BCC             loc_183788
1837AA:  CMP.W           R8, #0x200
1837AE:  BGT.W           loc_183364
1837B2:  LDRB.W          R0, [R9]
1837B6:  CMP             R0, #8
1837B8:  BNE             loc_1837DC
1837BA:  CMP.W           R8, #5
1837BE:  BNE.W           loc_183364
1837C2:  MOV             R0, R10
1837C4:  BL              sub_182A56
1837C8:  MOV             R4, R0
1837CA:  LDR.W           R0, [R10]
1837CE:  LDR             R1, [R0,#0x18]
1837D0:  MOV             R0, R10
1837D2:  BLX             R1
1837D4:  CMP             R4, R0
1837D6:  BCS.W           loc_183364
1837DA:  B               loc_183834
1837DC:  CMP.W           R8, #5
1837E0:  IT EQ
1837E2:  CMPEQ           R0, #7
1837E4:  BEQ             loc_183834
1837E6:  SUB.W           R1, R8, #5
1837EA:  LSRS            R1, R1, #4
1837EC:  CMP             R1, #0x18
1837EE:  BHI             loc_1837F4
1837F0:  CMP             R0, #0x27 ; '''
1837F2:  BEQ             loc_183806
1837F4:  SUB.W           R1, R8, #2
1837F8:  LSRS            R1, R1, #4
1837FA:  CMP             R1, #0x18
1837FC:  BHI.W           loc_183364
183800:  CMP             R0, #0x37 ; '7'
183802:  BNE.W           loc_183364
183806:  ADD.W           R0, R8, #0x1C; size
18380A:  BLX             malloc
18380E:  MOV             R4, R0
183810:  ADDS            R0, #0x1C; dest
183812:  MOVS            R1, #0
183814:  MOV             R2, R8; n
183816:  STRB            R1, [R4,#0x18]
183818:  MOV             R1, R9; src
18381A:  STR             R0, [R4,#0x14]
18381C:  STR.W           R8, [R4,#0xC]
183820:  BLX             j_memcpy
183824:  LDR             R1, [SP,#0x278+var_28]
183826:  LDRH.W          R0, [SP,#0x278+var_24]
18382A:  LDR             R2, [SP,#0x278+var_24]
18382C:  STR             R6, [R4,#0x10]
18382E:  STR             R1, [R4,#4]
183830:  STRH            R0, [R4,#8]
183832:  B               loc_18394E
183834:  ADD             R0, SP, #0x278+var_13C; int
183836:  MOV             R1, R9; src
183838:  MOV             R2, R8; size
18383A:  MOVS            R3, #0
18383C:  BL              sub_17D4F2
183840:  MOVS            R1, #8
183842:  BL              sub_17DA96
183846:  ADD             R0, SP, #0x278+var_13C; int
183848:  ADD             R1, SP, #0x278+var_140; int
18384A:  MOVS            R2, #0x20 ; ' '
18384C:  MOVS            R3, #1
18384E:  BL              sub_17D786
183852:  ADD             R0, SP, #0x278+var_254
183854:  BL              sub_17D4A8
183858:  MOVS            R0, #0x27 ; '''
18385A:  STRB.W          R0, [SP,#0x278+var_20]
18385E:  ADD             R0, SP, #0x278+var_254
183860:  ADD             R1, SP, #0x278+var_20
183862:  MOVS            R2, #8
183864:  MOVS            R3, #1
183866:  BL              sub_17D628
18386A:  LDR             R0, [SP,#0x278+var_140]
18386C:  STR             R0, [SP,#0x278+var_20]
18386E:  ADD             R0, SP, #0x278+var_254
183870:  ADD             R1, SP, #0x278+var_20
183872:  MOVS            R2, #0x20 ; ' '
183874:  MOVS            R3, #1
183876:  BL              sub_17D628
18387A:  ADD.W           R4, R10, #0x350
18387E:  MOV             R0, R4
183880:  BL              sub_18CB76
183884:  LDR.W           R0, [R10,#0x120]
183888:  LDR.W           R1, [R10,#0x12C]
18388C:  ADDS            R0, #7
18388E:  ASRS            R2, R0, #3
183890:  ADD             R0, SP, #0x278+var_254
183892:  BL              sub_17D566
183896:  MOV             R0, R4
183898:  BL              sub_18CB7A
18389C:  LDR.W           R0, [R10,#0x384]
1838A0:  CBZ             R0, loc_1838CC
1838A2:  MOVS            R4, #0
1838A4:  LDR.W           R0, [R10,#0x380]
1838A8:  LDR             R1, [SP,#0x278+var_248]
1838AA:  LDRD.W          R3, R6, [SP,#0x278+var_28]
1838AE:  LDR.W           R0, [R0,R4,LSL#2]
1838B2:  LDR             R5, [SP,#0x278+var_254]
1838B4:  LDR             R2, [R0]
1838B6:  LDR.W           R12, [R2,#0x1C]
1838BA:  ADDS            R2, R5, #7
1838BC:  STR             R6, [SP,#0x278+cp]
1838BE:  ASRS            R2, R2, #3
1838C0:  BLX             R12
1838C2:  LDR.W           R0, [R10,#0x384]
1838C6:  ADDS            R4, #1
1838C8:  CMP             R4, R0
1838CA:  BCC             loc_1838A4
1838CC:  LDR.W           R0, [R10]
1838D0:  LDR             R6, [SP,#0x278+var_254]
1838D2:  LDR             R4, [SP,#0x278+var_248]
1838D4:  LDR.W           R5, [R10,#0x7EC]
1838D8:  LDRD.W          R1, R2, [SP,#0x278+var_28]
1838DC:  LDR.W           R3, [R0,#0xBC]
1838E0:  MOV             R0, R10
1838E2:  BLX             R3
1838E4:  LDRH.W          R1, [SP,#0x278+var_24]
1838E8:  LDR             R2, =(off_234E88 - 0x1838EE)
1838EA:  ADD             R2, PC; off_234E88
1838EC:  STRD.W          R0, R1, [SP,#0x278+cp]; cp
1838F0:  ADDS            R0, R6, #7
1838F2:  MOV             R1, R5; int
1838F4:  ASRS            R3, R0, #3; int
1838F6:  LDR             R0, [R2]; unk_382751 ; int
1838F8:  MOV             R2, R4; int
1838FA:  BL              sub_18CD80
1838FE:  ADD             R0, SP, #0x278+var_254
183900:  BL              sub_17D542
183904:  ADD             R0, SP, #0x278+var_13C
183906:  BL              sub_17D542
18390A:  B               loc_183364
18390C:  CMP.W           R8, #5
183910:  BCC             loc_183918
183912:  CMP             R0, #0x27 ; '''
183914:  BEQ.W           loc_183364
183918:  CMP.W           R8, #0x190
18391C:  BGE             loc_183924
18391E:  CMP             R0, #0x37 ; '7'
183920:  BEQ.W           loc_183364
183924:  MOVS            R0, #0x1D; size
183926:  BLX             malloc
18392A:  MOV             R4, R0
18392C:  LDRD.W          R1, R2, [SP,#0x278+var_28]
183930:  MOVS            R0, #0x26 ; '&'
183932:  MOV             R3, R4
183934:  STRB.W          R0, [R3,#0x1C]!
183938:  MOVS            R0, #0
18393A:  STRB            R0, [R4,#0x18]
18393C:  MOVS            R0, #1
18393E:  LDRH.W          R6, [SP,#0x278+var_24]
183942:  MOVS            R5, #8
183944:  STRD.W          R0, R5, [R4,#0xC]
183948:  STR             R3, [R4,#0x14]
18394A:  STR             R1, [R4,#4]
18394C:  STRH            R6, [R4,#8]
18394E:  MOV             R0, R10
183950:  MOVS            R3, #1
183952:  BL              sub_1811B4
183956:  STRH            R0, [R4]
183958:  MOV             R0, R10
18395A:  MOV             R1, R4
18395C:  BL              sub_182DE8
183960:  B               loc_183364
183962:  MOV.W           R11, #1
183966:  CBZ             R5, loc_18396C
183968:  STR.W           R5, [R10,#0x38C]
18396C:  MOVS.W          R0, R11,LSL#31
183970:  BEQ.W           loc_1830F8
183974:  MOVS            R0, #0x1D; size
183976:  BLX             malloc
18397A:  MOV             R6, R0
18397C:  LDR             R4, =(unk_381C10 - 0x18398E)
18397E:  MOVS            R0, #0x24 ; '$'
183980:  MOV             R1, R6
183982:  STRB.W          R0, [R1,#0x1C]!
183986:  MOVS            R0, #0
183988:  STRB            R0, [R6,#0x18]
18398A:  ADD             R4, PC; unk_381C10
18398C:  MOVS            R5, #1
18398E:  MOVS            R0, #8
183990:  STRD.W          R5, R0, [R6,#0xC]
183994:  MOV.W           R2, #0xFFFFFFFF
183998:  LDRH.W          R0, [SP,#0x278+var_24]
18399C:  STR             R1, [R6,#0x14]
18399E:  LDR             R1, [SP,#0x278+var_28]
1839A0:  STRH            R0, [R6,#8]
1839A2:  MOV             R0, R4; mutex
1839A4:  STRH            R2, [R6]
1839A6:  STR             R1, [R6,#4]
1839A8:  BLX             EnterCriticalSection_0
1839AC:  ADDW            R0, R10, #0x9A8
1839B0:  BL              sub_184892
1839B4:  STR             R6, [R0]
1839B6:  LDR.W           R0, [R10,#0x9B4]
1839BA:  LDR.W           R1, [R10,#0x9BC]
1839BE:  STRB            R5, [R0,#4]
1839C0:  ADDS            R1, #1
1839C2:  LDR             R0, [R0,#8]
1839C4:  STR.W           R0, [R10,#0x9B4]
1839C8:  MOV             R0, R4; mutex
1839CA:  STR.W           R1, [R10,#0x9BC]
1839CE:  BLX             LeaveCriticalSection_0
1839D2:  B.W             loc_1830F8
1839D6:  MOV.W           R11, #1
1839DA:  CBZ             R5, loc_1839E0
1839DC:  STR.W           R5, [R10,#0x38C]
1839E0:  MOVS.W          R0, R11,LSL#31
1839E4:  BEQ.W           loc_1836EE
1839E8:  MOVS            R0, #0x1D; size
1839EA:  MOVS            R6, #0x1D
1839EC:  BLX             malloc
1839F0:  LDR             R4, =(unk_381C10 - 0x1839FE)
1839F2:  MOV             R5, R0
1839F4:  STRB.W          R6, [R0,#0x1C]!
1839F8:  MOVS            R1, #0
1839FA:  ADD             R4, PC; unk_381C10
1839FC:  STRB            R1, [R5,#0x18]
1839FE:  STR             R0, [R5,#0x14]
183A00:  MOVS            R6, #1
183A02:  MOVS            R1, #8
183A04:  LDRH.W          R0, [SP,#0x278+var_24]
183A08:  STRD.W          R6, R1, [R5,#0xC]
183A0C:  MOV.W           R2, #0xFFFFFFFF
183A10:  LDR             R1, [SP,#0x278+var_28]
183A12:  STRH            R0, [R5,#8]
183A14:  MOV             R0, R4; mutex
183A16:  STRH            R2, [R5]
183A18:  STR             R1, [R5,#4]
183A1A:  BLX             EnterCriticalSection_0
183A1E:  ADDW            R0, R10, #0x9A8
183A22:  BL              sub_184892
183A26:  STR             R5, [R0]
183A28:  LDR.W           R0, [R10,#0x9B4]
183A2C:  LDR.W           R1, [R10,#0x9BC]
183A30:  STRB            R6, [R0,#4]
183A32:  B               loc_1836DC
