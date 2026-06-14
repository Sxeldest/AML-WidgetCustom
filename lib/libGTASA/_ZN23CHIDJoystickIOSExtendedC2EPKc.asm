; =========================================================
; Game Engine Function: _ZN23CHIDJoystickIOSExtendedC2EPKc
; Address            : 0x28E158 - 0x28E4C2
; =========================================================

28E158:  PUSH            {R4,R6,R7,LR}
28E15A:  ADD             R7, SP, #8
28E15C:  MOV             R4, R0
28E15E:  BLX             j__ZN12CHIDJoystickC2EPKc; CHIDJoystick::CHIDJoystick(char const*)
28E162:  LDR             R0, =(_ZTV23CHIDJoystickIOSExtended_ptr - 0x28E16C)
28E164:  MOVS            R1, #0
28E166:  MOVS            R2, #2
28E168:  ADD             R0, PC; _ZTV23CHIDJoystickIOSExtended_ptr
28E16A:  LDR             R0, [R0]; `vtable for'CHIDJoystickIOSExtended ...
28E16C:  ADDS            R0, #8
28E16E:  STR             R0, [R4]
28E170:  MOV             R0, R4
28E172:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E176:  MOV             R0, R4
28E178:  MOVS            R1, #0x45 ; 'E'
28E17A:  MOVS            R2, #8
28E17C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E180:  MOV             R0, R4
28E182:  MOVS            R1, #1
28E184:  MOVS            R2, #1
28E186:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E18A:  MOV             R0, R4
28E18C:  MOVS            R1, #2
28E18E:  MOVS            R2, #3
28E190:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E194:  MOV             R0, R4
28E196:  MOVS            R1, #0x44 ; 'D'
28E198:  MOVS            R2, #6
28E19A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E19E:  MOV             R0, R4
28E1A0:  MOVS            R1, #3
28E1A2:  MOVS            R2, #5
28E1A4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E1A8:  MOV             R0, R4
28E1AA:  MOVS            R1, #0xA
28E1AC:  MOVS            R2, #0xC
28E1AE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E1B2:  MOV             R0, R4
28E1B4:  MOVS            R1, #0xB
28E1B6:  MOVS            R2, #0xD
28E1B8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E1BC:  MOV             R0, R4
28E1BE:  MOVS            R1, #6
28E1C0:  MOVS            R2, #0x10
28E1C2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E1C6:  MOV             R0, R4
28E1C8:  MOVS            R1, #2
28E1CA:  MOVS            R2, #7
28E1CC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E1D0:  MOV             R0, R4
28E1D2:  MOVS            R1, #7
28E1D4:  MOVS            R2, #0xF
28E1D6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E1DA:  MOV             R0, R4
28E1DC:  MOVS            R1, #9
28E1DE:  MOVS            R2, #4
28E1E0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E1E4:  MOV             R0, R4
28E1E6:  MOVS            R1, #8
28E1E8:  MOVS            R2, #0xB
28E1EA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E1EE:  MOV             R0, R4
28E1F0:  MOVS            R1, #4
28E1F2:  MOVS            R2, #0x11
28E1F4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E1F8:  MOV             R0, R4
28E1FA:  MOVS            R1, #6
28E1FC:  MOVS            R2, #0x13
28E1FE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E202:  MOV             R0, R4
28E204:  MOVS            R1, #7
28E206:  MOVS            R2, #0x14
28E208:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E20C:  MOV             R0, R4
28E20E:  MOVS            R1, #8
28E210:  MOVS            R2, #0x16
28E212:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E216:  MOV             R0, R4
28E218:  MOVS            R1, #8
28E21A:  MOVS            R2, #0x17
28E21C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E220:  MOV             R0, R4
28E222:  MOVS            R1, #1
28E224:  MOVS            R2, #0x20 ; ' '
28E226:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E22A:  MOV             R0, R4
28E22C:  MOVS            R1, #6
28E22E:  MOVS            R2, #0x21 ; '!'
28E230:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E234:  MOV             R0, R4
28E236:  MOVS            R1, #6
28E238:  MOVS            R2, #0x22 ; '"'
28E23A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E23E:  MOV             R0, R4
28E240:  MOVS            R1, #7
28E242:  MOVS            R2, #0x23 ; '#'
28E244:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E248:  MOV             R0, R4
28E24A:  MOVS            R1, #0x45 ; 'E'
28E24C:  MOVS            R2, #0x24 ; '$'
28E24E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E252:  MOV             R0, R4
28E254:  MOVS            R1, #9
28E256:  MOVS            R2, #0x25 ; '%'
28E258:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E25C:  MOV             R0, R4
28E25E:  MOVS            R1, #6
28E260:  MOVS            R2, #0x26 ; '&'
28E262:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E266:  MOV             R0, R4
28E268:  MOVS            R1, #7
28E26A:  MOVS            R2, #0x27 ; '''
28E26C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E270:  MOV             R0, R4
28E272:  MOVS            R1, #0x40 ; '@'
28E274:  MOVS            R2, #0x18
28E276:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E27A:  MOV             R0, R4
28E27C:  MOVS            R1, #0x41 ; 'A'
28E27E:  MOVS            R2, #0x19
28E280:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E284:  MOV             R0, R4
28E286:  MOVS            R1, #0x42 ; 'B'
28E288:  MOVS            R2, #0x1C
28E28A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E28E:  MOV             R0, R4
28E290:  MOVS            R1, #0x43 ; 'C'
28E292:  MOVS            R2, #0x1D
28E294:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E298:  MOV             R0, R4
28E29A:  MOVS            R1, #0x40 ; '@'
28E29C:  MOVS            R2, #0x1E
28E29E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E2A2:  MOV             R0, R4
28E2A4:  MOVS            R1, #0x41 ; 'A'
28E2A6:  MOVS            R2, #0x1F
28E2A8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E2AC:  MOV             R0, R4
28E2AE:  MOVS            R1, #1
28E2B0:  MOVS            R2, #0x28 ; '('
28E2B2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E2B6:  MOV             R0, R4
28E2B8:  MOVS            R1, #4
28E2BA:  MOVS            R2, #0x29 ; ')'
28E2BC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E2C0:  MOV             R0, R4
28E2C2:  MOVS            R1, #0
28E2C4:  MOVS            R2, #0x29 ; ')'
28E2C6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E2CA:  MOV             R0, R4
28E2CC:  MOVS            R1, #0xA
28E2CE:  MOVS            R2, #0x2A ; '*'
28E2D0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E2D4:  MOV             R0, R4
28E2D6:  MOVS            R1, #0xB
28E2D8:  MOVS            R2, #0x2B ; '+'
28E2DA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E2DE:  MOV             R0, R4
28E2E0:  MOVS            R1, #8
28E2E2:  MOVS            R2, #0x2C ; ','
28E2E4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E2E8:  MOV             R0, R4
28E2EA:  MOVS            R1, #9
28E2EC:  MOVS            R2, #0x2D ; '-'
28E2EE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E2F2:  MOV             R0, R4
28E2F4:  MOVS            R1, #0x41 ; 'A'
28E2F6:  MOVS            R2, #0x2E ; '.'
28E2F8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E2FC:  MOV             R0, R4
28E2FE:  MOVS            R1, #0x41 ; 'A'
28E300:  MOVS            R2, #0x2F ; '/'
28E302:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E306:  MOV             R0, R4
28E308:  MOVS            R1, #0x40 ; '@'
28E30A:  MOVS            R2, #0x30 ; '0'
28E30C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E310:  MOV             R0, R4
28E312:  MOVS            R1, #0x40 ; '@'
28E314:  MOVS            R2, #0x31 ; '1'
28E316:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E31A:  MOV             R0, R4
28E31C:  MOVS            R1, #1
28E31E:  MOVS            R2, #0x32 ; '2'
28E320:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E324:  MOV             R0, R4
28E326:  MOVS            R1, #3
28E328:  MOVS            R2, #0x33 ; '3'
28E32A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E32E:  MOV             R0, R4
28E330:  MOVS            R1, #6
28E332:  MOVS            R2, #0x34 ; '4'
28E334:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E338:  MOV             R0, R4
28E33A:  MOVS            R1, #1
28E33C:  MOVS            R2, #0x35 ; '5'
28E33E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E342:  MOV             R0, R4
28E344:  MOVS            R1, #2
28E346:  MOVS            R2, #0x36 ; '6'
28E348:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E34C:  MOV             R0, R4
28E34E:  MOVS            R1, #0
28E350:  MOVS            R2, #0x37 ; '7'
28E352:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E356:  MOV             R0, R4
28E358:  MOVS            R1, #0
28E35A:  MOVS            R2, #0x38 ; '8'
28E35C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E360:  MOV             R0, R4
28E362:  MOVS            R1, #3
28E364:  MOVS            R2, #0x39 ; '9'
28E366:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E36A:  MOV             R0, R4
28E36C:  MOVS            R1, #7
28E36E:  MOVS            R2, #0x3A ; ':'
28E370:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E374:  MOV             R0, R4
28E376:  MOVS            R1, #1
28E378:  MOVS            R2, #0x3B ; ';'
28E37A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E37E:  MOV             R0, R4
28E380:  MOVS            R1, #9
28E382:  MOVS            R2, #0x3C ; '<'
28E384:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E388:  MOV             R0, R4
28E38A:  MOVS            R1, #8
28E38C:  MOVS            R2, #0x3D ; '='
28E38E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E392:  MOV             R0, R4
28E394:  MOVS            R1, #0xA
28E396:  MOVS            R2, #0x3E ; '>'
28E398:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E39C:  MOV             R0, R4
28E39E:  MOVS            R1, #0xB
28E3A0:  MOVS            R2, #0x3F ; '?'
28E3A2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E3A6:  MOV             R0, R4
28E3A8:  MOVS            R1, #4
28E3AA:  MOVS            R2, #0x40 ; '@'
28E3AC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E3B0:  MOV             R0, R4
28E3B2:  MOVS            R1, #0
28E3B4:  MOVS            R2, #0x40 ; '@'
28E3B6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E3BA:  MOV             R0, R4
28E3BC:  MOVS            R1, #1
28E3BE:  MOVS            R2, #0x41 ; 'A'
28E3C0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E3C4:  MOV             R0, R4
28E3C6:  MOVS            R1, #3
28E3C8:  MOVS            R2, #0x42 ; 'B'
28E3CA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E3CE:  MOV             R0, R4
28E3D0:  MOVS            R1, #0
28E3D2:  MOVS            R2, #0x43 ; 'C'
28E3D4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E3D8:  MOV             R0, R4
28E3DA:  MOVS            R1, #3
28E3DC:  MOVS            R2, #0x44 ; 'D'
28E3DE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E3E2:  MOV             R0, R4
28E3E4:  MOVS            R1, #0x40 ; '@'
28E3E6:  MOVS            R2, #0x46 ; 'F'
28E3E8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E3EC:  MOV             R0, R4
28E3EE:  MOVS            R1, #0
28E3F0:  MOVS            R2, #0x47 ; 'G'
28E3F2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E3F6:  MOV             R0, R4
28E3F8:  MOVS            R1, #0xA
28E3FA:  MOVS            R2, #0x48 ; 'H'
28E3FC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E400:  MOV             R0, R4
28E402:  MOVS            R1, #0xB
28E404:  MOVS            R2, #0x49 ; 'I'
28E406:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E40A:  MOV             R0, R4
28E40C:  MOVS            R1, #7
28E40E:  MOVS            R2, #0x4A ; 'J'
28E410:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E414:  MOV             R0, R4
28E416:  MOVS            R1, #2
28E418:  MOVS            R2, #0x4B ; 'K'
28E41A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E41E:  MOV             R0, R4
28E420:  MOVS            R1, #0
28E422:  MOVS            R2, #0x4C ; 'L'
28E424:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E428:  MOV             R0, R4
28E42A:  MOVS            R1, #1
28E42C:  MOVS            R2, #0x4D ; 'M'
28E42E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E432:  MOV             R0, R4
28E434:  MOVS            R1, #1
28E436:  MOVS            R2, #0x4E ; 'N'
28E438:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E43C:  MOV             R0, R4
28E43E:  MOVS            R1, #2
28E440:  MOVS            R2, #0x4F ; 'O'
28E442:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E446:  MOV             R0, R4
28E448:  MOVS            R1, #0
28E44A:  MOVS            R2, #0x52 ; 'R'
28E44C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E450:  MOV             R0, R4
28E452:  MOVS            R1, #8
28E454:  MOVS            R2, #0x53 ; 'S'
28E456:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E45A:  MOV             R0, R4
28E45C:  MOVS            R1, #9
28E45E:  MOVS            R2, #0x54 ; 'T'
28E460:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E464:  MOV             R0, R4
28E466:  MOVS            R1, #9
28E468:  MOVS            R2, #0x55 ; 'U'
28E46A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E46E:  MOV             R0, R4
28E470:  MOVS            R1, #0
28E472:  MOVS            R2, #0x58 ; 'X'
28E474:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E478:  MOV             R0, R4
28E47A:  MOVS            R1, #1
28E47C:  MOVS            R2, #0x59 ; 'Y'
28E47E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E482:  MOV             R0, R4
28E484:  MOVS            R1, #1
28E486:  MOVS            R2, #0x5E ; '^'
28E488:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E48C:  MOV             R0, R4
28E48E:  MOVS            R1, #6
28E490:  MOVS            R2, #0x60 ; '`'
28E492:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E496:  MOV             R0, R4
28E498:  MOVS            R1, #7
28E49A:  MOVS            R2, #0x61 ; 'a'
28E49C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E4A0:  MOV             R0, R4
28E4A2:  MOVS            R1, #6
28E4A4:  MOVS            R2, #0x64 ; 'd'
28E4A6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E4AA:  MOV             R0, R4
28E4AC:  MOVS            R1, #7
28E4AE:  MOVS            R2, #0x65 ; 'e'
28E4B0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E4B4:  MOV             R0, R4
28E4B6:  MOVS            R1, #6
28E4B8:  MOVS            R2, #0x67 ; 'g'
28E4BA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E4BE:  MOV             R0, R4
28E4C0:  POP             {R4,R6,R7,PC}
