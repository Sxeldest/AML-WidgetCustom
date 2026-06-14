; =========================================================
; Game Engine Function: _Z12emu_glEnablej
; Address            : 0x1BB21C - 0x1BB42E
; =========================================================

1BB21C:  PUSH            {R4,R6,R7,LR}
1BB21E:  ADD             R7, SP, #8
1BB220:  MOVW            R1, #0xBE1
1BB224:  CMP             R0, R1
1BB226:  BLE             loc_1BB256
1BB228:  SUB.W           R1, R0, #0x4000
1BB22C:  CMP             R1, #8
1BB22E:  BCS             loc_1BB28E
1BB230:  MOV             R0, R1; unsigned int
1BB232:  BLX             j__Z8GetLightj; GetLight(uint)
1BB236:  LDRB            R1, [R0]
1BB238:  MOVS            R2, #1
1BB23A:  CMP             R1, #1
1BB23C:  ITT NE
1BB23E:  MOVNE           R1, #1
1BB240:  STRBNE          R1, [R0,#1]
1BB242:  STRB            R2, [R0]
1BB244:  LDR             R1, =(curEmulatorStateFlags_ptr - 0x1BB24A)
1BB246:  ADD             R1, PC; curEmulatorStateFlags_ptr
1BB248:  LDR             R0, [R1]; curEmulatorStateFlags
1BB24A:  MOV.W           R1, #0x10000000
1BB24E:  LDR             R2, [R0]
1BB250:  ORRS            R1, R2
1BB252:  STR             R1, [R0]
1BB254:  POP             {R4,R6,R7,PC}
1BB256:  CMP.W           R0, #0xB70
1BB25A:  BGT             loc_1BB276
1BB25C:  CMP.W           R0, #0xB50
1BB260:  BEQ             loc_1BB2AA
1BB262:  MOVW            R1, #0xB57
1BB266:  CMP             R0, R1
1BB268:  BNE             locret_1BB254
1BB26A:  LDR             R0, =(curEmulatorStateFlags_ptr - 0x1BB274)
1BB26C:  MOV.W           R1, #0x8000000
1BB270:  ADD             R0, PC; curEmulatorStateFlags_ptr
1BB272:  LDR             R0, [R0]; curEmulatorStateFlags
1BB274:  B               loc_1BB24E
1BB276:  MOVW            R1, #0xB71
1BB27A:  CMP             R0, R1
1BB27C:  BEQ             loc_1BB2C0
1BB27E:  CMP.W           R0, #0xBC0
1BB282:  BNE             locret_1BB254
1BB284:  LDR             R0, =(curShaderStateFlags_ptr - 0x1BB28C)
1BB286:  MOVS            R1, #1
1BB288:  ADD             R0, PC; curShaderStateFlags_ptr
1BB28A:  LDR             R0, [R0]; curShaderStateFlags
1BB28C:  B               loc_1BB24E
1BB28E:  MOVW            R1, #0xBE2
1BB292:  CMP             R0, R1
1BB294:  BEQ             loc_1BB35E
1BB296:  MOVW            R1, #0xDE1
1BB29A:  CMP             R0, R1
1BB29C:  IT NE
1BB29E:  POPNE           {R4,R6,R7,PC}
1BB2A0:  LDR             R0, =(curShaderStateFlags_ptr - 0x1BB2A8)
1BB2A2:  MOVS            R1, #0x20 ; ' '
1BB2A4:  ADD             R0, PC; curShaderStateFlags_ptr
1BB2A6:  LDR             R0, [R0]; curShaderStateFlags
1BB2A8:  B               loc_1BB24E
1BB2AA:  LDR             R0, =(curShaderStateFlags_ptr - 0x1BB2B0)
1BB2AC:  ADD             R0, PC; curShaderStateFlags_ptr
1BB2AE:  LDR             R1, [R0]; curShaderStateFlags
1BB2B0:  LDR             R0, =(curEmulatorStateFlags_ptr - 0x1BB2B6)
1BB2B2:  ADD             R0, PC; curEmulatorStateFlags_ptr
1BB2B4:  LDR             R2, [R1]
1BB2B6:  ORR.W           R2, R2, #2
1BB2BA:  LDR             R0, [R0]; curEmulatorStateFlags
1BB2BC:  STR             R2, [R1]
1BB2BE:  B               loc_1BB24A
1BB2C0:  LDR             R0, =(renderQueue_ptr - 0x1BB2C8)
1BB2C2:  MOVS            R3, #0x20 ; ' '
1BB2C4:  ADD             R0, PC; renderQueue_ptr
1BB2C6:  LDR             R0, [R0]; renderQueue
1BB2C8:  LDR             R1, [R0]
1BB2CA:  LDR.W           R2, [R1,#0x274]
1BB2CE:  STR.W           R3, [R1,#0x278]
1BB2D2:  STR             R3, [R2]
1BB2D4:  MOVS            R3, #1
1BB2D6:  LDR.W           R2, [R1,#0x274]
1BB2DA:  ADDS            R2, #4
1BB2DC:  STR.W           R2, [R1,#0x274]
1BB2E0:  LDR             R1, [R0]
1BB2E2:  LDR.W           R2, [R1,#0x274]
1BB2E6:  STR             R3, [R2]
1BB2E8:  LDR.W           R2, [R1,#0x274]
1BB2EC:  ADDS            R2, #4
1BB2EE:  STR.W           R2, [R1,#0x274]
1BB2F2:  LDR             R4, [R0]
1BB2F4:  LDRB.W          R0, [R4,#0x259]
1BB2F8:  CMP             R0, #0
1BB2FA:  ITT NE
1BB2FC:  LDRNE.W         R0, [R4,#0x25C]; mutex
1BB300:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1BB304:  LDRD.W          R1, R2, [R4,#0x270]
1BB308:  ADD.W           R0, R4, #0x270
1BB30C:  DMB.W           ISH
1BB310:  SUBS            R1, R2, R1
1BB312:  LDREX.W         R2, [R0]
1BB316:  ADD             R2, R1
1BB318:  STREX.W         R3, R2, [R0]
1BB31C:  CMP             R3, #0
1BB31E:  BNE             loc_1BB312
1BB320:  DMB.W           ISH
1BB324:  LDRB.W          R0, [R4,#0x259]
1BB328:  CMP             R0, #0
1BB32A:  ITT NE
1BB32C:  LDRNE.W         R0, [R4,#0x25C]; mutex
1BB330:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1BB334:  LDRB.W          R0, [R4,#0x258]
1BB338:  CMP             R0, #0
1BB33A:  ITT EQ
1BB33C:  MOVEQ           R0, R4; this
1BB33E:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1BB342:  LDR.W           R1, [R4,#0x270]
1BB346:  LDR.W           R0, [R4,#0x264]
1BB34A:  ADD.W           R1, R1, #0x400
1BB34E:  CMP             R1, R0
1BB350:  BLS             loc_1BB374
1BB352:  MOV             R0, R4; this
1BB354:  BLX             j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1BB358:  LDR             R0, =(curEmulatorStateFlags_ptr - 0x1BB35E)
1BB35A:  ADD             R0, PC; curEmulatorStateFlags_ptr
1BB35C:  B               loc_1BB378
1BB35E:  LDR             R0, =(emu_InternalBlendEnabled_ptr - 0x1BB364)
1BB360:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1BB362:  LDR             R0, [R0]; emu_InternalBlendEnabled
1BB364:  LDRB            R0, [R0]
1BB366:  CBZ             R0, loc_1BB380
1BB368:  LDR             R0, =(curEmulatorStateFlags_ptr - 0x1BB372)
1BB36A:  MOV.W           R1, #0x4000000
1BB36E:  ADD             R0, PC; curEmulatorStateFlags_ptr
1BB370:  LDR             R0, [R0]; curEmulatorStateFlags
1BB372:  B               loc_1BB24E
1BB374:  LDR             R0, =(curEmulatorStateFlags_ptr - 0x1BB37A)
1BB376:  ADD             R0, PC; curEmulatorStateFlags_ptr
1BB378:  LDR             R0, [R0]; curEmulatorStateFlags
1BB37A:  MOV.W           R1, #0x1000000
1BB37E:  B               loc_1BB24E
1BB380:  LDR             R0, =(renderQueue_ptr - 0x1BB388)
1BB382:  MOVS            R3, #0x22 ; '"'
1BB384:  ADD             R0, PC; renderQueue_ptr
1BB386:  LDR             R0, [R0]; renderQueue
1BB388:  LDR             R1, [R0]
1BB38A:  LDR.W           R2, [R1,#0x274]
1BB38E:  STR.W           R3, [R1,#0x278]
1BB392:  STR             R3, [R2]
1BB394:  MOVS            R3, #1
1BB396:  LDR.W           R2, [R1,#0x274]
1BB39A:  ADDS            R2, #4
1BB39C:  STR.W           R2, [R1,#0x274]
1BB3A0:  LDR             R1, [R0]
1BB3A2:  LDR.W           R2, [R1,#0x274]
1BB3A6:  STR             R3, [R2]
1BB3A8:  LDR.W           R2, [R1,#0x274]
1BB3AC:  ADDS            R2, #4
1BB3AE:  STR.W           R2, [R1,#0x274]
1BB3B2:  LDR             R4, [R0]
1BB3B4:  LDRB.W          R0, [R4,#0x259]
1BB3B8:  CMP             R0, #0
1BB3BA:  ITT NE
1BB3BC:  LDRNE.W         R0, [R4,#0x25C]; mutex
1BB3C0:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1BB3C4:  LDRD.W          R1, R2, [R4,#0x270]
1BB3C8:  ADD.W           R0, R4, #0x270
1BB3CC:  DMB.W           ISH
1BB3D0:  SUBS            R1, R2, R1
1BB3D2:  LDREX.W         R2, [R0]
1BB3D6:  ADD             R2, R1
1BB3D8:  STREX.W         R3, R2, [R0]
1BB3DC:  CMP             R3, #0
1BB3DE:  BNE             loc_1BB3D2
1BB3E0:  DMB.W           ISH
1BB3E4:  LDRB.W          R0, [R4,#0x259]
1BB3E8:  CMP             R0, #0
1BB3EA:  ITT NE
1BB3EC:  LDRNE.W         R0, [R4,#0x25C]; mutex
1BB3F0:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1BB3F4:  LDRB.W          R0, [R4,#0x258]
1BB3F8:  CMP             R0, #0
1BB3FA:  ITT EQ
1BB3FC:  MOVEQ           R0, R4; this
1BB3FE:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1BB402:  LDR.W           R1, [R4,#0x270]
1BB406:  LDR.W           R0, [R4,#0x264]
1BB40A:  ADD.W           R1, R1, #0x400
1BB40E:  CMP             R1, R0
1BB410:  ITT HI
1BB412:  MOVHI           R0, R4; this
1BB414:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1BB418:  LDR             R0, =(emu_InternalBlendEnabled_ptr - 0x1BB422)
1BB41A:  MOVS            R3, #1
1BB41C:  LDR             R1, =(curEmulatorStateFlags_ptr - 0x1BB424)
1BB41E:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1BB420:  ADD             R1, PC; curEmulatorStateFlags_ptr
1BB422:  LDR             R2, [R0]; emu_InternalBlendEnabled
1BB424:  LDR             R0, [R1]; curEmulatorStateFlags
1BB426:  MOV.W           R1, #0x4000000
1BB42A:  STRB            R3, [R2]
1BB42C:  B               loc_1BB24E
