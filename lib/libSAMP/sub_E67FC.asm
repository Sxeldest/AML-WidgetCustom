; =========================================================
; Game Engine Function: sub_E67FC
; Address            : 0xE67FC - 0xE6980
; =========================================================

E67FC:  PUSH            {R4-R7,LR}
E67FE:  ADD             R7, SP, #0xC
E6800:  PUSH.W          {R8}
E6804:  SUB             SP, SP, #8
E6806:  MOV             R4, R0
E6808:  LDR             R0, [R0,#0x14]
E680A:  CBNZ            R0, loc_E6816
E680C:  MOV             R0, R4
E680E:  BL              sub_E698C
E6812:  CMP             R0, #0
E6814:  BEQ             loc_E68A4
E6816:  MOVS            R5, #0x13
E6818:  MOVS            R6, #1
E681A:  MOVT            R5, #0x80
E681E:  MOV             R0, R4
E6820:  BL              sub_E71D0
E6824:  LDR             R0, [R4,#0xC]
E6826:  SUB.W           R1, R0, #9
E682A:  CMP             R1, #0x17
E682C:  BHI             loc_E6836
E682E:  LSL.W           R1, R6, R1
E6832:  TST             R1, R5
E6834:  BNE             loc_E681E
E6836:  LDRB            R1, [R4,#8]
E6838:  CBZ             R1, loc_E686A
E683A:  CMP             R0, #0x2F ; '/'
E683C:  BNE             loc_E686A
E683E:  MOVS            R6, #1
E6840:  MOV             R0, R4
E6842:  BL              sub_E69C4
E6846:  CMP             R0, #0
E6848:  BEQ             loc_E68AA
E684A:  MOV             R0, R4
E684C:  BL              sub_E71D0
E6850:  LDR             R0, [R4,#0xC]
E6852:  SUB.W           R1, R0, #9
E6856:  CMP             R1, #0x17
E6858:  BHI             loc_E6862
E685A:  LSL.W           R1, R6, R1
E685E:  TST             R1, R5
E6860:  BNE             loc_E684A
E6862:  LDRB            R1, [R4,#8]
E6864:  CBZ             R1, loc_E686A
E6866:  CMP             R0, #0x2F ; '/'
E6868:  BEQ             loc_E6840
E686A:  CMP             R0, #0x5A ; 'Z'
E686C:  BGT             loc_E68B4
E686E:  SUB.W           R1, R0, #0x22 ; '"'; switch 25 cases
E6872:  CMP             R1, #0x18
E6874:  BHI             def_E6876; jumptable 000E6876 default case
E6876:  TBB.W           [PC,R1]; switch jump
E687A:  DCB 0x5B; jump table for switch statement
E687B:  DCB 0x7A
E687C:  DCB 0x7A
E687D:  DCB 0x7A
E687E:  DCB 0x7A
E687F:  DCB 0x7A
E6880:  DCB 0x7A
E6881:  DCB 0x7A
E6882:  DCB 0x7A
E6883:  DCB 0x7A
E6884:  DCB 0x63
E6885:  DCB 0xD
E6886:  DCB 0x7A
E6887:  DCB 0x7A
E6888:  DCB 0xD
E6889:  DCB 0xD
E688A:  DCB 0xD
E688B:  DCB 0xD
E688C:  DCB 0xD
E688D:  DCB 0xD
E688E:  DCB 0xD
E688F:  DCB 0xD
E6890:  DCB 0xD
E6891:  DCB 0xD
E6892:  DCB 0x65
E6893:  ALIGN 2
E6894:  MOV             R0, R4; jumptable 000E6876 cases 45,48-57
E6896:  ADD             SP, SP, #8
E6898:  POP.W           {R8}
E689C:  POP.W           {R4-R7,LR}
E68A0:  B.W             sub_E6FB8
E68A4:  LDR             R0, =(aInvalidBomMust - 0xE68AA); "invalid BOM; must be 0xEF 0xBB 0xBF if "... ...
E68A6:  ADD             R0, PC; "invalid BOM; must be 0xEF 0xBB 0xBF if "...
E68A8:  STR             R0, [R4,#0x38]
E68AA:  MOVS            R0, #0xE
E68AC:  ADD             SP, SP, #8
E68AE:  POP.W           {R8}
E68B2:  POP             {R4-R7,PC}
E68B4:  CMP             R0, #0x6D ; 'm'
E68B6:  BLE             loc_E68EA
E68B8:  CMP             R0, #0x7A ; 'z'
E68BA:  BGT             loc_E6924
E68BC:  CMP             R0, #0x6E ; 'n'
E68BE:  BEQ             loc_E6948
E68C0:  CMP             R0, #0x74 ; 't'
E68C2:  BNE             loc_E696E; jumptable 000E6876 cases 35-43,46,47
E68C4:  MOVW            R0, #0x7274
E68C8:  ADD             R6, SP, #0x18+var_14
E68CA:  MOVT            R0, #0x6575
E68CE:  MOVS            R5, #1
E68D0:  STR             R0, [SP,#0x18+var_14]
E68D2:  MOV             R0, R4
E68D4:  BL              sub_E71D0
E68D8:  LDRB            R1, [R6,R5]
E68DA:  UXTB            R0, R0
E68DC:  CMP             R1, R0
E68DE:  BNE             loc_E696E; jumptable 000E6876 cases 35-43,46,47
E68E0:  ADDS            R5, #1
E68E2:  CMP             R5, #4
E68E4:  BNE             loc_E68D2
E68E6:  MOVS            R0, #1
E68E8:  B               loc_E68AC
E68EA:  CMP             R0, #0x5B ; '['
E68EC:  BEQ             loc_E6974
E68EE:  CMP             R0, #0x5D ; ']'
E68F0:  BEQ             loc_E6978
E68F2:  CMP             R0, #0x66 ; 'f'
E68F4:  BNE             loc_E696E; jumptable 000E6876 cases 35-43,46,47
E68F6:  LDR             R0, =(aFalse_0 - 0xE68FE); "false" ...
E68F8:  MOVS            R5, #0
E68FA:  ADD             R0, PC; "false"
E68FC:  MOV             R8, R0
E68FE:  ADD.W           R0, R8, R5
E6902:  LDRB            R6, [R0,#1]
E6904:  MOV             R0, R4
E6906:  BL              sub_E71D0
E690A:  UXTB            R0, R0
E690C:  CMP             R6, R0
E690E:  BNE             loc_E696E; jumptable 000E6876 cases 35-43,46,47
E6910:  ADDS            R5, #1
E6912:  CMP             R5, #4
E6914:  BNE             loc_E68FE
E6916:  MOVS            R0, #2
E6918:  B               loc_E68AC
E691A:  ADDS            R0, #1; jumptable 000E6876 default case
E691C:  CMP             R0, #2
E691E:  BCS             loc_E696E; jumptable 000E6876 cases 35-43,46,47
E6920:  MOVS            R0, #0xF
E6922:  B               loc_E68AC
E6924:  CMP             R0, #0x7B ; '{'
E6926:  BEQ             loc_E697C
E6928:  CMP             R0, #0x7D ; '}'
E692A:  BNE             loc_E696E; jumptable 000E6876 cases 35-43,46,47
E692C:  MOVS            R0, #0xB
E692E:  B               loc_E68AC
E6930:  MOV             R0, R4; jumptable 000E6876 case 34
E6932:  ADD             SP, SP, #8
E6934:  POP.W           {R8}
E6938:  POP.W           {R4-R7,LR}
E693C:  B.W             sub_E6A30
E6940:  MOVS            R0, #0xD; jumptable 000E6876 case 44
E6942:  B               loc_E68AC
E6944:  MOVS            R0, #0xC; jumptable 000E6876 case 58
E6946:  B               loc_E68AC
E6948:  MOVW            R0, #0x756E
E694C:  MOVS            R5, #1
E694E:  MOVT            R0, #0x6C6C
E6952:  MOV             R6, SP
E6954:  STR             R0, [SP,#0x18+var_18]
E6956:  MOV             R0, R4
E6958:  BL              sub_E71D0
E695C:  LDRB            R1, [R6,R5]
E695E:  UXTB            R0, R0
E6960:  CMP             R1, R0
E6962:  BNE             loc_E696E; jumptable 000E6876 cases 35-43,46,47
E6964:  ADDS            R5, #1
E6966:  CMP             R5, #4
E6968:  BNE             loc_E6956
E696A:  MOVS            R0, #3
E696C:  B               loc_E68AC
E696E:  LDR             R0, =(aInvalidLiteral - 0xE6974); jumptable 000E6876 cases 35-43,46,47
E6970:  ADD             R0, PC; "invalid literal"
E6972:  B               loc_E68A8
E6974:  MOVS            R0, #8
E6976:  B               loc_E68AC
E6978:  MOVS            R0, #0xA
E697A:  B               loc_E68AC
E697C:  MOVS            R0, #9
E697E:  B               loc_E68AC
