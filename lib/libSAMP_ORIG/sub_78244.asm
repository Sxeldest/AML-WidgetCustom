; =========================================================
; Game Engine Function: sub_78244
; Address            : 0x78244 - 0x783D4
; =========================================================

78244:  PUSH            {R4-R7,LR}
78246:  ADD             R7, SP, #0xC
78248:  PUSH.W          {R8}
7824C:  VPUSH           {D8}
78250:  SUB             SP, SP, #0x38
78252:  MOV             R4, R0
78254:  LDR             R0, =(__stack_chk_guard_ptr - 0x7825C)
78256:  MOVS            R1, #1
78258:  ADD             R0, PC; __stack_chk_guard_ptr
7825A:  LDR             R0, [R0]; __stack_chk_guard
7825C:  LDR             R0, [R0]
7825E:  STR             R0, [SP,#0x50+var_1C]
78260:  MOV             R0, R4
78262:  BL              sub_7D794
78266:  LDR             R0, =(_ZTV13commandLayout - 0x7826C); `vtable for'commandLayout ...
78268:  ADD             R0, PC; `vtable for'commandLayout
7826A:  ADDS            R0, #8
7826C:  STR             R0, [R4]
7826E:  MOVS            R0, #0x90; unsigned int
78270:  BLX             j__Znwj; operator new(uint)
78274:  MOV             R5, R0
78276:  LDR             R0, =(off_114C24 - 0x78280)
78278:  VMOV.F32        S16, #0.5
7827C:  ADD             R0, PC; off_114C24
7827E:  LDR.W           R8, [R0]; dword_116D58
78282:  MOVS            R0, #0
78284:  STRB.W          R0, [SP,#0x50+var_33]
78288:  MOV             R0, #0x65766153
78290:  VLDR            S0, [R8]
78294:  STR.W           R0, [SP,#0x50+var_38+1]
78298:  MOVS            R0, #8
7829A:  VMUL.F32        S0, S0, S16
7829E:  STRB.W          R0, [SP,#0x50+var_38]
782A2:  VMOV            R2, S0
782A6:  ADD             R1, SP, #0x50+var_38
782A8:  MOV             R0, R5
782AA:  BL              sub_7C9B0
782AE:  LDRB.W          R0, [SP,#0x50+var_38]
782B2:  STR             R5, [R4,#0x6C]
782B4:  LSLS            R0, R0, #0x1F
782B6:  ITT NE
782B8:  LDRNE           R0, [SP,#0x50+var_30]; void *
782BA:  BLXNE           j__ZdlPv; operator delete(void *)
782BE:  MOVS            R0, #0x90; unsigned int
782C0:  BLX             j__Znwj; operator new(uint)
782C4:  VLDR            S0, [R8]
782C8:  MOV             R6, R0
782CA:  MOVW            R0, #0x6143
782CE:  VMUL.F32        S0, S0, S16
782D2:  MOVT            R0, #0x636E
782D6:  STR.W           R0, [SP,#0x50+var_38+1]
782DA:  MOVS            R0, #0xC
782DC:  STRB.W          R0, [SP,#0x50+var_38]
782E0:  MOVW            R0, #0x6C65
782E4:  STRH.W          R0, [SP,#0x50+var_33]
782E8:  MOVS            R0, #0
782EA:  STRB.W          R0, [SP,#0x50+var_31]
782EE:  VMOV            R2, S0
782F2:  ADD             R5, SP, #0x50+var_38
782F4:  MOV             R0, R6
782F6:  MOV             R1, R5
782F8:  BL              sub_7C9B0
782FC:  LDRB.W          R0, [SP,#0x50+var_38]
78300:  STR             R6, [R4,#0x70]
78302:  LSLS            R0, R0, #0x1F
78304:  ITT NE
78306:  LDRNE           R0, [SP,#0x50+var_30]; void *
78308:  BLXNE           j__ZdlPv; operator delete(void *)
7830C:  LDR             R1, [R4,#0x6C]
7830E:  MOV             R0, R4
78310:  BL              sub_7C73C
78314:  LDR             R1, [R4,#0x70]
78316:  MOV             R0, R4
78318:  BL              sub_7C73C
7831C:  LDR             R0, [R4,#0x6C]
7831E:  MOV             R6, SP
78320:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN13commandLayoutC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x78328); `vtable for'std::__function::__func<commandLayout::commandLayout(void)::$_0,std::allocator<commandLayout::commandLayout(void)::$_0>,void ()(void)> ...
78322:  STR             R6, [SP,#0x50+var_40]
78324:  ADD             R1, PC; `vtable for'std::__function::__func<commandLayout::commandLayout(void)::$_0,std::allocator<commandLayout::commandLayout(void)::$_0>,void ()(void)>
78326:  STR             R4, [SP,#0x50+var_4C]
78328:  ADDS            R1, #8
7832A:  STR             R1, [SP,#0x50+var_50]
7832C:  STRD.W          R1, R4, [SP,#0x50+var_38]
78330:  ADD.W           R1, R0, #0x58 ; 'X'
78334:  MOV             R0, R5
78336:  STR             R5, [SP,#0x50+var_28]
78338:  BL              sub_737F4
7833C:  LDR             R0, [SP,#0x50+var_28]
7833E:  CMP             R5, R0
78340:  BEQ             loc_78348
78342:  CBZ             R0, loc_78352
78344:  MOVS            R1, #5
78346:  B               loc_7834A
78348:  MOVS            R1, #4
7834A:  LDR             R2, [R0]
7834C:  LDR.W           R1, [R2,R1,LSL#2]
78350:  BLX             R1
78352:  LDR             R0, [SP,#0x50+var_40]
78354:  CMP             R6, R0
78356:  BEQ             loc_7835E
78358:  CBZ             R0, loc_78368
7835A:  MOVS            R1, #5
7835C:  B               loc_78360
7835E:  MOVS            R1, #4
78360:  LDR             R2, [R0]
78362:  LDR.W           R1, [R2,R1,LSL#2]
78366:  BLX             R1
78368:  LDR             R0, [R4,#0x70]
7836A:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN13commandLayoutC1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x78372); `vtable for'std::__function::__func<commandLayout::commandLayout(void)::$_1,std::allocator<commandLayout::commandLayout(void)::$_1>,void ()(void)> ...
7836C:  STR             R6, [SP,#0x50+var_40]
7836E:  ADD             R1, PC; `vtable for'std::__function::__func<commandLayout::commandLayout(void)::$_1,std::allocator<commandLayout::commandLayout(void)::$_1>,void ()(void)>
78370:  STR             R4, [SP,#0x50+var_4C]
78372:  ADDS            R1, #8
78374:  STR             R1, [SP,#0x50+var_50]
78376:  STRD.W          R1, R4, [SP,#0x50+var_38]
7837A:  ADD.W           R1, R0, #0x58 ; 'X'
7837E:  MOV             R0, R5
78380:  STR             R5, [SP,#0x50+var_28]
78382:  BL              sub_737F4
78386:  LDR             R0, [SP,#0x50+var_28]
78388:  CMP             R5, R0
7838A:  BEQ             loc_78392
7838C:  CBZ             R0, loc_7839C
7838E:  MOVS            R1, #5
78390:  B               loc_78394
78392:  MOVS            R1, #4
78394:  LDR             R2, [R0]
78396:  LDR.W           R1, [R2,R1,LSL#2]
7839A:  BLX             R1
7839C:  LDR             R0, [SP,#0x50+var_40]
7839E:  CMP             R6, R0
783A0:  BEQ             loc_783A8
783A2:  CBZ             R0, loc_783B2
783A4:  MOVS            R1, #5
783A6:  B               loc_783AA
783A8:  MOVS            R1, #4
783AA:  LDR             R2, [R0]
783AC:  LDR.W           R1, [R2,R1,LSL#2]
783B0:  BLX             R1
783B2:  LDR             R0, [SP,#0x50+var_1C]
783B4:  LDR             R1, =(__stack_chk_guard_ptr - 0x783BA)
783B6:  ADD             R1, PC; __stack_chk_guard_ptr
783B8:  LDR             R1, [R1]; __stack_chk_guard
783BA:  LDR             R1, [R1]
783BC:  CMP             R1, R0
783BE:  ITTTT EQ
783C0:  MOVEQ           R0, R4
783C2:  ADDEQ           SP, SP, #0x38 ; '8'
783C4:  VPOPEQ          {D8}
783C8:  POPEQ.W         {R8}
783CC:  IT EQ
783CE:  POPEQ           {R4-R7,PC}
783D0:  BLX             __stack_chk_fail
