; =========================================================
; Game Engine Function: sub_AF7EC
; Address            : 0xAF7EC - 0xAF8CC
; =========================================================

AF7EC:  PUSH            {R4,R5,R7,LR}
AF7EE:  ADD             R7, SP, #8
AF7F0:  SUB             SP, SP, #0x50
AF7F2:  MOV             R3, R0
AF7F4:  LDR             R0, =(__stack_chk_guard_ptr - 0xAF7FE)
AF7F6:  VMOV            S0, R2
AF7FA:  ADD             R0, PC; __stack_chk_guard_ptr
AF7FC:  LDR             R0, [R0]; __stack_chk_guard
AF7FE:  LDR             R0, [R0]
AF800:  STR             R0, [SP,#0x58+var_C]
AF802:  LDRB            R0, [R3]
AF804:  CMP             R0, #0
AF806:  BEQ             loc_AF8B2
AF808:  MOV             R4, R1
AF80A:  B               loc_AF81A
AF80C:  CMP             R0, #0x25 ; '%'
AF80E:  IT EQ
AF810:  ADDEQ           R3, #1
AF812:  LDRB.W          R0, [R3,#1]!
AF816:  CMP             R0, #0
AF818:  BEQ             loc_AF8B2
AF81A:  CMP             R0, #0x25 ; '%'
AF81C:  BNE             loc_AF80C
AF81E:  LDRB            R1, [R3,#1]
AF820:  CMP             R1, #0x25 ; '%'
AF822:  BEQ             loc_AF80C
AF824:  VCVT.F64.F32    D16, S0
AF828:  ADD             R5, SP, #0x58+s
AF82A:  MOVS            R1, #0x40 ; '@'
AF82C:  MOV             R2, R3
AF82E:  MOV             R0, R5; s
AF830:  VSTR            D16, [SP,#0x58+var_58]
AF834:  BL              sub_886C0
AF838:  SUBS            R0, R5, #1
AF83A:  LDRB.W          R1, [R0,#1]!; nptr
AF83E:  CMP             R1, #0x20 ; ' '
AF840:  BEQ             loc_AF83A
AF842:  BIC.W           R2, R4, #1
AF846:  CMP             R2, #8
AF848:  BNE             loc_AF858
AF84A:  BLX             atof
AF84E:  VMOV            D16, R0, R1
AF852:  VCVT.F32.F64    S0, D16
AF856:  B               loc_AF8B2
AF858:  SUB.W           R2, R1, #0x2D ; '-'
AF85C:  CLZ.W           R2, R2
AF860:  LSRS            R2, R2, #5
AF862:  LDRB            R3, [R0,R2]
AF864:  SUBS            R3, #0x2B ; '+'
AF866:  CLZ.W           R3, R3
AF86A:  LSRS            R3, R3, #5
AF86C:  ADD             R2, R3
AF86E:  LDRB            R3, [R0,R2]
AF870:  SUB.W           R5, R3, #0x30 ; '0'
AF874:  CMP             R5, #9
AF876:  BHI             loc_AF8A2
AF878:  VMOV.F32        S2, #10.0
AF87C:  VLDR            S4, =0.0
AF880:  SUBS            R3, #0x30 ; '0'
AF882:  VMOV            S0, R3
AF886:  ADDS            R3, R0, R2
AF888:  ADDS            R2, #1
AF88A:  VCVT.F32.S32    S0, S0
AF88E:  LDRB            R3, [R3,#1]
AF890:  SUB.W           R5, R3, #0x30 ; '0'
AF894:  CMP             R5, #0xA
AF896:  VMLA.F32        S0, S4, S2
AF89A:  VMOV.F32        S4, S0
AF89E:  BCC             loc_AF880
AF8A0:  B               loc_AF8A6
AF8A2:  VLDR            S0, =0.0
AF8A6:  VNEG.F32        S2, S0
AF8AA:  CMP             R1, #0x2D ; '-'
AF8AC:  IT EQ
AF8AE:  VMOVEQ.F32      S0, S2
AF8B2:  LDR             R0, [SP,#0x58+var_C]
AF8B4:  LDR             R1, =(__stack_chk_guard_ptr - 0xAF8BA)
AF8B6:  ADD             R1, PC; __stack_chk_guard_ptr
AF8B8:  LDR             R1, [R1]; __stack_chk_guard
AF8BA:  LDR             R1, [R1]
AF8BC:  CMP             R1, R0
AF8BE:  ITTT EQ
AF8C0:  VMOVEQ          R0, S0
AF8C4:  ADDEQ           SP, SP, #0x50 ; 'P'
AF8C6:  POPEQ           {R4,R5,R7,PC}
AF8C8:  BLX             __stack_chk_fail
