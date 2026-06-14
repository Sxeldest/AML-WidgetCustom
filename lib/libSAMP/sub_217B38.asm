; =========================================================
; Game Engine Function: sub_217B38
; Address            : 0x217B38 - 0x2191F6
; =========================================================

217B38:  PUSH            {R4-R7,LR}
217B3A:  ADD             R7, SP, #0xC
217B3C:  PUSH.W          {R8-R11}
217B40:  SUB             SP, SP, #0x44
217B42:  MOV             R5, R0
217B44:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x217B4C)
217B48:  ADD             R0, PC; __stack_chk_guard_ptr
217B4A:  LDR             R0, [R0]; __stack_chk_guard
217B4C:  LDR             R0, [R0]
217B4E:  STR             R0, [SP,#0x60+var_20]
217B50:  MOV             R0, R5
217B52:  LDR             R4, =(aGs - 0x217B58); "gs" ...
217B54:  ADD             R4, PC; "gs"
217B56:  ADDS            R6, R4, #2
217B58:  MOV             R1, R4
217B5A:  MOV             R2, R6
217B5C:  BL              sub_2155E4
217B60:  LDRD.W          R12, R1, [R5]
217B64:  STRB.W          R0, [R7,#var_31]
217B68:  SUB.W           R2, R1, R12
217B6C:  CMP             R2, #2
217B6E:  BCS             loc_217B90
217B70:  MOVS            R5, #0
217B72:  LDR             R0, [SP,#0x60+var_20]
217B74:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x217B7C)
217B78:  ADD             R1, PC; __stack_chk_guard_ptr
217B7A:  LDR             R1, [R1]; __stack_chk_guard
217B7C:  LDR             R1, [R1]
217B7E:  CMP             R1, R0
217B80:  ITTTT EQ
217B82:  MOVEQ           R0, R5
217B84:  ADDEQ           SP, SP, #0x44 ; 'D'
217B86:  POPEQ.W         {R8-R11}
217B8A:  POPEQ           {R4-R7,PC}
217B8C:  BLX             __stack_chk_fail
217B90:  STR             R5, [SP,#0x60+var_38]
217B92:  LDRB.W          R5, [R12]
217B96:  SUB.W           R3, R5, #0x4C ; 'L'; switch 41 cases
217B9A:  CMP             R3, #0x28 ; '('
217B9C:  BHI             def_217BC0; jumptable 00217BC0 default case
217B9E:  LDR             R0, =(asc_83A7E - 0x217BA4); "/" ...
217BA0:  ADD             R0, PC; "/"
217BA2:  MOV             LR, R0
217BA4:  LDR             R0, =(unk_88380 - 0x217BAA)
217BA6:  ADD             R0, PC; unk_88380
217BA8:  MOV             R10, R0
217BAA:  LDR             R0, =(asc_8F0DA - 0x217BB0); "&&" ...
217BAC:  ADD             R0, PC; "&&"
217BAE:  MOV             R11, R0
217BB0:  LDR             R0, =(asc_8F736 - 0x217BB6); "&" ...
217BB2:  ADD             R0, PC; "&"
217BB4:  MOV             R9, R0
217BB6:  LDR             R0, =(unk_8B3DF - 0x217BBC)
217BB8:  ADD             R0, PC; unk_8B3DF
217BBA:  MOV             R8, R0
217BBC:  LDR             R0, =(asc_88E5E - 0x217BC2); "&=" ...
217BBE:  ADD             R0, PC; "&="
217BC0:  TBH.W           [PC,R3,LSL#1]; switch jump
217BC4:  DCW 0x29; jump table for switch statement
217BC6:  DCW 0x4F
217BC8:  DCW 0x4F
217BCA:  DCW 0x4F
217BCC:  DCW 0x4F
217BCE:  DCW 0x4F
217BD0:  DCW 0x4F
217BD2:  DCW 0x4F
217BD4:  DCW 0xEB
217BD6:  DCW 0x4F
217BD8:  DCW 0x4F
217BDA:  DCW 0x4F
217BDC:  DCW 0x4F
217BDE:  DCW 0x4F
217BE0:  DCW 0x4F
217BE2:  DCW 0x4F
217BE4:  DCW 0x4F
217BE6:  DCW 0x4F
217BE8:  DCW 0x4F
217BEA:  DCW 0x4F
217BEC:  DCW 0x4F
217BEE:  DCW 0x19A
217BF0:  DCW 0x4F
217BF2:  DCW 0x117
217BF4:  DCW 0x1DE
217BF6:  DCW 0xFC
217BF8:  DCW 0x21D
217BFA:  DCW 0x1C5
217BFC:  DCW 0x4F
217BFE:  DCW 0x9E
217C00:  DCW 0x4F
217C02:  DCW 0x4F
217C04:  DCW 0x5E
217C06:  DCW 0x7D
217C08:  DCW 0x2D3
217C0A:  DCW 0x2BA
217C0C:  DCW 0xC7
217C0E:  DCW 0x147
217C10:  DCW 0x24D
217C12:  DCW 0x27C
217C14:  DCW 0x204
217C16:  LDR             R0, [SP,#0x60+var_20]; jumptable 00217BC0 case 76
217C18:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x217C20)
217C1C:  ADD             R1, PC; __stack_chk_guard_ptr
217C1E:  LDR             R1, [R1]; __stack_chk_guard
217C20:  LDR             R1, [R1]
217C22:  CMP             R1, R0
217C24:  LDR             R0, [SP,#0x60+var_38]
217C26:  ITTTT EQ
217C28:  ADDEQ           SP, SP, #0x44 ; 'D'
217C2A:  POPEQ.W         {R8-R11}
217C2E:  POPEQ.W         {R4-R7,LR}
217C32:  BEQ.W           sub_2193A0
217C36:  B               loc_217B8C
217C38:  SUB.W           R0, R5, #0x31 ; '1'; jumptable 00217BC0 default case
217C3C:  CMP             R0, #9
217C3E:  BCS             loc_217C62; jumptable 00217BC0 cases 77-83,85-96,98,104,106,107
217C40:  LDR             R0, [SP,#0x60+var_20]
217C42:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x217C4A)
217C46:  ADD             R1, PC; __stack_chk_guard_ptr
217C48:  LDR             R1, [R1]; __stack_chk_guard
217C4A:  LDR             R1, [R1]
217C4C:  CMP             R1, R0
217C4E:  LDR             R0, [SP,#0x60+var_38]
217C50:  BNE.W           loc_217B8C
217C54:  ADD             SP, SP, #0x44 ; 'D'
217C56:  POP.W           {R8-R11}
217C5A:  POP.W           {R4-R7,LR}
217C5E:  B.W             sub_219B40
217C62:  LDR             R1, =(aU8Uuidoft - 0x217C6A); jumptable 00217BC0 cases 77-83,85-96,98,104,106,107
217C64:  LDR             R4, [SP,#0x60+var_38]
217C66:  ADD             R1, PC; "u8__uuidoft"
217C68:  ADD.W           R2, R1, #0xB
217C6C:  MOV             R0, R4
217C6E:  BL              sub_2155E4
217C72:  CMP             R0, #0
217C74:  BEQ.W           loc_2181BA
217C78:  MOV             R0, R4
217C7A:  BL              sub_215C48
217C7E:  B               loc_2181D4
217C80:  LDRB.W          R1, [R12,#1]; jumptable 00217BC0 case 108
217C84:  CMP             R1, #0x53 ; 'S'
217C86:  BEQ.W           loc_218382
217C8A:  LDR             R0, [SP,#0x60+var_38]
217C8C:  CMP             R1, #0x74 ; 't'
217C8E:  BEQ.W           loc_218344
217C92:  CMP             R1, #0x73 ; 's'
217C94:  BEQ.W           loc_218362
217C98:  CMP             R1, #0x65 ; 'e'
217C9A:  BNE.W           loc_217B70
217C9E:  ADD.W           R1, R12, #2
217CA2:  STR             R1, [R0]
217CA4:  LDR             R2, [SP,#0x60+var_20]
217CA6:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x217CAE)
217CAA:  ADD             R1, PC; __stack_chk_guard_ptr
217CAC:  LDR             R1, [R1]; __stack_chk_guard
217CAE:  LDR             R1, [R1]
217CB0:  CMP             R1, R2
217CB2:  BNE.W           loc_217B8C
217CB6:  LDR             R1, =(asc_8E1D8 - 0x217CBC); "<=" ...
217CB8:  ADD             R1, PC; "<="
217CBA:  B.W             loc_218CC0
217CBE:  LDRB.W          R2, [R12,#1]; jumptable 00217BC0 case 109
217CC2:  CMP             R2, #0x49 ; 'I'
217CC4:  BEQ.W           loc_2184C8
217CC8:  LDR             R4, [SP,#0x60+var_38]
217CCA:  CMP             R2, #0x4C ; 'L'
217CCC:  BEQ.W           loc_218406
217CD0:  CMP             R2, #0x6D ; 'm'
217CD2:  BEQ.W           loc_21844A
217CD6:  CMP             R2, #0x6C ; 'l'
217CD8:  BEQ.W           loc_218426
217CDC:  CMP             R2, #0x69 ; 'i'
217CDE:  BNE.W           loc_217B70
217CE2:  ADD.W           R0, R12, #2
217CE6:  STR             R0, [R4]
217CE8:  LDR             R0, [SP,#0x60+var_20]
217CEA:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x217CF2)
217CEE:  ADD             R1, PC; __stack_chk_guard_ptr
217CF0:  LDR             R1, [R1]; __stack_chk_guard
217CF2:  LDR             R1, [R1]
217CF4:  CMP             R1, R0
217CF6:  BNE.W           loc_217B8C
217CFA:  LDR             R1, =(unk_86B5A - 0x217D00)
217CFC:  ADD             R1, PC; unk_86B5A
217CFE:  B               loc_218442
217D00:  LDRB.W          R2, [R12,#1]; jumptable 00217BC0 case 105
217D04:  CMP             R2, #0x6C ; 'l'
217D06:  BEQ.W           loc_218252
217D0A:  LDR             R5, [SP,#0x60+var_38]
217D0C:  CMP             R2, #0x78 ; 'x'
217D0E:  BNE.W           loc_217B70
217D12:  ADD.W           R0, R12, #2
217D16:  STR             R0, [R5]
217D18:  MOV             R0, R5
217D1A:  BL              sub_217B38
217D1E:  CMP             R0, #0
217D20:  BEQ.W           loc_217B70
217D24:  MOV             R4, R0
217D26:  MOV             R0, R5
217D28:  BL              sub_217B38
217D2C:  CMP             R0, #0
217D2E:  BEQ.W           loc_217B70
217D32:  MOV             R6, R0
217D34:  ADD.W           R0, R5, #0x198
217D38:  MOVS            R1, #0x10
217D3A:  BL              sub_216EF0
217D3E:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle18ArraySubscriptExprE - 0x217D48); `vtable for'`anonymous namespace'::itanium_demangle::ArraySubscriptExpr ...
217D40:  MOV             R5, R0
217D42:  LDR             R0, =0x1010130
217D44:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::ArraySubscriptExpr
217D46:  STRD.W          R4, R6, [R5,#8]
217D4A:  ADDS            R1, #8
217D4C:  STRD.W          R1, R0, [R5]
217D50:  B               loc_217B72
217D52:  LDRB.W          R3, [R12,#1]; jumptable 00217BC0 case 112
217D56:  MOVS            R5, #0
217D58:  SUB.W           R2, R3, #0x6C ; 'l'; switch 9 cases
217D5C:  CMP             R2, #8
217D5E:  BHI.W           def_217D62; jumptable 00217D62 default case
217D62:  TBH.W           [PC,R2,LSL#1]; switch jump
217D66:  DCW 0xA; jump table for switch statement
217D68:  DCW 0x527
217D6A:  DCW 9
217D6C:  DCW 9
217D6E:  DCW 0x50B
217D70:  DCW 9
217D72:  DCW 9
217D74:  DCW 0x538
217D76:  DCW 0x4C6
217D78:  B               loc_217B72; jumptable 00217D62 cases 110,111,113,114
217D7A:  LDR             R0, [SP,#0x60+var_38]; jumptable 00217D62 case 108
217D7C:  ADD.W           R1, R12, #2
217D80:  STR             R1, [R0]
217D82:  LDR             R2, [SP,#0x60+var_20]
217D84:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x217D8C)
217D88:  ADD             R1, PC; __stack_chk_guard_ptr
217D8A:  LDR             R1, [R1]; __stack_chk_guard
217D8C:  LDR             R1, [R1]
217D8E:  CMP             R1, R2
217D90:  BNE.W           loc_217B8C
217D94:  LDR             R1, =(unk_8BBBD - 0x217D9A)
217D96:  ADD             R1, PC; unk_8BBBD
217D98:  B               loc_2183BE
217D9A:  LDR             R0, [SP,#0x60+var_20]; jumptable 00217BC0 case 84
217D9C:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x217DA4)
217DA0:  ADD             R1, PC; __stack_chk_guard_ptr
217DA2:  LDR             R1, [R1]; __stack_chk_guard
217DA4:  LDR             R1, [R1]
217DA6:  CMP             R1, R0
217DA8:  LDR             R0, [SP,#0x60+var_38]
217DAA:  ITTTT EQ
217DAC:  ADDEQ           SP, SP, #0x44 ; 'D'
217DAE:  POPEQ.W         {R8-R11}
217DB2:  POPEQ.W         {R4-R7,LR}
217DB6:  BEQ.W           sub_2174C8
217DBA:  B               loc_217B8C
217DBC:  LDRB.W          R1, [R12,#1]; jumptable 00217BC0 case 101
217DC0:  CMP             R1, #0x4F ; 'O'
217DC2:  BEQ.W           loc_2182D2
217DC6:  LDR             R0, [SP,#0x60+var_38]
217DC8:  CMP             R1, #0x71 ; 'q'
217DCA:  BEQ.W           loc_2182B2
217DCE:  CMP             R1, #0x6F ; 'o'
217DD0:  BNE.W           loc_217B70
217DD4:  ADD.W           R1, R12, #2
217DD8:  STR             R1, [R0]
217DDA:  LDR             R2, [SP,#0x60+var_20]
217DDC:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x217DE4)
217DE0:  ADD             R1, PC; __stack_chk_guard_ptr
217DE2:  LDR             R1, [R1]; __stack_chk_guard
217DE4:  LDR             R1, [R1]
217DE6:  CMP             R1, R2
217DE8:  BNE.W           loc_217B8C
217DEC:  LDR             R1, =(asc_8BDBD - 0x217DF2); "^" ...
217DEE:  ADD             R1, PC; "^"
217DF0:  B               loc_2183BE
217DF2:  LDRB.W          R1, [R12,#1]; jumptable 00217BC0 case 99
217DF6:  CMP             R1, #0x76 ; 'v'
217DF8:  BEQ.W           loc_218592
217DFC:  LDR             R6, [SP,#0x60+var_38]
217DFE:  CMP             R1, #0x6C ; 'l'
217E00:  BEQ.W           loc_21847C
217E04:  CMP             R1, #0x6D ; 'm'
217E06:  BEQ.W           loc_218524
217E0A:  CMP             R1, #0x6F ; 'o'
217E0C:  BEQ.W           loc_2184E8
217E10:  CMP             R1, #0x63 ; 'c'
217E12:  BNE.W           loc_217B70
217E16:  ADD.W           R0, R12, #2
217E1A:  STR             R0, [R6]
217E1C:  MOV             R0, R6
217E1E:  BL              sub_215C48
217E22:  CMP             R0, #0
217E24:  BEQ.W           loc_217B70
217E28:  MOV             R4, R0
217E2A:  MOV             R0, R6
217E2C:  BL              sub_217B38
217E30:  CMP             R0, #0
217E32:  BEQ.W           loc_217B70
217E36:  MOV             R8, R0
217E38:  ADD.W           R0, R6, #0x198
217E3C:  MOVS            R1, #0x18
217E3E:  BL              sub_216EF0
217E42:  LDR             R1, =(aConstCast - 0x217E4C); "const_cast" ...
217E44:  MOV             R5, R0
217E46:  LDR             R0, =0x1010135
217E48:  ADD             R1, PC; "const_cast"
217E4A:  ADD.W           R2, R1, #0xA
217E4E:  B.W             loc_218C5C
217E52:  LDRB.W          R1, [R12,#1]; jumptable 00217BC0 case 113
217E56:  CMP             R1, #0x75 ; 'u'
217E58:  BNE.W           loc_217B70
217E5C:  LDR             R5, [SP,#0x60+var_38]
217E5E:  ADD.W           R0, R12, #2
217E62:  STR             R0, [R5]
217E64:  MOV             R0, R5
217E66:  BL              sub_217B38
217E6A:  CMP             R0, #0
217E6C:  BEQ.W           loc_217B70
217E70:  MOV             R4, R0
217E72:  MOV             R0, R5
217E74:  BL              sub_217B38
217E78:  CMP             R0, #0
217E7A:  BEQ.W           loc_217B70
217E7E:  MOV             R6, R0
217E80:  MOV             R0, R5
217E82:  BL              sub_217B38
217E86:  CMP             R0, #0
217E88:  BEQ.W           loc_217B70
217E8C:  MOV             R9, R0
217E8E:  ADD.W           R0, R5, #0x198
217E92:  MOVS            R1, #0x14
217E94:  BL              sub_216EF0
217E98:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle15ConditionalExprE - 0x217EA2); `vtable for'`anonymous namespace'::itanium_demangle::ConditionalExpr ...
217E9A:  MOV             R5, R0
217E9C:  LDR             R0, =0x1010132
217E9E:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::ConditionalExpr
217EA0:  ADDS            R1, #8
217EA2:  STRD.W          R1, R0, [R5]
217EA6:  ADD.W           R0, R5, #8
217EAA:  STM.W           R0, {R4,R6,R9}
217EAE:  B               loc_217B72
217EB0:  DCD aGs - 0x217B58
217EB4:  DCD asc_83A7E - 0x217BA4
217EB8:  DCD unk_88380 - 0x217BAA
217EBC:  DCD asc_8F0DA - 0x217BB0
217EC0:  DCD asc_8F736 - 0x217BB6
217EC4:  DCD unk_8B3DF - 0x217BBC
217EC8:  DCD asc_88E5E - 0x217BC2
217ECC:  DCD aU8Uuidoft - 0x217C6A
217ED0:  DCD asc_8E1D8 - 0x217CBC
217ED4:  DCD unk_86B5A - 0x217D00
217ED8:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle18ArraySubscriptExprE - 0x217D48
217EDC:  DCD 0x1010130
217EE0:  DCD unk_8BBBD - 0x217D9A
217EE4:  DCD asc_8BDBD - 0x217DF2
217EE8:  DCD aConstCast - 0x217E4C
217EEC:  DCD 0x1010135
217EF0:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle15ConditionalExprE - 0x217EA2
217EF4:  DCD 0x1010132
217EF8:  MOV             R5, R0; jumptable 00217BC0 case 97
217EFA:  LDRB.W          R0, [R12,#1]
217EFE:  CMP             R0, #0x4E ; 'N'
217F00:  BEQ.W           loc_21897E
217F04:  LDR             R5, [SP,#0x60+var_38]
217F06:  CMP             R0, #0x53 ; 'S'
217F08:  BEQ.W           loc_2189DE
217F0C:  CMP             R0, #0x7A ; 'z'
217F0E:  BEQ.W           loc_2189BC
217F12:  CMP             R0, #0x64 ; 'd'
217F14:  BEQ.W           loc_21892C
217F18:  CMP             R0, #0x6E ; 'n'
217F1A:  BEQ.W           loc_21895C
217F1E:  CMP             R0, #0x74 ; 't'
217F20:  BEQ.W           loc_21894E
217F24:  CMP             R0, #0x61 ; 'a'
217F26:  BNE.W           loc_217B70
217F2A:  ADD.W           R0, R12, #2
217F2E:  STR             R0, [R5]
217F30:  LDR             R0, [SP,#0x60+var_20]
217F32:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x217F3A)
217F36:  ADD             R1, PC; __stack_chk_guard_ptr
217F38:  LDR             R1, [R1]; __stack_chk_guard
217F3A:  LDR             R1, [R1]
217F3C:  CMP             R1, R0
217F3E:  BNE.W           loc_217B8C
217F42:  ADD.W           R2, R11, #2
217F46:  MOV             R0, R5
217F48:  MOV             R1, R11
217F4A:  B.W             loc_218CC2
217F4E:  LDRB.W          R1, [R12,#1]; jumptable 00217BC0 case 103
217F52:  CMP             R1, #0x74 ; 't'
217F54:  BEQ.W           loc_218292
217F58:  LDR             R0, [SP,#0x60+var_38]
217F5A:  CMP             R1, #0x65 ; 'e'
217F5C:  BNE.W           loc_217B70
217F60:  ADD.W           R1, R12, #2
217F64:  STR             R1, [R0]
217F66:  LDR             R2, [SP,#0x60+var_20]
217F68:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x217F70)
217F6C:  ADD             R1, PC; __stack_chk_guard_ptr
217F6E:  LDR             R1, [R1]; __stack_chk_guard
217F70:  LDR             R1, [R1]
217F72:  CMP             R1, R2
217F74:  BNE.W           loc_217B8C
217F78:  LDR             R1, =(asc_8362F - 0x217F7E); ">=" ...
217F7A:  ADD             R1, PC; ">="
217F7C:  B.W             loc_218CC0
217F80:  LDRB.W          R1, [R12,#1]; jumptable 00217BC0 case 100
217F84:  MOVS            R5, #0
217F86:  SUB.W           R2, R1, #0x6C ; 'l'; switch 11 cases
217F8A:  CMP             R2, #0xA
217F8C:  BHI.W           def_217F90; jumptable 00217F90 default case
217F90:  TBH.W           [PC,R2,LSL#1]; switch jump
217F94:  DCW 0xD; jump table for switch statement
217F96:  DCW 0xC
217F98:  DCW 0xB
217F9A:  DCW 0xC
217F9C:  DCW 0xC
217F9E:  DCW 0xC
217FA0:  DCW 0xC
217FA2:  DCW 0x5E8
217FA4:  DCW 0x602
217FA6:  DCW 0xC
217FA8:  DCW 0x629
217FAA:  B               loc_217C40; jumptable 00217F90 case 110
217FAC:  B               loc_217B72; jumptable 00217F90 cases 109,111-114,117
217FAE:  LDR             R4, [SP,#0x60+var_38]; jumptable 00217F90 case 108
217FB0:  ADD.W           R0, R12, #2
217FB4:  STR             R0, [R4]
217FB6:  MOV             R0, R4
217FB8:  BL              sub_217B38
217FBC:  MOVS            R5, #0
217FBE:  STR             R0, [SP,#0x60+var_30]
217FC0:  CMP             R0, #0
217FC2:  BEQ.W           loc_217B72
217FC6:  STRB.W          R5, [SP,#0x60+var_28]
217FCA:  B               loc_21821E
217FCC:  LDRB.W          R1, [R12,#1]; jumptable 00217BC0 case 116
217FD0:  CMP             R1, #0x77 ; 'w'
217FD2:  BEQ.W           loc_21867C
217FD6:  LDR             R6, [SP,#0x60+var_38]
217FD8:  CMP             R1, #0x69 ; 'i'
217FDA:  BEQ.W           loc_218506
217FDE:  CMP             R1, #0x6C ; 'l'
217FE0:  BEQ.W           loc_218610
217FE4:  CMP             R1, #0x72 ; 'r'
217FE6:  BEQ.W           loc_218546
217FEA:  CMP             R1, #0x65 ; 'e'
217FEC:  BNE.W           loc_217B70
217FF0:  ADD.W           R0, R12, #2
217FF4:  STR             R0, [R6]
217FF6:  MOV             R0, R6
217FF8:  BL              sub_217B38
217FFC:  B               loc_218512
217FFE:  MOV             R3, R12; jumptable 00217BC0 case 102
218000:  STR.W           R8, [SP,#0x60+var_3C]
218004:  LDRB.W          R4, [R3,#1]!
218008:  STRD.W          LR, R10, [SP,#0x60+var_44]
21800C:  CMP             R4, #0x70 ; 'p'
21800E:  BEQ.W           loc_218230
218012:  MOV             R6, R0
218014:  CMP             R4, #0x4C ; 'L'
218016:  BNE             loc_21802A
218018:  CMP             R2, #3
21801A:  BCC             loc_21802A
21801C:  LDRB.W          R2, [R12,#2]
218020:  SUBS            R2, #0x3A ; ':'
218022:  CMN.W           R2, #0xA
218026:  BCS.W           loc_218230
21802A:  CMP             R12, R1
21802C:  LDR             R4, [SP,#0x60+var_38]
21802E:  ITT NE
218030:  STRNE           R3, [R4]
218032:  CMPNE           R1, R3
218034:  BEQ.W           loc_217B70
218038:  LDRB            R0, [R3]
21803A:  MOV.W           R8, #1
21803E:  CMP             R0, #0x4C ; 'L'
218040:  BEQ.W           loc_218DDA
218044:  CMP             R0, #0x72 ; 'r'
218046:  MOV             R5, R11
218048:  BEQ             loc_218056
21804A:  CMP             R0, #0x6C ; 'l'
21804C:  BEQ.W           loc_218DDC
218050:  CMP             R0, #0x52 ; 'R'
218052:  BNE.W           loc_217B70
218056:  MOV.W           R8, #0
21805A:  B.W             loc_218DDC
21805E:  LDRB.W          R1, [R12,#1]; jumptable 00217BC0 case 114
218062:  CMP             R1, #0x4D ; 'M'
218064:  BEQ.W           loc_2186D2
218068:  LDR             R5, [SP,#0x60+var_38]
21806A:  CMP             R1, #0x53 ; 'S'
21806C:  BEQ.W           loc_218572
218070:  CMP             R1, #0x73 ; 's'
218072:  BEQ.W           loc_2186B0
218076:  CMP             R1, #0x6D ; 'm'
218078:  BEQ.W           loc_21865C
21807C:  CMP             R1, #0x63 ; 'c'
21807E:  BNE.W           loc_217B70
218082:  ADD.W           R0, R12, #2
218086:  STR             R0, [R5]
218088:  MOV             R0, R5
21808A:  BL              sub_215C48
21808E:  CMP             R0, #0
218090:  BEQ.W           loc_217B70
218094:  MOV             R4, R0
218096:  MOV             R0, R5
218098:  BL              sub_217B38
21809C:  CMP             R0, #0
21809E:  BEQ.W           loc_217B70
2180A2:  MOV             R6, R0
2180A4:  ADD.W           R0, R5, #0x198
2180A8:  MOVS            R1, #0x18
2180AA:  BL              sub_216EF0
2180AE:  LDR             R1, =(aReinterpretCas - 0x2180B8); "reinterpret_cast" ...
2180B0:  MOV             R5, R0
2180B2:  LDR             R0, =0x1010135
2180B4:  ADD             R1, PC; "reinterpret_cast"
2180B6:  ADD.W           R2, R1, #0x10
2180BA:  B               loc_218124
2180BC:  LDRB.W          R2, [R12,#1]; jumptable 00217BC0 case 115
2180C0:  CMP             R2, #0x50 ; 'P'
2180C2:  BEQ.W           loc_218A26
2180C6:  LDR             R5, [SP,#0x60+var_38]
2180C8:  CMP             R2, #0x5A ; 'Z'
2180CA:  BEQ.W           loc_218A88
2180CE:  CMP             R2, #0x7A ; 'z'
2180D0:  BEQ.W           loc_218A66
2180D4:  CMP             R2, #0x70 ; 'p'
2180D6:  BEQ.W           loc_21899E
2180DA:  CMP             R2, #0x72 ; 'r'
2180DC:  BEQ.W           loc_218A0E
2180E0:  CMP             R2, #0x74 ; 't'
2180E2:  BEQ.W           loc_218A00
2180E6:  CMP             R2, #0x63 ; 'c'
2180E8:  BNE.W           loc_217B70
2180EC:  ADD.W           R0, R12, #2
2180F0:  STR             R0, [R5]
2180F2:  MOV             R0, R5
2180F4:  BL              sub_215C48
2180F8:  CMP             R0, #0
2180FA:  BEQ.W           loc_217B70
2180FE:  MOV             R4, R0
218100:  MOV             R0, R5
218102:  BL              sub_217B38
218106:  CMP             R0, #0
218108:  BEQ.W           loc_217B70
21810C:  MOV             R6, R0
21810E:  ADD.W           R0, R5, #0x198
218112:  MOVS            R1, #0x18
218114:  BL              sub_216EF0
218118:  LDR             R1, =(aStaticCast - 0x218122); "static_cast" ...
21811A:  MOV             R5, R0
21811C:  LDR             R0, =0x1010135
21811E:  ADD             R1, PC; "static_cast"
218120:  ADD.W           R2, R1, #0xB
218124:  LDR             R3, =(_ZTVN12_GLOBAL__N_116itanium_demangle8CastExprE - 0x21812A); `vtable for'`anonymous namespace'::itanium_demangle::CastExpr ...
218126:  ADD             R3, PC; `vtable for'`anonymous namespace'::itanium_demangle::CastExpr
218128:  ADDS            R3, #8
21812A:  STR             R3, [R5]
21812C:  STR             R0, [R5,#4]
21812E:  STR             R1, [R5,#8]
218130:  STR             R2, [R5,#0xC]
218132:  STR             R4, [R5,#0x10]
218134:  STR             R6, [R5,#0x14]
218136:  B               loc_217B72
218138:  LDRB.W          R1, [R12,#1]; jumptable 00217BC0 case 111
21813C:  CMP             R1, #0x52 ; 'R'
21813E:  BEQ.W           loc_2183E4
218142:  LDR             R0, [SP,#0x60+var_38]
218144:  CMP             R1, #0x72 ; 'r'
218146:  BEQ.W           loc_2183A2
21814A:  CMP             R1, #0x6F ; 'o'
21814C:  BEQ.W           loc_2183C4
218150:  CMP             R1, #0x6E ; 'n'
218152:  BNE.W           loc_217B70
218156:  LDR             R2, [SP,#0x60+var_20]
218158:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x218160)
21815C:  ADD             R1, PC; __stack_chk_guard_ptr
21815E:  LDR             R1, [R1]; __stack_chk_guard
218160:  LDR             R1, [R1]
218162:  CMP             R1, R2
218164:  BEQ.W           loc_217C54
218168:  B               loc_217B8C
21816A:  LDRB.W          R1, [R12,#1]; jumptable 00217BC0 case 110
21816E:  LDR.W           R8, [SP,#0x60+var_38]
218172:  CMP             R1, #0x61 ; 'a'
218174:  BEQ             loc_218194
218176:  CMP             R1, #0x65 ; 'e'
218178:  BEQ.W           loc_2188E2
21817C:  CMP             R1, #0x67 ; 'g'
21817E:  BEQ.W           loc_2187F8
218182:  CMP             R1, #0x74 ; 't'
218184:  BEQ.W           loc_218864
218188:  CMP             R1, #0x78 ; 'x'
21818A:  BEQ.W           loc_218818
21818E:  CMP             R1, #0x77 ; 'w'
218190:  BNE.W           loc_217B70
218194:  MOV             R0, R8
218196:  MOV             R1, R4
218198:  MOV             R2, R6
21819A:  BL              sub_2155E4
21819E:  MOV             R11, R0
2181A0:  LDRD.W          R0, R1, [R8]
2181A4:  SUBS            R1, R1, R0
2181A6:  CMP             R1, #2
2181A8:  BCC.W           loc_218888
2181AC:  LDRB            R0, [R0,#1]
2181AE:  SUBS            R0, #0x61 ; 'a'
2181B0:  CLZ.W           R0, R0
2181B4:  MOV.W           R9, R0,LSR#5
2181B8:  B               loc_21888C
2181BA:  LDR             R1, =(aU8Uuidofz - 0x2181C2); "u8__uuidofz" ...
2181BC:  MOV             R0, R4
2181BE:  ADD             R1, PC; "u8__uuidofz"
2181C0:  ADD.W           R2, R1, #0xB
2181C4:  BL              sub_2155E4
2181C8:  CMP             R0, #0
2181CA:  BEQ.W           loc_217B70
2181CE:  MOV             R0, R4
2181D0:  BL              sub_217B38
2181D4:  CMP             R0, #0
2181D6:  STR             R0, [SP,#0x60+var_30]
2181D8:  BEQ.W           loc_217B70
2181DC:  ADD             R1, SP, #0x60+var_30
2181DE:  MOV             R0, R4
2181E0:  BL              sub_219F84
2181E4:  B.W             loc_218E76
2181E8:  CMP             R1, #0x56 ; 'V'; jumptable 00217F90 default case
2181EA:  BEQ.W           loc_218CA2
2181EE:  LDR             R6, [SP,#0x60+var_38]
2181F0:  CMP             R1, #0x65 ; 'e'
2181F2:  BEQ.W           loc_218C74
2181F6:  CMP             R1, #0x63 ; 'c'
2181F8:  BEQ.W           loc_218C24
2181FC:  CMP             R1, #0x61 ; 'a'
2181FE:  BNE.W           loc_217B72
218202:  LDR             R4, [SP,#0x60+var_38]
218204:  ADD.W           R0, R12, #2
218208:  STR             R0, [R4]
21820A:  MOV             R0, R4
21820C:  BL              sub_217B38
218210:  CMP             R0, #0
218212:  STR             R0, [SP,#0x60+var_30]
218214:  BEQ.W           loc_217B70
218218:  MOVS            R0, #1
21821A:  STRB.W          R0, [SP,#0x60+var_28]
21821E:  ADD             R1, SP, #0x60+var_30
218220:  SUB.W           R2, R7, #-var_31
218224:  ADD             R3, SP, #0x60+var_28
218226:  MOV             R0, R4
218228:  BL              sub_219B00
21822C:  B.W             loc_218E76
218230:  LDR             R0, [SP,#0x60+var_20]
218232:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21823A)
218236:  ADD             R1, PC; __stack_chk_guard_ptr
218238:  LDR             R1, [R1]; __stack_chk_guard
21823A:  LDR             R1, [R1]
21823C:  CMP             R1, R0
21823E:  LDR             R0, [SP,#0x60+var_38]
218240:  ITTTT EQ
218242:  ADDEQ           SP, SP, #0x44 ; 'D'
218244:  POPEQ.W         {R8-R11}
218248:  POPEQ.W         {R4-R7,LR}
21824C:  BEQ.W           sub_2199BC
218250:  B               loc_217B8C
218252:  LDR             R5, [SP,#0x60+var_38]
218254:  ADD.W           R0, R12, #2
218258:  MOV             R4, R5
21825A:  LDR             R3, [R5,#0xC]
21825C:  LDR.W           R2, [R4,#8]!
218260:  STR             R0, [R5]
218262:  ADD             R6, SP, #0x60+var_30
218264:  SUBS            R2, R3, R2
218266:  MOV.W           R8, R2,ASR#2
21826A:  CMP             R0, R1
21826C:  BEQ             loc_218276
21826E:  LDRB            R1, [R0]
218270:  CMP             R1, #0x45 ; 'E'
218272:  BEQ.W           loc_218904
218276:  MOV             R0, R5
218278:  BL              sub_219D24
21827C:  CMP             R0, #0
21827E:  STR             R0, [SP,#0x60+var_30]
218280:  BEQ.W           loc_217B70
218284:  MOV             R0, R4
218286:  MOV             R1, R6
218288:  BL              sub_216CEC
21828C:  LDRD.W          R0, R1, [R5]
218290:  B               loc_21826A
218292:  LDR             R0, [SP,#0x60+var_38]
218294:  ADD.W           R1, R12, #2
218298:  STR             R1, [R0]
21829A:  LDR             R2, [SP,#0x60+var_20]
21829C:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x2182A4)
2182A0:  ADD             R1, PC; __stack_chk_guard_ptr
2182A2:  LDR             R1, [R1]; __stack_chk_guard
2182A4:  LDR             R1, [R1]
2182A6:  CMP             R1, R2
2182A8:  BNE.W           loc_217B8C
2182AC:  LDR             R1, =(aW7+6 - 0x2182B2); ">" ...
2182AE:  ADD             R1, PC; ">"
2182B0:  B               loc_2183BE
2182B2:  ADD.W           R1, R12, #2
2182B6:  STR             R1, [R0]
2182B8:  LDR             R2, [SP,#0x60+var_20]
2182BA:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x2182C2)
2182BE:  ADD             R1, PC; __stack_chk_guard_ptr
2182C0:  LDR             R1, [R1]; __stack_chk_guard
2182C2:  LDR             R1, [R1]
2182C4:  CMP             R1, R2
2182C6:  BNE.W           loc_217B8C
2182CA:  LDR             R1, =(asc_89C46 - 0x2182D0); "==" ...
2182CC:  ADD             R1, PC; "=="
2182CE:  B.W             loc_218CC0
2182D2:  LDR             R0, [SP,#0x60+var_38]
2182D4:  ADD.W           R1, R12, #2
2182D8:  STR             R1, [R0]
2182DA:  LDR             R2, [SP,#0x60+var_20]
2182DC:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x2182E4)
2182E0:  ADD             R1, PC; __stack_chk_guard_ptr
2182E2:  LDR             R1, [R1]; __stack_chk_guard
2182E4:  LDR             R1, [R1]
2182E6:  CMP             R1, R2
2182E8:  BNE.W           loc_217B8C
2182EC:  LDR             R1, =(asc_8A245 - 0x2182F2); "^=" ...
2182EE:  ADD             R1, PC; "^="
2182F0:  B.W             loc_218CC0
2182F4:  CMP             R3, #0x4C ; 'L'; jumptable 00217D62 default case
2182F6:  BNE.W           loc_217B72
2182FA:  LDR             R0, [SP,#0x60+var_38]
2182FC:  ADD.W           R1, R12, #2
218300:  STR             R1, [R0]
218302:  LDR             R2, [SP,#0x60+var_20]
218304:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21830C)
218308:  ADD             R1, PC; __stack_chk_guard_ptr
21830A:  LDR             R1, [R1]; __stack_chk_guard
21830C:  LDR             R1, [R1]
21830E:  CMP             R1, R2
218310:  BNE.W           loc_217B8C
218314:  LDR             R1, =(asc_8AFDA - 0x21831A); "+=" ...
218316:  ADD             R1, PC; "+="
218318:  B.W             loc_218CC0
21831C:  DCD asc_8362F - 0x217F7E
218320:  DCD aReinterpretCas - 0x2180B8
218324:  DCD 0x1010135
218328:  DCD aStaticCast - 0x218122
21832C:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle8CastExprE - 0x21812A
218330:  DCD aU8Uuidofz - 0x2181C2
218334:  DCD aW7+6 - 0x2182B2
218338:  DCD asc_89C46 - 0x2182D0
21833C:  DCD asc_8A245 - 0x2182F2
218340:  DCD asc_8AFDA - 0x21831A
218344:  ADD.W           R1, R12, #2
218348:  STR             R1, [R0]
21834A:  LDR             R2, [SP,#0x60+var_20]
21834C:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x218354)
218350:  ADD             R1, PC; __stack_chk_guard_ptr
218352:  LDR             R1, [R1]; __stack_chk_guard
218354:  LDR             R1, [R1]
218356:  CMP             R1, R2
218358:  BNE.W           loc_217B8C
21835C:  LDR             R1, =(unk_82C59 - 0x218362)
21835E:  ADD             R1, PC; unk_82C59
218360:  B               loc_2183BE
218362:  ADD.W           R1, R12, #2
218366:  STR             R1, [R0]
218368:  LDR             R2, [SP,#0x60+var_20]
21836A:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x218372)
21836E:  ADD             R1, PC; __stack_chk_guard_ptr
218370:  LDR             R1, [R1]; __stack_chk_guard
218372:  LDR             R1, [R1]
218374:  CMP             R1, R2
218376:  BNE.W           loc_217B8C
21837A:  LDR             R1, =(asc_8D18E - 0x218380); "<<" ...
21837C:  ADD             R1, PC; "<<"
21837E:  B.W             loc_218CC0
218382:  LDR             R0, [SP,#0x60+var_38]
218384:  ADD.W           R1, R12, #2
218388:  STR             R1, [R0]
21838A:  LDR             R2, [SP,#0x60+var_20]
21838C:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x218394)
218390:  ADD             R1, PC; __stack_chk_guard_ptr
218392:  LDR             R1, [R1]; __stack_chk_guard
218394:  LDR             R1, [R1]
218396:  CMP             R1, R2
218398:  BNE.W           loc_217B8C
21839C:  LDR             R1, =(asc_8C695 - 0x2183A2); "<<=" ...
21839E:  ADD             R1, PC; "<<="
2183A0:  B               loc_2187D2
2183A2:  ADD.W           R1, R12, #2
2183A6:  STR             R1, [R0]
2183A8:  LDR             R2, [SP,#0x60+var_20]
2183AA:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x2183B2)
2183AE:  ADD             R1, PC; __stack_chk_guard_ptr
2183B0:  LDR             R1, [R1]; __stack_chk_guard
2183B2:  LDR             R1, [R1]
2183B4:  CMP             R1, R2
2183B6:  BNE.W           loc_217B8C
2183BA:  LDR             R1, =(asc_8F0DD - 0x2183C0); "|" ...
2183BC:  ADD             R1, PC; "|"
2183BE:  ADDS            R2, R1, #1
2183C0:  B.W             loc_218CC2
2183C4:  ADD.W           R1, R12, #2
2183C8:  STR             R1, [R0]
2183CA:  LDR             R2, [SP,#0x60+var_20]
2183CC:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x2183D4)
2183D0:  ADD             R1, PC; __stack_chk_guard_ptr
2183D2:  LDR             R1, [R1]; __stack_chk_guard
2183D4:  LDR             R1, [R1]
2183D6:  CMP             R1, R2
2183D8:  BNE.W           loc_217B8C
2183DC:  LDR             R1, =(asc_8B739 - 0x2183E2); "||" ...
2183DE:  ADD             R1, PC; "||"
2183E0:  B.W             loc_218CC0
2183E4:  LDR             R0, [SP,#0x60+var_38]
2183E6:  ADD.W           R1, R12, #2
2183EA:  STR             R1, [R0]
2183EC:  LDR             R2, [SP,#0x60+var_20]
2183EE:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x2183F6)
2183F2:  ADD             R1, PC; __stack_chk_guard_ptr
2183F4:  LDR             R1, [R1]; __stack_chk_guard
2183F6:  LDR             R1, [R1]
2183F8:  CMP             R1, R2
2183FA:  BNE.W           loc_217B8C
2183FE:  LDR             R1, =(asc_8BDBF - 0x218404); "|=" ...
218400:  ADD             R1, PC; "|="
218402:  B.W             loc_218CC0
218406:  ADD.W           R0, R12, #2
21840A:  STR             R0, [R4]
21840C:  LDR             R0, [SP,#0x60+var_20]
21840E:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x218416)
218412:  ADD             R1, PC; __stack_chk_guard_ptr
218414:  LDR             R1, [R1]; __stack_chk_guard
218416:  LDR             R1, [R1]
218418:  CMP             R1, R0
21841A:  BNE.W           loc_217B8C
21841E:  LDR             R1, =(asc_886A0 - 0x218424); "*=" ...
218420:  ADD             R1, PC; "*="
218422:  ADDS            R2, R1, #2
218424:  B               loc_218444
218426:  ADD.W           R0, R12, #2
21842A:  STR             R0, [R4]
21842C:  LDR             R0, [SP,#0x60+var_20]
21842E:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x218436)
218432:  ADD             R1, PC; __stack_chk_guard_ptr
218434:  LDR             R1, [R1]; __stack_chk_guard
218436:  LDR             R1, [R1]
218438:  CMP             R1, R0
21843A:  BNE.W           loc_217B8C
21843E:  LDR             R1, =(asc_879DB - 0x218444); "*" ...
218440:  ADD             R1, PC; "*"
218442:  ADDS            R2, R1, #1
218444:  MOV             R0, R4
218446:  B.W             loc_218CC2
21844A:  ADD.W           R2, R12, #2
21844E:  STR             R2, [R4]
218450:  CMP             R2, R1
218452:  BEQ.W           loc_218AC4
218456:  LDRB            R1, [R2]
218458:  CMP             R1, #0x5F ; '_'
21845A:  BNE.W           loc_218AC4
21845E:  ADD.W           R0, R12, #3
218462:  STR             R0, [R4]
218464:  LDR             R0, [SP,#0x60+var_20]
218466:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21846E)
21846A:  ADD             R1, PC; __stack_chk_guard_ptr
21846C:  LDR             R1, [R1]; __stack_chk_guard
21846E:  LDR             R1, [R1]
218470:  CMP             R1, R0
218472:  BNE.W           loc_217B8C
218476:  LDR             R1, =(asc_905C2 - 0x21847C); "--" ...
218478:  ADD             R1, PC; "--"
21847A:  B               loc_2187AE
21847C:  ADD.W           R0, R12, #2
218480:  STR             R0, [R6]
218482:  MOV             R0, R6
218484:  BL              sub_217B38
218488:  CMP             R0, #0
21848A:  BEQ.W           loc_217B70
21848E:  MOV             R4, R6
218490:  MOV             R8, R0
218492:  LDR.W           R0, [R4,#8]!
218496:  LDR             R1, [R4,#4]
218498:  ADD             R5, SP, #0x60+var_30
21849A:  SUBS            R0, R1, R0
21849C:  MOV.W           R9, R0,ASR#2
2184A0:  LDRD.W          R0, R1, [R6]
2184A4:  CMP             R0, R1
2184A6:  BEQ             loc_2184B0
2184A8:  LDRB            R1, [R0]
2184AA:  CMP             R1, #0x45 ; 'E'
2184AC:  BEQ.W           loc_218D64
2184B0:  MOV             R0, R6
2184B2:  BL              sub_217B38
2184B6:  CMP             R0, #0
2184B8:  STR             R0, [SP,#0x60+var_30]
2184BA:  BEQ.W           loc_217B70
2184BE:  MOV             R0, R4
2184C0:  MOV             R1, R5
2184C2:  BL              sub_216CEC
2184C6:  B               loc_2184A0
2184C8:  LDR             R0, [SP,#0x60+var_38]
2184CA:  ADD.W           R1, R12, #2
2184CE:  STR             R1, [R0]
2184D0:  LDR             R2, [SP,#0x60+var_20]
2184D2:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x2184DA)
2184D6:  ADD             R1, PC; __stack_chk_guard_ptr
2184D8:  LDR             R1, [R1]; __stack_chk_guard
2184DA:  LDR             R1, [R1]
2184DC:  CMP             R1, R2
2184DE:  BNE.W           loc_217B8C
2184E2:  LDR             R1, =(asc_8673F - 0x2184E8); "-=" ...
2184E4:  ADD             R1, PC; "-="
2184E6:  B               loc_218CC0
2184E8:  ADD.W           R0, R12, #2
2184EC:  STR             R0, [R6]
2184EE:  LDR             R0, [SP,#0x60+var_20]
2184F0:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x2184F8)
2184F4:  ADD             R1, PC; __stack_chk_guard_ptr
2184F6:  LDR             R1, [R1]; __stack_chk_guard
2184F8:  LDR             R1, [R1]
2184FA:  CMP             R1, R0
2184FC:  BNE.W           loc_217B8C
218500:  LDR             R1, =(asc_8F738 - 0x218506); "~" ...
218502:  ADD             R1, PC; "~"
218504:  B               loc_218C90
218506:  ADD.W           R0, R12, #2
21850A:  STR             R0, [R6]
21850C:  MOV             R0, R6
21850E:  BL              sub_215C48
218512:  CMP             R0, #0
218514:  STR             R0, [SP,#0x60+var_30]
218516:  BEQ.W           loc_217B70
21851A:  LDR             R1, =(aTypeid - 0x218524); "typeid (" ...
21851C:  ADD             R2, SP, #0x60+var_30
21851E:  MOV             R0, R6
218520:  ADD             R1, PC; "typeid ("
218522:  B               loc_218A82
218524:  ADD.W           R0, R12, #2
218528:  STR             R0, [R6]
21852A:  LDR             R0, [SP,#0x60+var_20]
21852C:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x218534)
218530:  ADD             R1, PC; __stack_chk_guard_ptr
218532:  LDR             R1, [R1]; __stack_chk_guard
218534:  LDR             R1, [R1]
218536:  CMP             R1, R0
218538:  BNE.W           loc_217B8C
21853C:  ADD.W           R2, R10, #1
218540:  MOV             R0, R6
218542:  MOV             R1, R10
218544:  B               loc_218CC2
218546:  ADD.W           R0, R12, #2
21854A:  STR             R0, [R6]
21854C:  LDR             R0, [SP,#0x60+var_20]
21854E:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x218556)
218552:  ADD             R1, PC; __stack_chk_guard_ptr
218554:  LDR             R1, [R1]; __stack_chk_guard
218556:  LDR             R1, [R1]
218558:  CMP             R1, R0
21855A:  BNE.W           loc_217B8C
21855E:  LDR             R1, =(aThrow - 0x218566); "throw" ...
218560:  MOV             R0, R6
218562:  ADD             R1, PC; "throw"
218564:  ADD             SP, SP, #0x44 ; 'D'
218566:  POP.W           {R8-R11}
21856A:  POP.W           {R4-R7,LR}
21856E:  B.W             sub_219F4C
218572:  ADD.W           R0, R12, #2
218576:  STR             R0, [R5]
218578:  LDR             R0, [SP,#0x60+var_20]
21857A:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x218582)
21857E:  ADD             R1, PC; __stack_chk_guard_ptr
218580:  LDR             R1, [R1]; __stack_chk_guard
218582:  LDR             R1, [R1]
218584:  CMP             R1, R0
218586:  BNE.W           loc_217B8C
21858A:  LDR             R1, =(asc_8AFDD - 0x218590); ">>=" ...
21858C:  ADD             R1, PC; ">>="
21858E:  ADDS            R2, R1, #3
218590:  B               loc_2186CE
218592:  LDR             R1, =(aCv - 0x21859A); "cv" ...
218594:  LDR             R0, [SP,#0x60+var_38]
218596:  ADD             R1, PC; "cv"
218598:  ADDS            R2, R1, #2
21859A:  BL              sub_2155E4
21859E:  MOVS            R5, #0
2185A0:  CMP             R0, #0
2185A2:  BEQ.W           loc_217B72
2185A6:  LDR             R6, [SP,#0x60+var_38]
2185A8:  LDRB.W          R4, [R6,#0x184]
2185AC:  STRB.W          R5, [R6,#0x184]
2185B0:  MOV             R0, R6
2185B2:  BL              sub_215C48
2185B6:  MOV             R8, R0
2185B8:  CMP             R0, #0
2185BA:  STRB.W          R4, [R6,#0x184]
2185BE:  BEQ.W           loc_217B70
2185C2:  LDRD.W          R1, R0, [R6]
2185C6:  CMP             R1, R0
2185C8:  BEQ.W           loc_218DBE
2185CC:  LDRB            R2, [R1]
2185CE:  CMP             R2, #0x5F ; '_'
2185D0:  BNE.W           loc_218DBE
2185D4:  MOV             R4, R6
2185D6:  LDR             R3, [R6,#0xC]
2185D8:  LDR.W           R2, [R4,#8]!
2185DC:  ADDS            R1, #1
2185DE:  STR             R1, [R6]
2185E0:  ADD             R5, SP, #0x60+var_30
2185E2:  SUBS            R2, R3, R2
2185E4:  MOV.W           R9, R2,ASR#2
2185E8:  CMP             R1, R0
2185EA:  BEQ             loc_2185F4
2185EC:  LDRB            R0, [R1]
2185EE:  CMP             R0, #0x45 ; 'E'
2185F0:  BEQ.W           loc_218FA8
2185F4:  MOV             R0, R6
2185F6:  BL              sub_217B38
2185FA:  CMP             R0, #0
2185FC:  STR             R0, [SP,#0x60+var_30]
2185FE:  BEQ.W           loc_217B70
218602:  MOV             R0, R4
218604:  MOV             R1, R5
218606:  BL              sub_216CEC
21860A:  LDRD.W          R1, R0, [R6]
21860E:  B               loc_2185E8
218610:  ADD.W           R0, R12, #2
218614:  STR             R0, [R6]
218616:  MOV             R0, R6
218618:  BL              sub_215C48
21861C:  CMP             R0, #0
21861E:  BEQ.W           loc_217B70
218622:  MOV             R4, R6
218624:  MOV             R8, R0
218626:  LDR.W           R0, [R4,#8]!
21862A:  LDR             R1, [R4,#4]
21862C:  ADD             R5, SP, #0x60+var_30
21862E:  SUBS            R0, R1, R0
218630:  MOV.W           R9, R0,ASR#2
218634:  LDRD.W          R0, R1, [R6]
218638:  CMP             R0, R1
21863A:  BEQ             loc_218644
21863C:  LDRB            R1, [R0]
21863E:  CMP             R1, #0x45 ; 'E'
218640:  BEQ.W           loc_218D8A
218644:  MOV             R0, R6
218646:  BL              sub_219D24
21864A:  CMP             R0, #0
21864C:  STR             R0, [SP,#0x60+var_30]
21864E:  BEQ.W           loc_217B70
218652:  MOV             R0, R4
218654:  MOV             R1, R5
218656:  BL              sub_216CEC
21865A:  B               loc_218634
21865C:  ADD.W           R0, R12, #2
218660:  STR             R0, [R5]
218662:  LDR             R0, [SP,#0x60+var_20]
218664:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21866C)
218668:  ADD             R1, PC; __stack_chk_guard_ptr
21866A:  LDR             R1, [R1]; __stack_chk_guard
21866C:  LDR             R1, [R1]
21866E:  CMP             R1, R0
218670:  BNE.W           loc_217B8C
218674:  LDR             R1, =(asc_9174A - 0x21867A); "%" ...
218676:  ADD             R1, PC; "%"
218678:  ADDS            R2, R1, #1
21867A:  B               loc_2186CE
21867C:  LDR             R5, [SP,#0x60+var_38]
21867E:  ADD.W           R0, R12, #2
218682:  STR             R0, [R5]
218684:  MOV             R0, R5
218686:  BL              sub_217B38
21868A:  CMP             R0, #0
21868C:  BEQ.W           loc_217B70
218690:  MOV             R4, R0
218692:  ADD.W           R0, R5, #0x198
218696:  MOVS            R1, #0xC
218698:  BL              sub_216EF0
21869C:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle9ThrowExprE - 0x2186A6); `vtable for'`anonymous namespace'::itanium_demangle::ThrowExpr ...
21869E:  MOV             R5, R0
2186A0:  LDR             R1, =0x101013F
2186A2:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::ThrowExpr
2186A4:  ADDS            R2, #8
2186A6:  STR             R2, [R0]
2186A8:  STR             R1, [R0,#4]
2186AA:  STR             R4, [R0,#8]
2186AC:  B.W             loc_217B72
2186B0:  ADD.W           R0, R12, #2
2186B4:  STR             R0, [R5]
2186B6:  LDR             R0, [SP,#0x60+var_20]
2186B8:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x2186C0)
2186BC:  ADD             R1, PC; __stack_chk_guard_ptr
2186BE:  LDR             R1, [R1]; __stack_chk_guard
2186C0:  LDR             R1, [R1]
2186C2:  CMP             R1, R0
2186C4:  BNE.W           loc_217B8C
2186C8:  LDR             R1, =(asc_84107 - 0x2186CE); ">>" ...
2186CA:  ADD             R1, PC; ">>"
2186CC:  ADDS            R2, R1, #2
2186CE:  MOV             R0, R5
2186D0:  B               loc_218CC2
2186D2:  LDR             R0, [SP,#0x60+var_38]
2186D4:  ADD.W           R1, R12, #2
2186D8:  STR             R1, [R0]
2186DA:  LDR             R2, [SP,#0x60+var_20]
2186DC:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x2186E4)
2186E0:  ADD             R1, PC; __stack_chk_guard_ptr
2186E2:  LDR             R1, [R1]; __stack_chk_guard
2186E4:  LDR             R1, [R1]
2186E6:  CMP             R1, R2
2186E8:  BNE.W           loc_217B8C
2186EC:  LDR             R1, =(asc_8E1DB - 0x2186F2); "%=" ...
2186EE:  ADD             R1, PC; "%="
2186F0:  B               loc_218CC0
2186F2:  LDR             R4, [SP,#0x60+var_38]; jumptable 00217D62 case 116
2186F4:  ADD.W           R0, R12, #2
2186F8:  STR             R0, [R4]
2186FA:  MOV             R0, R4
2186FC:  BL              sub_217B38
218700:  CMP             R0, #0
218702:  STR             R0, [SP,#0x60+var_30]
218704:  BEQ.W           loc_217B70
218708:  MOV             R0, R4
21870A:  BL              sub_217B38
21870E:  CMP             R0, #0
218710:  STR             R0, [SP,#0x60+var_28]
218712:  BEQ.W           loc_217B70
218716:  ADD             R1, SP, #0x60+var_30
218718:  LDR             R2, =(asc_8CC9C - 0x21871E); "->" ...
21871A:  ADD             R2, PC; "->"
21871C:  B               loc_218B8E
21871E:  ALIGN 0x10
218720:  DCD unk_82C59 - 0x218362
218724:  DCD asc_8D18E - 0x218380
218728:  DCD asc_8C695 - 0x2183A2
21872C:  DCD asc_8F0DD - 0x2183C0
218730:  DCD asc_8B739 - 0x2183E2
218734:  DCD asc_8BDBF - 0x218404
218738:  DCD asc_886A0 - 0x218424
21873C:  DCD asc_879DB - 0x218444
218740:  DCD asc_905C2 - 0x21847C
218744:  DCD asc_8673F - 0x2184E8
218748:  DCD asc_8F738 - 0x218506
21874C:  DCD aTypeid - 0x218524
218750:  DCD aThrow - 0x218566
218754:  DCD asc_8AFDD - 0x218590
218758:  DCD aCv - 0x21859A
21875C:  DCD asc_9174A - 0x21867A
218760:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle9ThrowExprE - 0x2186A6
218764:  DCD 0x101013F
218768:  DCD asc_84107 - 0x2186CE
21876C:  DCD asc_8E1DB - 0x2186F2
218770:  DCD asc_8CC9C - 0x21871E
218774:  DCD __stack_chk_guard_ptr - 0x217B4C
218778:  DCD __stack_chk_guard_ptr - 0x217B7C
21877C:  LDR             R4, [SP,#0x60+var_38]; jumptable 00217D62 case 112
21877E:  ADD.W           R2, R12, #2
218782:  CMP             R2, R1
218784:  STR             R2, [R4]
218786:  BEQ.W           loc_218C08
21878A:  LDRB            R1, [R2]
21878C:  CMP             R1, #0x5F ; '_'
21878E:  BNE.W           loc_218C08
218792:  ADD.W           R0, R12, #3
218796:  STR             R0, [R4]
218798:  LDR             R0, [SP,#0x60+var_20]
21879A:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x2187A2)
21879E:  ADD             R1, PC; __stack_chk_guard_ptr
2187A0:  LDR             R1, [R1]; __stack_chk_guard
2187A2:  LDR             R1, [R1]
2187A4:  CMP             R1, R0
2187A6:  BNE.W           loc_217B8C
2187AA:  LDR             R1, =(asc_82F77 - 0x2187B0); "++" ...
2187AC:  ADD             R1, PC; "++"
2187AE:  ADDS            R2, R1, #2
2187B0:  MOV             R0, R4
2187B2:  B               loc_218C94
2187B4:  LDR             R0, [SP,#0x60+var_38]; jumptable 00217D62 case 109
2187B6:  ADD.W           R1, R12, #2
2187BA:  STR             R1, [R0]
2187BC:  LDR             R2, [SP,#0x60+var_20]
2187BE:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x2187C6)
2187C2:  ADD             R1, PC; __stack_chk_guard_ptr
2187C4:  LDR             R1, [R1]; __stack_chk_guard
2187C6:  LDR             R1, [R1]
2187C8:  CMP             R1, R2
2187CA:  BNE.W           loc_217B8C
2187CE:  LDR             R1, =(asc_88E61 - 0x2187D4); "->*" ...
2187D0:  ADD             R1, PC; "->*"
2187D2:  ADDS            R2, R1, #3
2187D4:  B               loc_218CC2
2187D6:  LDR             R0, [SP,#0x60+var_38]; jumptable 00217D62 case 115
2187D8:  ADD.W           R1, R12, #2
2187DC:  STR             R1, [R0]
2187DE:  LDR             R2, [SP,#0x60+var_20]
2187E0:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x2187E8)
2187E4:  ADD             R1, PC; __stack_chk_guard_ptr
2187E6:  LDR             R1, [R1]; __stack_chk_guard
2187E8:  LDR             R1, [R1]
2187EA:  CMP             R1, R2
2187EC:  BNE.W           loc_217B8C
2187F0:  LDR             R1, =(unk_8BBBD - 0x2187F6)
2187F2:  ADD             R1, PC; unk_8BBBD
2187F4:  ADDS            R2, R1, #1
2187F6:  B               loc_218C94
2187F8:  ADD.W           R0, R12, #2
2187FC:  STR.W           R0, [R8]
218800:  LDR             R0, [SP,#0x60+var_20]
218802:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21880A)
218806:  ADD             R1, PC; __stack_chk_guard_ptr
218808:  LDR             R1, [R1]; __stack_chk_guard
21880A:  LDR             R1, [R1]
21880C:  CMP             R1, R0
21880E:  BNE.W           loc_217B8C
218812:  LDR             R1, =(unk_86B5A - 0x218818)
218814:  ADD             R1, PC; unk_86B5A
218816:  B               loc_218882
218818:  ADD.W           R0, R12, #2
21881C:  STR.W           R0, [R8]
218820:  MOV             R0, R8
218822:  BL              sub_217B38
218826:  CMP             R0, #0
218828:  BEQ.W           loc_217B70
21882C:  MOV             R4, R0
21882E:  ADD.W           R0, R8, #0x198
218832:  MOVS            R1, #0x1C
218834:  BL              sub_216EF0
218838:  MOV             R5, R0
21883A:  LDR             R0, =0x1010134
21883C:  LDR             R1, =(unk_901C1 - 0x21884A)
21883E:  LDR             R3, =(aNoexcept - 0x218848); "noexcept (" ...
218840:  MOV             R12, R0
218842:  LDR             R0, =(_ZTVN12_GLOBAL__N_116itanium_demangle13EnclosingExprE - 0x218850); `vtable for'`anonymous namespace'::itanium_demangle::EnclosingExpr ...
218844:  ADD             R3, PC; "noexcept ("
218846:  ADD             R1, PC; unk_901C1
218848:  ADD.W           R6, R3, #0xA
21884C:  ADD             R0, PC; `vtable for'`anonymous namespace'::itanium_demangle::EnclosingExpr
21884E:  ADDS            R2, R1, #1
218850:  ADDS            R0, #8
218852:  STRD.W          R0, R12, [R5]
218856:  STRD.W          R3, R6, [R5,#8]
21885A:  STRD.W          R4, R1, [R5,#0x10]
21885E:  STR             R2, [R5,#0x18]
218860:  B.W             loc_217B72
218864:  ADD.W           R0, R12, #2
218868:  STR.W           R0, [R8]
21886C:  LDR             R0, [SP,#0x60+var_20]
21886E:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x218876)
218872:  ADD             R1, PC; __stack_chk_guard_ptr
218874:  LDR             R1, [R1]; __stack_chk_guard
218876:  LDR             R1, [R1]
218878:  CMP             R1, R0
21887A:  BNE.W           loc_217B8C
21887E:  LDR             R1, =(a0+4 - 0x218884); "!" ...
218880:  ADD             R1, PC; "!"
218882:  ADDS            R2, R1, #1
218884:  MOV             R0, R8
218886:  B               loc_218C94
218888:  MOV.W           R9, #0
21888C:  LDR             R1, =(aNw - 0x218894); "nw" ...
21888E:  MOV             R0, R8
218890:  ADD             R1, PC; "nw"
218892:  ADDS            R2, R1, #2
218894:  BL              sub_2155E4
218898:  CBNZ            R0, loc_2188AC
21889A:  LDR             R1, =(aNa - 0x2188A2); "na" ...
21889C:  MOV             R0, R8
21889E:  ADD             R1, PC; "na"
2188A0:  ADDS            R2, R1, #2
2188A2:  BL              sub_2155E4
2188A6:  CMP             R0, #0
2188A8:  BEQ.W           loc_217B70
2188AC:  MOV             R5, R8
2188AE:  LDR.W           R0, [R5,#8]!
2188B2:  LDR             R1, [R5,#4]
2188B4:  ADD             R6, SP, #0x60+var_30
2188B6:  SUBS            R0, R1, R0
2188B8:  ASRS            R4, R0, #2
2188BA:  LDRD.W          R0, R1, [R8]
2188BE:  CMP             R0, R1
2188C0:  BEQ             loc_2188CA
2188C2:  LDRB            R1, [R0]
2188C4:  CMP             R1, #0x5F ; '_'
2188C6:  BEQ.W           loc_218CD0
2188CA:  MOV             R0, R8
2188CC:  BL              sub_217B38
2188D0:  CMP             R0, #0
2188D2:  STR             R0, [SP,#0x60+var_30]
2188D4:  BEQ.W           loc_217B70
2188D8:  MOV             R0, R5
2188DA:  MOV             R1, R6
2188DC:  BL              sub_216CEC
2188E0:  B               loc_2188BA
2188E2:  ADD.W           R0, R12, #2
2188E6:  STR.W           R0, [R8]
2188EA:  LDR             R0, [SP,#0x60+var_20]
2188EC:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x2188F4)
2188F0:  ADD             R1, PC; __stack_chk_guard_ptr
2188F2:  LDR             R1, [R1]; __stack_chk_guard
2188F4:  LDR             R1, [R1]
2188F6:  CMP             R1, R0
2188F8:  BNE.W           loc_217B8C
2188FC:  LDR             R1, =(asc_8DAD1 - 0x218904); "!=" ...
2188FE:  MOV             R0, R8
218900:  ADD             R1, PC; "!="
218902:  B               loc_218CC0
218904:  ADDS            R0, #1
218906:  STR             R0, [R5]
218908:  ADD             R0, SP, #0x60+var_30
21890A:  MOV             R1, R5
21890C:  MOV             R2, R8
21890E:  BL              sub_216D60
218912:  ADD.W           R0, R5, #0x198
218916:  MOVS            R1, #0x14
218918:  BL              sub_216EF0
21891C:  MOV             R5, R0
21891E:  LDR             R0, =0x101013D
218920:  STR             R0, [R5,#4]
218922:  MOVS            R0, #0
218924:  STR             R0, [R5,#8]
218926:  LDR             R0, =(_ZTVN12_GLOBAL__N_116itanium_demangle12InitListExprE - 0x21892C); `vtable for'`anonymous namespace'::itanium_demangle::InitListExpr ...
218928:  ADD             R0, PC; `vtable for'`anonymous namespace'::itanium_demangle::InitListExpr
21892A:  B               loc_218FCE
21892C:  ADD.W           R0, R12, #2
218930:  STR             R0, [R5]
218932:  LDR             R0, [SP,#0x60+var_20]
218934:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21893C)
218938:  ADD             R1, PC; __stack_chk_guard_ptr
21893A:  LDR             R1, [R1]; __stack_chk_guard
21893C:  LDR             R1, [R1]
21893E:  CMP             R1, R0
218940:  BNE.W           loc_217B8C
218944:  ADD.W           R2, R9, #1
218948:  MOV             R0, R5
21894A:  MOV             R1, R9
21894C:  B               loc_218C94
21894E:  ADD.W           R0, R12, #2
218952:  STR             R0, [R5]
218954:  MOV             R0, R5
218956:  BL              sub_215C48
21895A:  B               loc_2189C8
21895C:  ADD.W           R0, R12, #2
218960:  STR             R0, [R5]
218962:  LDR             R0, [SP,#0x60+var_20]
218964:  LDR.W           R2, =(__stack_chk_guard_ptr - 0x21896C)
218968:  ADD             R2, PC; __stack_chk_guard_ptr
21896A:  LDR             R2, [R2]; __stack_chk_guard
21896C:  LDR             R2, [R2]
21896E:  CMP             R2, R0
218970:  BNE.W           loc_217B8C
218974:  ADD.W           R2, R9, #1
218978:  MOV             R0, R5
21897A:  MOV             R1, R9
21897C:  B               loc_218CC2
21897E:  LDR             R0, [SP,#0x60+var_38]
218980:  ADD.W           R1, R12, #2
218984:  STR             R1, [R0]
218986:  LDR             R2, [SP,#0x60+var_20]
218988:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x218990)
21898C:  ADD             R1, PC; __stack_chk_guard_ptr
21898E:  LDR             R1, [R1]; __stack_chk_guard
218990:  LDR             R1, [R1]
218992:  CMP             R1, R2
218994:  BNE.W           loc_217B8C
218998:  MOV             R1, R5
21899A:  ADDS            R2, R5, #2
21899C:  B               loc_218CC2
21899E:  ADD.W           R0, R12, #2
2189A2:  STR             R0, [R5]
2189A4:  MOV             R0, R5
2189A6:  BL              sub_217B38
2189AA:  CMP             R0, #0
2189AC:  STR             R0, [SP,#0x60+var_30]
2189AE:  BEQ.W           loc_217B70
2189B2:  ADD             R1, SP, #0x60+var_30
2189B4:  MOV             R0, R5
2189B6:  BL              sub_219E84
2189BA:  B               loc_218E76
2189BC:  ADD.W           R0, R12, #2
2189C0:  STR             R0, [R5]
2189C2:  MOV             R0, R5
2189C4:  BL              sub_217B38
2189C8:  CMP             R0, #0
2189CA:  STR             R0, [SP,#0x60+var_30]
2189CC:  BEQ.W           loc_217B70
2189D0:  LDR             R1, =(aAlignof - 0x2189DA); "alignof (" ...
2189D2:  ADD             R2, SP, #0x60+var_30
2189D4:  MOV             R0, R5
2189D6:  ADD             R1, PC; "alignof ("
2189D8:  BL              sub_21934C
2189DC:  B               loc_218E76
2189DE:  ADD.W           R0, R12, #2
2189E2:  STR             R0, [R5]
2189E4:  LDR             R0, [SP,#0x60+var_20]
2189E6:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x2189EE)
2189EA:  ADD             R1, PC; __stack_chk_guard_ptr
2189EC:  LDR             R1, [R1]; __stack_chk_guard
2189EE:  LDR             R1, [R1]
2189F0:  CMP             R1, R0
2189F2:  BNE.W           loc_217B8C
2189F6:  ADD.W           R2, R8, #1
2189FA:  MOV             R0, R5
2189FC:  MOV             R1, R8
2189FE:  B               loc_218CC2
218A00:  ADD.W           R0, R12, #2
218A04:  STR             R0, [R5]
218A06:  MOV             R0, R5
218A08:  BL              sub_215C48
218A0C:  B               loc_218A72
218A0E:  LDR             R0, [SP,#0x60+var_20]
218A10:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x218A18)
218A14:  ADD             R1, PC; __stack_chk_guard_ptr
218A16:  LDR             R1, [R1]; __stack_chk_guard
218A18:  LDR             R1, [R1]
218A1A:  CMP             R1, R0
218A1C:  BNE.W           loc_217B8C
218A20:  MOV             R0, R5
218A22:  B.W             loc_217C54
218A26:  LDR             R5, [SP,#0x60+var_38]
218A28:  ADD.W           R0, R12, #2
218A2C:  MOV             R4, R5
218A2E:  LDR             R3, [R5,#0xC]
218A30:  LDR.W           R2, [R4,#8]!
218A34:  STR             R0, [R5]
218A36:  ADD             R6, SP, #0x60+var_30
218A38:  SUBS            R2, R3, R2
218A3A:  MOV.W           R8, R2,ASR#2
218A3E:  CMP             R0, R1
218A40:  BEQ             loc_218A4A
218A42:  LDRB            R1, [R0]
218A44:  CMP             R1, #0x45 ; 'E'
218A46:  BEQ.W           loc_218D32
218A4A:  MOV             R0, R5
218A4C:  BL              sub_216BAC
218A50:  CMP             R0, #0
218A52:  STR             R0, [SP,#0x60+var_30]
218A54:  BEQ.W           loc_217B70
218A58:  MOV             R0, R4
218A5A:  MOV             R1, R6
218A5C:  BL              sub_216CEC
218A60:  LDRD.W          R0, R1, [R5]
218A64:  B               loc_218A3E
218A66:  ADD.W           R0, R12, #2
218A6A:  STR             R0, [R5]
218A6C:  MOV             R0, R5
218A6E:  BL              sub_217B38
218A72:  CMP             R0, #0
218A74:  STR             R0, [SP,#0x60+var_30]
218A76:  BEQ.W           loc_217B70
218A7A:  LDR             R1, =(aSizeof - 0x218A84); "sizeof (" ...
218A7C:  ADD             R2, SP, #0x60+var_30
218A7E:  MOV             R0, R5
218A80:  ADD             R1, PC; "sizeof ("
218A82:  BL              sub_219EB0
218A86:  B               loc_218E76
218A88:  ADD.W           R0, R12, #2
218A8C:  STR             R0, [R5]
218A8E:  CMP             R1, R0
218A90:  BEQ.W           loc_217B70
218A94:  LDRB            R0, [R0]
218A96:  CMP             R0, #0x66 ; 'f'
218A98:  BEQ.W           loc_218E60
218A9C:  CMP             R0, #0x54 ; 'T'
218A9E:  BNE.W           loc_217B70
218AA2:  MOV             R0, R5
218AA4:  BL              sub_2174C8
218AA8:  CMP             R0, #0
218AAA:  BEQ.W           loc_217B70
218AAE:  MOV             R4, R0
218AB0:  ADD.W           R0, R5, #0x198
218AB4:  MOVS            R1, #0xC
218AB6:  BL              sub_216EF0
218ABA:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle19SizeofParamPackExprE - 0x218AC4); `vtable for'`anonymous namespace'::itanium_demangle::SizeofParamPackExpr ...
218ABC:  MOV             R5, R0
218ABE:  LDR             R1, =0x1010136
218AC0:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::SizeofParamPackExpr
218AC2:  B               loc_2186A4
218AC4:  MOV             R0, R4
218AC6:  BL              sub_217B38
218ACA:  CMP             R0, #0
218ACC:  STR             R0, [SP,#0x60+var_30]
218ACE:  BEQ.W           loc_217B70
218AD2:  ADD             R1, SP, #0x60+var_30
218AD4:  LDR             R2, =(asc_905C2 - 0x218ADA); "--" ...
218AD6:  ADD             R2, PC; "--"
218AD8:  B               loc_218C1C
218ADA:  ALIGN 4
218ADC:  DCD __stack_chk_guard_ptr - 0x217C20
218AE0:  DCD __stack_chk_guard_ptr - 0x217C4A
218AE4:  DCD __stack_chk_guard_ptr - 0x217CAE
218AE8:  DCD __stack_chk_guard_ptr - 0x217CF2
218AEC:  DCD __stack_chk_guard_ptr - 0x217D8C
218AF0:  DCD __stack_chk_guard_ptr - 0x217DA4
218AF4:  DCD __stack_chk_guard_ptr - 0x217DE4
218AF8:  DCD __stack_chk_guard_ptr - 0x217F3A
218AFC:  DCD __stack_chk_guard_ptr - 0x217F70
218B00:  DCD __stack_chk_guard_ptr - 0x218160
218B04:  DCD __stack_chk_guard_ptr - 0x2182A4
218B08:  DCD __stack_chk_guard_ptr - 0x2182C2
218B0C:  DCD __stack_chk_guard_ptr - 0x2182E4
218B10:  DCD __stack_chk_guard_ptr - 0x21830C
218B14:  DCD __stack_chk_guard_ptr - 0x218354
218B18:  DCD asc_82F77 - 0x2187B0
218B1C:  DCD asc_88E61 - 0x2187D4
218B20:  DCD unk_8BBBD - 0x2187F6
218B24:  DCD unk_86B5A - 0x218818
218B28:  DCD 0x1010134
218B2C:  DCD unk_901C1 - 0x21884A
218B30:  DCD aNoexcept - 0x218848
218B34:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle13EnclosingExprE - 0x218850
218B38:  DCD a0+4 - 0x218884
218B3C:  DCD aNw - 0x218894
218B40:  DCD aNa - 0x2188A2
218B44:  DCD asc_8DAD1 - 0x218904
218B48:  DCD 0x101013D
218B4C:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle12InitListExprE - 0x21892C
218B50:  DCD aAlignof - 0x2189DA
218B54:  DCD aSizeof - 0x218A84
218B58:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle19SizeofParamPackExprE - 0x218AC4
218B5C:  DCD 0x1010136
218B60:  DCD asc_905C2 - 0x218ADA
218B64:  LDR             R4, [SP,#0x60+var_38]; jumptable 00217F90 case 115
218B66:  ADD.W           R0, R12, #2
218B6A:  STR             R0, [R4]
218B6C:  MOV             R0, R4
218B6E:  BL              sub_217B38
218B72:  CMP             R0, #0
218B74:  STR             R0, [SP,#0x60+var_30]
218B76:  BEQ.W           loc_217B70
218B7A:  MOV             R0, R4
218B7C:  BL              sub_217B38
218B80:  CMP             R0, #0
218B82:  STR             R0, [SP,#0x60+var_28]
218B84:  BEQ.W           loc_217B70
218B88:  ADD             R1, SP, #0x60+var_30
218B8A:  LDR             R2, =(asc_8A8EE - 0x218B90); ".*" ...
218B8C:  ADD             R2, PC; ".*"
218B8E:  ADD             R3, SP, #0x60+var_28
218B90:  MOV             R0, R4
218B92:  BL              sub_219CD8
218B96:  B               loc_218E76
218B98:  LDR             R5, [SP,#0x60+var_38]; jumptable 00217F90 case 116
218B9A:  ADD.W           R0, R12, #2
218B9E:  STR             R0, [R5]
218BA0:  MOV             R0, R5
218BA2:  BL              sub_217B38
218BA6:  CMP             R0, #0
218BA8:  BEQ.W           loc_217B70
218BAC:  MOV             R4, R0
218BAE:  MOV             R0, R5
218BB0:  BL              sub_217B38
218BB4:  CMP             R0, #0
218BB6:  BEQ.W           loc_217B70
218BBA:  MOV             R6, R0
218BBC:  ADD.W           R0, R5, #0x198
218BC0:  MOVS            R1, #0x18
218BC2:  BL              sub_216EF0
218BC6:  LDR             R1, =(asc_836CD - 0x218BD2); "." ...
218BC8:  MOV             R5, R0
218BCA:  LDR             R3, =(_ZTVN12_GLOBAL__N_116itanium_demangle10MemberExprE - 0x218BD4); `vtable for'`anonymous namespace'::itanium_demangle::MemberExpr ...
218BCC:  LDR             R0, =0x1010133
218BCE:  ADD             R1, PC; "."
218BD0:  ADD             R3, PC; `vtable for'`anonymous namespace'::itanium_demangle::MemberExpr
218BD2:  ADDS            R2, R1, #1
218BD4:  ADDS            R3, #8
218BD6:  STRD.W          R4, R1, [R5,#8]
218BDA:  STRD.W          R3, R0, [R5]
218BDE:  STRD.W          R2, R6, [R5,#0x10]
218BE2:  B.W             loc_217B72
218BE6:  LDR             R0, [SP,#0x60+var_38]; jumptable 00217F90 case 118
218BE8:  ADD.W           R1, R12, #2
218BEC:  STR             R1, [R0]
218BEE:  LDR             R2, [SP,#0x60+var_20]
218BF0:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x218BF8)
218BF4:  ADD             R1, PC; __stack_chk_guard_ptr
218BF6:  LDR             R1, [R1]; __stack_chk_guard
218BF8:  LDR             R1, [R1]
218BFA:  CMP             R1, R2
218BFC:  BNE.W           loc_217B8C
218C00:  MOV             R3, LR
218C02:  MOV             R1, LR
218C04:  ADDS            R2, R3, #1
218C06:  B               loc_218CC2
218C08:  MOV             R0, R4
218C0A:  BL              sub_217B38
218C0E:  CMP             R0, #0
218C10:  STR             R0, [SP,#0x60+var_30]
218C12:  BEQ.W           loc_217B70
218C16:  ADD             R1, SP, #0x60+var_30
218C18:  LDR             R2, =(asc_82F77 - 0x218C1E); "++" ...
218C1A:  ADD             R2, PC; "++"
218C1C:  MOV             R0, R4
218C1E:  BL              sub_219E40
218C22:  B               loc_218E76
218C24:  ADD.W           R0, R12, #2
218C28:  STR             R0, [R6]
218C2A:  MOV             R0, R6
218C2C:  BL              sub_215C48
218C30:  CMP             R0, #0
218C32:  BEQ.W           loc_217B70
218C36:  MOV             R4, R0
218C38:  MOV             R0, R6
218C3A:  BL              sub_217B38
218C3E:  CMP             R0, #0
218C40:  BEQ.W           loc_217B70
218C44:  MOV             R8, R0
218C46:  ADD.W           R0, R6, #0x198
218C4A:  MOVS            R1, #0x18
218C4C:  BL              sub_216EF0
218C50:  LDR             R1, =(aDynamicCast_0 - 0x218C5A); "dynamic_cast" ...
218C52:  MOV             R5, R0
218C54:  LDR             R0, =0x1010135
218C56:  ADD             R1, PC; "dynamic_cast"
218C58:  ADD.W           R2, R1, #0xC
218C5C:  LDR             R3, =(_ZTVN12_GLOBAL__N_116itanium_demangle8CastExprE - 0x218C62); `vtable for'`anonymous namespace'::itanium_demangle::CastExpr ...
218C5E:  ADD             R3, PC; `vtable for'`anonymous namespace'::itanium_demangle::CastExpr
218C60:  ADDS            R3, #8
218C62:  STR             R3, [R5]
218C64:  STR             R0, [R5,#4]
218C66:  STR             R1, [R5,#8]
218C68:  STR             R2, [R5,#0xC]
218C6A:  STR             R4, [R5,#0x10]
218C6C:  STR.W           R8, [R5,#0x14]
218C70:  B.W             loc_217B72
218C74:  ADD.W           R0, R12, #2
218C78:  STR             R0, [R6]
218C7A:  LDR             R0, [SP,#0x60+var_20]
218C7C:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x218C84)
218C80:  ADD             R1, PC; __stack_chk_guard_ptr
218C82:  LDR             R1, [R1]; __stack_chk_guard
218C84:  LDR             R1, [R1]
218C86:  CMP             R1, R0
218C88:  BNE.W           loc_217B8C
218C8C:  LDR             R1, =(asc_879DB - 0x218C92); "*" ...
218C8E:  ADD             R1, PC; "*"
218C90:  ADDS            R2, R1, #1
218C92:  MOV             R0, R6
218C94:  ADD             SP, SP, #0x44 ; 'D'
218C96:  POP.W           {R8-R11}
218C9A:  POP.W           {R4-R7,LR}
218C9E:  B.W             sub_219ABC
218CA2:  LDR             R0, [SP,#0x60+var_38]
218CA4:  ADD.W           R1, R12, #2
218CA8:  STR             R1, [R0]
218CAA:  LDR             R2, [SP,#0x60+var_20]
218CAC:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x218CB4)
218CB0:  ADD             R1, PC; __stack_chk_guard_ptr
218CB2:  LDR             R1, [R1]; __stack_chk_guard
218CB4:  LDR             R1, [R1]
218CB6:  CMP             R1, R2
218CB8:  BNE.W           loc_217B8C
218CBC:  LDR             R1, =(asc_8673C - 0x218CC2); "/=" ...
218CBE:  ADD             R1, PC; "/="
218CC0:  ADDS            R2, R1, #2
218CC2:  ADD             SP, SP, #0x44 ; 'D'
218CC4:  POP.W           {R8-R11}
218CC8:  POP.W           {R4-R7,LR}
218CCC:  B.W             sub_219A6C
218CD0:  ADDS            R0, #1
218CD2:  STR.W           R0, [R8]
218CD6:  ADD             R0, SP, #0x60+var_30
218CD8:  MOV             R1, R8
218CDA:  MOV             R2, R4
218CDC:  BL              sub_216D60
218CE0:  MOV             R0, R8
218CE2:  BL              sub_215C48
218CE6:  CMP             R0, #0
218CE8:  BEQ.W           loc_217B70
218CEC:  LDR             R1, =(aPi - 0x218CF6); "pi" ...
218CEE:  MOV             R10, R0
218CF0:  MOV             R0, R8
218CF2:  ADD             R1, PC; "pi"
218CF4:  ADDS            R2, R1, #2
218CF6:  BL              sub_2155E4
218CFA:  CMP             R0, #0
218CFC:  BEQ.W           loc_218E28
218D00:  LDRD.W          R0, R1, [R8,#8]
218D04:  ADD             R4, SP, #0x60+var_28
218D06:  SUBS            R0, R1, R0
218D08:  ASRS            R6, R0, #2
218D0A:  LDRD.W          R0, R1, [R8]
218D0E:  CMP             R0, R1
218D10:  BEQ             loc_218D1A
218D12:  LDRB            R1, [R0]
218D14:  CMP             R1, #0x45 ; 'E'
218D16:  BEQ.W           loc_218E8E
218D1A:  MOV             R0, R8
218D1C:  BL              sub_217B38
218D20:  CMP             R0, #0
218D22:  STR             R0, [SP,#0x60+var_28]
218D24:  BEQ.W           loc_217B70
218D28:  MOV             R0, R5
218D2A:  MOV             R1, R4
218D2C:  BL              sub_216CEC
218D30:  B               loc_218D0A
218D32:  ADDS            R0, #1
218D34:  STR             R0, [R5]
218D36:  ADD             R0, SP, #0x60+var_30
218D38:  MOV             R1, R5
218D3A:  MOV             R2, R8
218D3C:  BL              sub_216D60
218D40:  ADD.W           R0, R5, #0x198
218D44:  MOVS            R1, #0x10
218D46:  BL              sub_216EF0
218D4A:  LDR             R1, =0x1010100
218D4C:  STR             R1, [R0,#4]
218D4E:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle13NodeArrayNodeE - 0x218D54); `vtable for'`anonymous namespace'::itanium_demangle::NodeArrayNode ...
218D50:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::NodeArrayNode
218D52:  ADDS            R1, #8
218D54:  STR             R1, [R0]
218D56:  LDRD.W          R1, R2, [SP,#0x60+var_30]
218D5A:  STRD.W          R1, R2, [R0,#8]
218D5E:  STR             R0, [SP,#0x60+var_28]
218D60:  ADD             R1, SP, #0x60+var_28
218D62:  B               loc_218E70
218D64:  ADDS            R0, #1
218D66:  STR             R0, [R6]
218D68:  ADD             R0, SP, #0x60+var_30
218D6A:  MOV             R1, R6
218D6C:  MOV             R2, R9
218D6E:  BL              sub_216D60
218D72:  ADD.W           R0, R6, #0x198
218D76:  MOVS            R1, #0x14
218D78:  BL              sub_216EF0
218D7C:  MOV             R5, R0
218D7E:  LDR             R0, =0x1010137
218D80:  STRD.W          R0, R8, [R5,#4]
218D84:  LDR             R0, =(_ZTVN12_GLOBAL__N_116itanium_demangle8CallExprE - 0x218D8A); `vtable for'`anonymous namespace'::itanium_demangle::CallExpr ...
218D86:  ADD             R0, PC; `vtable for'`anonymous namespace'::itanium_demangle::CallExpr
218D88:  B               loc_218FCE
218D8A:  ADDS            R0, #1
218D8C:  STR             R0, [R6]
218D8E:  ADD             R0, SP, #0x60+var_30
218D90:  MOV             R1, R6
218D92:  MOV             R2, R9
218D94:  BL              sub_216D60
218D98:  ADD.W           R0, R6, #0x198
218D9C:  MOVS            R1, #0x14
218D9E:  BL              sub_216EF0
218DA2:  LDR             R1, =0x101013D
218DA4:  MOV             R5, R0
218DA6:  STRD.W          R1, R8, [R0,#4]
218DAA:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle12InitListExprE - 0x218DB0); `vtable for'`anonymous namespace'::itanium_demangle::InitListExpr ...
218DAC:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::InitListExpr
218DAE:  ADDS            R1, #8
218DB0:  STR             R1, [R0]
218DB2:  LDRD.W          R1, R2, [SP,#0x60+var_30]
218DB6:  STRD.W          R1, R2, [R0,#0xC]
218DBA:  B.W             loc_217B72
218DBE:  MOV             R0, R6
218DC0:  BL              sub_217B38
218DC4:  CMP             R0, #0
218DC6:  STR             R0, [SP,#0x60+var_28]
218DC8:  BEQ.W           loc_217B70
218DCC:  ADD             R2, SP, #0x60+var_28
218DCE:  ADD             R0, SP, #0x60+var_30
218DD0:  ADDS            R3, R2, #4
218DD2:  MOV             R1, R6
218DD4:  BL              sub_21B270
218DD8:  B               loc_218FB6
218DDA:  MOV             R5, R11
218DDC:  STR             R0, [SP,#0x60+var_4C]
218DDE:  ADD.W           R0, R12, #2
218DE2:  STR             R0, [R4]
218DE4:  MOV             R0, R4
218DE6:  LDR             R1, =(aAa - 0x218DEC); "aa" ...
218DE8:  ADD             R1, PC; "aa"
218DEA:  ADDS            R2, R1, #2
218DEC:  BL              sub_2155E4
218DF0:  STR.W           R8, [SP,#0x60+var_48]
218DF4:  CBZ             R0, loc_218DFC
218DF6:  ADD.W           R10, R5, #2
218DFA:  B               loc_218EDE
218DFC:  LDR             R1, =(aAn - 0x218E04); "an" ...
218DFE:  MOV             R0, R4
218E00:  ADD             R1, PC; "an"
218E02:  ADDS            R2, R1, #2
218E04:  BL              sub_2155E4
218E08:  CBZ             R0, loc_218E12
218E0A:  ADD.W           R10, R9, #1
218E0E:  MOV             R5, R9
218E10:  B               loc_218EDE
218E12:  LDR             R1, =(aAn_0 - 0x218E1A); "aN" ...
218E14:  MOV             R0, R4
218E16:  ADD             R1, PC; "aN"
218E18:  ADDS            R2, R1, #2
218E1A:  BL              sub_2155E4
218E1E:  CBZ             R0, loc_218E7C
218E20:  ADD.W           R10, R6, #2
218E24:  MOV             R5, R6
218E26:  B               loc_218EDE
218E28:  LDRD.W          R0, R1, [R8]
218E2C:  CMP             R0, R1
218E2E:  BEQ.W           loc_217B70
218E32:  LDRB            R1, [R0]
218E34:  MOVS            R5, #0
218E36:  CMP             R1, #0x45 ; 'E'
218E38:  BNE.W           loc_217B72
218E3C:  ADDS            R0, #1
218E3E:  STR.W           R0, [R8]
218E42:  ADD.W           R0, R8, #0x198
218E46:  MOVS            R1, #0x20 ; ' '
218E48:  BL              sub_216EF0
218E4C:  LDRD.W          R1, R2, [SP,#0x60+var_30]
218E50:  MOV             R3, R10
218E52:  STRD.W          R5, R5, [SP,#0x60+var_60]
218E56:  STRD.W          R11, R9, [SP,#0x60+var_58]
218E5A:  BL              sub_21C438
218E5E:  B               loc_218E76
218E60:  MOV             R0, R5
218E62:  BL              sub_2199BC
218E66:  CMP             R0, #0
218E68:  STR             R0, [SP,#0x60+var_30]
218E6A:  BEQ.W           loc_217B70
218E6E:  ADD             R1, SP, #0x60+var_30
218E70:  MOV             R0, R5
218E72:  BL              sub_219F04
218E76:  MOV             R5, R0
218E78:  B.W             loc_217B72
218E7C:  LDR             R1, =(aAs - 0x218E84); "aS" ...
218E7E:  MOV             R0, R4
218E80:  ADD             R1, PC; "aS"
218E82:  ADDS            R2, R1, #2
218E84:  BL              sub_2155E4
218E88:  CBZ             R0, loc_218EC6
218E8A:  LDR             R5, [SP,#0x60+var_3C]
218E8C:  B               loc_218EDA
218E8E:  ADDS            R0, #1
218E90:  STR.W           R0, [R8]
218E94:  ADD             R0, SP, #0x60+var_28
218E96:  MOV             R1, R8
218E98:  MOV             R2, R6
218E9A:  BL              sub_216D60
218E9E:  ADD.W           R0, R8, #0x198
218EA2:  MOVS            R1, #0x20 ; ' '
218EA4:  BL              sub_216EF0
218EA8:  MOV             R5, R0
218EAA:  LDRD.W          R1, R2, [SP,#0x60+var_30]
218EAE:  LDRD.W          R0, R3, [SP,#0x60+var_28]
218EB2:  STR.W           R9, [SP,#0x60+var_54]
218EB6:  STMEA.W         SP, {R0,R3,R11}
218EBA:  MOV             R0, R5
218EBC:  MOV             R3, R10
218EBE:  BL              sub_21C438
218EC2:  B.W             loc_217B72
218EC6:  LDR             R1, =(aCm - 0x218ECE); "cm" ...
218EC8:  MOV             R0, R4
218ECA:  ADD             R1, PC; "cm"
218ECC:  ADDS            R2, R1, #2
218ECE:  BL              sub_2155E4
218ED2:  CMP             R0, #0
218ED4:  BEQ.W           loc_218FDE
218ED8:  LDR             R5, [SP,#0x60+var_40]
218EDA:  ADD.W           R10, R5, #1
218EDE:  MOV             R0, R4
218EE0:  BL              sub_217B38
218EE4:  CMP             R0, #0
218EE6:  BEQ.W           loc_217B70
218EEA:  MOV             R6, R0
218EEC:  LDR             R0, [SP,#0x60+var_4C]
218EEE:  CMP             R0, #0x52 ; 'R'
218EF0:  IT NE
218EF2:  CMPNE           R0, #0x4C ; 'L'
218EF4:  BNE             loc_218F0E
218EF6:  MOV             R0, R4
218EF8:  BL              sub_217B38
218EFC:  CMP             R0, #0
218EFE:  BEQ.W           loc_217B70
218F02:  LDR             R1, [SP,#0x60+var_48]
218F04:  MOV             R11, R5
218F06:  CBZ             R1, loc_218F16
218F08:  MOV             R8, R6
218F0A:  MOV             R6, R0
218F0C:  B               loc_218F18
218F0E:  MOV             R11, R5
218F10:  MOV.W           R8, #0
218F14:  B               loc_218F18
218F16:  MOV             R8, R0
218F18:  ADD.W           R0, R4, #0x198
218F1C:  MOVS            R1, #0x1C
218F1E:  BL              sub_216EF0
218F22:  MOV             R5, R0
218F24:  LDR             R1, [SP,#0x60+var_48]
218F26:  STRB            R1, [R5,#0x18]
218F28:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle8FoldExprE - 0x218F30); `vtable for'`anonymous namespace'::itanium_demangle::FoldExpr ...
218F2A:  LDR             R0, =0x101013E
218F2C:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::FoldExpr
218F2E:  STR.W           R10, [R5,#0x14]
218F32:  ADDS            R1, #8
218F34:  STRD.W          R1, R0, [R5]
218F38:  ADD.W           R0, R5, #8
218F3C:  STM.W           R0, {R6,R8,R11}
218F40:  B.W             loc_217B72
218F44:  DCD asc_8A8EE - 0x218B90
218F48:  DCD asc_836CD - 0x218BD2
218F4C:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle10MemberExprE - 0x218BD4
218F50:  DCD 0x1010133
218F54:  DCD asc_82F77 - 0x218C1E
218F58:  DCD aDynamicCast_0 - 0x218C5A
218F5C:  DCD 0x1010135
218F60:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle8CastExprE - 0x218C62
218F64:  DCD asc_879DB - 0x218C92
218F68:  DCD asc_8673C - 0x218CC2
218F6C:  DCD aPi - 0x218CF6
218F70:  DCD 0x1010100
218F74:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle13NodeArrayNodeE - 0x218D54
218F78:  DCD 0x1010137
218F7C:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle8CallExprE - 0x218D8A
218F80:  DCD 0x101013D
218F84:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle12InitListExprE - 0x218DB0
218F88:  DCD aAa - 0x218DEC
218F8C:  DCD aAn - 0x218E04
218F90:  DCD aAn_0 - 0x218E1A
218F94:  DCD aAs - 0x218E84
218F98:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle8FoldExprE - 0x218F30
218F9C:  DCD __stack_chk_guard_ptr - 0x21823A
218FA0:  DCD __stack_chk_guard_ptr - 0x218416
218FA4:  DCD __stack_chk_guard_ptr - 0x218436
218FA8:  ADDS            R0, R1, #1
218FAA:  STR             R0, [R6]
218FAC:  ADD             R0, SP, #0x60+var_30
218FAE:  MOV             R1, R6
218FB0:  MOV             R2, R9
218FB2:  BL              sub_216D60
218FB6:  ADD.W           R0, R6, #0x198
218FBA:  MOVS            R1, #0x14
218FBC:  BL              sub_216EF0
218FC0:  MOV             R5, R0
218FC2:  LDR             R0, =0x101013C
218FC4:  STR             R0, [R5,#4]
218FC6:  STR.W           R8, [R5,#8]
218FCA:  LDR             R0, =(_ZTVN12_GLOBAL__N_116itanium_demangle14ConversionExprE - 0x218FD0); `vtable for'`anonymous namespace'::itanium_demangle::ConversionExpr ...
218FCC:  ADD             R0, PC; `vtable for'`anonymous namespace'::itanium_demangle::ConversionExpr
218FCE:  ADDS            R0, #8
218FD0:  STR             R0, [R5]
218FD2:  LDR             R1, [SP,#0x60+var_2C]
218FD4:  LDR             R0, [SP,#0x60+var_30]
218FD6:  STR             R1, [R5,#0x10]
218FD8:  STR             R0, [R5,#0xC]
218FDA:  B.W             loc_217B72
218FDE:  LDR             R1, =(aDs - 0x218FE6); "ds" ...
218FE0:  MOV             R0, R4
218FE2:  ADD             R1, PC; "ds"
218FE4:  ADDS            R2, R1, #2
218FE6:  BL              sub_2155E4
218FEA:  CBZ             R0, loc_218FF2
218FEC:  LDR             R5, =(asc_8A8EE - 0x218FF2); ".*" ...
218FEE:  ADD             R5, PC; ".*"
218FF0:  B               loc_218DF6
218FF2:  LDR             R1, =(aDv - 0x218FFA); "dv" ...
218FF4:  MOV             R0, R4
218FF6:  ADD             R1, PC; "dv"
218FF8:  ADDS            R2, R1, #2
218FFA:  BL              sub_2155E4
218FFE:  CBZ             R0, loc_219008
219000:  LDR             R5, [SP,#0x60+var_44]
219002:  ADD.W           R10, R5, #1
219006:  B               loc_21901E
219008:  LDR             R1, =(aDv_0 - 0x219010); "dV" ...
21900A:  LDR             R0, [SP,#0x60+var_38]
21900C:  ADD             R1, PC; "dV"
21900E:  ADDS            R2, R1, #2
219010:  BL              sub_2155E4
219014:  CBZ             R0, loc_219022
219016:  LDR             R5, =(asc_8673C - 0x21901C); "/=" ...
219018:  ADD             R5, PC; "/="
21901A:  ADD.W           R10, R5, #2
21901E:  LDR             R4, [SP,#0x60+var_38]
219020:  B               loc_218EDE
219022:  LDR             R1, =(aEo_0 - 0x21902A); "eo" ...
219024:  LDR             R0, [SP,#0x60+var_38]
219026:  ADD             R1, PC; "eo"
219028:  ADDS            R2, R1, #2
21902A:  BL              sub_2155E4
21902E:  CBZ             R0, loc_219036
219030:  LDR             R5, =(asc_8BDBD - 0x219036); "^" ...
219032:  ADD             R5, PC; "^"
219034:  B               loc_219002
219036:  LDR             R1, =(aEo - 0x21903E); "eO" ...
219038:  LDR             R0, [SP,#0x60+var_38]
21903A:  ADD             R1, PC; "eO"
21903C:  ADDS            R2, R1, #2
21903E:  BL              sub_2155E4
219042:  CBZ             R0, loc_21904A
219044:  LDR             R5, =(asc_8A245 - 0x21904A); "^=" ...
219046:  ADD             R5, PC; "^="
219048:  B               loc_21901A
21904A:  LDR             R1, =(aEq - 0x219052); "eq" ...
21904C:  LDR             R0, [SP,#0x60+var_38]
21904E:  ADD             R1, PC; "eq"
219050:  ADDS            R2, R1, #2
219052:  BL              sub_2155E4
219056:  CBZ             R0, loc_21905E
219058:  LDR             R5, =(asc_89C46 - 0x21905E); "==" ...
21905A:  ADD             R5, PC; "=="
21905C:  B               loc_21901A
21905E:  LDR             R1, =(aGe - 0x219066); "ge" ...
219060:  LDR             R0, [SP,#0x60+var_38]
219062:  ADD             R1, PC; "ge"
219064:  ADDS            R2, R1, #2
219066:  BL              sub_2155E4
21906A:  CBZ             R0, loc_219072
21906C:  LDR             R5, =(asc_8362F - 0x219072); ">=" ...
21906E:  ADD             R5, PC; ">="
219070:  B               loc_21901A
219072:  LDR             R1, =(aGt - 0x21907A); "gt" ...
219074:  LDR             R0, [SP,#0x60+var_38]
219076:  ADD             R1, PC; "gt"
219078:  ADDS            R2, R1, #2
21907A:  BL              sub_2155E4
21907E:  CBZ             R0, loc_219086
219080:  LDR             R5, =(aW7+6 - 0x219086); ">" ...
219082:  ADD             R5, PC; ">"
219084:  B               loc_219002
219086:  LDR             R1, =(aLe - 0x21908E); "le" ...
219088:  LDR             R0, [SP,#0x60+var_38]
21908A:  ADD             R1, PC; "le"
21908C:  ADDS            R2, R1, #2
21908E:  BL              sub_2155E4
219092:  CBZ             R0, loc_21909A
219094:  LDR             R5, =(asc_8E1D8 - 0x21909A); "<=" ...
219096:  ADD             R5, PC; "<="
219098:  B               loc_21901A
21909A:  LDR             R1, =(aLs_0 - 0x2190A2); "ls" ...
21909C:  LDR             R0, [SP,#0x60+var_38]
21909E:  ADD             R1, PC; "ls"
2190A0:  ADDS            R2, R1, #2
2190A2:  BL              sub_2155E4
2190A6:  CBZ             R0, loc_2190AE
2190A8:  LDR             R5, =(asc_8D18E - 0x2190AE); "<<" ...
2190AA:  ADD             R5, PC; "<<"
2190AC:  B               loc_21901A
2190AE:  LDR             R1, =(aLs - 0x2190B6); "lS" ...
2190B0:  LDR             R0, [SP,#0x60+var_38]
2190B2:  ADD             R1, PC; "lS"
2190B4:  ADDS            R2, R1, #2
2190B6:  BL              sub_2155E4
2190BA:  CBZ             R0, loc_2190C6
2190BC:  LDR             R5, =(asc_8C695 - 0x2190C2); "<<=" ...
2190BE:  ADD             R5, PC; "<<="
2190C0:  ADD.W           R10, R5, #3
2190C4:  B               loc_21901E
2190C6:  LDR             R1, =(aLt - 0x2190CE); "lt" ...
2190C8:  LDR             R0, [SP,#0x60+var_38]
2190CA:  ADD             R1, PC; "lt"
2190CC:  ADDS            R2, R1, #2
2190CE:  BL              sub_2155E4
2190D2:  CBZ             R0, loc_2190DA
2190D4:  LDR             R5, =(unk_82C59 - 0x2190DA)
2190D6:  ADD             R5, PC; unk_82C59
2190D8:  B               loc_219002
2190DA:  LDR             R1, =(aMi_0 - 0x2190E2); "mi" ...
2190DC:  LDR             R0, [SP,#0x60+var_38]
2190DE:  ADD             R1, PC; "mi"
2190E0:  ADDS            R2, R1, #2
2190E2:  BL              sub_2155E4
2190E6:  CBZ             R0, loc_2190EE
2190E8:  LDR             R5, =(unk_86B5A - 0x2190EE)
2190EA:  ADD             R5, PC; unk_86B5A
2190EC:  B               loc_219002
2190EE:  LDR             R1, =(aMi - 0x2190F6); "mI" ...
2190F0:  LDR             R0, [SP,#0x60+var_38]
2190F2:  ADD             R1, PC; "mI"
2190F4:  ADDS            R2, R1, #2
2190F6:  BL              sub_2155E4
2190FA:  CBZ             R0, loc_219102
2190FC:  LDR             R5, =(asc_8673F - 0x219102); "-=" ...
2190FE:  ADD             R5, PC; "-="
219100:  B               loc_21901A
219102:  LDR             R1, =(aMl_0 - 0x21910A); "ml" ...
219104:  LDR             R0, [SP,#0x60+var_38]
219106:  ADD             R1, PC; "ml"
219108:  ADDS            R2, R1, #2
21910A:  BL              sub_2155E4
21910E:  CBZ             R0, loc_219116
219110:  LDR             R5, =(asc_879DB - 0x219116); "*" ...
219112:  ADD             R5, PC; "*"
219114:  B               loc_219002
219116:  LDR             R1, =(aMl - 0x21911E); "mL" ...
219118:  LDR             R0, [SP,#0x60+var_38]
21911A:  ADD             R1, PC; "mL"
21911C:  ADDS            R2, R1, #2
21911E:  BL              sub_2155E4
219122:  CBZ             R0, loc_21912A
219124:  LDR             R5, =(asc_886A0 - 0x21912A); "*=" ...
219126:  ADD             R5, PC; "*="
219128:  B               loc_21901A
21912A:  LDR             R1, =(aNe - 0x219132); "ne" ...
21912C:  LDR             R0, [SP,#0x60+var_38]
21912E:  ADD             R1, PC; "ne"
219130:  ADDS            R2, R1, #2
219132:  BL              sub_2155E4
219136:  CBZ             R0, loc_21913E
219138:  LDR             R5, =(asc_8DAD1 - 0x21913E); "!=" ...
21913A:  ADD             R5, PC; "!="
21913C:  B               loc_21901A
21913E:  LDR             R1, =(aOo - 0x219146); "oo" ...
219140:  LDR             R0, [SP,#0x60+var_38]
219142:  ADD             R1, PC; "oo"
219144:  ADDS            R2, R1, #2
219146:  BL              sub_2155E4
21914A:  CBZ             R0, loc_219152
21914C:  LDR             R5, =(asc_8B739 - 0x219152); "||" ...
21914E:  ADD             R5, PC; "||"
219150:  B               loc_21901A
219152:  LDR             R1, =(aOr - 0x21915A); "or" ...
219154:  LDR             R0, [SP,#0x60+var_38]
219156:  ADD             R1, PC; "or"
219158:  ADDS            R2, R1, #2
21915A:  BL              sub_2155E4
21915E:  CBZ             R0, loc_219166
219160:  LDR             R5, =(asc_8F0DD - 0x219166); "|" ...
219162:  ADD             R5, PC; "|"
219164:  B               loc_219002
219166:  LDR             R1, =(aOr_0 - 0x21916E); "oR" ...
219168:  LDR             R0, [SP,#0x60+var_38]
21916A:  ADD             R1, PC; "oR"
21916C:  ADDS            R2, R1, #2
21916E:  BL              sub_2155E4
219172:  CBZ             R0, loc_21917A
219174:  LDR             R5, =(asc_8BDBF - 0x21917A); "|=" ...
219176:  ADD             R5, PC; "|="
219178:  B               loc_21901A
21917A:  LDR             R1, =(aPl_0 - 0x219182); "pl" ...
21917C:  LDR             R0, [SP,#0x60+var_38]
21917E:  ADD             R1, PC; "pl"
219180:  ADDS            R2, R1, #2
219182:  BL              sub_2155E4
219186:  CBZ             R0, loc_21918E
219188:  LDR             R5, =(unk_8BBBD - 0x21918E)
21918A:  ADD             R5, PC; unk_8BBBD
21918C:  B               loc_219002
21918E:  LDR             R1, =(aPl - 0x219196); "pL" ...
219190:  LDR             R0, [SP,#0x60+var_38]
219192:  ADD             R1, PC; "pL"
219194:  ADDS            R2, R1, #2
219196:  BL              sub_2155E4
21919A:  CBZ             R0, loc_2191A2
21919C:  LDR             R5, =(asc_8AFDA - 0x2191A2); "+=" ...
21919E:  ADD             R5, PC; "+="
2191A0:  B               loc_21901A
2191A2:  LDR             R1, =(aRm_0 - 0x2191AA); "rm" ...
2191A4:  LDR             R0, [SP,#0x60+var_38]
2191A6:  ADD             R1, PC; "rm"
2191A8:  ADDS            R2, R1, #2
2191AA:  BL              sub_2155E4
2191AE:  CBZ             R0, loc_2191B6
2191B0:  LDR             R5, =(asc_9174A - 0x2191B6); "%" ...
2191B2:  ADD             R5, PC; "%"
2191B4:  B               loc_219002
2191B6:  LDR             R1, =(aRm - 0x2191BE); "rM" ...
2191B8:  LDR             R0, [SP,#0x60+var_38]
2191BA:  ADD             R1, PC; "rM"
2191BC:  ADDS            R2, R1, #2
2191BE:  BL              sub_2155E4
2191C2:  CBZ             R0, loc_2191CA
2191C4:  LDR             R5, =(asc_8E1DB - 0x2191CA); "%=" ...
2191C6:  ADD             R5, PC; "%="
2191C8:  B               loc_21901A
2191CA:  LDR             R1, =(aRs - 0x2191D2); "rs" ...
2191CC:  LDR             R0, [SP,#0x60+var_38]
2191CE:  ADD             R1, PC; "rs"
2191D0:  ADDS            R2, R1, #2
2191D2:  BL              sub_2155E4
2191D6:  CBZ             R0, loc_2191DE
2191D8:  LDR             R5, =(asc_84107 - 0x2191DE); ">>" ...
2191DA:  ADD             R5, PC; ">>"
2191DC:  B               loc_21901A
2191DE:  LDR             R1, =(aRs_0 - 0x2191E6); "rS" ...
2191E0:  LDR             R0, [SP,#0x60+var_38]
2191E2:  ADD             R1, PC; "rS"
2191E4:  ADDS            R2, R1, #2
2191E6:  BL              sub_2155E4
2191EA:  CMP             R0, #0
2191EC:  BEQ.W           loc_217B70
2191F0:  LDR             R5, =(asc_8AFDD - 0x2191F6); ">>=" ...
2191F2:  ADD             R5, PC; ">>="
2191F4:  B               loc_2190C0
