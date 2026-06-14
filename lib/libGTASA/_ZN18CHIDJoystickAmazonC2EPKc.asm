; =========================================================
; Game Engine Function: _ZN18CHIDJoystickAmazonC2EPKc
; Address            : 0x28D534 - 0x28D8BC
; =========================================================

28D534:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CHIDJoystickAmazon::CHIDJoystickAmazon(char const*)'
28D536:  ADD             R7, SP, #8
28D538:  MOV             R4, R0
28D53A:  BLX             j__ZN12CHIDJoystickC2EPKc; CHIDJoystick::CHIDJoystick(char const*)
28D53E:  LDR             R0, =(_ZTV18CHIDJoystickAmazon_ptr - 0x28D548)
28D540:  MOVS            R1, #0
28D542:  MOVS            R2, #2
28D544:  ADD             R0, PC; _ZTV18CHIDJoystickAmazon_ptr
28D546:  LDR             R0, [R0]; `vtable for'CHIDJoystickAmazon ...
28D548:  ADDS            R0, #8
28D54A:  STR             R0, [R4]
28D54C:  MOV             R0, R4
28D54E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D552:  MOV             R0, R4
28D554:  MOVS            R1, #0
28D556:  MOVS            R2, #8
28D558:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D55C:  MOV             R0, R4
28D55E:  MOVS            R1, #1
28D560:  MOVS            R2, #1
28D562:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D566:  MOV             R0, R4
28D568:  MOVS            R1, #2
28D56A:  MOVS            R2, #3
28D56C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D570:  MOV             R0, R4
28D572:  MOVS            R1, #2
28D574:  MOVS            R2, #6
28D576:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D57A:  MOV             R0, R4
28D57C:  MOVS            R1, #3
28D57E:  MOVS            R2, #5
28D580:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D584:  MOV             R0, R4
28D586:  MOVS            R1, #0xD
28D588:  MOVS            R2, #9
28D58A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D58E:  MOV             R0, R4
28D590:  MOVS            R1, #0xD
28D592:  MOVS            R2, #0xA
28D594:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D598:  MOV             R0, R4
28D59A:  MOVS            R1, #8
28D59C:  MOVS            R2, #0xC
28D59E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D5A2:  MOV             R0, R4
28D5A4:  MOVS            R1, #9
28D5A6:  MOVS            R2, #0xD
28D5A8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D5AC:  MOV             R0, R4
28D5AE:  MOVS            R1, #6
28D5B0:  MOVS            R2, #0xE
28D5B2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D5B6:  MOV             R0, R4
28D5B8:  MOVS            R1, #0x44 ; 'D'
28D5BA:  MOVS            R2, #0x10
28D5BC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D5C0:  MOV             R0, R4
28D5C2:  MOVS            R1, #7
28D5C4:  MOVS            R2, #7
28D5C6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D5CA:  MOV             R0, R4
28D5CC:  MOVS            R1, #0x45 ; 'E'
28D5CE:  MOVS            R2, #0xF
28D5D0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D5D4:  MOV             R0, R4
28D5D6:  MOVS            R1, #0xC
28D5D8:  MOVS            R2, #4
28D5DA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D5DE:  MOV             R0, R4
28D5E0:  MOVS            R1, #0xC
28D5E2:  MOVS            R2, #0xB
28D5E4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D5E8:  MOV             R0, R4
28D5EA:  MOVS            R1, #4
28D5EC:  MOVS            R2, #0x11
28D5EE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D5F2:  MOV             R0, R4
28D5F4:  MOVS            R1, #0x44 ; 'D'
28D5F6:  MOVS            R2, #0x13
28D5F8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D5FC:  MOV             R0, R4
28D5FE:  MOVS            R1, #0x45 ; 'E'
28D600:  MOVS            R2, #0x14
28D602:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D606:  MOV             R0, R4
28D608:  MOVS            R1, #3
28D60A:  MOVS            R2, #0x16
28D60C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D610:  MOV             R0, R4
28D612:  MOVS            R1, #0xD
28D614:  MOVS            R2, #0x17
28D616:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D61A:  MOV             R0, R4
28D61C:  MOVS            R1, #1
28D61E:  MOVS            R2, #0x20 ; ' '
28D620:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D624:  MOV             R0, R4
28D626:  MOVS            R1, #6
28D628:  MOVS            R2, #0x21 ; '!'
28D62A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D62E:  MOV             R0, R4
28D630:  MOVS            R1, #0x44 ; 'D'
28D632:  MOVS            R2, #0x22 ; '"'
28D634:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D638:  MOV             R0, R4
28D63A:  MOVS            R1, #0x45 ; 'E'
28D63C:  MOVS            R2, #0x23 ; '#'
28D63E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D642:  MOV             R0, R4
28D644:  MOVS            R1, #7
28D646:  MOVS            R2, #0x24 ; '$'
28D648:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D64C:  MOV             R0, R4
28D64E:  MOVS            R1, #0xA
28D650:  MOVS            R2, #0x25 ; '%'
28D652:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D656:  MOV             R0, R4
28D658:  MOVS            R1, #0x44 ; 'D'
28D65A:  MOVS            R2, #0x26 ; '&'
28D65C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D660:  MOV             R0, R4
28D662:  MOVS            R1, #0x45 ; 'E'
28D664:  MOVS            R2, #0x27 ; '''
28D666:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D66A:  MOV             R0, R4
28D66C:  MOVS            R1, #0x40 ; '@'
28D66E:  MOVS            R2, #0x18
28D670:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D674:  MOV             R0, R4
28D676:  MOVS            R1, #0x41 ; 'A'
28D678:  MOVS            R2, #0x19
28D67A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D67E:  MOV             R0, R4
28D680:  MOVS            R1, #0x42 ; 'B'
28D682:  MOVS            R2, #0x1C
28D684:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D688:  MOV             R0, R4
28D68A:  MOVS            R1, #0x43 ; 'C'
28D68C:  MOVS            R2, #0x1D
28D68E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D692:  MOV             R0, R4
28D694:  MOVS            R1, #0x40 ; '@'
28D696:  MOVS            R2, #0x1E
28D698:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D69C:  MOV             R0, R4
28D69E:  MOVS            R1, #0x41 ; 'A'
28D6A0:  MOVS            R2, #0x1F
28D6A2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D6A6:  MOV             R0, R4
28D6A8:  MOVS            R1, #1
28D6AA:  MOVS            R2, #0x28 ; '('
28D6AC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D6B0:  MOV             R0, R4
28D6B2:  MOVS            R1, #4
28D6B4:  MOVS            R2, #0x29 ; ')'
28D6B6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D6BA:  MOV             R0, R4
28D6BC:  MOVS            R1, #0
28D6BE:  MOVS            R2, #0x29 ; ')'
28D6C0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D6C4:  MOV             R0, R4
28D6C6:  MOVS            R1, #0xA
28D6C8:  MOVS            R2, #0x2A ; '*'
28D6CA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D6CE:  MOV             R0, R4
28D6D0:  MOVS            R1, #0xB
28D6D2:  MOVS            R2, #0x2B ; '+'
28D6D4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D6D8:  MOV             R0, R4
28D6DA:  MOVS            R1, #8
28D6DC:  MOVS            R2, #0x2C ; ','
28D6DE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D6E2:  MOV             R0, R4
28D6E4:  MOVS            R1, #9
28D6E6:  MOVS            R2, #0x2D ; '-'
28D6E8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D6EC:  MOV             R0, R4
28D6EE:  MOVS            R1, #0x41 ; 'A'
28D6F0:  MOVS            R2, #0x2E ; '.'
28D6F2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D6F6:  MOV             R0, R4
28D6F8:  MOVS            R1, #0x41 ; 'A'
28D6FA:  MOVS            R2, #0x2F ; '/'
28D6FC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D700:  MOV             R0, R4
28D702:  MOVS            R1, #0x40 ; '@'
28D704:  MOVS            R2, #0x30 ; '0'
28D706:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D70A:  MOV             R0, R4
28D70C:  MOVS            R1, #0x40 ; '@'
28D70E:  MOVS            R2, #0x31 ; '1'
28D710:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D714:  MOV             R0, R4
28D716:  MOVS            R1, #1
28D718:  MOVS            R2, #0x32 ; '2'
28D71A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D71E:  MOV             R0, R4
28D720:  MOVS            R1, #3
28D722:  MOVS            R2, #0x33 ; '3'
28D724:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D728:  MOV             R0, R4
28D72A:  MOVS            R1, #6
28D72C:  MOVS            R2, #0x34 ; '4'
28D72E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D732:  MOV             R0, R4
28D734:  MOVS            R1, #1
28D736:  MOVS            R2, #0x35 ; '5'
28D738:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D73C:  MOV             R0, R4
28D73E:  MOVS            R1, #2
28D740:  MOVS            R2, #0x36 ; '6'
28D742:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D746:  MOV             R0, R4
28D748:  MOVS            R1, #0
28D74A:  MOVS            R2, #0x37 ; '7'
28D74C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D750:  MOV             R0, R4
28D752:  MOVS            R1, #0
28D754:  MOVS            R2, #0x38 ; '8'
28D756:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D75A:  MOV             R0, R4
28D75C:  MOVS            R1, #3
28D75E:  MOVS            R2, #0x39 ; '9'
28D760:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D764:  MOV             R0, R4
28D766:  MOVS            R1, #7
28D768:  MOVS            R2, #0x3A ; ':'
28D76A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D76E:  MOV             R0, R4
28D770:  MOVS            R1, #1
28D772:  MOVS            R2, #0x3B ; ';'
28D774:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D778:  MOV             R0, R4
28D77A:  MOVS            R1, #9
28D77C:  MOVS            R2, #0x3C ; '<'
28D77E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D782:  MOV             R0, R4
28D784:  MOVS            R1, #8
28D786:  MOVS            R2, #0x3D ; '='
28D788:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D78C:  MOV             R0, R4
28D78E:  MOVS            R1, #0xA
28D790:  MOVS            R2, #0x3E ; '>'
28D792:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D796:  MOV             R0, R4
28D798:  MOVS            R1, #0xB
28D79A:  MOVS            R2, #0x3F ; '?'
28D79C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D7A0:  MOV             R0, R4
28D7A2:  MOVS            R1, #4
28D7A4:  MOVS            R2, #0x40 ; '@'
28D7A6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D7AA:  MOV             R0, R4
28D7AC:  MOVS            R1, #0
28D7AE:  MOVS            R2, #0x40 ; '@'
28D7B0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D7B4:  MOV             R0, R4
28D7B6:  MOVS            R1, #1
28D7B8:  MOVS            R2, #0x41 ; 'A'
28D7BA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D7BE:  MOV             R0, R4
28D7C0:  MOVS            R1, #3
28D7C2:  MOVS            R2, #0x42 ; 'B'
28D7C4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D7C8:  MOV             R0, R4
28D7CA:  MOVS            R1, #0
28D7CC:  MOVS            R2, #0x43 ; 'C'
28D7CE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D7D2:  MOV             R0, R4
28D7D4:  MOVS            R1, #3
28D7D6:  MOVS            R2, #0x44 ; 'D'
28D7D8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D7DC:  MOV             R0, R4
28D7DE:  MOVS            R1, #0x40 ; '@'
28D7E0:  MOVS            R2, #0x46 ; 'F'
28D7E2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D7E6:  MOV             R0, R4
28D7E8:  MOVS            R1, #0
28D7EA:  MOVS            R2, #0x47 ; 'G'
28D7EC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D7F0:  MOV             R0, R4
28D7F2:  MOVS            R1, #0xA
28D7F4:  MOVS            R2, #0x48 ; 'H'
28D7F6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D7FA:  MOV             R0, R4
28D7FC:  MOVS            R1, #0xB
28D7FE:  MOVS            R2, #0x49 ; 'I'
28D800:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D804:  MOV             R0, R4
28D806:  MOVS            R1, #7
28D808:  MOVS            R2, #0x4A ; 'J'
28D80A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D80E:  MOV             R0, R4
28D810:  MOVS            R1, #2
28D812:  MOVS            R2, #0x4B ; 'K'
28D814:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D818:  MOV             R0, R4
28D81A:  MOVS            R1, #0
28D81C:  MOVS            R2, #0x4C ; 'L'
28D81E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D822:  MOV             R0, R4
28D824:  MOVS            R1, #1
28D826:  MOVS            R2, #0x4D ; 'M'
28D828:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D82C:  MOV             R0, R4
28D82E:  MOVS            R1, #1
28D830:  MOVS            R2, #0x4E ; 'N'
28D832:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D836:  MOV             R0, R4
28D838:  MOVS            R1, #2
28D83A:  MOVS            R2, #0x4F ; 'O'
28D83C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D840:  MOV             R0, R4
28D842:  MOVS            R1, #0
28D844:  MOVS            R2, #0x52 ; 'R'
28D846:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D84A:  MOV             R0, R4
28D84C:  MOVS            R1, #8
28D84E:  MOVS            R2, #0x53 ; 'S'
28D850:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D854:  MOV             R0, R4
28D856:  MOVS            R1, #9
28D858:  MOVS            R2, #0x54 ; 'T'
28D85A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D85E:  MOV             R0, R4
28D860:  MOVS            R1, #0xD
28D862:  MOVS            R2, #0x55 ; 'U'
28D864:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D868:  MOV             R0, R4
28D86A:  MOVS            R1, #7
28D86C:  MOVS            R2, #0x58 ; 'X'
28D86E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D872:  MOV             R0, R4
28D874:  MOVS            R1, #1
28D876:  MOVS            R2, #0x59 ; 'Y'
28D878:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D87C:  MOV             R0, R4
28D87E:  MOVS            R1, #1
28D880:  MOVS            R2, #0x5E ; '^'
28D882:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D886:  MOV             R0, R4
28D888:  MOVS            R1, #6
28D88A:  MOVS            R2, #0x60 ; '`'
28D88C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D890:  MOV             R0, R4
28D892:  MOVS            R1, #7
28D894:  MOVS            R2, #0x61 ; 'a'
28D896:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D89A:  MOV             R0, R4
28D89C:  MOVS            R1, #6
28D89E:  MOVS            R2, #0x64 ; 'd'
28D8A0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D8A4:  MOV             R0, R4
28D8A6:  MOVS            R1, #7
28D8A8:  MOVS            R2, #0x65 ; 'e'
28D8AA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D8AE:  MOV             R0, R4
28D8B0:  MOVS            R1, #6
28D8B2:  MOVS            R2, #0x67 ; 'g'
28D8B4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28D8B8:  MOV             R0, R4
28D8BA:  POP             {R4,R6,R7,PC}
