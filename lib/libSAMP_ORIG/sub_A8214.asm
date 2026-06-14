; =========================================================
; Game Engine Function: sub_A8214
; Address            : 0xA8214 - 0xA852C
; =========================================================

A8214:  PUSH            {R4-R7,LR}
A8216:  ADD             R7, SP, #0xC
A8218:  PUSH.W          {R8-R11}
A821C:  SUB             SP, SP, #0x2C
A821E:  MOV             R6, R0
A8220:  LDR             R0, =(__stack_chk_guard_ptr - 0xA822C)
A8222:  LDR.W           R8, [R7,#arg_0]
A8226:  MOV             R4, R2
A8228:  ADD             R0, PC; __stack_chk_guard_ptr
A822A:  MOV             R10, R1
A822C:  LDR             R0, [R0]; __stack_chk_guard
A822E:  LDR             R0, [R0]
A8230:  STR             R0, [SP,#0x48+var_20]
A8232:  LDRB            R0, [R6]
A8234:  SUB.W           R1, R0, #9; switch 39 cases
A8238:  CMP             R1, #0x26 ; '&'
A823A:  BHI             def_A823C; jumptable 000A823C default case, cases 10-31,33-41,44-46
A823C:  TBB.W           [PC,R1]; switch jump
A8240:  DCB 0x14; jump table for switch statement
A8241:  DCB 0x1F
A8242:  DCB 0x1F
A8243:  DCB 0x1F
A8244:  DCB 0x1F
A8245:  DCB 0x1F
A8246:  DCB 0x1F
A8247:  DCB 0x1F
A8248:  DCB 0x1F
A8249:  DCB 0x1F
A824A:  DCB 0x1F
A824B:  DCB 0x1F
A824C:  DCB 0x1F
A824D:  DCB 0x1F
A824E:  DCB 0x1F
A824F:  DCB 0x1F
A8250:  DCB 0x1F
A8251:  DCB 0x1F
A8252:  DCB 0x1F
A8253:  DCB 0x1F
A8254:  DCB 0x1F
A8255:  DCB 0x1F
A8256:  DCB 0x1F
A8257:  DCB 0x14
A8258:  DCB 0x1F
A8259:  DCB 0x1F
A825A:  DCB 0x1F
A825B:  DCB 0x1F
A825C:  DCB 0x1F
A825D:  DCB 0x1F
A825E:  DCB 0x1F
A825F:  DCB 0x1F
A8260:  DCB 0x1F
A8261:  DCB 0x16
A8262:  DCB 0x16
A8263:  DCB 0x1F
A8264:  DCB 0x1F
A8265:  DCB 0x1F
A8266:  DCB 0x16
A8267:  ALIGN 2
A8268:  ADDS            R6, #1; jumptable 000A823C cases 9,32
A826A:  B               loc_A8232
A826C:  ADDS            R6, #1; jumptable 000A823C cases 42,43,47
A826E:  LDRB            R1, [R6]
A8270:  CMP             R1, #0x20 ; ' '
A8272:  BEQ             loc_A826C; jumptable 000A823C cases 42,43,47
A8274:  CMP             R1, #9
A8276:  BEQ             loc_A826C; jumptable 000A823C cases 42,43,47
A8278:  MOV             R11, R0
A827A:  CBNZ            R1, loc_A828A
A827C:  B               loc_A83C4
A827E:  MOV.W           R11, #0; jumptable 000A823C default case, cases 10-31,33-41,44-46
A8282:  MOV             R1, R0
A8284:  CMP             R1, #0
A8286:  BEQ.W           loc_A83C4
A828A:  LDR             R5, =(unk_1115FC - 0xA8298)
A828C:  ADD.W           R9, R4, R4,LSL#1
A8290:  ADD             R0, SP, #0x48+s1
A8292:  STR             R3, [SP,#0x48+var_44]
A8294:  ADD             R5, PC; unk_1115FC
A8296:  MOV             R1, R3
A8298:  MOVS            R3, #8
A829A:  LDR.W           R2, [R5,R9,LSL#2]
A829E:  STR             R2, [SP,#0x48+var_48]
A82A0:  BLX             __memcpy_chk
A82A4:  CMP.W           R8, #0
A82A8:  ITT EQ
A82AA:  ADDEQ.W         R0, R5, R9,LSL#2
A82AE:  LDREQ.W         R8, [R0,#8]
A82B2:  MOVS            R0, #0
A82B4:  CMP             R4, #9
A82B6:  STR             R0, [SP,#0x48+var_2C]
A82B8:  BEQ             loc_A831C
A82BA:  LDR             R2, [SP,#0x48+var_44]
A82BC:  CMP             R4, #8
A82BE:  BEQ             loc_A8372
A82C0:  CMP             R4, #4
A82C2:  BNE.W           loc_A83C8
A82C6:  LDR             R0, [R2]
A82C8:  CMP.W           R11, #0
A82CC:  STR             R0, [SP,#0x48+var_38]
A82CE:  MOV.W           R0, #0
A82D2:  STR             R0, [SP,#0x48+var_40]
A82D4:  BEQ.W           loc_A8402
A82D8:  ADD             R2, SP, #0x48+var_38
A82DA:  MOV             R0, R10; s
A82DC:  MOV             R1, R8; format
A82DE:  BLX             sscanf
A82E2:  CMP             R0, #1
A82E4:  BLT             loc_A83C4
A82E6:  CMP.W           R11, #0x2A ; '*'
A82EA:  BEQ.W           loc_A84AA
A82EE:  CMP.W           R11, #0x2F ; '/'
A82F2:  BEQ.W           loc_A84CE
A82F6:  CMP.W           R11, #0x2B ; '+'
A82FA:  BNE.W           loc_A8402
A82FE:  LDR             R1, =(aD - 0xA8308); "%d" ...
A8300:  ADD             R2, SP, #0x48+var_2C
A8302:  MOV             R0, R6; s
A8304:  ADD             R1, PC; "%d"
A8306:  BLX             sscanf
A830A:  CMP             R0, #0
A830C:  LDRD.W          R2, R1, [SP,#0x48+var_48]
A8310:  ITTTT NE
A8312:  LDRNE           R0, [SP,#0x48+var_38]
A8314:  LDRNE           R3, [SP,#0x48+var_2C]
A8316:  ADDNE           R0, R3
A8318:  STRNE           R0, [R1]
A831A:  B               def_A83F0; jumptable 000A83F0 default case
A831C:  LDR             R1, [SP,#0x48+var_44]
A831E:  CMP.W           R11, #0
A8322:  STRD.W          R0, R0, [SP,#0x48+var_40]
A8326:  VLDR            D16, [R1]
A832A:  VSTR            D16, [SP,#0x48+var_38]
A832E:  BEQ             loc_A8340
A8330:  LDR             R1, =(aLf - 0xA833A); "%lf" ...
A8332:  ADD             R2, SP, #0x48+var_38
A8334:  MOV             R0, R10; s
A8336:  ADD             R1, PC; "%lf"
A8338:  BLX             sscanf
A833C:  CMP             R0, #1
A833E:  BLT             loc_A83C4
A8340:  LDR             R1, =(aLf - 0xA834A); "%lf" ...
A8342:  ADD             R2, SP, #0x48+var_40
A8344:  MOV             R0, R6; s
A8346:  ADD             R1, PC; "%lf"
A8348:  BLX             sscanf
A834C:  CMP             R0, #1
A834E:  BLT             loc_A83C4
A8350:  CMP.W           R11, #0x2A ; '*'
A8354:  BEQ             loc_A841A
A8356:  LDR             R1, [SP,#0x48+var_44]
A8358:  CMP.W           R11, #0x2F ; '/'
A835C:  BEQ             loc_A842A
A835E:  CMP.W           R11, #0x2B ; '+'
A8362:  BNE             loc_A8448
A8364:  VLDR            D16, [SP,#0x48+var_40]
A8368:  VLDR            D17, [SP,#0x48+var_38]
A836C:  VADD.F64        D16, D17, D16
A8370:  B               loc_A844C
A8372:  LDR             R0, [R2]
A8374:  CMP.W           R11, #0
A8378:  STR             R0, [SP,#0x48+var_38]
A837A:  MOV.W           R0, #0
A837E:  STR             R0, [SP,#0x48+var_40]
A8380:  BEQ             loc_A8392
A8382:  LDR             R1, =(aF - 0xA838C); "%f" ...
A8384:  ADD             R2, SP, #0x48+var_38
A8386:  MOV             R0, R10; s
A8388:  ADD             R1, PC; "%f"
A838A:  BLX             sscanf
A838E:  CMP             R0, #1
A8390:  BLT             loc_A83C4
A8392:  LDR             R1, =(aF - 0xA839C); "%f" ...
A8394:  ADD             R2, SP, #0x48+var_40
A8396:  MOV             R0, R6; s
A8398:  ADD             R1, PC; "%f"
A839A:  BLX             sscanf
A839E:  CMP             R0, #1
A83A0:  BLT             loc_A83C4
A83A2:  CMP.W           R11, #0x2A ; '*'
A83A6:  BEQ             loc_A8454
A83A8:  LDR             R1, [SP,#0x48+var_44]
A83AA:  CMP.W           R11, #0x2F ; '/'
A83AE:  BEQ             loc_A8464
A83B0:  CMP.W           R11, #0x2B ; '+'
A83B4:  BNE             loc_A8482
A83B6:  VLDR            S0, [SP,#0x48+var_40]
A83BA:  VLDR            S2, [SP,#0x48+var_38]
A83BE:  VADD.F32        S0, S2, S0
A83C2:  B               loc_A8486
A83C4:  MOVS            R0, #0
A83C6:  B               loc_A8512
A83C8:  SUBS            R0, R4, #5
A83CA:  CMP             R0, #2
A83CC:  BHI             loc_A83DC
A83CE:  MOV             R0, R6; s
A83D0:  MOV             R1, R8; format
A83D2:  BLX             sscanf
A83D6:  LDRD.W          R2, R1, [SP,#0x48+var_48]
A83DA:  B               def_A83F0; jumptable 000A83F0 default case
A83DC:  ADD             R2, SP, #0x48+var_38
A83DE:  MOV             R0, R6; s
A83E0:  MOV             R1, R8; format
A83E2:  BLX             sscanf
A83E6:  LDR             R1, [SP,#0x48+var_44]
A83E8:  CMP             R4, #3; switch 4 cases
A83EA:  LDR             R2, [SP,#0x48+var_48]
A83EC:  BHI.W           def_A83F0; jumptable 000A83F0 default case
A83F0:  TBB.W           [PC,R4]; switch jump
A83F4:  DCB 2; jump table for switch statement
A83F5:  DCB 0x4D
A83F6:  DCB 0x52
A83F7:  DCB 0x56
A83F8:  LDR             R0, [SP,#0x48+var_38]; jumptable 000A83F0 case 0
A83FA:  SSAT.W          R0, #8, R0
A83FE:  STRB            R0, [R1]
A8400:  B               def_A83F0; jumptable 000A83F0 default case
A8402:  ADD             R2, SP, #0x48+var_2C
A8404:  MOV             R0, R6; s
A8406:  MOV             R1, R8; format
A8408:  BLX             sscanf
A840C:  CMP             R0, #1
A840E:  LDRD.W          R2, R1, [SP,#0x48+var_48]
A8412:  ITT EQ
A8414:  LDREQ           R0, [SP,#0x48+var_2C]
A8416:  STREQ           R0, [R1]
A8418:  B               def_A83F0; jumptable 000A83F0 default case
A841A:  VLDR            D16, [SP,#0x48+var_40]
A841E:  VLDR            D17, [SP,#0x48+var_38]
A8422:  LDR             R1, [SP,#0x48+var_44]
A8424:  VMUL.F64        D16, D17, D16
A8428:  B               loc_A844C
A842A:  VLDR            D16, [SP,#0x48+var_40]
A842E:  LDR             R2, [SP,#0x48+var_48]
A8430:  VCMP.F64        D16, #0.0
A8434:  VMRS            APSR_nzcv, FPSCR
A8438:  BEQ             def_A83F0; jumptable 000A83F0 default case
A843A:  VLDR            D17, [SP,#0x48+var_38]
A843E:  VDIV.F64        D16, D17, D16
A8442:  VSTR            D16, [R1]
A8446:  B               def_A83F0; jumptable 000A83F0 default case
A8448:  VLDR            D16, [SP,#0x48+var_40]
A844C:  LDR             R2, [SP,#0x48+var_48]
A844E:  VSTR            D16, [R1]
A8452:  B               def_A83F0; jumptable 000A83F0 default case
A8454:  VLDR            S0, [SP,#0x48+var_40]
A8458:  VLDR            S2, [SP,#0x48+var_38]
A845C:  LDR             R1, [SP,#0x48+var_44]
A845E:  VMUL.F32        S0, S2, S0
A8462:  B               loc_A8486
A8464:  VLDR            S0, [SP,#0x48+var_40]
A8468:  LDR             R2, [SP,#0x48+var_48]
A846A:  VCMP.F32        S0, #0.0
A846E:  VMRS            APSR_nzcv, FPSCR
A8472:  BEQ             def_A83F0; jumptable 000A83F0 default case
A8474:  VLDR            S2, [SP,#0x48+var_38]
A8478:  VDIV.F32        S0, S2, S0
A847C:  VSTR            S0, [R1]
A8480:  B               def_A83F0; jumptable 000A83F0 default case
A8482:  VLDR            S0, [SP,#0x48+var_40]
A8486:  LDR             R2, [SP,#0x48+var_48]
A8488:  VSTR            S0, [R1]
A848C:  B               def_A83F0; jumptable 000A83F0 default case
A848E:  LDR             R0, [SP,#0x48+var_38]; jumptable 000A83F0 case 1
A8490:  USAT.W          R0, #8, R0
A8494:  STRB            R0, [R1]
A8496:  B               def_A83F0; jumptable 000A83F0 default case
A8498:  LDR             R0, [SP,#0x48+var_38]; jumptable 000A83F0 case 2
A849A:  SSAT.W          R0, #0x10, R0
A849E:  B               loc_A84A6
A84A0:  LDR             R0, [SP,#0x48+var_38]; jumptable 000A83F0 case 3
A84A2:  USAT.W          R0, #0x10, R0
A84A6:  STRH            R0, [R1]
A84A8:  B               def_A83F0; jumptable 000A83F0 default case
A84AA:  LDR             R1, =(aF - 0xA84B4); "%f" ...
A84AC:  ADD             R2, SP, #0x48+var_40
A84AE:  MOV             R0, R6; s
A84B0:  ADD             R1, PC; "%f"
A84B2:  BLX             sscanf
A84B6:  LDRD.W          R2, R1, [SP,#0x48+var_48]
A84BA:  CBZ             R0, def_A83F0; jumptable 000A83F0 default case
A84BC:  VLDR            S0, [SP,#0x48+var_38]
A84C0:  VLDR            S2, [SP,#0x48+var_40]
A84C4:  VCVT.F32.S32    S0, S0
A84C8:  VMUL.F32        S0, S2, S0
A84CC:  B               loc_A84FC
A84CE:  LDR             R1, =(aF - 0xA84D8); "%f" ...
A84D0:  ADD             R2, SP, #0x48+var_40
A84D2:  MOV             R0, R6; s
A84D4:  ADD             R1, PC; "%f"
A84D6:  BLX             sscanf
A84DA:  CMP             R0, #0
A84DC:  LDRD.W          R2, R1, [SP,#0x48+var_48]; n
A84E0:  ITTT NE
A84E2:  VLDRNE          S0, [SP,#0x48+var_40]
A84E6:  VCMPNE.F32      S0, #0.0
A84EA:  VMRSNE          APSR_nzcv, FPSCR
A84EE:  BEQ             def_A83F0; jumptable 000A83F0 default case
A84F0:  VLDR            S2, [SP,#0x48+var_38]
A84F4:  VCVT.F32.S32    S2, S2
A84F8:  VDIV.F32        S0, S2, S0
A84FC:  VCVT.S32.F32    S0, S0
A8500:  VMOV            R0, S0
A8504:  STR             R0, [R1]
A8506:  ADD             R0, SP, #0x48+s1; jumptable 000A83F0 default case
A8508:  BLX             memcmp
A850C:  CMP             R0, #0
A850E:  IT NE
A8510:  MOVNE           R0, #1
A8512:  LDR             R1, [SP,#0x48+var_20]
A8514:  LDR             R2, =(__stack_chk_guard_ptr - 0xA851A)
A8516:  ADD             R2, PC; __stack_chk_guard_ptr
A8518:  LDR             R2, [R2]; __stack_chk_guard
A851A:  LDR             R2, [R2]
A851C:  CMP             R2, R1
A851E:  ITTT EQ
A8520:  ADDEQ           SP, SP, #0x2C ; ','
A8522:  POPEQ.W         {R8-R11}
A8526:  POPEQ           {R4-R7,PC}
A8528:  BLX             __stack_chk_fail
