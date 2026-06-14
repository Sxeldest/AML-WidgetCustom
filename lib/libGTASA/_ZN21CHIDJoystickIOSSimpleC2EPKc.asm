; =========================================================
; Game Engine Function: _ZN21CHIDJoystickIOSSimpleC2EPKc
; Address            : 0x28E610 - 0x28E88A
; =========================================================

28E610:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CHIDJoystickIOSSimple::CHIDJoystickIOSSimple(char const*)'
28E612:  ADD             R7, SP, #8
28E614:  MOV             R4, R0
28E616:  BLX             j__ZN12CHIDJoystickC2EPKc; CHIDJoystick::CHIDJoystick(char const*)
28E61A:  LDR             R0, =(_ZTV21CHIDJoystickIOSSimple_ptr - 0x28E624)
28E61C:  MOVS            R1, #0
28E61E:  MOVS            R2, #2
28E620:  ADD             R0, PC; _ZTV21CHIDJoystickIOSSimple_ptr
28E622:  LDR             R0, [R0]; `vtable for'CHIDJoystickIOSSimple ...
28E624:  ADDS            R0, #8
28E626:  STR             R0, [R4]
28E628:  MOV             R0, R4
28E62A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E62E:  MOV             R0, R4
28E630:  MOVS            R1, #7
28E632:  MOVS            R2, #8
28E634:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E638:  MOV             R0, R4
28E63A:  MOVS            R1, #1
28E63C:  MOVS            R2, #1
28E63E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E642:  MOV             R0, R4
28E644:  MOVS            R1, #2
28E646:  MOVS            R2, #3
28E648:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E64C:  MOV             R0, R4
28E64E:  MOVS            R1, #6
28E650:  MOVS            R2, #6
28E652:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E656:  MOV             R0, R4
28E658:  MOVS            R1, #3
28E65A:  MOVS            R2, #5
28E65C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E660:  MOV             R0, R4
28E662:  MOVS            R1, #2
28E664:  MOVS            R2, #7
28E666:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E66A:  MOV             R0, R4
28E66C:  MOVS            R1, #4
28E66E:  MOVS            R2, #0x11
28E670:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E674:  MOV             R0, R4
28E676:  MOVS            R1, #3
28E678:  MOVS            R2, #0x16
28E67A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E67E:  MOV             R0, R4
28E680:  MOVS            R1, #1
28E682:  MOVS            R2, #0x20 ; ' '
28E684:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E688:  MOV             R0, R4
28E68A:  MOVS            R1, #6
28E68C:  MOVS            R2, #0x21 ; '!'
28E68E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E692:  MOV             R0, R4
28E694:  MOVS            R1, #2
28E696:  MOVS            R2, #0x22 ; '"'
28E698:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E69C:  MOV             R0, R4
28E69E:  MOVS            R1, #0
28E6A0:  MOVS            R2, #0x23 ; '#'
28E6A2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E6A6:  MOV             R0, R4
28E6A8:  MOVS            R1, #7
28E6AA:  MOVS            R2, #0x24 ; '$'
28E6AC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E6B0:  MOV             R0, R4
28E6B2:  MOVS            R1, #0
28E6B4:  MOVS            R2, #0x25 ; '%'
28E6B6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E6BA:  MOV             R0, R4
28E6BC:  MOVS            R1, #0x40 ; '@'
28E6BE:  MOVS            R2, #0x18
28E6C0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E6C4:  MOV             R0, R4
28E6C6:  MOVS            R1, #0x41 ; 'A'
28E6C8:  MOVS            R2, #0x19
28E6CA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E6CE:  MOV             R0, R4
28E6D0:  MOVS            R1, #0x40 ; '@'
28E6D2:  MOVS            R2, #0x1E
28E6D4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E6D8:  MOV             R0, R4
28E6DA:  MOVS            R1, #0x41 ; 'A'
28E6DC:  MOVS            R2, #0x1F
28E6DE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E6E2:  MOV             R0, R4
28E6E4:  MOVS            R1, #1
28E6E6:  MOVS            R2, #0x28 ; '('
28E6E8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E6EC:  MOV             R0, R4
28E6EE:  MOVS            R1, #4
28E6F0:  MOVS            R2, #0x29 ; ')'
28E6F2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E6F6:  MOV             R0, R4
28E6F8:  MOVS            R1, #0
28E6FA:  MOVS            R2, #0x29 ; ')'
28E6FC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E700:  MOV             R0, R4
28E702:  MOVS            R1, #0x41 ; 'A'
28E704:  MOVS            R2, #0x2E ; '.'
28E706:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E70A:  MOV             R0, R4
28E70C:  MOVS            R1, #0x41 ; 'A'
28E70E:  MOVS            R2, #0x2F ; '/'
28E710:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E714:  MOV             R0, R4
28E716:  MOVS            R1, #0x40 ; '@'
28E718:  MOVS            R2, #0x30 ; '0'
28E71A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E71E:  MOV             R0, R4
28E720:  MOVS            R1, #0x40 ; '@'
28E722:  MOVS            R2, #0x31 ; '1'
28E724:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E728:  MOV             R0, R4
28E72A:  MOVS            R1, #1
28E72C:  MOVS            R2, #0x32 ; '2'
28E72E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E732:  MOV             R0, R4
28E734:  MOVS            R1, #3
28E736:  MOVS            R2, #0x33 ; '3'
28E738:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E73C:  MOV             R0, R4
28E73E:  MOVS            R1, #6
28E740:  MOVS            R2, #0x34 ; '4'
28E742:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E746:  MOV             R0, R4
28E748:  MOVS            R1, #1
28E74A:  MOVS            R2, #0x35 ; '5'
28E74C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E750:  MOV             R0, R4
28E752:  MOVS            R1, #2
28E754:  MOVS            R2, #0x36 ; '6'
28E756:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E75A:  MOV             R0, R4
28E75C:  MOVS            R1, #0
28E75E:  MOVS            R2, #0x37 ; '7'
28E760:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E764:  MOV             R0, R4
28E766:  MOVS            R1, #0
28E768:  MOVS            R2, #0x38 ; '8'
28E76A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E76E:  MOV             R0, R4
28E770:  MOVS            R1, #3
28E772:  MOVS            R2, #0x39 ; '9'
28E774:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E778:  MOV             R0, R4
28E77A:  MOVS            R1, #1
28E77C:  MOVS            R2, #0x3B ; ';'
28E77E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E782:  MOV             R0, R4
28E784:  MOVS            R1, #4
28E786:  MOVS            R2, #0x40 ; '@'
28E788:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E78C:  MOV             R0, R4
28E78E:  MOVS            R1, #0
28E790:  MOVS            R2, #0x40 ; '@'
28E792:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E796:  MOV             R0, R4
28E798:  MOVS            R1, #1
28E79A:  MOVS            R2, #0x41 ; 'A'
28E79C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E7A0:  MOV             R0, R4
28E7A2:  MOVS            R1, #3
28E7A4:  MOVS            R2, #0x42 ; 'B'
28E7A6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E7AA:  MOV             R0, R4
28E7AC:  MOVS            R1, #0
28E7AE:  MOVS            R2, #0x43 ; 'C'
28E7B0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E7B4:  MOV             R0, R4
28E7B6:  MOVS            R1, #3
28E7B8:  MOVS            R2, #0x44 ; 'D'
28E7BA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E7BE:  MOV             R0, R4
28E7C0:  MOVS            R1, #0x40 ; '@'
28E7C2:  MOVS            R2, #0x46 ; 'F'
28E7C4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E7C8:  MOV             R0, R4
28E7CA:  MOVS            R1, #0
28E7CC:  MOVS            R2, #0x47 ; 'G'
28E7CE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E7D2:  MOV             R0, R4
28E7D4:  MOVS            R1, #6
28E7D6:  MOVS            R2, #0x48 ; 'H'
28E7D8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E7DC:  MOV             R0, R4
28E7DE:  MOVS            R1, #7
28E7E0:  MOVS            R2, #0x49 ; 'I'
28E7E2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E7E6:  MOV             R0, R4
28E7E8:  MOVS            R1, #7
28E7EA:  MOVS            R2, #0x4A ; 'J'
28E7EC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E7F0:  MOV             R0, R4
28E7F2:  MOVS            R1, #2
28E7F4:  MOVS            R2, #0x4B ; 'K'
28E7F6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E7FA:  MOV             R0, R4
28E7FC:  MOVS            R1, #0
28E7FE:  MOVS            R2, #0x4C ; 'L'
28E800:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E804:  MOV             R0, R4
28E806:  MOVS            R1, #1
28E808:  MOVS            R2, #0x4D ; 'M'
28E80A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E80E:  MOV             R0, R4
28E810:  MOVS            R1, #1
28E812:  MOVS            R2, #0x4E ; 'N'
28E814:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E818:  MOV             R0, R4
28E81A:  MOVS            R1, #2
28E81C:  MOVS            R2, #0x4F ; 'O'
28E81E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E822:  MOV             R0, R4
28E824:  MOVS            R1, #0
28E826:  MOVS            R2, #0x52 ; 'R'
28E828:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E82C:  MOV             R0, R4
28E82E:  MOVS            R1, #9
28E830:  MOVS            R2, #0x55 ; 'U'
28E832:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E836:  MOV             R0, R4
28E838:  MOVS            R1, #0
28E83A:  MOVS            R2, #0x58 ; 'X'
28E83C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E840:  MOV             R0, R4
28E842:  MOVS            R1, #1
28E844:  MOVS            R2, #0x59 ; 'Y'
28E846:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E84A:  MOV             R0, R4
28E84C:  MOVS            R1, #1
28E84E:  MOVS            R2, #0x5E ; '^'
28E850:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E854:  MOV             R0, R4
28E856:  MOVS            R1, #6
28E858:  MOVS            R2, #0x60 ; '`'
28E85A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E85E:  MOV             R0, R4
28E860:  MOVS            R1, #7
28E862:  MOVS            R2, #0x61 ; 'a'
28E864:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E868:  MOV             R0, R4
28E86A:  MOVS            R1, #6
28E86C:  MOVS            R2, #0x64 ; 'd'
28E86E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E872:  MOV             R0, R4
28E874:  MOVS            R1, #7
28E876:  MOVS            R2, #0x65 ; 'e'
28E878:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E87C:  MOV             R0, R4
28E87E:  MOVS            R1, #6
28E880:  MOVS            R2, #0x67 ; 'g'
28E882:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E886:  MOV             R0, R4
28E888:  POP             {R4,R6,R7,PC}
