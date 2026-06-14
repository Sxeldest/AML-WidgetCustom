; =========================================================
; Game Engine Function: sub_256840
; Address            : 0x256840 - 0x257218
; =========================================================

256840:  PUSH            {R4-R7,LR}
256842:  ADD             R7, SP, #0xC
256844:  PUSH.W          {R8,R9,R11}
256848:  SUB             SP, SP, #8
25684A:  MOV             R4, R2
25684C:  MOV             R6, R3
25684E:  MOV             R8, R1
256850:  MOV             R5, R0
256852:  CMP.W           R4, #0x1200
256856:  BGT             loc_2568D8
256858:  MOVW            R0, #0x1001
25685C:  SUBS            R0, R4, R0
25685E:  CMP             R0, #0x32 ; '2'; switch 51 cases
256860:  BHI.W           def_256864; jumptable 00256864 default case
256864:  TBH.W           [PC,R0,LSL#1]; switch jump
256868:  DCW 0x124; jump table for switch statement
25686A:  DCW 0x137
25686C:  DCW 0x14A
25686E:  DCW 0x171
256870:  DCW 0x1A1
256872:  DCW 0x1D1
256874:  DCW 0x6B
256876:  DCW 0xF2
256878:  DCW 0x33
25687A:  DCW 0x206
25687C:  DCW 0xF2
25687E:  DCW 0xF2
256880:  DCW 0x22D
256882:  DCW 0x240
256884:  DCW 0xF2
256886:  DCW 0x6B
256888:  DCW 0xF2
25688A:  DCW 0xF2
25688C:  DCW 0xF2
25688E:  DCW 0xF2
256890:  DCW 0x33
256892:  DCW 0x33
256894:  DCW 0xF2
256896:  DCW 0xF2
256898:  DCW 0xF2
25689A:  DCW 0xF2
25689C:  DCW 0xF2
25689E:  DCW 0xF2
2568A0:  DCW 0xF2
2568A2:  DCW 0xF2
2568A4:  DCW 0xF2
2568A6:  DCW 0x253
2568A8:  DCW 0x27A
2568AA:  DCW 0x2A1
2568AC:  DCW 0x2B4
2568AE:  DCW 0x79
2568B0:  DCW 0x79
2568B2:  DCW 0x79
2568B4:  DCW 0x6B
2568B6:  DCW 0xF2
2568B8:  DCW 0xF2
2568BA:  DCW 0xF2
2568BC:  DCW 0xF2
2568BE:  DCW 0xF2
2568C0:  DCW 0xF2
2568C2:  DCW 0xF2
2568C4:  DCW 0xF2
2568C6:  DCW 0xF2
2568C8:  DCW 0xA0
2568CA:  DCW 0xA0
2568CC:  DCW 0x6B
2568CE:  VLDR            S0, [R6]; jumptable 00256864 cases 8,20,21
2568D2:  VCVT.U32.F32    S0, S0
2568D6:  B               loc_256946
2568D8:  MOVS            R0, #0x20006
2568DE:  CMP             R4, R0
2568E0:  BLE             loc_256924
2568E2:  SUB.W           R0, R4, #0x20000; switch 6 cases
2568E6:  SUBS            R0, #7
2568E8:  CMP             R0, #5
2568EA:  BHI.W           def_2568EE; jumptable 00256864 cases 7,10,11,14,16-19,22-30,39-47
2568EE:  TBH.W           [PC,R0,LSL#1]; switch jump
2568F2:  DCW 6; jump table for switch statement
2568F4:  DCW 0x296
2568F6:  DCW 0x2A9
2568F8:  DCW 0x26
2568FA:  DCW 0x26
2568FC:  DCW 0x26
2568FE:  VLDR            S0, [R6]; jumptable 002568EE case 131079
256902:  VCMPE.F32       S0, #0.0
256906:  VMRS            APSR_nzcv, FPSCR
25690A:  BLT.W           loc_256F90
25690E:  VMOV.F32        S2, #10.0
256912:  VCMPE.F32       S0, S2
256916:  VMRS            APSR_nzcv, FPSCR
25691A:  BGT.W           loc_256F90
25691E:  VSTR            S0, [R5,#0x5C]
256922:  B               loc_257114
256924:  MOVW            R0, #0x1201
256928:  CMP             R4, R0
25692A:  BEQ.W           loc_256E74
25692E:  CMP.W           R4, #0xC000
256932:  BEQ.W           loc_256EB6
256936:  CMP.W           R4, #0xD000
25693A:  BNE.W           def_2568EE; jumptable 00256864 cases 7,10,11,14,16-19,22-30,39-47
25693E:  VLDR            S0, [R6]; jumptable 00256864 cases 6,15,38,50
256942:  VCVT.S32.F32    S0, S0
256946:  ADD             R3, SP, #0x20+var_1C
256948:  MOV             R0, R5
25694A:  MOV             R1, R8
25694C:  MOV             R2, R4
25694E:  VSTR            S0, [SP,#0x20+var_1C]
256952:  BL              sub_2579C4
256956:  B.W             loc_257210
25695A:  VLDR            S0, [R6]; jumptable 00256864 cases 35-37
25695E:  VCMPE.F32       S0, #0.0
256962:  VMRS            APSR_nzcv, FPSCR
256966:  BGE             loc_2569E6
256968:  LDR.W           R0, =(TrapALError_ptr - 0x256970)
25696C:  ADD             R0, PC; TrapALError_ptr
25696E:  LDR             R0, [R0]; TrapALError
256970:  LDRB            R0, [R0]
256972:  CMP             R0, #0
256974:  ITT NE
256976:  MOVNE           R0, #5; sig
256978:  BLXNE           raise
25697C:  LDREX.W         R0, [R8,#0x50]
256980:  CMP             R0, #0
256982:  BNE.W           loc_257204
256986:  ADD.W           R0, R8, #0x50 ; 'P'
25698A:  MOVW            R1, #0xA003
25698E:  DMB.W           ISH
256992:  STREX.W         R2, R1, [R0]
256996:  CMP             R2, #0
256998:  BEQ.W           loc_257208
25699C:  LDREX.W         R2, [R0]
2569A0:  CMP             R2, #0
2569A2:  BEQ             loc_256992
2569A4:  B.W             loc_257204
2569A8:  LDR.W           R0, =(TrapALError_ptr - 0x2569B0); jumptable 00256864 cases 48,49
2569AC:  ADD             R0, PC; TrapALError_ptr
2569AE:  LDR             R0, [R0]; TrapALError
2569B0:  LDRB            R0, [R0]
2569B2:  CMP             R0, #0
2569B4:  ITT NE
2569B6:  MOVNE           R0, #5; sig
2569B8:  BLXNE           raise
2569BC:  LDREX.W         R0, [R8,#0x50]
2569C0:  CMP             R0, #0
2569C2:  BNE.W           loc_256EA8
2569C6:  ADD.W           R0, R8, #0x50 ; 'P'
2569CA:  MOVW            R1, #0xA004
2569CE:  DMB.W           ISH
2569D2:  STREX.W         R2, R1, [R0]
2569D6:  CMP             R2, #0
2569D8:  BEQ.W           loc_256EAC
2569DC:  LDREX.W         R2, [R0]
2569E0:  CMP             R2, #0
2569E2:  BEQ             loc_2569D2
2569E4:  B               loc_256EA8
2569E6:  LDR.W           R0, [R8,#0x88]
2569EA:  MOV             R9, #0x161AC
2569F2:  LDR.W           R1, [R0,R9]
2569F6:  LDR             R1, [R1,#0x2C]
2569F8:  BLX             R1
2569FA:  STR             R4, [R5,#0x78]
2569FC:  MOVW            R1, #0x1012
256A00:  VLDR            S0, [R6]
256A04:  LDR.W           R0, [R5,#0x80]
256A08:  VCVT.F64.F32    D16, S0
256A0C:  CMP             R0, R1
256A0E:  VSTR            D16, [R5,#0x70]
256A12:  BEQ             loc_256A20
256A14:  LDR.W           R0, [R5,#0x80]
256A18:  MOVW            R1, #0x1013
256A1C:  CMP             R0, R1
256A1E:  BNE             loc_256A32
256A20:  LDR.W           R0, [R8,#0x6C]
256A24:  CBNZ            R0, loc_256A32
256A26:  MOV             R0, R5
256A28:  BLX             j_ApplyOffset
256A2C:  CMP             R0, #0
256A2E:  BEQ.W           loc_2571C4
256A32:  LDR.W           R0, [R8,#0x88]
256A36:  LDR.W           R1, [R0,R9]
256A3A:  LDR             R1, [R1,#0x30]
256A3C:  BLX             R1
256A3E:  MOVS            R0, #0
256A40:  B               loc_257210
256A42:  MOVW            R0, #0x202; jumptable 00256864 default case
256A46:  CMP             R4, R0
256A48:  BEQ.W           loc_25693E; jumptable 00256864 cases 6,15,38,50
256A4C:  LDR.W           R0, =(LogLevel_ptr - 0x256A54); jumptable 00256864 cases 7,10,11,14,16-19,22-30,39-47
256A50:  ADD             R0, PC; LogLevel_ptr
256A52:  LDR             R0, [R0]; LogLevel
256A54:  LDR             R0, [R0]
256A56:  CBZ             R0, loc_256A6E
256A58:  LDR.W           R0, =(aEe - 0x256A6A); "(EE)"
256A5C:  ADR.W           R1, aSetsourcefv; "SetSourcefv"
256A60:  LDR.W           R2, =(aUnexpectedProp - 0x256A6C); "Unexpected property: 0x%04x\n"
256A64:  MOV             R3, R4
256A66:  ADD             R0, PC; "(EE)"
256A68:  ADD             R2, PC; "Unexpected property: 0x%04x\n"
256A6A:  BLX             j_al_print
256A6E:  LDR.W           R0, =(TrapALError_ptr - 0x256A76)
256A72:  ADD             R0, PC; TrapALError_ptr
256A74:  LDR             R0, [R0]; TrapALError
256A76:  LDRB            R0, [R0]
256A78:  CMP             R0, #0
256A7A:  ITT NE
256A7C:  MOVNE           R0, #5; sig
256A7E:  BLXNE           raise
256A82:  LDREX.W         R0, [R8,#0x50]
256A86:  CBNZ            R0, loc_256AA2
256A88:  ADD.W           R0, R8, #0x50 ; 'P'
256A8C:  MOVW            R1, #0xA002
256A90:  DMB.W           ISH
256A94:  STREX.W         R2, R1, [R0]
256A98:  CBZ             R2, loc_256AA6
256A9A:  LDREX.W         R2, [R0]
256A9E:  CMP             R2, #0
256AA0:  BEQ             loc_256A94
256AA2:  CLREX.W
256AA6:  DMB.W           ISH
256AAA:  MOVW            R0, #0xA002
256AAE:  B               loc_257210
256AB0:  VLDR            S0, [R6]; jumptable 00256864 case 0
256AB4:  VCMPE.F32       S0, #0.0
256AB8:  VMRS            APSR_nzcv, FPSCR
256ABC:  BLT.W           loc_256FCC
256AC0:  VLDR            S2, =360.0
256AC4:  VCMPE.F32       S0, S2
256AC8:  VMRS            APSR_nzcv, FPSCR
256ACC:  BGT.W           loc_256FCC
256AD0:  VSTR            S0, [R5,#0x14]
256AD4:  B               loc_257114
256AD6:  VLDR            S0, [R6]; jumptable 00256864 case 1
256ADA:  VCMPE.F32       S0, #0.0
256ADE:  VMRS            APSR_nzcv, FPSCR
256AE2:  BLT.W           loc_257008
256AE6:  VLDR            S2, =360.0
256AEA:  VCMPE.F32       S0, S2
256AEE:  VMRS            APSR_nzcv, FPSCR
256AF2:  BGT.W           loc_257008
256AF6:  VSTR            S0, [R5,#0x18]
256AFA:  B               loc_257114
256AFC:  VLDR            S0, [R6]; jumptable 00256864 case 2
256B00:  VCMPE.F32       S0, #0.0
256B04:  VMRS            APSR_nzcv, FPSCR
256B08:  BGE.W           loc_257044
256B0C:  LDR.W           R0, =(TrapALError_ptr - 0x256B14)
256B10:  ADD             R0, PC; TrapALError_ptr
256B12:  LDR             R0, [R0]; TrapALError
256B14:  LDRB            R0, [R0]
256B16:  CMP             R0, #0
256B18:  ITT NE
256B1A:  MOVNE           R0, #5; sig
256B1C:  BLXNE           raise
256B20:  LDREX.W         R0, [R8,#0x50]
256B24:  CMP             R0, #0
256B26:  BNE.W           loc_257204
256B2A:  ADD.W           R0, R8, #0x50 ; 'P'
256B2E:  MOVW            R1, #0xA003
256B32:  DMB.W           ISH
256B36:  STREX.W         R2, R1, [R0]
256B3A:  CMP             R2, #0
256B3C:  BEQ.W           loc_257208
256B40:  LDREX.W         R2, [R0]
256B44:  CMP             R2, #0
256B46:  BEQ             loc_256B36
256B48:  B               loc_257204
256B4A:  VLDR            S0, [R6]; jumptable 00256864 case 3
256B4E:  VABS.F32        S2, S0
256B52:  VLDR            S0, =+Inf
256B56:  VCMP.F32        S2, S0
256B5A:  VMRS            APSR_nzcv, FPSCR
256B5E:  BEQ.W           loc_256EDC
256B62:  VLDR            S2, [R6,#4]
256B66:  VABS.F32        S2, S2
256B6A:  VCMP.F32        S2, S0
256B6E:  VMRS            APSR_nzcv, FPSCR
256B72:  BEQ.W           loc_256EDC
256B76:  VLDR            S2, [R6,#8]
256B7A:  VABS.F32        S2, S2
256B7E:  VCMP.F32        S2, S0
256B82:  VMRS            APSR_nzcv, FPSCR
256B86:  BEQ.W           loc_256EDC
256B8A:  LDR.W           R0, [R8,#0x88]
256B8E:  MOV             R4, #0x161AC
256B96:  LDR             R1, [R0,R4]
256B98:  LDR             R1, [R1,#0x2C]
256B9A:  BLX             R1
256B9C:  LDR             R0, [R6]
256B9E:  STR             R0, [R5,#0x28]
256BA0:  LDR             R0, [R6,#4]
256BA2:  STR             R0, [R5,#0x2C]
256BA4:  LDR             R0, [R6,#8]
256BA6:  STR             R0, [R5,#0x30]
256BA8:  B               loc_256C68
256BAA:  VLDR            S0, [R6]; jumptable 00256864 case 4
256BAE:  VABS.F32        S2, S0
256BB2:  VLDR            S0, =+Inf
256BB6:  VCMP.F32        S2, S0
256BBA:  VMRS            APSR_nzcv, FPSCR
256BBE:  BEQ.W           loc_256F18
256BC2:  VLDR            S2, [R6,#4]
256BC6:  VABS.F32        S2, S2
256BCA:  VCMP.F32        S2, S0
256BCE:  VMRS            APSR_nzcv, FPSCR
256BD2:  BEQ.W           loc_256F18
256BD6:  VLDR            S2, [R6,#8]
256BDA:  VABS.F32        S2, S2
256BDE:  VCMP.F32        S2, S0
256BE2:  VMRS            APSR_nzcv, FPSCR
256BE6:  BEQ.W           loc_256F18
256BEA:  LDR.W           R0, [R8,#0x88]
256BEE:  MOV             R4, #0x161AC
256BF6:  LDR             R1, [R0,R4]
256BF8:  LDR             R1, [R1,#0x2C]
256BFA:  BLX             R1
256BFC:  LDR             R0, [R6]
256BFE:  STR             R0, [R5,#0x40]
256C00:  LDR             R0, [R6,#4]
256C02:  STR             R0, [R5,#0x44]
256C04:  LDR             R0, [R6,#8]
256C06:  STR             R0, [R5,#0x48]
256C08:  B               loc_256C68
256C0A:  VLDR            S0, [R6]; jumptable 00256864 case 5
256C0E:  VABS.F32        S2, S0
256C12:  VLDR            S0, =+Inf
256C16:  VCMP.F32        S2, S0
256C1A:  VMRS            APSR_nzcv, FPSCR
256C1E:  BEQ.W           loc_256F54
256C22:  VLDR            S2, [R6,#4]
256C26:  VABS.F32        S2, S2
256C2A:  VCMP.F32        S2, S0
256C2E:  VMRS            APSR_nzcv, FPSCR
256C32:  BEQ.W           loc_256F54
256C36:  VLDR            S2, [R6,#8]
256C3A:  VABS.F32        S2, S2
256C3E:  VCMP.F32        S2, S0
256C42:  VMRS            APSR_nzcv, FPSCR
256C46:  BEQ.W           loc_256F54
256C4A:  LDR.W           R0, [R8,#0x88]
256C4E:  MOV             R4, #0x161AC
256C56:  LDR             R1, [R0,R4]
256C58:  LDR             R1, [R1,#0x2C]
256C5A:  BLX             R1
256C5C:  LDR             R0, [R6]
256C5E:  STR             R0, [R5,#0x34]
256C60:  LDR             R0, [R6,#4]
256C62:  STR             R0, [R5,#0x38]
256C64:  LDR             R0, [R6,#8]
256C66:  STR             R0, [R5,#0x3C]
256C68:  LDR.W           R0, [R8,#0x88]
256C6C:  LDR             R1, [R0,R4]
256C6E:  LDR             R1, [R1,#0x30]
256C70:  BLX             R1
256C72:  B               loc_257114
256C74:  VLDR            S0, [R6]; jumptable 00256864 case 9
256C78:  VCMPE.F32       S0, #0.0
256C7C:  VMRS            APSR_nzcv, FPSCR
256C80:  BGE.W           loc_25704A
256C84:  LDR.W           R0, =(TrapALError_ptr - 0x256C8C)
256C88:  ADD             R0, PC; TrapALError_ptr
256C8A:  LDR             R0, [R0]; TrapALError
256C8C:  LDRB            R0, [R0]
256C8E:  CMP             R0, #0
256C90:  ITT NE
256C92:  MOVNE           R0, #5; sig
256C94:  BLXNE           raise
256C98:  LDREX.W         R0, [R8,#0x50]
256C9C:  CMP             R0, #0
256C9E:  BNE.W           loc_257204
256CA2:  ADD.W           R0, R8, #0x50 ; 'P'
256CA6:  MOVW            R1, #0xA003
256CAA:  DMB.W           ISH
256CAE:  STREX.W         R2, R1, [R0]
256CB2:  CMP             R2, #0
256CB4:  BEQ.W           loc_257208
256CB8:  LDREX.W         R2, [R0]
256CBC:  CMP             R2, #0
256CBE:  BEQ             loc_256CAE
256CC0:  B               loc_257204
256CC2:  VLDR            S0, [R6]; jumptable 00256864 case 12
256CC6:  VCMPE.F32       S0, #0.0
256CCA:  VMRS            APSR_nzcv, FPSCR
256CCE:  BLT.W           loc_257050
256CD2:  VMOV.F32        S2, #1.0
256CD6:  VCMPE.F32       S0, S2
256CDA:  VMRS            APSR_nzcv, FPSCR
256CDE:  BGT.W           loc_257050
256CE2:  VSTR            S0, [R5,#0xC]
256CE6:  B               loc_257114
256CE8:  VLDR            S0, [R6]; jumptable 00256864 case 13
256CEC:  VCMPE.F32       S0, #0.0
256CF0:  VMRS            APSR_nzcv, FPSCR
256CF4:  BLT.W           loc_25708C
256CF8:  VMOV.F32        S2, #1.0
256CFC:  VCMPE.F32       S0, S2
256D00:  VMRS            APSR_nzcv, FPSCR
256D04:  BGT.W           loc_25708C
256D08:  VSTR            S0, [R5,#0x10]
256D0C:  B               loc_257114
256D0E:  VLDR            S0, [R6]; jumptable 00256864 case 31
256D12:  VCMPE.F32       S0, #0.0
256D16:  VMRS            APSR_nzcv, FPSCR
256D1A:  BGE.W           loc_2570C8
256D1E:  LDR.W           R0, =(TrapALError_ptr - 0x256D26)
256D22:  ADD             R0, PC; TrapALError_ptr
256D24:  LDR             R0, [R0]; TrapALError
256D26:  LDRB            R0, [R0]
256D28:  CMP             R0, #0
256D2A:  ITT NE
256D2C:  MOVNE           R0, #5; sig
256D2E:  BLXNE           raise
256D32:  LDREX.W         R0, [R8,#0x50]
256D36:  CMP             R0, #0
256D38:  BNE.W           loc_257204
256D3C:  ADD.W           R0, R8, #0x50 ; 'P'
256D40:  MOVW            R1, #0xA003
256D44:  DMB.W           ISH
256D48:  STREX.W         R2, R1, [R0]
256D4C:  CMP             R2, #0
256D4E:  BEQ.W           loc_257208
256D52:  LDREX.W         R2, [R0]
256D56:  CMP             R2, #0
256D58:  BEQ             loc_256D48
256D5A:  B               loc_257204
256D5C:  VLDR            S0, [R6]; jumptable 00256864 case 32
256D60:  VCMPE.F32       S0, #0.0
256D64:  VMRS            APSR_nzcv, FPSCR
256D68:  BGE.W           loc_2570CE
256D6C:  LDR.W           R0, =(TrapALError_ptr - 0x256D74)
256D70:  ADD             R0, PC; TrapALError_ptr
256D72:  LDR             R0, [R0]; TrapALError
256D74:  LDRB            R0, [R0]
256D76:  CMP             R0, #0
256D78:  ITT NE
256D7A:  MOVNE           R0, #5; sig
256D7C:  BLXNE           raise
256D80:  LDREX.W         R0, [R8,#0x50]
256D84:  CMP             R0, #0
256D86:  BNE.W           loc_257204
256D8A:  ADD.W           R0, R8, #0x50 ; 'P'
256D8E:  MOVW            R1, #0xA003
256D92:  DMB.W           ISH
256D96:  STREX.W         R2, R1, [R0]
256D9A:  CMP             R2, #0
256D9C:  BEQ.W           loc_257208
256DA0:  LDREX.W         R2, [R0]
256DA4:  CMP             R2, #0
256DA6:  BEQ             loc_256D96
256DA8:  B               loc_257204
256DAA:  VLDR            S0, [R6]; jumptable 00256864 case 33
256DAE:  VCMPE.F32       S0, #0.0
256DB2:  VMRS            APSR_nzcv, FPSCR
256DB6:  BLT.W           loc_2570D4
256DBA:  VMOV.F32        S2, #1.0
256DBE:  VCMPE.F32       S0, S2
256DC2:  VMRS            APSR_nzcv, FPSCR
256DC6:  BGT.W           loc_2570D4
256DCA:  VSTR            S0, [R5,#8]
256DCE:  B               loc_257114
256DD0:  VLDR            S0, [R6]; jumptable 00256864 case 34
256DD4:  VCMPE.F32       S0, #0.0
256DD8:  VMRS            APSR_nzcv, FPSCR
256DDC:  BGE.W           loc_257110
256DE0:  LDR.W           R0, =(TrapALError_ptr - 0x256DE8)
256DE4:  ADD             R0, PC; TrapALError_ptr
256DE6:  LDR             R0, [R0]; TrapALError
256DE8:  LDRB            R0, [R0]
256DEA:  CMP             R0, #0
256DEC:  ITT NE
256DEE:  MOVNE           R0, #5; sig
256DF0:  BLXNE           raise
256DF4:  LDREX.W         R0, [R8,#0x50]
256DF8:  CMP             R0, #0
256DFA:  BNE.W           loc_257204
256DFE:  ADD.W           R0, R8, #0x50 ; 'P'
256E02:  MOVW            R1, #0xA003
256E06:  DMB.W           ISH
256E0A:  STREX.W         R2, R1, [R0]
256E0E:  CMP             R2, #0
256E10:  BEQ.W           loc_257208
256E14:  LDREX.W         R2, [R0]
256E18:  CMP             R2, #0
256E1A:  BEQ             loc_256E0A
256E1C:  B               loc_257204
256E1E:  VLDR            S0, [R6]; jumptable 002568EE case 131080
256E22:  VCMPE.F32       S0, #0.0
256E26:  VMRS            APSR_nzcv, FPSCR
256E2A:  BLT.W           loc_257120
256E2E:  VMOV.F32        S2, #10.0
256E32:  VCMPE.F32       S0, S2
256E36:  VMRS            APSR_nzcv, FPSCR
256E3A:  BGT.W           loc_257120
256E3E:  VSTR            S0, [R5,#0x60]
256E42:  B               loc_257114
256E44:  VLDR            S0, [R6]; jumptable 002568EE case 131081
256E48:  VCMPE.F32       S0, #0.0
256E4C:  VMRS            APSR_nzcv, FPSCR
256E50:  BLT.W           loc_257158
256E54:  VMOV.F32        S2, #1.0
256E58:  VCMPE.F32       S0, S2
256E5C:  VMRS            APSR_nzcv, FPSCR
256E60:  BGT.W           loc_257158
256E64:  VSTR            S0, [R5,#0x58]
256E68:  B               loc_257114
256E6A:  ALIGN 4
256E6C:  DCFS 360.0
256E70:  DCFS +Inf
256E74:  LDR.W           R0, =(TrapALError_ptr - 0x256E7C)
256E78:  ADD             R0, PC; TrapALError_ptr
256E7A:  LDR             R0, [R0]; TrapALError
256E7C:  LDRB            R0, [R0]
256E7E:  CMP             R0, #0
256E80:  ITT NE
256E82:  MOVNE           R0, #5; sig
256E84:  BLXNE           raise
256E88:  LDREX.W         R0, [R8,#0x50]
256E8C:  CBNZ            R0, loc_256EA8
256E8E:  ADD.W           R0, R8, #0x50 ; 'P'
256E92:  MOVW            R1, #0xA004
256E96:  DMB.W           ISH
256E9A:  STREX.W         R2, R1, [R0]
256E9E:  CBZ             R2, loc_256EAC
256EA0:  LDREX.W         R2, [R0]
256EA4:  CMP             R2, #0
256EA6:  BEQ             loc_256E9A
256EA8:  CLREX.W
256EAC:  MOVW            R0, #0xA004
256EB0:  DMB.W           ISH
256EB4:  B               loc_257210
256EB6:  VLDR            S0, [R6]
256EBA:  VCMPE.F32       S0, #0.0
256EBE:  VMRS            APSR_nzcv, FPSCR
256EC2:  BLT.W           loc_257190
256EC6:  VMOV.F32        S2, #1.0
256ECA:  VCMPE.F32       S0, S2
256ECE:  VMRS            APSR_nzcv, FPSCR
256ED2:  BGT.W           loc_257190
256ED6:  VSTR            S0, [R5,#0x64]
256EDA:  B               loc_257114
256EDC:  LDR             R0, =(TrapALError_ptr - 0x256EE2)
256EDE:  ADD             R0, PC; TrapALError_ptr
256EE0:  LDR             R0, [R0]; TrapALError
256EE2:  LDRB            R0, [R0]
256EE4:  CMP             R0, #0
256EE6:  ITT NE
256EE8:  MOVNE           R0, #5; sig
256EEA:  BLXNE           raise
256EEE:  LDREX.W         R0, [R8,#0x50]
256EF2:  CMP             R0, #0
256EF4:  BNE.W           loc_257204
256EF8:  ADD.W           R0, R8, #0x50 ; 'P'
256EFC:  MOVW            R1, #0xA003
256F00:  DMB.W           ISH
256F04:  STREX.W         R2, R1, [R0]
256F08:  CMP             R2, #0
256F0A:  BEQ.W           loc_257208
256F0E:  LDREX.W         R2, [R0]
256F12:  CMP             R2, #0
256F14:  BEQ             loc_256F04
256F16:  B               loc_257204
256F18:  LDR             R0, =(TrapALError_ptr - 0x256F1E)
256F1A:  ADD             R0, PC; TrapALError_ptr
256F1C:  LDR             R0, [R0]; TrapALError
256F1E:  LDRB            R0, [R0]
256F20:  CMP             R0, #0
256F22:  ITT NE
256F24:  MOVNE           R0, #5; sig
256F26:  BLXNE           raise
256F2A:  LDREX.W         R0, [R8,#0x50]
256F2E:  CMP             R0, #0
256F30:  BNE.W           loc_257204
256F34:  ADD.W           R0, R8, #0x50 ; 'P'
256F38:  MOVW            R1, #0xA003
256F3C:  DMB.W           ISH
256F40:  STREX.W         R2, R1, [R0]
256F44:  CMP             R2, #0
256F46:  BEQ.W           loc_257208
256F4A:  LDREX.W         R2, [R0]
256F4E:  CMP             R2, #0
256F50:  BEQ             loc_256F40
256F52:  B               loc_257204
256F54:  LDR             R0, =(TrapALError_ptr - 0x256F5A)
256F56:  ADD             R0, PC; TrapALError_ptr
256F58:  LDR             R0, [R0]; TrapALError
256F5A:  LDRB            R0, [R0]
256F5C:  CMP             R0, #0
256F5E:  ITT NE
256F60:  MOVNE           R0, #5; sig
256F62:  BLXNE           raise
256F66:  LDREX.W         R0, [R8,#0x50]
256F6A:  CMP             R0, #0
256F6C:  BNE.W           loc_257204
256F70:  ADD.W           R0, R8, #0x50 ; 'P'
256F74:  MOVW            R1, #0xA003
256F78:  DMB.W           ISH
256F7C:  STREX.W         R2, R1, [R0]
256F80:  CMP             R2, #0
256F82:  BEQ.W           loc_257208
256F86:  LDREX.W         R2, [R0]
256F8A:  CMP             R2, #0
256F8C:  BEQ             loc_256F7C
256F8E:  B               loc_257204
256F90:  LDR             R0, =(TrapALError_ptr - 0x256F96)
256F92:  ADD             R0, PC; TrapALError_ptr
256F94:  LDR             R0, [R0]; TrapALError
256F96:  LDRB            R0, [R0]
256F98:  CMP             R0, #0
256F9A:  ITT NE
256F9C:  MOVNE           R0, #5; sig
256F9E:  BLXNE           raise
256FA2:  LDREX.W         R0, [R8,#0x50]
256FA6:  CMP             R0, #0
256FA8:  BNE.W           loc_257204
256FAC:  ADD.W           R0, R8, #0x50 ; 'P'
256FB0:  MOVW            R1, #0xA003
256FB4:  DMB.W           ISH
256FB8:  STREX.W         R2, R1, [R0]
256FBC:  CMP             R2, #0
256FBE:  BEQ.W           loc_257208
256FC2:  LDREX.W         R2, [R0]
256FC6:  CMP             R2, #0
256FC8:  BEQ             loc_256FB8
256FCA:  B               loc_257204
256FCC:  LDR             R0, =(TrapALError_ptr - 0x256FD2)
256FCE:  ADD             R0, PC; TrapALError_ptr
256FD0:  LDR             R0, [R0]; TrapALError
256FD2:  LDRB            R0, [R0]
256FD4:  CMP             R0, #0
256FD6:  ITT NE
256FD8:  MOVNE           R0, #5; sig
256FDA:  BLXNE           raise
256FDE:  LDREX.W         R0, [R8,#0x50]
256FE2:  CMP             R0, #0
256FE4:  BNE.W           loc_257204
256FE8:  ADD.W           R0, R8, #0x50 ; 'P'
256FEC:  MOVW            R1, #0xA003
256FF0:  DMB.W           ISH
256FF4:  STREX.W         R2, R1, [R0]
256FF8:  CMP             R2, #0
256FFA:  BEQ.W           loc_257208
256FFE:  LDREX.W         R2, [R0]
257002:  CMP             R2, #0
257004:  BEQ             loc_256FF4
257006:  B               loc_257204
257008:  LDR             R0, =(TrapALError_ptr - 0x25700E)
25700A:  ADD             R0, PC; TrapALError_ptr
25700C:  LDR             R0, [R0]; TrapALError
25700E:  LDRB            R0, [R0]
257010:  CMP             R0, #0
257012:  ITT NE
257014:  MOVNE           R0, #5; sig
257016:  BLXNE           raise
25701A:  LDREX.W         R0, [R8,#0x50]
25701E:  CMP             R0, #0
257020:  BNE.W           loc_257204
257024:  ADD.W           R0, R8, #0x50 ; 'P'
257028:  MOVW            R1, #0xA003
25702C:  DMB.W           ISH
257030:  STREX.W         R2, R1, [R0]
257034:  CMP             R2, #0
257036:  BEQ.W           loc_257208
25703A:  LDREX.W         R2, [R0]
25703E:  CMP             R2, #0
257040:  BEQ             loc_257030
257042:  B               loc_257204
257044:  VSTR            S0, [R5]
257048:  B               loc_257114
25704A:  VSTR            S0, [R5,#4]
25704E:  B               loc_257114
257050:  LDR             R0, =(TrapALError_ptr - 0x257056)
257052:  ADD             R0, PC; TrapALError_ptr
257054:  LDR             R0, [R0]; TrapALError
257056:  LDRB            R0, [R0]
257058:  CMP             R0, #0
25705A:  ITT NE
25705C:  MOVNE           R0, #5; sig
25705E:  BLXNE           raise
257062:  LDREX.W         R0, [R8,#0x50]
257066:  CMP             R0, #0
257068:  BNE.W           loc_257204
25706C:  ADD.W           R0, R8, #0x50 ; 'P'
257070:  MOVW            R1, #0xA003
257074:  DMB.W           ISH
257078:  STREX.W         R2, R1, [R0]
25707C:  CMP             R2, #0
25707E:  BEQ.W           loc_257208
257082:  LDREX.W         R2, [R0]
257086:  CMP             R2, #0
257088:  BEQ             loc_257078
25708A:  B               loc_257204
25708C:  LDR             R0, =(TrapALError_ptr - 0x257092)
25708E:  ADD             R0, PC; TrapALError_ptr
257090:  LDR             R0, [R0]; TrapALError
257092:  LDRB            R0, [R0]
257094:  CMP             R0, #0
257096:  ITT NE
257098:  MOVNE           R0, #5; sig
25709A:  BLXNE           raise
25709E:  LDREX.W         R0, [R8,#0x50]
2570A2:  CMP             R0, #0
2570A4:  BNE.W           loc_257204
2570A8:  ADD.W           R0, R8, #0x50 ; 'P'
2570AC:  MOVW            R1, #0xA003
2570B0:  DMB.W           ISH
2570B4:  STREX.W         R2, R1, [R0]
2570B8:  CMP             R2, #0
2570BA:  BEQ.W           loc_257208
2570BE:  LDREX.W         R2, [R0]
2570C2:  CMP             R2, #0
2570C4:  BEQ             loc_2570B4
2570C6:  B               loc_257204
2570C8:  VSTR            S0, [R5,#0x1C]
2570CC:  B               loc_257114
2570CE:  VSTR            S0, [R5,#0x24]
2570D2:  B               loc_257114
2570D4:  LDR             R0, =(TrapALError_ptr - 0x2570DA)
2570D6:  ADD             R0, PC; TrapALError_ptr
2570D8:  LDR             R0, [R0]; TrapALError
2570DA:  LDRB            R0, [R0]
2570DC:  CMP             R0, #0
2570DE:  ITT NE
2570E0:  MOVNE           R0, #5; sig
2570E2:  BLXNE           raise
2570E6:  LDREX.W         R0, [R8,#0x50]
2570EA:  CMP             R0, #0
2570EC:  BNE.W           loc_257204
2570F0:  ADD.W           R0, R8, #0x50 ; 'P'
2570F4:  MOVW            R1, #0xA003
2570F8:  DMB.W           ISH
2570FC:  STREX.W         R2, R1, [R0]
257100:  CMP             R2, #0
257102:  BEQ.W           loc_257208
257106:  LDREX.W         R2, [R0]
25710A:  CMP             R2, #0
25710C:  BEQ             loc_2570FC
25710E:  B               loc_257204
257110:  VSTR            S0, [R5,#0x20]
257114:  MOV.W           R0, #0x5980
257118:  MOVS            R1, #1
25711A:  STR             R1, [R5,R0]
25711C:  MOVS            R0, #0
25711E:  B               loc_257210
257120:  LDR             R0, =(TrapALError_ptr - 0x257126)
257122:  ADD             R0, PC; TrapALError_ptr
257124:  LDR             R0, [R0]; TrapALError
257126:  LDRB            R0, [R0]
257128:  CMP             R0, #0
25712A:  ITT NE
25712C:  MOVNE           R0, #5; sig
25712E:  BLXNE           raise
257132:  LDREX.W         R0, [R8,#0x50]
257136:  CMP             R0, #0
257138:  BNE             loc_257204
25713A:  ADD.W           R0, R8, #0x50 ; 'P'
25713E:  MOVW            R1, #0xA003
257142:  DMB.W           ISH
257146:  STREX.W         R2, R1, [R0]
25714A:  CMP             R2, #0
25714C:  BEQ             loc_257208
25714E:  LDREX.W         R2, [R0]
257152:  CMP             R2, #0
257154:  BEQ             loc_257146
257156:  B               loc_257204
257158:  LDR             R0, =(TrapALError_ptr - 0x25715E)
25715A:  ADD             R0, PC; TrapALError_ptr
25715C:  LDR             R0, [R0]; TrapALError
25715E:  LDRB            R0, [R0]
257160:  CMP             R0, #0
257162:  ITT NE
257164:  MOVNE           R0, #5; sig
257166:  BLXNE           raise
25716A:  LDREX.W         R0, [R8,#0x50]
25716E:  CMP             R0, #0
257170:  BNE             loc_257204
257172:  ADD.W           R0, R8, #0x50 ; 'P'
257176:  MOVW            R1, #0xA003
25717A:  DMB.W           ISH
25717E:  STREX.W         R2, R1, [R0]
257182:  CMP             R2, #0
257184:  BEQ             loc_257208
257186:  LDREX.W         R2, [R0]
25718A:  CMP             R2, #0
25718C:  BEQ             loc_25717E
25718E:  B               loc_257204
257190:  LDR             R0, =(TrapALError_ptr - 0x257196)
257192:  ADD             R0, PC; TrapALError_ptr
257194:  LDR             R0, [R0]; TrapALError
257196:  LDRB            R0, [R0]
257198:  CMP             R0, #0
25719A:  ITT NE
25719C:  MOVNE           R0, #5; sig
25719E:  BLXNE           raise
2571A2:  LDREX.W         R0, [R8,#0x50]
2571A6:  CBNZ            R0, loc_257204
2571A8:  ADD.W           R0, R8, #0x50 ; 'P'
2571AC:  MOVW            R1, #0xA003
2571B0:  DMB.W           ISH
2571B4:  STREX.W         R2, R1, [R0]
2571B8:  CBZ             R2, loc_257208
2571BA:  LDREX.W         R2, [R0]
2571BE:  CMP             R2, #0
2571C0:  BEQ             loc_2571B4
2571C2:  B               loc_257204
2571C4:  LDR.W           R0, [R8,#0x88]
2571C8:  LDR.W           R1, [R0,R9]
2571CC:  LDR             R1, [R1,#0x30]
2571CE:  BLX             R1
2571D0:  LDR             R0, =(TrapALError_ptr - 0x2571D6)
2571D2:  ADD             R0, PC; TrapALError_ptr
2571D4:  LDR             R0, [R0]; TrapALError
2571D6:  LDRB            R0, [R0]
2571D8:  CMP             R0, #0
2571DA:  ITT NE
2571DC:  MOVNE           R0, #5; sig
2571DE:  BLXNE           raise
2571E2:  LDREX.W         R0, [R8,#0x50]
2571E6:  CMP             R0, #0
2571E8:  BNE             loc_257204
2571EA:  ADD.W           R0, R8, #0x50 ; 'P'
2571EE:  MOVW            R1, #0xA003
2571F2:  DMB.W           ISH
2571F6:  STREX.W         R2, R1, [R0]
2571FA:  CBZ             R2, loc_257208
2571FC:  LDREX.W         R2, [R0]
257200:  CMP             R2, #0
257202:  BEQ             loc_2571F6
257204:  CLREX.W
257208:  DMB.W           ISH
25720C:  MOVW            R0, #0xA003
257210:  ADD             SP, SP, #8
257212:  POP.W           {R8,R9,R11}
257216:  POP             {R4-R7,PC}
