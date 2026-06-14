; =========================================================
; Game Engine Function: sub_E6A30
; Address            : 0xE6A30 - 0xE6EE4
; =========================================================

E6A30:  PUSH            {R4-R7,LR}
E6A32:  ADD             R7, SP, #0xC
E6A34:  PUSH.W          {R8-R11}
E6A38:  SUB             SP, SP, #0x1C
E6A3A:  MOV             R4, R0
E6A3C:  BL              sub_E7374
E6A40:  ADD.W           R5, R4, #0x2C ; ','
E6A44:  MOV             R6, SP
E6A46:  MOV             R9, SP
E6A48:  MOV             R8, SP
E6A4A:  MOV             R10, SP
E6A4C:  MOV             R0, R4
E6A4E:  BL              sub_E71D0
E6A52:  ADDS            R2, R0, #1
E6A54:  CMP             R2, #0xF5; switch 246 cases
E6A56:  BHI.W           def_E6A60; jumptable 000E6A60 default case, cases 129-194
E6A5A:  LDR             R1, =(aInvalidStringM - 0xE6A62); "invalid string: missing closing quote" ...
E6A5C:  MOVS            R0, #4
E6A5E:  ADD             R1, PC; "invalid string: missing closing quote"
E6A60:  TBH.W           [PC,R2,LSL#1]; switch jump
E6A64:  DCW 0x231; jump table for switch statement
E6A66:  DCW 0x1CF
E6A68:  DCW 0x1D2
E6A6A:  DCW 0x1D5
E6A6C:  DCW 0x1D8
E6A6E:  DCW 0x1DB
E6A70:  DCW 0x1DE
E6A72:  DCW 0x1E1
E6A74:  DCW 0x1E4
E6A76:  DCW 0x1E7
E6A78:  DCW 0x1EA
E6A7A:  DCW 0x1ED
E6A7C:  DCW 0x1F0
E6A7E:  DCW 0x1F3
E6A80:  DCW 0x1F6
E6A82:  DCW 0x1F9
E6A84:  DCW 0x1FC
E6A86:  DCW 0x1FF
E6A88:  DCW 0x202
E6A8A:  DCW 0x205
E6A8C:  DCW 0x208
E6A8E:  DCW 0x20B
E6A90:  DCW 0x20E
E6A92:  DCW 0x211
E6A94:  DCW 0x214
E6A96:  DCW 0x217
E6A98:  DCW 0x21A
E6A9A:  DCW 0x21D
E6A9C:  DCW 0x220
E6A9E:  DCW 0x223
E6AA0:  DCW 0x226
E6AA2:  DCW 0x229
E6AA4:  DCW 0x22C
E6AA6:  DCW 0xF8
E6AA8:  DCW 0xF8
E6AAA:  DCW 0x233
E6AAC:  DCW 0xF8
E6AAE:  DCW 0xF8
E6AB0:  DCW 0xF8
E6AB2:  DCW 0xF8
E6AB4:  DCW 0xF8
E6AB6:  DCW 0xF8
E6AB8:  DCW 0xF8
E6ABA:  DCW 0xF8
E6ABC:  DCW 0xF8
E6ABE:  DCW 0xF8
E6AC0:  DCW 0xF8
E6AC2:  DCW 0xF8
E6AC4:  DCW 0xF8
E6AC6:  DCW 0xF8
E6AC8:  DCW 0xF8
E6ACA:  DCW 0xF8
E6ACC:  DCW 0xF8
E6ACE:  DCW 0xF8
E6AD0:  DCW 0xF8
E6AD2:  DCW 0xF8
E6AD4:  DCW 0xF8
E6AD6:  DCW 0xF8
E6AD8:  DCW 0xF8
E6ADA:  DCW 0xF8
E6ADC:  DCW 0xF8
E6ADE:  DCW 0xF8
E6AE0:  DCW 0xF8
E6AE2:  DCW 0xF8
E6AE4:  DCW 0xF8
E6AE6:  DCW 0xF8
E6AE8:  DCW 0xF8
E6AEA:  DCW 0xF8
E6AEC:  DCW 0xF8
E6AEE:  DCW 0xF8
E6AF0:  DCW 0xF8
E6AF2:  DCW 0xF8
E6AF4:  DCW 0xF8
E6AF6:  DCW 0xF8
E6AF8:  DCW 0xF8
E6AFA:  DCW 0xF8
E6AFC:  DCW 0xF8
E6AFE:  DCW 0xF8
E6B00:  DCW 0xF8
E6B02:  DCW 0xF8
E6B04:  DCW 0xF8
E6B06:  DCW 0xF8
E6B08:  DCW 0xF8
E6B0A:  DCW 0xF8
E6B0C:  DCW 0xF8
E6B0E:  DCW 0xF8
E6B10:  DCW 0xF8
E6B12:  DCW 0xF8
E6B14:  DCW 0xF8
E6B16:  DCW 0xF8
E6B18:  DCW 0xF8
E6B1A:  DCW 0xF8
E6B1C:  DCW 0xF8
E6B1E:  DCW 0x115
E6B20:  DCW 0xF8
E6B22:  DCW 0xF8
E6B24:  DCW 0xF8
E6B26:  DCW 0xF8
E6B28:  DCW 0xF8
E6B2A:  DCW 0xF8
E6B2C:  DCW 0xF8
E6B2E:  DCW 0xF8
E6B30:  DCW 0xF8
E6B32:  DCW 0xF8
E6B34:  DCW 0xF8
E6B36:  DCW 0xF8
E6B38:  DCW 0xF8
E6B3A:  DCW 0xF8
E6B3C:  DCW 0xF8
E6B3E:  DCW 0xF8
E6B40:  DCW 0xF8
E6B42:  DCW 0xF8
E6B44:  DCW 0xF8
E6B46:  DCW 0xF8
E6B48:  DCW 0xF8
E6B4A:  DCW 0xF8
E6B4C:  DCW 0xF8
E6B4E:  DCW 0xF8
E6B50:  DCW 0xF8
E6B52:  DCW 0xF8
E6B54:  DCW 0xF8
E6B56:  DCW 0xF8
E6B58:  DCW 0xF8
E6B5A:  DCW 0xF8
E6B5C:  DCW 0xF8
E6B5E:  DCW 0xF8
E6B60:  DCW 0xF8
E6B62:  DCW 0xF8
E6B64:  DCW 0xF8
E6B66:  DCW 0x22F
E6B68:  DCW 0x22F
E6B6A:  DCW 0x22F
E6B6C:  DCW 0x22F
E6B6E:  DCW 0x22F
E6B70:  DCW 0x22F
E6B72:  DCW 0x22F
E6B74:  DCW 0x22F
E6B76:  DCW 0x22F
E6B78:  DCW 0x22F
E6B7A:  DCW 0x22F
E6B7C:  DCW 0x22F
E6B7E:  DCW 0x22F
E6B80:  DCW 0x22F
E6B82:  DCW 0x22F
E6B84:  DCW 0x22F
E6B86:  DCW 0x22F
E6B88:  DCW 0x22F
E6B8A:  DCW 0x22F
E6B8C:  DCW 0x22F
E6B8E:  DCW 0x22F
E6B90:  DCW 0x22F
E6B92:  DCW 0x22F
E6B94:  DCW 0x22F
E6B96:  DCW 0x22F
E6B98:  DCW 0x22F
E6B9A:  DCW 0x22F
E6B9C:  DCW 0x22F
E6B9E:  DCW 0x22F
E6BA0:  DCW 0x22F
E6BA2:  DCW 0x22F
E6BA4:  DCW 0x22F
E6BA6:  DCW 0x22F
E6BA8:  DCW 0x22F
E6BAA:  DCW 0x22F
E6BAC:  DCW 0x22F
E6BAE:  DCW 0x22F
E6BB0:  DCW 0x22F
E6BB2:  DCW 0x22F
E6BB4:  DCW 0x22F
E6BB6:  DCW 0x22F
E6BB8:  DCW 0x22F
E6BBA:  DCW 0x22F
E6BBC:  DCW 0x22F
E6BBE:  DCW 0x22F
E6BC0:  DCW 0x22F
E6BC2:  DCW 0x22F
E6BC4:  DCW 0x22F
E6BC6:  DCW 0x22F
E6BC8:  DCW 0x22F
E6BCA:  DCW 0x22F
E6BCC:  DCW 0x22F
E6BCE:  DCW 0x22F
E6BD0:  DCW 0x22F
E6BD2:  DCW 0x22F
E6BD4:  DCW 0x22F
E6BD6:  DCW 0x22F
E6BD8:  DCW 0x22F
E6BDA:  DCW 0x22F
E6BDC:  DCW 0x22F
E6BDE:  DCW 0x22F
E6BE0:  DCW 0x22F
E6BE2:  DCW 0x22F
E6BE4:  DCW 0x22F
E6BE6:  DCW 0x22F
E6BE8:  DCW 0x22F
E6BEA:  DCW 0x100
E6BEC:  DCW 0x100
E6BEE:  DCW 0x100
E6BF0:  DCW 0x100
E6BF2:  DCW 0x100
E6BF4:  DCW 0x100
E6BF6:  DCW 0x100
E6BF8:  DCW 0x100
E6BFA:  DCW 0x100
E6BFC:  DCW 0x100
E6BFE:  DCW 0x100
E6C00:  DCW 0x100
E6C02:  DCW 0x100
E6C04:  DCW 0x100
E6C06:  DCW 0x100
E6C08:  DCW 0x100
E6C0A:  DCW 0x100
E6C0C:  DCW 0x100
E6C0E:  DCW 0x100
E6C10:  DCW 0x100
E6C12:  DCW 0x100
E6C14:  DCW 0x100
E6C16:  DCW 0x100
E6C18:  DCW 0x100
E6C1A:  DCW 0x100
E6C1C:  DCW 0x100
E6C1E:  DCW 0x100
E6C20:  DCW 0x100
E6C22:  DCW 0x100
E6C24:  DCW 0x100
E6C26:  DCW 0x126
E6C28:  DCW 0x108
E6C2A:  DCW 0x108
E6C2C:  DCW 0x108
E6C2E:  DCW 0x108
E6C30:  DCW 0x108
E6C32:  DCW 0x108
E6C34:  DCW 0x108
E6C36:  DCW 0x108
E6C38:  DCW 0x108
E6C3A:  DCW 0x108
E6C3C:  DCW 0x108
E6C3E:  DCW 0x108
E6C40:  DCW 0x128
E6C42:  DCW 0x108
E6C44:  DCW 0x108
E6C46:  DCW 0x12E
E6C48:  DCW 0x111
E6C4A:  DCW 0x111
E6C4C:  DCW 0x111
E6C4E:  DCW 0x132
E6C50:  DCD aInvalidStringM - 0xE6A62
E6C54:  LDR.W           R11, [R4,#0xC]; jumptable 000E6A60 cases 33,34,36-92,94-128
E6C58:  UXTB.W          R1, R11
E6C5C:  MOV             R0, R5
E6C5E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
E6C62:  B               loc_E6A4C
E6C64:  MOVS            R0, #0xBF; jumptable 000E6A60 cases 195-224
E6C66:  MOV             R1, R6
E6C68:  STR             R0, [SP,#0x38+var_34]
E6C6A:  MOVS            R0, #0x80
E6C6C:  STR             R0, [SP,#0x38+var_38]
E6C6E:  MOV             R0, R4
E6C70:  MOVS            R2, #2
E6C72:  B               loc_E6CE4
E6C74:  ADR             R0, dword_E6EF8; jumptable 000E6A60 cases 226-237,239,240
E6C76:  MOV             R1, R9
E6C78:  VLD1.64         {D16-D17}, [R0]
E6C7C:  MOV             R0, R4
E6C7E:  VST1.64         {D16-D17}, [R10]
E6C82:  MOVS            R2, #4
E6C84:  B               loc_E6CE4
E6C86:  LDR             R0, =(unk_920D8 - 0xE6C8E); jumptable 000E6A60 cases 242-244
E6C88:  MOV             R1, R8
E6C8A:  ADD             R0, PC; unk_920D8
E6C8C:  B               loc_E6CCE
E6C8E:  MOV             R0, R4; jumptable 000E6A60 case 93
E6C90:  BL              sub_E71D0
E6C94:  LDR             R1, =(aInvalidStringF - 0xE6C9C); "invalid string: forbidden character aft"... ...
E6C96:  CMP             R0, #0x61 ; 'a'
E6C98:  ADD             R1, PC; "invalid string: forbidden character aft"...
E6C9A:  BGT             loc_E6CF0
E6C9C:  CMP             R0, #0x22 ; '"'
E6C9E:  BEQ             loc_E6D0A
E6CA0:  CMP             R0, #0x2F ; '/'
E6CA2:  BEQ             loc_E6D10
E6CA4:  CMP             R0, #0x5C ; '\'
E6CA6:  BNE.W           loc_E6EC6; jumptable 000E6A60 case 0
E6CAA:  MOV.W           R11, #0x5C ; '\'
E6CAE:  B               loc_E6C58
E6CB0:  ADR             R0, dword_E6F08; jumptable 000E6A60 case 225
E6CB2:  B               loc_E6CB6
E6CB4:  ADR             R0, dword_E6EE8; jumptable 000E6A60 case 238
E6CB6:  VLD1.64         {D16-D17}, [R0]
E6CBA:  MOV             R0, R4
E6CBC:  MOV             R1, SP
E6CBE:  B               loc_E6C7E
E6CC0:  LDR             R0, =(unk_920C0 - 0xE6CC8); jumptable 000E6A60 case 241
E6CC2:  MOV             R1, SP
E6CC4:  ADD             R0, PC; unk_920C0
E6CC6:  B               loc_E6CCE
E6CC8:  LDR             R0, =(unk_920F0 - 0xE6CD0); jumptable 000E6A60 case 245
E6CCA:  MOV             R1, R10
E6CCC:  ADD             R0, PC; unk_920F0
E6CCE:  VLD1.64         {D16-D17}, [R0]!
E6CD2:  VLDR            D18, [R0]
E6CD6:  MOV             R0, R10
E6CD8:  VST1.64         {D16-D17}, [R0]!
E6CDC:  VSTR            D18, [R0]
E6CE0:  MOV             R0, R4
E6CE2:  MOVS            R2, #6
E6CE4:  BL              sub_E7440
E6CE8:  CMP             R0, #0
E6CEA:  BNE.W           loc_E6A4C
E6CEE:  B               loc_E6EC8
E6CF0:  SUB.W           R2, R0, #0x6E ; 'n'; switch 8 cases
E6CF4:  CMP             R2, #7
E6CF6:  BHI             def_E6CF8; jumptable 000E6CF8 default case
E6CF8:  TBB.W           [PC,R2]; switch jump
E6CFC:  DCB 4; jump table for switch statement
E6CFD:  DCB 0xE5
E6CFE:  DCB 0xE5
E6CFF:  DCB 0xE5
E6D00:  DCB 0x15
E6D01:  DCB 0xE5
E6D02:  DCB 0x18
E6D03:  DCB 0x1B
E6D04:  MOV.W           R11, #0xA; jumptable 000E6CF8 case 110
E6D08:  B               loc_E6C58
E6D0A:  MOV.W           R11, #0x22 ; '"'
E6D0E:  B               loc_E6C58
E6D10:  MOV.W           R11, #0x2F ; '/'
E6D14:  B               loc_E6C58
E6D16:  CMP             R0, #0x62 ; 'b'; jumptable 000E6CF8 default case
E6D18:  BEQ             loc_E6DCA
E6D1A:  CMP             R0, #0x66 ; 'f'
E6D1C:  BNE.W           loc_E6EC6; jumptable 000E6A60 case 0
E6D20:  MOV.W           R11, #0xC
E6D24:  B               loc_E6C58
E6D26:  MOV.W           R11, #0xD; jumptable 000E6CF8 case 114
E6D2A:  B               loc_E6C58
E6D2C:  MOV.W           R11, #9; jumptable 000E6CF8 case 116
E6D30:  B               loc_E6C58
E6D32:  MOV             R0, R4; jumptable 000E6CF8 case 117
E6D34:  BL              sub_E73C0
E6D38:  MOV             R11, R0
E6D3A:  ADDS            R0, #1
E6D3C:  BEQ.W           loc_E6ED2
E6D40:  MOVW            R0, #0x3FF
E6D44:  BIC.W           R0, R11, R0
E6D48:  CMP.W           R0, #0xD800
E6D4C:  BNE             loc_E6DD0
E6D4E:  MOV             R0, R4
E6D50:  BL              sub_E71D0
E6D54:  CMP             R0, #0x5C ; '\'
E6D56:  BNE.W           loc_E6ED8
E6D5A:  MOV             R0, R4
E6D5C:  BL              sub_E71D0
E6D60:  CMP             R0, #0x75 ; 'u'
E6D62:  BNE.W           loc_E6ED8
E6D66:  MOV             R0, R4
E6D68:  BL              sub_E73C0
E6D6C:  ADDS            R1, R0, #1
E6D6E:  BEQ.W           loc_E6ED2
E6D72:  MOVW            R1, #0x3FF
E6D76:  BIC.W           R1, R0, R1
E6D7A:  CMP.W           R1, #0xDC00
E6D7E:  BNE.W           loc_E6ED8
E6D82:  ADD.W           R0, R0, R11,LSL#10
E6D86:  SUB.W           R0, R0, #0x35C0000
E6D8A:  SUB.W           R11, R0, #0x3DC00
E6D8E:  MOVS            R0, #0xF0
E6D90:  ORR.W           R0, R0, R11,LSR#18
E6D94:  UXTB            R1, R0
E6D96:  MOV             R0, R5
E6D98:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
E6D9C:  MOVS            R0, #0x80
E6D9E:  ORR.W           R0, R0, R11,LSR#12
E6DA2:  AND.W           R1, R0, #0xBF
E6DA6:  MOV             R0, R5
E6DA8:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
E6DAC:  MOVS            R0, #0x80
E6DAE:  ORR.W           R0, R0, R11,LSR#6
E6DB2:  AND.W           R1, R0, #0xBF
E6DB6:  MOV             R0, R5
E6DB8:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
E6DBC:  MOV             R0, #0x3FFFFFE
E6DC4:  BFI.W           R11, R0, #6, #0x1A
E6DC8:  B               loc_E6C58
E6DCA:  MOV.W           R11, #8
E6DCE:  B               loc_E6C58
E6DD0:  CMP.W           R0, #0xDC00
E6DD4:  BEQ.W           loc_E6EDE
E6DD8:  CMP.W           R11, #0x7F
E6DDC:  BLE.W           loc_E6C58
E6DE0:  MOVS            R0, #0
E6DE2:  CMP.W           R0, R11,LSR#11
E6DE6:  BNE             loc_E6DF2
E6DE8:  MOVS            R0, #0xC0
E6DEA:  ORR.W           R0, R0, R11,LSR#6
E6DEE:  UXTB            R1, R0
E6DF0:  B               loc_E6DB6
E6DF2:  CMP.W           R0, R11,LSR#16
E6DF6:  BNE             loc_E6D8E
E6DF8:  MOVS            R0, #0xE0
E6DFA:  ORR.W           R0, R0, R11,LSR#12
E6DFE:  UXTB            R1, R0
E6E00:  B               loc_E6DA6
E6E02:  LDR             R1, =(aInvalidStringC - 0xE6E08); jumptable 000E6A60 case 1
E6E04:  ADD             R1, PC; "invalid string: control character U+000"...
E6E06:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E08:  LDR             R1, =(aInvalidStringC_0 - 0xE6E0E); jumptable 000E6A60 case 2
E6E0A:  ADD             R1, PC; "invalid string: control character U+000"...
E6E0C:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E0E:  LDR             R1, =(aInvalidStringC_1 - 0xE6E14); jumptable 000E6A60 case 3
E6E10:  ADD             R1, PC; "invalid string: control character U+000"...
E6E12:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E14:  LDR             R1, =(aInvalidStringC_2 - 0xE6E1A); jumptable 000E6A60 case 4
E6E16:  ADD             R1, PC; "invalid string: control character U+000"...
E6E18:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E1A:  LDR             R1, =(aInvalidStringC_3 - 0xE6E20); jumptable 000E6A60 case 5
E6E1C:  ADD             R1, PC; "invalid string: control character U+000"...
E6E1E:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E20:  LDR             R1, =(aInvalidStringC_4 - 0xE6E26); jumptable 000E6A60 case 6
E6E22:  ADD             R1, PC; "invalid string: control character U+000"...
E6E24:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E26:  LDR             R1, =(aInvalidStringC_5 - 0xE6E2C); jumptable 000E6A60 case 7
E6E28:  ADD             R1, PC; "invalid string: control character U+000"...
E6E2A:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E2C:  LDR             R1, =(aInvalidStringC_6 - 0xE6E32); jumptable 000E6A60 case 8
E6E2E:  ADD             R1, PC; "invalid string: control character U+000"...
E6E30:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E32:  LDR             R1, =(aInvalidStringC_7 - 0xE6E38); jumptable 000E6A60 case 9
E6E34:  ADD             R1, PC; "invalid string: control character U+000"...
E6E36:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E38:  LDR             R1, =(aInvalidStringC_8 - 0xE6E3E); jumptable 000E6A60 case 10
E6E3A:  ADD             R1, PC; "invalid string: control character U+000"...
E6E3C:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E3E:  LDR             R1, =(aInvalidStringC_9 - 0xE6E44); jumptable 000E6A60 case 11
E6E40:  ADD             R1, PC; "invalid string: control character U+000"...
E6E42:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E44:  LDR             R1, =(aInvalidStringC_10 - 0xE6E4A); jumptable 000E6A60 case 12
E6E46:  ADD             R1, PC; "invalid string: control character U+000"...
E6E48:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E4A:  LDR             R1, =(aInvalidStringC_11 - 0xE6E50); jumptable 000E6A60 case 13
E6E4C:  ADD             R1, PC; "invalid string: control character U+000"...
E6E4E:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E50:  LDR             R1, =(aInvalidStringC_12 - 0xE6E56); jumptable 000E6A60 case 14
E6E52:  ADD             R1, PC; "invalid string: control character U+000"...
E6E54:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E56:  LDR             R1, =(aInvalidStringC_13 - 0xE6E5C); jumptable 000E6A60 case 15
E6E58:  ADD             R1, PC; "invalid string: control character U+000"...
E6E5A:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E5C:  LDR             R1, =(aInvalidStringC_14 - 0xE6E62); jumptable 000E6A60 case 16
E6E5E:  ADD             R1, PC; "invalid string: control character U+000"...
E6E60:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E62:  LDR             R1, =(aInvalidStringC_15 - 0xE6E68); jumptable 000E6A60 case 17
E6E64:  ADD             R1, PC; "invalid string: control character U+001"...
E6E66:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E68:  LDR             R1, =(aInvalidStringC_16 - 0xE6E6E); jumptable 000E6A60 case 18
E6E6A:  ADD             R1, PC; "invalid string: control character U+001"...
E6E6C:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E6E:  LDR             R1, =(aInvalidStringC_17 - 0xE6E74); jumptable 000E6A60 case 19
E6E70:  ADD             R1, PC; "invalid string: control character U+001"...
E6E72:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E74:  LDR             R1, =(aInvalidStringC_18 - 0xE6E7A); jumptable 000E6A60 case 20
E6E76:  ADD             R1, PC; "invalid string: control character U+001"...
E6E78:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E7A:  LDR             R1, =(aInvalidStringC_19 - 0xE6E80); jumptable 000E6A60 case 21
E6E7C:  ADD             R1, PC; "invalid string: control character U+001"...
E6E7E:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E80:  LDR             R1, =(aInvalidStringC_20 - 0xE6E86); jumptable 000E6A60 case 22
E6E82:  ADD             R1, PC; "invalid string: control character U+001"...
E6E84:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E86:  LDR             R1, =(aInvalidStringC_21 - 0xE6E8C); jumptable 000E6A60 case 23
E6E88:  ADD             R1, PC; "invalid string: control character U+001"...
E6E8A:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E8C:  LDR             R1, =(aInvalidStringC_22 - 0xE6E92); jumptable 000E6A60 case 24
E6E8E:  ADD             R1, PC; "invalid string: control character U+001"...
E6E90:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E92:  LDR             R1, =(aInvalidStringC_23 - 0xE6E98); jumptable 000E6A60 case 25
E6E94:  ADD             R1, PC; "invalid string: control character U+001"...
E6E96:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E98:  LDR             R1, =(aInvalidStringC_24 - 0xE6E9E); jumptable 000E6A60 case 26
E6E9A:  ADD             R1, PC; "invalid string: control character U+001"...
E6E9C:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6E9E:  LDR             R1, =(aInvalidStringC_25 - 0xE6EA4); jumptable 000E6A60 case 27
E6EA0:  ADD             R1, PC; "invalid string: control character U+001"...
E6EA2:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6EA4:  LDR             R1, =(aInvalidStringC_26 - 0xE6EAA); jumptable 000E6A60 case 28
E6EA6:  ADD             R1, PC; "invalid string: control character U+001"...
E6EA8:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6EAA:  LDR             R1, =(aInvalidStringC_27 - 0xE6EB0); jumptable 000E6A60 case 29
E6EAC:  ADD             R1, PC; "invalid string: control character U+001"...
E6EAE:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6EB0:  LDR             R1, =(aInvalidStringC_28 - 0xE6EB6); jumptable 000E6A60 case 30
E6EB2:  ADD             R1, PC; "invalid string: control character U+001"...
E6EB4:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6EB6:  LDR             R1, =(aInvalidStringC_29 - 0xE6EBC); jumptable 000E6A60 case 31
E6EB8:  ADD             R1, PC; "invalid string: control character U+001"...
E6EBA:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6EBC:  LDR             R1, =(aInvalidStringC_30 - 0xE6EC2); jumptable 000E6A60 case 32
E6EBE:  ADD             R1, PC; "invalid string: control character U+001"...
E6EC0:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6EC2:  LDR             R1, =(aInvalidStringI - 0xE6EC8); jumptable 000E6A60 default case, cases 129-194
E6EC4:  ADD             R1, PC; "invalid string: ill-formed UTF-8 byte"
E6EC6:  STR             R1, [R4,#0x38]; jumptable 000E6A60 case 0
E6EC8:  MOVS            R0, #0xE
E6ECA:  ADD             SP, SP, #0x1C; jumptable 000E6A60 case 35
E6ECC:  POP.W           {R8-R11}
E6ED0:  POP             {R4-R7,PC}
E6ED2:  LDR             R1, =(aInvalidStringU - 0xE6ED8); "invalid string: '\\u' must be followed "... ...
E6ED4:  ADD             R1, PC; "invalid string: '\\u' must be followed "...
E6ED6:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6ED8:  LDR             R1, =(aInvalidStringS - 0xE6EDE); "invalid string: surrogate U+D800..U+DBF"... ...
E6EDA:  ADD             R1, PC; "invalid string: surrogate U+D800..U+DBF"...
E6EDC:  B               loc_E6EC6; jumptable 000E6A60 case 0
E6EDE:  LDR             R1, =(aInvalidStringS_0 - 0xE6EE4); "invalid string: surrogate U+DC00..U+DFF"... ...
E6EE0:  ADD             R1, PC; "invalid string: surrogate U+DC00..U+DFF"...
E6EE2:  B               loc_E6EC6; jumptable 000E6A60 case 0
