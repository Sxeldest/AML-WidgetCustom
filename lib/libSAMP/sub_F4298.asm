; =========================================================
; Game Engine Function: sub_F4298
; Address            : 0xF4298 - 0xF4356
; =========================================================

F4298:  SUBS            R1, #1; switch 35 cases
F429A:  CMP             R1, #0x22 ; '"'
F429C:  ITT HI
F429E:  MOVHI           R0, #0
F42A0:  BXHI            LR
F42A2:  TBB.W           [PC,R1]; switch jump
F42A6:  DCB 0x12; jump table for switch statement
F42A7:  DCB 0x14
F42A8:  DCB 0x16
F42A9:  DCB 0x18
F42AA:  DCB 0x1A
F42AB:  DCB 0x1C
F42AC:  DCB 0x1E
F42AD:  DCB 0x20
F42AE:  DCB 0x22
F42AF:  DCB 0x24
F42B0:  DCB 0x26
F42B1:  DCB 0x28
F42B2:  DCB 0x2A
F42B3:  DCB 0x2C
F42B4:  DCB 0x2E
F42B5:  DCB 0x30
F42B6:  DCB 0x32
F42B7:  DCB 0x34
F42B8:  DCB 0x36
F42B9:  DCB 0x38
F42BA:  DCB 0x3A
F42BB:  DCB 0x3C
F42BC:  DCB 0x3E
F42BD:  DCB 0x40
F42BE:  DCB 0x42
F42BF:  DCB 0x44
F42C0:  DCB 0x46
F42C1:  DCB 0x48
F42C2:  DCB 0x4A
F42C3:  DCB 0x4C
F42C4:  DCB 0x4E
F42C5:  DCB 0x50
F42C6:  DCB 0x52
F42C7:  DCB 0x54
F42C8:  DCB 0x56
F42C9:  ALIGN 2
F42CA:  ADDS            R0, #4; jumptable 000F42A2 case 1
F42CC:  BX              LR
F42CE:  ADDS            R0, #0xC; jumptable 000F42A2 case 2
F42D0:  BX              LR
F42D2:  ADDS            R0, #0x10; jumptable 000F42A2 case 3
F42D4:  BX              LR
F42D6:  ADDS            R0, #0x14; jumptable 000F42A2 case 4
F42D8:  BX              LR
F42DA:  ADDS            R0, #0x18; jumptable 000F42A2 case 5
F42DC:  BX              LR
F42DE:  ADDS            R0, #0x1C; jumptable 000F42A2 case 6
F42E0:  BX              LR
F42E2:  ADDS            R0, #0x28 ; '('; jumptable 000F42A2 case 7
F42E4:  BX              LR
F42E6:  ADDS            R0, #0xA4; jumptable 000F42A2 case 8
F42E8:  BX              LR
F42EA:  ADDS            R0, #0xA8; jumptable 000F42A2 case 9
F42EC:  BX              LR
F42EE:  ADDS            R0, #0x84; jumptable 000F42A2 case 10
F42F0:  BX              LR
F42F2:  ADDS            R0, #0x7C ; '|'; jumptable 000F42A2 case 11
F42F4:  BX              LR
F42F6:  ADDS            R0, #0x80; jumptable 000F42A2 case 12
F42F8:  BX              LR
F42FA:  ADDS            R0, #0x94; jumptable 000F42A2 case 13
F42FC:  BX              LR
F42FE:  ADDS            R0, #0x98; jumptable 000F42A2 case 14
F4300:  BX              LR
F4302:  ADDS            R0, #0xA0; jumptable 000F42A2 case 15
F4304:  BX              LR
F4306:  ADDS            R0, #0xAC; jumptable 000F42A2 case 16
F4308:  BX              LR
F430A:  ADDS            R0, #0xB0; jumptable 000F42A2 case 17
F430C:  BX              LR
F430E:  ADDS            R0, #0xB4; jumptable 000F42A2 case 18
F4310:  BX              LR
F4312:  ADDS            R0, #0xB8; jumptable 000F42A2 case 19
F4314:  BX              LR
F4316:  ADDS            R0, #0xBC; jumptable 000F42A2 case 20
F4318:  BX              LR
F431A:  ADDS            R0, #0xC0; jumptable 000F42A2 case 21
F431C:  BX              LR
F431E:  ADDS            R0, #0xC4; jumptable 000F42A2 case 22
F4320:  BX              LR
F4322:  ADDS            R0, #0xD4; jumptable 000F42A2 case 23
F4324:  BX              LR
F4326:  ADDS            R0, #0xC8; jumptable 000F42A2 case 24
F4328:  BX              LR
F432A:  ADDS            R0, #0x20 ; ' '; jumptable 000F42A2 case 25
F432C:  BX              LR
F432E:  ADDS            R0, #0xDE; jumptable 000F42A2 case 26
F4330:  BX              LR
F4332:  ADDS            R0, #0xDC; jumptable 000F42A2 case 27
F4334:  BX              LR
F4336:  ADDS            R0, #0xDD; jumptable 000F42A2 case 28
F4338:  BX              LR
F433A:  ADDS            R0, #0x74 ; 't'; jumptable 000F42A2 case 29
F433C:  BX              LR
F433E:  ADDS            R0, #0x75 ; 'u'; jumptable 000F42A2 case 30
F4340:  BX              LR
F4342:  ADDS            R0, #0x76 ; 'v'; jumptable 000F42A2 case 31
F4344:  BX              LR
F4346:  ADDS            R0, #0x9C; jumptable 000F42A2 case 32
F4348:  BX              LR
F434A:  ADDS            R0, #0xD8; jumptable 000F42A2 case 33
F434C:  BX              LR
F434E:  ADDS            R0, #0xD0; jumptable 000F42A2 case 34
F4350:  BX              LR
F4352:  ADDS            R0, #0xCC; jumptable 000F42A2 case 35
F4354:  BX              LR
