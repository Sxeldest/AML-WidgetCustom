; =========================================================
; Game Engine Function: _ZN22CTaskComplexGangLeader17DoGangAbuseSpeechEP4CPedS1_
; Address            : 0x5162F0 - 0x516380
; =========================================================

5162F0:  PUSH            {R4,R5,R7,LR}
5162F2:  ADD             R7, SP, #8
5162F4:  SUB             SP, SP, #0x10
5162F6:  MOV             R4, R0
5162F8:  MOV             R5, R1
5162FA:  LDR.W           R0, [R4,#0x59C]
5162FE:  SUBS            R0, #7
516300:  CMP             R0, #9
516302:  BHI             def_516358; jumptable 00516358 default case
516304:  LDR.W           R0, [R5,#0x59C]
516308:  SUBS            R1, R0, #7
51630A:  CMP             R1, #0xA
51630C:  BCC             loc_51631C
51630E:  MOV             R0, R5; this
516310:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
516314:  CMP             R0, #1
516316:  BNE             def_516358; jumptable 00516358 default case
516318:  LDR.W           R0, [R5,#0x59C]
51631C:  CMP             R0, #8
51631E:  BEQ             loc_516334
516320:  CMP             R0, #7
516322:  BNE             loc_51632A
516324:  MOVS            R0, #0
516326:  MOVS            R1, #1
516328:  B               loc_516338
51632A:  MOV             R0, R5; this
51632C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
516330:  CMP             R0, #1
516332:  BNE             loc_51634E
516334:  MOVS            R0, #0
516336:  MOVS            R1, #4; unsigned __int16
516338:  STRD.W          R0, R0, [SP,#0x18+var_18]; unsigned __int8
51633C:  STR             R0, [SP,#0x18+var_10]; unsigned __int8
51633E:  MOV             R0, R4; this
516340:  MOVS            R2, #0; unsigned int
516342:  MOV.W           R3, #0x3F800000; float
516346:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
51634A:  ADD             SP, SP, #0x10; jumptable 00516358 default case
51634C:  POP             {R4,R5,R7,PC}
51634E:  LDR.W           R0, [R5,#0x59C]
516352:  SUBS            R0, #0xA; switch 5 cases
516354:  CMP             R0, #4
516356:  BHI             def_516358; jumptable 00516358 default case
516358:  TBB.W           [PC,R0]; switch jump
51635C:  DCB 3; jump table for switch statement
51635D:  DCB 6
51635E:  DCB 9
51635F:  DCB 0xC
516360:  DCB 0xF
516361:  ALIGN 2
516362:  MOVS            R0, #0; jumptable 00516358 case 10
516364:  MOVS            R1, #7
516366:  B               loc_516338
516368:  MOVS            R0, #0; jumptable 00516358 case 11
51636A:  MOVS            R1, #8
51636C:  B               loc_516338
51636E:  MOVS            R0, #0; jumptable 00516358 case 12
516370:  MOVS            R1, #6
516372:  B               loc_516338
516374:  MOVS            R0, #0; jumptable 00516358 case 13
516376:  MOVS            R1, #5
516378:  B               loc_516338
51637A:  MOVS            R0, #0; jumptable 00516358 case 14
51637C:  MOVS            R1, #3
51637E:  B               loc_516338
