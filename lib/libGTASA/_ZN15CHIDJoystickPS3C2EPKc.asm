; =========================================================
; Game Engine Function: _ZN15CHIDJoystickPS3C2EPKc
; Address            : 0x28F370 - 0x28F70C
; =========================================================

28F370:  PUSH            {R4,R6,R7,LR}
28F372:  ADD             R7, SP, #8
28F374:  MOV             R4, R0
28F376:  BLX             j__ZN12CHIDJoystickC2EPKc; CHIDJoystick::CHIDJoystick(char const*)
28F37A:  LDR             R0, =(_ZTV15CHIDJoystickPS3_ptr - 0x28F384)
28F37C:  MOVS            R1, #0
28F37E:  MOVS            R2, #2
28F380:  ADD             R0, PC; _ZTV15CHIDJoystickPS3_ptr
28F382:  LDR             R0, [R0]; `vtable for'CHIDJoystickPS3 ...
28F384:  ADDS            R0, #8
28F386:  STR             R0, [R4]
28F388:  MOV             R0, R4
28F38A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F38E:  MOV             R0, R4
28F390:  MOVS            R1, #0
28F392:  MOVS            R2, #8
28F394:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F398:  MOV             R0, R4
28F39A:  MOVS            R1, #1
28F39C:  MOVS            R2, #1
28F39E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F3A2:  MOV             R0, R4
28F3A4:  MOVS            R1, #2
28F3A6:  MOVS            R2, #3
28F3A8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F3AC:  MOV             R0, R4
28F3AE:  MOVS            R1, #2
28F3B0:  MOVS            R2, #6
28F3B2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F3B6:  MOV             R0, R4
28F3B8:  MOVS            R1, #3
28F3BA:  MOVS            R2, #5
28F3BC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F3C0:  MOV             R0, R4
28F3C2:  MOVS            R1, #5
28F3C4:  MOVS            R2, #9
28F3C6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F3CA:  MOV             R0, R4
28F3CC:  MOVS            R1, #5
28F3CE:  MOVS            R2, #0xA
28F3D0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F3D4:  MOV             R0, R4
28F3D6:  MOVS            R1, #8
28F3D8:  MOVS            R2, #0xC
28F3DA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F3DE:  MOV             R0, R4
28F3E0:  MOVS            R1, #9
28F3E2:  MOVS            R2, #0xD
28F3E4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F3E8:  MOV             R0, R4
28F3EA:  MOVS            R1, #6
28F3EC:  MOVS            R2, #0xE
28F3EE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F3F2:  MOV             R0, R4
28F3F4:  MOVS            R1, #0x44 ; 'D'
28F3F6:  MOVS            R2, #0x10
28F3F8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F3FC:  MOV             R0, R4
28F3FE:  MOVS            R1, #7
28F400:  MOVS            R2, #7
28F402:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F406:  MOV             R0, R4
28F408:  MOVS            R1, #0x45 ; 'E'
28F40A:  MOVS            R2, #0xF
28F40C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F410:  MOV             R0, R4
28F412:  MOVS            R1, #0xC
28F414:  MOVS            R2, #4
28F416:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F41A:  MOV             R0, R4
28F41C:  MOVS            R1, #0xC
28F41E:  MOVS            R2, #0xB
28F420:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F424:  MOV             R0, R4
28F426:  MOVS            R1, #0xD
28F428:  MOVS            R2, #0x12
28F42A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F42E:  MOV             R0, R4
28F430:  MOVS            R1, #4
28F432:  MOVS            R2, #0x11
28F434:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F438:  MOV             R0, R4
28F43A:  MOVS            R1, #0x44 ; 'D'
28F43C:  MOVS            R2, #0x13
28F43E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F442:  MOV             R0, R4
28F444:  MOVS            R1, #0x45 ; 'E'
28F446:  MOVS            R2, #0x14
28F448:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F44C:  MOV             R0, R4
28F44E:  MOVS            R1, #3
28F450:  MOVS            R2, #0x16
28F452:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F456:  MOV             R0, R4
28F458:  MOVS            R1, #0xD
28F45A:  MOVS            R2, #0x17
28F45C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F460:  MOV             R0, R4
28F462:  MOVS            R1, #1
28F464:  MOVS            R2, #0x20 ; ' '
28F466:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F46A:  MOV             R0, R4
28F46C:  MOVS            R1, #6
28F46E:  MOVS            R2, #0x21 ; '!'
28F470:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F474:  MOV             R0, R4
28F476:  MOVS            R1, #0x44 ; 'D'
28F478:  MOVS            R2, #0x22 ; '"'
28F47A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F47E:  MOV             R0, R4
28F480:  MOVS            R1, #0x45 ; 'E'
28F482:  MOVS            R2, #0x23 ; '#'
28F484:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F488:  MOV             R0, R4
28F48A:  MOVS            R1, #7
28F48C:  MOVS            R2, #0x24 ; '$'
28F48E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F492:  MOV             R0, R4
28F494:  MOVS            R1, #0xA
28F496:  MOVS            R2, #0x25 ; '%'
28F498:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F49C:  MOV             R0, R4
28F49E:  MOVS            R1, #0x44 ; 'D'
28F4A0:  MOVS            R2, #0x26 ; '&'
28F4A2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F4A6:  MOV             R0, R4
28F4A8:  MOVS            R1, #0x45 ; 'E'
28F4AA:  MOVS            R2, #0x27 ; '''
28F4AC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F4B0:  MOV             R0, R4
28F4B2:  MOVS            R1, #0x40 ; '@'
28F4B4:  MOVS            R2, #0x18
28F4B6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F4BA:  MOV             R0, R4
28F4BC:  MOVS            R1, #0x41 ; 'A'
28F4BE:  MOVS            R2, #0x19
28F4C0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F4C4:  MOV             R0, R4
28F4C6:  MOVS            R1, #0x42 ; 'B'
28F4C8:  MOVS            R2, #0x1C
28F4CA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F4CE:  MOV             R0, R4
28F4D0:  MOVS            R1, #0x43 ; 'C'
28F4D2:  MOVS            R2, #0x1D
28F4D4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F4D8:  MOV             R0, R4
28F4DA:  MOVS            R1, #0x40 ; '@'
28F4DC:  MOVS            R2, #0x1E
28F4DE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F4E2:  MOV             R0, R4
28F4E4:  MOVS            R1, #0x41 ; 'A'
28F4E6:  MOVS            R2, #0x1F
28F4E8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F4EC:  MOV             R0, R4
28F4EE:  MOVS            R1, #1
28F4F0:  MOVS            R2, #0x28 ; '('
28F4F2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F4F6:  MOV             R0, R4
28F4F8:  MOVS            R1, #4
28F4FA:  MOVS            R2, #0x29 ; ')'
28F4FC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F500:  MOV             R0, R4
28F502:  MOVS            R1, #0
28F504:  MOVS            R2, #0x29 ; ')'
28F506:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F50A:  MOV             R0, R4
28F50C:  MOVS            R1, #0xA
28F50E:  MOVS            R2, #0x2A ; '*'
28F510:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F514:  MOV             R0, R4
28F516:  MOVS            R1, #0xB
28F518:  MOVS            R2, #0x2B ; '+'
28F51A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F51E:  MOV             R0, R4
28F520:  MOVS            R1, #8
28F522:  MOVS            R2, #0x2C ; ','
28F524:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F528:  MOV             R0, R4
28F52A:  MOVS            R1, #9
28F52C:  MOVS            R2, #0x2D ; '-'
28F52E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F532:  MOV             R0, R4
28F534:  MOVS            R1, #0x41 ; 'A'
28F536:  MOVS            R2, #0x2E ; '.'
28F538:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F53C:  MOV             R0, R4
28F53E:  MOVS            R1, #0x41 ; 'A'
28F540:  MOVS            R2, #0x2F ; '/'
28F542:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F546:  MOV             R0, R4
28F548:  MOVS            R1, #0x40 ; '@'
28F54A:  MOVS            R2, #0x30 ; '0'
28F54C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F550:  MOV             R0, R4
28F552:  MOVS            R1, #0x40 ; '@'
28F554:  MOVS            R2, #0x31 ; '1'
28F556:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F55A:  MOV             R0, R4
28F55C:  MOVS            R1, #1
28F55E:  MOVS            R2, #0x32 ; '2'
28F560:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F564:  MOV             R0, R4
28F566:  MOVS            R1, #3
28F568:  MOVS            R2, #0x33 ; '3'
28F56A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F56E:  MOV             R0, R4
28F570:  MOVS            R1, #6
28F572:  MOVS            R2, #0x34 ; '4'
28F574:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F578:  MOV             R0, R4
28F57A:  MOVS            R1, #1
28F57C:  MOVS            R2, #0x35 ; '5'
28F57E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F582:  MOV             R0, R4
28F584:  MOVS            R1, #2
28F586:  MOVS            R2, #0x36 ; '6'
28F588:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F58C:  MOV             R0, R4
28F58E:  MOVS            R1, #0
28F590:  MOVS            R2, #0x37 ; '7'
28F592:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F596:  MOV             R0, R4
28F598:  MOVS            R1, #0
28F59A:  MOVS            R2, #0x38 ; '8'
28F59C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F5A0:  MOV             R0, R4
28F5A2:  MOVS            R1, #3
28F5A4:  MOVS            R2, #0x39 ; '9'
28F5A6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F5AA:  MOV             R0, R4
28F5AC:  MOVS            R1, #7
28F5AE:  MOVS            R2, #0x3A ; ':'
28F5B0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F5B4:  MOV             R0, R4
28F5B6:  MOVS            R1, #1
28F5B8:  MOVS            R2, #0x3B ; ';'
28F5BA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F5BE:  MOV             R0, R4
28F5C0:  MOVS            R1, #9
28F5C2:  MOVS            R2, #0x3C ; '<'
28F5C4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F5C8:  MOV             R0, R4
28F5CA:  MOVS            R1, #8
28F5CC:  MOVS            R2, #0x3D ; '='
28F5CE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F5D2:  MOV             R0, R4
28F5D4:  MOVS            R1, #0xA
28F5D6:  MOVS            R2, #0x3E ; '>'
28F5D8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F5DC:  MOV             R0, R4
28F5DE:  MOVS            R1, #0xB
28F5E0:  MOVS            R2, #0x3F ; '?'
28F5E2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F5E6:  MOV             R0, R4
28F5E8:  MOVS            R1, #4
28F5EA:  MOVS            R2, #0x40 ; '@'
28F5EC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F5F0:  MOV             R0, R4
28F5F2:  MOVS            R1, #0
28F5F4:  MOVS            R2, #0x40 ; '@'
28F5F6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F5FA:  MOV             R0, R4
28F5FC:  MOVS            R1, #1
28F5FE:  MOVS            R2, #0x41 ; 'A'
28F600:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F604:  MOV             R0, R4
28F606:  MOVS            R1, #5
28F608:  MOVS            R2, #0x42 ; 'B'
28F60A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F60E:  MOV             R0, R4
28F610:  MOVS            R1, #0
28F612:  MOVS            R2, #0x43 ; 'C'
28F614:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F618:  MOV             R0, R4
28F61A:  MOVS            R1, #5
28F61C:  MOVS            R2, #0x45 ; 'E'
28F61E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F622:  MOV             R0, R4
28F624:  MOVS            R1, #3
28F626:  MOVS            R2, #0x44 ; 'D'
28F628:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F62C:  MOV             R0, R4
28F62E:  MOVS            R1, #0x40 ; '@'
28F630:  MOVS            R2, #0x46 ; 'F'
28F632:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F636:  MOV             R0, R4
28F638:  MOVS            R1, #0
28F63A:  MOVS            R2, #0x47 ; 'G'
28F63C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F640:  MOV             R0, R4
28F642:  MOVS            R1, #0xA
28F644:  MOVS            R2, #0x48 ; 'H'
28F646:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F64A:  MOV             R0, R4
28F64C:  MOVS            R1, #0xB
28F64E:  MOVS            R2, #0x49 ; 'I'
28F650:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F654:  MOV             R0, R4
28F656:  MOVS            R1, #7
28F658:  MOVS            R2, #0x4A ; 'J'
28F65A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F65E:  MOV             R0, R4
28F660:  MOVS            R1, #2
28F662:  MOVS            R2, #0x4B ; 'K'
28F664:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F668:  MOV             R0, R4
28F66A:  MOVS            R1, #0
28F66C:  MOVS            R2, #0x4C ; 'L'
28F66E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F672:  MOV             R0, R4
28F674:  MOVS            R1, #1
28F676:  MOVS            R2, #0x4D ; 'M'
28F678:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F67C:  MOV             R0, R4
28F67E:  MOVS            R1, #1
28F680:  MOVS            R2, #0x4E ; 'N'
28F682:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F686:  MOV             R0, R4
28F688:  MOVS            R1, #2
28F68A:  MOVS            R2, #0x4F ; 'O'
28F68C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F690:  MOV             R0, R4
28F692:  MOVS            R1, #0
28F694:  MOVS            R2, #0x52 ; 'R'
28F696:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F69A:  MOV             R0, R4
28F69C:  MOVS            R1, #8
28F69E:  MOVS            R2, #0x53 ; 'S'
28F6A0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F6A4:  MOV             R0, R4
28F6A6:  MOVS            R1, #9
28F6A8:  MOVS            R2, #0x54 ; 'T'
28F6AA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F6AE:  MOV             R0, R4
28F6B0:  MOVS            R1, #0xD
28F6B2:  MOVS            R2, #0x55 ; 'U'
28F6B4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F6B8:  MOV             R0, R4
28F6BA:  MOVS            R1, #7
28F6BC:  MOVS            R2, #0x58 ; 'X'
28F6BE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F6C2:  MOV             R0, R4
28F6C4:  MOVS            R1, #1
28F6C6:  MOVS            R2, #0x59 ; 'Y'
28F6C8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F6CC:  MOV             R0, R4
28F6CE:  MOVS            R1, #1
28F6D0:  MOVS            R2, #0x5E ; '^'
28F6D2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F6D6:  MOV             R0, R4
28F6D8:  MOVS            R1, #6
28F6DA:  MOVS            R2, #0x60 ; '`'
28F6DC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F6E0:  MOV             R0, R4
28F6E2:  MOVS            R1, #7
28F6E4:  MOVS            R2, #0x61 ; 'a'
28F6E6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F6EA:  MOV             R0, R4
28F6EC:  MOVS            R1, #6
28F6EE:  MOVS            R2, #0x64 ; 'd'
28F6F0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F6F4:  MOV             R0, R4
28F6F6:  MOVS            R1, #7
28F6F8:  MOVS            R2, #0x65 ; 'e'
28F6FA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F6FE:  MOV             R0, R4
28F700:  MOVS            R1, #6
28F702:  MOVS            R2, #0x67 ; 'g'
28F704:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F708:  MOV             R0, R4
28F70A:  POP             {R4,R6,R7,PC}
