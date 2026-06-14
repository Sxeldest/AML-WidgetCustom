; =========================================================
; Game Engine Function: sub_E17E4
; Address            : 0xE17E4 - 0xE1890
; =========================================================

E17E4:  PUSH            {R4-R7,LR}
E17E6:  ADD             R7, SP, #0xC
E17E8:  PUSH.W          {R11}
E17EC:  LDRH.W          R4, [R1,#9]
E17F0:  MOVS            R6, #0
E17F2:  LDRB            R3, [R1,#8]
E17F4:  UBFX.W          R5, R4, #7, #1
E17F8:  UBFX.W          R4, R4, #8, #1
E17FC:  CMP             R3, #0xE; switch 15 cases
E17FE:  MOV.W           LR, R5,LSL#19
E1802:  ORR.W           R12, LR, R4,LSL#17
E1806:  STRD.W          R6, R12, [R0]
E180A:  BHI             def_E180C; jumptable 000E180C default case, cases 1-6
E180C:  TBB.W           [PC,R3]; switch jump
E1810:  DCB 0x38; jump table for switch statement
E1811:  DCB 0x3B
E1812:  DCB 0x3B
E1813:  DCB 0x3B
E1814:  DCB 0x3B
E1815:  DCB 0x3B
E1816:  DCB 0x3B
E1817:  DCB 0xA
E1818:  DCB 8
E1819:  DCB 0x11
E181A:  DCB 0xF
E181B:  DCB 0x23
E181C:  DCB 0x21
E181D:  DCB 0x35
E181E:  DCB 0x33
E181F:  ALIGN 2
E1820:  ORR.W           R12, R12, #0x10000; jumptable 000E180C case 8
E1824:  ORR.W           R1, R12, #3; jumptable 000E180C case 7
E1828:  BIC.W           R1, R1, #0xFC
E182C:  B               loc_E187E
E182E:  ORR.W           R12, R12, #0x10000; jumptable 000E180C case 10
E1832:  LDR             R1, [R1,#4]; jumptable 000E180C case 9
E1834:  CMP             R1, #0
E1836:  MOV             R1, #0xFFF7FF00
E183E:  IT NE
E1840:  MOVNE.W         LR, #0x80000
E1844:  AND.W           R1, R1, R12
E1848:  ORR.W           R1, R1, LR
E184C:  ORR.W           R1, R1, #1
E1850:  B               loc_E187E
E1852:  ORR.W           R12, R12, #0x10000; jumptable 000E180C case 12
E1856:  LDR             R1, [R1,#4]; jumptable 000E180C case 11
E1858:  CMP             R1, #0
E185A:  MOV             R1, #0xFFF7FF00
E1862:  IT NE
E1864:  MOVNE.W         LR, #0x80000
E1868:  AND.W           R1, R1, R12
E186C:  ORR.W           R1, R1, LR
E1870:  ORR.W           R1, R1, #2
E1874:  B               loc_E187E
E1876:  ORR.W           R12, R12, #0x10000; jumptable 000E180C case 14
E187A:  BIC.W           R1, R12, #0xFF; jumptable 000E180C case 13
E187E:  STR             R1, [R0,#4]
E1880:  POP.W           {R11}; jumptable 000E180C case 0
E1884:  POP             {R4-R7,PC}
E1886:  LDR             R1, =(aInvalidTypeSpe - 0xE188E); jumptable 000E180C default case, cases 1-6
E1888:  MOV             R0, R2; this
E188A:  ADD             R1, PC; "invalid type specifier"
E188C:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
