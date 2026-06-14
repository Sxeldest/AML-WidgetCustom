; =========================================================
; Game Engine Function: sub_12C214
; Address            : 0x12C214 - 0x12C430
; =========================================================

12C214:  PUSH            {R4-R7,LR}
12C216:  ADD             R7, SP, #0xC
12C218:  PUSH.W          {R8-R11}
12C21C:  SUB             SP, SP, #4
12C21E:  VPUSH           {D8}
12C222:  SUB             SP, SP, #0x28
12C224:  MOVS            R1, #0
12C226:  MOV             R11, R0
12C228:  MOVS            R6, #0
12C22A:  BL              sub_13D71C
12C22E:  LDR             R0, =(_ZTV11ButtonPanel - 0x12C240); `vtable for'ButtonPanel ...
12C230:  VMOV.F32        S16, #0.5
12C234:  STR.W           R6, [R11,#0x70]
12C238:  ADD.W           R10, SP, #0x50+var_48
12C23C:  ADD             R0, PC; `vtable for'ButtonPanel
12C23E:  STR.W           R6, [R11,#0x7C]
12C242:  ADDS            R0, #8
12C244:  STR.W           R0, [R11]
12C248:  MOV             R0, R11
12C24A:  STR.W           R6, [R11,#0x75]
12C24E:  STR.W           R6, [R0,#0x6C]!
12C252:  STR.W           R6, [R11,#0x71]
12C256:  STR             R0, [SP,#0x50+var_4C]
12C258:  LDR             R0, =(off_22D9A0 - 0x12C25E); ">>" ...
12C25A:  ADD             R0, PC; off_22D9A0
12C25C:  MOV             R9, R0
12C25E:  LDR             R0, =(off_234980 - 0x12C264)
12C260:  ADD             R0, PC; off_234980
12C262:  LDR             R4, [R0]; dword_238EC0
12C264:  MOVS            R0, #0x70 ; 'p'; unsigned int
12C266:  BLX             j__Znwj; operator new(uint)
12C26A:  LDR.W           R1, [R9,R6]; s
12C26E:  MOV             R5, R0
12C270:  MOV             R0, R9
12C272:  MOV             R0, R10; int
12C274:  BL              sub_DC6DC
12C278:  VLDR            S0, [R4]
12C27C:  MOV.W           R8, #1
12C280:  VMUL.F32        S0, S0, S16
12C284:  VMOV            R2, S0
12C288:  MOV             R0, R5
12C28A:  MOV             R1, R10
12C28C:  BL              sub_13CE34
12C290:  LDRD.W          R0, R1, [R11,#0x70]
12C294:  STR             R5, [SP,#0x50+var_2C]
12C296:  CMP             R0, R1
12C298:  BCS             loc_12C2A4
12C29A:  STR.W           R5, [R0],#4
12C29E:  STR.W           R0, [R11,#0x70]
12C2A2:  B               loc_12C2B0
12C2A4:  MOV.W           R8, #0
12C2A8:  LDR             R0, [SP,#0x50+var_4C]
12C2AA:  ADD             R1, SP, #0x50+var_2C
12C2AC:  BL              sub_12C538
12C2B0:  LDRB.W          R0, [SP,#0x50+var_48]
12C2B4:  LSLS            R0, R0, #0x1F
12C2B6:  ITT NE
12C2B8:  LDRNE           R0, [SP,#0x50+var_40]; void *
12C2BA:  BLXNE           j__ZdlPv; operator delete(void *)
12C2BE:  ADDS            R6, #4
12C2C0:  CMP             R6, #0x28 ; '('
12C2C2:  BNE             loc_12C264
12C2C4:  LDR.W           R0, [R11,#0x6C]
12C2C8:  LDR             R0, [R0]
12C2CA:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x12C2D4); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_0,std::allocator<ButtonPanel::ButtonPanel(void)::$_0>,void ()(void)> ...
12C2CC:  STR.W           R10, [SP,#0x50+var_38]
12C2D0:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_0,std::allocator<ButtonPanel::ButtonPanel(void)::$_0>,void ()(void)>
12C2D2:  STR.W           R11, [SP,#0x50+var_44]
12C2D6:  ADDS            R1, #8
12C2D8:  STR             R1, [SP,#0x50+var_48]
12C2DA:  ADDS            R0, #0x58 ; 'X'
12C2DC:  MOV             R1, R10
12C2DE:  BL              sub_12C504
12C2E2:  LDR             R0, [SP,#0x50+var_38]
12C2E4:  CMP             R10, R0
12C2E6:  BEQ             loc_12C2EE
12C2E8:  CBZ             R0, loc_12C2F8
12C2EA:  MOVS            R1, #5
12C2EC:  B               loc_12C2F0
12C2EE:  MOVS            R1, #4
12C2F0:  LDR             R2, [R0]
12C2F2:  LDR.W           R1, [R2,R1,LSL#2]
12C2F6:  BLX             R1
12C2F8:  LDR.W           R0, [R11,#0x6C]
12C2FC:  LDR             R0, [R0,#4]
12C2FE:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x12C308); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_1,std::allocator<ButtonPanel::ButtonPanel(void)::$_1>,void ()(void)> ...
12C300:  STR.W           R10, [SP,#0x50+var_38]
12C304:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_1,std::allocator<ButtonPanel::ButtonPanel(void)::$_1>,void ()(void)>
12C306:  STR.W           R11, [SP,#0x50+var_44]
12C30A:  ADDS            R1, #8
12C30C:  STR             R1, [SP,#0x50+var_48]
12C30E:  ADDS            R0, #0x58 ; 'X'
12C310:  MOV             R1, R10
12C312:  BL              sub_12C504
12C316:  LDR             R0, [SP,#0x50+var_38]
12C318:  CMP             R10, R0
12C31A:  BEQ             loc_12C322
12C31C:  CBZ             R0, loc_12C32C
12C31E:  MOVS            R1, #5
12C320:  B               loc_12C324
12C322:  MOVS            R1, #4
12C324:  LDR             R2, [R0]
12C326:  LDR.W           R1, [R2,R1,LSL#2]
12C32A:  BLX             R1
12C32C:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_2NS_9allocatorIS3_EEFvvEEE - 0x12C336); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_2,std::allocator<ButtonPanel::ButtonPanel(void)::$_2>,void ()(void)> ...
12C32E:  MOVS            R4, #2
12C330:  MOVS            R6, #2
12C332:  ADD             R0, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_2,std::allocator<ButtonPanel::ButtonPanel(void)::$_2>,void ()(void)>
12C334:  ADD.W           R5, R0, #8
12C338:  LDR.W           R0, [R11,#0x6C]
12C33C:  LDR.W           R0, [R0,R6,LSL#2]
12C340:  STR.W           R10, [SP,#0x50+var_38]
12C344:  STRD.W          R6, R4, [SP,#0x50+var_40]
12C348:  ADDS            R0, #0x58 ; 'X'
12C34A:  STRD.W          R5, R11, [SP,#0x50+var_48]
12C34E:  MOV             R1, R10
12C350:  BL              sub_12C504
12C354:  LDR             R0, [SP,#0x50+var_38]
12C356:  CMP             R10, R0
12C358:  BEQ             loc_12C360
12C35A:  CBZ             R0, loc_12C36A
12C35C:  MOVS            R1, #5
12C35E:  B               loc_12C362
12C360:  MOVS            R1, #4
12C362:  LDR             R2, [R0]
12C364:  LDR.W           R1, [R2,R1,LSL#2]
12C368:  BLX             R1
12C36A:  ADDS            R6, #1
12C36C:  CMP             R6, #7
12C36E:  BNE             loc_12C338
12C370:  LDR.W           R0, [R11,#0x6C]
12C374:  LDR             R0, [R0,#0x1C]
12C376:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_3NS_9allocatorIS3_EEFvvEEE - 0x12C380); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_3,std::allocator<ButtonPanel::ButtonPanel(void)::$_3>,void ()(void)> ...
12C378:  STR.W           R10, [SP,#0x50+var_38]
12C37C:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_3,std::allocator<ButtonPanel::ButtonPanel(void)::$_3>,void ()(void)>
12C37E:  STR.W           R11, [SP,#0x50+var_44]
12C382:  ADDS            R1, #8
12C384:  STR             R1, [SP,#0x50+var_48]
12C386:  ADDS            R0, #0x58 ; 'X'
12C388:  MOV             R1, R10
12C38A:  BL              sub_12C504
12C38E:  LDR             R0, [SP,#0x50+var_38]
12C390:  CMP             R10, R0
12C392:  BEQ             loc_12C39A
12C394:  CBZ             R0, loc_12C3A4
12C396:  MOVS            R1, #5
12C398:  B               loc_12C39C
12C39A:  MOVS            R1, #4
12C39C:  LDR             R2, [R0]
12C39E:  LDR.W           R1, [R2,R1,LSL#2]
12C3A2:  BLX             R1
12C3A4:  LDR.W           R0, [R11,#0x6C]
12C3A8:  LDR             R0, [R0,#0x20]
12C3AA:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_4NS_9allocatorIS3_EEFvvEEE - 0x12C3B4); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_4,std::allocator<ButtonPanel::ButtonPanel(void)::$_4>,void ()(void)> ...
12C3AC:  STR.W           R10, [SP,#0x50+var_38]
12C3B0:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_4,std::allocator<ButtonPanel::ButtonPanel(void)::$_4>,void ()(void)>
12C3B2:  STR.W           R11, [SP,#0x50+var_44]
12C3B6:  ADDS            R1, #8
12C3B8:  STR             R1, [SP,#0x50+var_48]
12C3BA:  ADDS            R0, #0x58 ; 'X'
12C3BC:  MOV             R1, R10
12C3BE:  BL              sub_12C504
12C3C2:  LDR             R0, [SP,#0x50+var_38]
12C3C4:  CMP             R10, R0
12C3C6:  BEQ             loc_12C3CE
12C3C8:  CBZ             R0, loc_12C3D8
12C3CA:  MOVS            R1, #5
12C3CC:  B               loc_12C3D0
12C3CE:  MOVS            R1, #4
12C3D0:  LDR             R2, [R0]
12C3D2:  LDR.W           R1, [R2,R1,LSL#2]
12C3D6:  BLX             R1
12C3D8:  LDR.W           R0, [R11,#0x6C]
12C3DC:  LDR             R0, [R0,#0x24]
12C3DE:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN11ButtonPanelC1EvE3$_5NS_9allocatorIS3_EEFvvEEE - 0x12C3E8); `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_5,std::allocator<ButtonPanel::ButtonPanel(void)::$_5>,void ()(void)> ...
12C3E0:  STR.W           R10, [SP,#0x50+var_38]
12C3E4:  ADD             R1, PC; `vtable for'std::__function::__func<ButtonPanel::ButtonPanel(void)::$_5,std::allocator<ButtonPanel::ButtonPanel(void)::$_5>,void ()(void)>
12C3E6:  STR.W           R11, [SP,#0x50+var_44]
12C3EA:  ADDS            R1, #8
12C3EC:  STR             R1, [SP,#0x50+var_48]
12C3EE:  ADDS            R0, #0x58 ; 'X'
12C3F0:  MOV             R1, R10
12C3F2:  BL              sub_12C504
12C3F6:  LDR             R0, [SP,#0x50+var_38]
12C3F8:  CMP             R10, R0
12C3FA:  BEQ             loc_12C402
12C3FC:  CBZ             R0, loc_12C40C
12C3FE:  MOVS            R1, #5
12C400:  B               loc_12C404
12C402:  MOVS            R1, #4
12C404:  LDR             R2, [R0]
12C406:  LDR.W           R1, [R2,R1,LSL#2]
12C40A:  BLX             R1
12C40C:  LDRD.W          R4, R5, [R11,#0x6C]
12C410:  CMP             R4, R5
12C412:  BEQ             loc_12C420
12C414:  LDR             R1, [R4]
12C416:  MOV             R0, R11
12C418:  BL              sub_12BDF6
12C41C:  ADDS            R4, #4
12C41E:  B               loc_12C410
12C420:  MOV             R0, R11
12C422:  ADD             SP, SP, #0x28 ; '('
12C424:  VPOP            {D8}
12C428:  ADD             SP, SP, #4
12C42A:  POP.W           {R8-R11}
12C42E:  POP             {R4-R7,PC}
