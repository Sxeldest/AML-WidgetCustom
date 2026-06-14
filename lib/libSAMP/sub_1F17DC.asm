; =========================================================
; Game Engine Function: sub_1F17DC
; Address            : 0x1F17DC - 0x1F18A8
; =========================================================

1F17DC:  PUSH            {R4-R7,LR}
1F17DE:  ADD             R7, SP, #0xC
1F17E0:  PUSH.W          {R8}
1F17E4:  SUB             SP, SP, #0x40
1F17E6:  MOV             R5, R1
1F17E8:  LDR             R1, =(__stack_chk_guard_ptr - 0x1F17F0)
1F17EA:  MOV             R4, R2
1F17EC:  ADD             R1, PC; __stack_chk_guard_ptr
1F17EE:  LDR             R1, [R1]; __stack_chk_guard
1F17F0:  LDR             R1, [R1]
1F17F2:  STR             R1, [SP,#0x50+var_14]
1F17F4:  LDR             R1, [R5,#4]
1F17F6:  CBZ             R1, loc_1F181E
1F17F8:  LDRD.W          R2, R3, [R4]
1F17FC:  STRD.W          R2, R3, [R1]
1F1800:  BL              sub_1EE5C6
1F1804:  LDR             R0, [SP,#0x50+var_14]
1F1806:  LDR             R1, =(__stack_chk_guard_ptr - 0x1F180C)
1F1808:  ADD             R1, PC; __stack_chk_guard_ptr
1F180A:  LDR             R1, [R1]; __stack_chk_guard
1F180C:  LDR             R1, [R1]
1F180E:  CMP             R1, R0
1F1810:  ITTT EQ
1F1812:  ADDEQ           SP, SP, #0x40 ; '@'
1F1814:  POPEQ.W         {R8}
1F1818:  POPEQ           {R4-R7,PC}
1F181A:  BLX             __stack_chk_fail
1F181E:  LDR             R1, =(aIn_0 - 0x1F182A); "in " ...
1F1820:  ADD.W           R8, SP, #0x50+var_44
1F1824:  MOV             R6, R3
1F1826:  ADD             R1, PC; "in "
1F1828:  MOV             R0, R8; int
1F182A:  BL              sub_DC6DC
1F182E:  LDR             R2, [R5]; s
1F1830:  ADD             R0, SP, #0x50+var_38; int
1F1832:  MOV             R1, R8; int
1F1834:  BL              sub_1EE6FE
1F1838:  ADD             R0, SP, #0x50+var_2C; int
1F183A:  ADD             R1, SP, #0x50+var_38; int
1F183C:  LDR             R2, =(asc_8B87F - 0x1F1842); ": " ...
1F183E:  ADD             R2, PC; ": "
1F1840:  BL              sub_1EE6FE
1F1844:  LDR             R0, [R7,#arg_0]
1F1846:  LDRB            R1, [R0]
1F1848:  LDR             R2, [R0,#8]
1F184A:  LSLS            R1, R1, #0x1F
1F184C:  IT EQ
1F184E:  ADDEQ           R2, R0, #1
1F1850:  MOV             R0, SP
1F1852:  MOV             R1, R6
1F1854:  BL              sub_1F2D14
1F1858:  ADD             R0, SP, #0x50+var_20
1F185A:  ADD             R1, SP, #0x50+var_2C
1F185C:  MOV             R2, SP
1F185E:  BL              sub_1EEC44
1F1862:  LDR             R0, =(_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr - 0x1F1868)
1F1864:  ADD             R0, PC; _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr
1F1866:  LDR             R6, [R0]; std::string::~string()
1F1868:  MOV             R0, SP
1F186A:  BLX             R6; std::string::~string()
1F186C:  ADD             R0, SP, #0x50+var_2C
1F186E:  BLX             R6; std::string::~string()
1F1870:  ADD             R0, SP, #0x50+var_38
1F1872:  BLX             R6; std::string::~string()
1F1874:  ADD             R0, SP, #0x50+var_44
1F1876:  BLX             R6; std::string::~string()
1F1878:  LDRD.W          R1, R2, [R5,#8]
1F187C:  CMP             R1, #0
1F187E:  MOV             R0, R1
1F1880:  IT NE
1F1882:  MOVNE           R0, #1
1F1884:  CMP             R2, #0
1F1886:  IT NE
1F1888:  ADDNE           R0, #1
1F188A:  CBZ             R0, loc_1F1898
1F188C:  CMP             R0, #1
1F188E:  BNE             loc_1F18A0
1F1890:  ADD             R0, SP, #0x50+var_20
1F1892:  MOV             R2, R4
1F1894:  BL              sub_1EE764
1F1898:  ADD             R0, SP, #0x50+var_20
1F189A:  MOV             R1, R4
1F189C:  BL              sub_1EE720
1F18A0:  ADD             R0, SP, #0x50+var_20
1F18A2:  MOV             R3, R4
1F18A4:  BL              sub_1EE7B0
