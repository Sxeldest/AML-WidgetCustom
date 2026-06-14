; =========================================================
; Game Engine Function: sub_79824
; Address            : 0x79824 - 0x79932
; =========================================================

79824:  PUSH            {R4-R7,LR}
79826:  ADD             R7, SP, #0xC
79828:  PUSH.W          {R8}
7982C:  SUB             SP, SP, #0x140
7982E:  MOV             R8, R0
79830:  LDR             R0, =(__stack_chk_guard_ptr - 0x7983A)
79832:  MOV             R5, R3
79834:  MOV             R6, R2
79836:  ADD             R0, PC; __stack_chk_guard_ptr
79838:  MOV             R4, R1
7983A:  LDR             R0, [R0]; __stack_chk_guard
7983C:  LDR             R0, [R0]
7983E:  STR             R0, [SP,#0x150+var_14]
79840:  ADD             R0, SP, #0x150+var_128
79842:  BL              sub_86B90
79846:  STR             R4, [SP,#0x150+var_134]
79848:  ADD             R1, SP, #0x150+var_134
7984A:  MOVS            R2, #0x20 ; ' '
7984C:  MOVS            R3, #1
7984E:  BL              sub_86D52
79852:  STR             R6, [SP,#0x150+var_134]
79854:  ADD             R0, SP, #0x150+var_128
79856:  ADD             R1, SP, #0x150+var_134
79858:  MOVS            R2, #0x20 ; ' '
7985A:  MOVS            R3, #1
7985C:  BL              sub_86D52
79860:  STR             R5, [SP,#0x150+var_134]
79862:  ADD             R0, SP, #0x150+var_128
79864:  ADD             R1, SP, #0x150+var_134
79866:  MOVS            R2, #0x20 ; ' '
79868:  MOVS            R3, #1
7986A:  BL              sub_86D52
7986E:  LDR             R0, [R7,#arg_0]
79870:  STR             R0, [SP,#0x150+var_134]
79872:  ADD             R0, SP, #0x150+var_128
79874:  ADD             R1, SP, #0x150+var_134
79876:  MOVS            R2, #0x20 ; ' '
79878:  MOVS            R3, #1
7987A:  BL              sub_86D52
7987E:  LDR             R0, [R7,#arg_C]
79880:  LDRD.W          R2, R1, [R7,#arg_4]
79884:  STRD.W          R2, R1, [SP,#0x150+var_134]
79888:  STR             R0, [SP,#0x150+var_12C]
7988A:  ADD             R0, SP, #0x150+var_128
7988C:  ADD             R1, SP, #0x150+var_134
7988E:  MOVS            R2, #0x60 ; '`'
79890:  MOVS            R3, #1
79892:  BL              sub_86D52
79896:  LDR             R0, [R7,#arg_18]
79898:  LDRD.W          R2, R1, [R7,#arg_10]
7989C:  STRD.W          R2, R1, [SP,#0x150+var_134]
798A0:  STR             R0, [SP,#0x150+var_12C]
798A2:  ADD             R0, SP, #0x150+var_128
798A4:  ADD             R1, SP, #0x150+var_134
798A6:  MOVS            R2, #0x60 ; '`'
798A8:  MOVS            R3, #1
798AA:  BL              sub_86D52
798AE:  LDR             R0, [R7,#arg_24]
798B0:  LDRD.W          R2, R1, [R7,#arg_1C]
798B4:  STRD.W          R2, R1, [SP,#0x150+var_134]
798B8:  STR             R0, [SP,#0x150+var_12C]
798BA:  ADD             R0, SP, #0x150+var_128
798BC:  ADD             R1, SP, #0x150+var_134
798BE:  MOVS            R2, #0x60 ; '`'
798C0:  MOVS            R3, #1
798C2:  BL              sub_86D52
798C6:  MOVS            R4, #0
798C8:  STR             R4, [SP,#0x150+var_134]
798CA:  ADD             R0, SP, #0x150+var_128
798CC:  ADD             R1, SP, #0x150+var_134
798CE:  MOVS            R2, #0x20 ; ' '
798D0:  MOVS            R3, #1
798D2:  BL              sub_86D52
798D6:  STR             R4, [SP,#0x150+var_134]
798D8:  ADD             R0, SP, #0x150+var_128
798DA:  ADD             R1, SP, #0x150+var_134
798DC:  MOVS            R2, #0x20 ; ' '
798DE:  MOVS            R3, #1
798E0:  BL              sub_86D52
798E4:  LDR.W           R0, [R8,#0x210]
798E8:  MOVS            R3, #0
798EA:  LDR             R1, =(off_114C68 - 0x798F0)
798EC:  ADD             R1, PC; off_114C68
798EE:  LDR             R2, [R0]
798F0:  LDR             R1, [R1]; unk_116E3C
798F2:  LDR             R6, [R2,#0x6C]
798F4:  MOV.W           R12, #0xFFFFFFFF
798F8:  MOVS            R4, #8
798FA:  ADD             R2, SP, #0x150+var_128
798FC:  MOVW            R5, #0xFFFF
79900:  STRD.W          R4, R3, [SP,#0x150+var_150]
79904:  STRD.W          R3, R12, [SP,#0x150+var_148]
79908:  STR             R3, [SP,#0x150+var_138]
7990A:  MOVS            R3, #1
7990C:  STRD.W          R5, R5, [SP,#0x150+var_140]
79910:  BLX             R6
79912:  ADD             R0, SP, #0x150+var_128
79914:  BL              sub_86BF8
79918:  LDR             R0, [SP,#0x150+var_14]
7991A:  LDR             R1, =(__stack_chk_guard_ptr - 0x79920)
7991C:  ADD             R1, PC; __stack_chk_guard_ptr
7991E:  LDR             R1, [R1]; __stack_chk_guard
79920:  LDR             R1, [R1]
79922:  CMP             R1, R0
79924:  ITTT EQ
79926:  ADDEQ           SP, SP, #0x140
79928:  POPEQ.W         {R8}
7992C:  POPEQ           {R4-R7,PC}
7992E:  BLX             __stack_chk_fail
