; =========================================================
; Game Engine Function: sub_2579C4
; Address            : 0x2579C4 - 0x2583D8
; =========================================================

2579C4:  PUSH            {R4-R7,LR}
2579C6:  ADD             R7, SP, #0xC
2579C8:  PUSH.W          {R8-R11}
2579CC:  SUB             SP, SP, #0x14
2579CE:  MOV             R8, R1
2579D0:  MOV             R5, R2
2579D2:  LDR.W           R4, [R8,#0x88]
2579D6:  MOV             R6, R3
2579D8:  MOV             R9, R0
2579DA:  CMP.W           R5, #0xC000
2579DE:  BGE             loc_257A64
2579E0:  MOVW            R0, #0x1001
2579E4:  SUBS            R0, R5, R0
2579E6:  CMP             R0, #0x32 ; '2'; switch 51 cases
2579E8:  BHI.W           def_2579EC; jumptable 002579EC default case
2579EC:  TBH.W           [PC,R0,LSL#1]; switch jump
2579F0:  DCW 0x33; jump table for switch statement
2579F2:  DCW 0x33
2579F4:  DCW 0x145
2579F6:  DCW 0x78
2579F8:  DCW 0x78
2579FA:  DCW 0x78
2579FC:  DCW 0x1A4
2579FE:  DCW 0x145
257A00:  DCW 0x1AA
257A02:  DCW 0x145
257A04:  DCW 0x145
257A06:  DCW 0x145
257A08:  DCW 0x145
257A0A:  DCW 0x145
257A0C:  DCW 0x145
257A0E:  DCW 0x59
257A10:  DCW 0x145
257A12:  DCW 0x145
257A14:  DCW 0x145
257A16:  DCW 0x145
257A18:  DCW 0x59
257A1A:  DCW 0x59
257A1C:  DCW 0x145
257A1E:  DCW 0x145
257A20:  DCW 0x145
257A22:  DCW 0x145
257A24:  DCW 0x145
257A26:  DCW 0x145
257A28:  DCW 0x145
257A2A:  DCW 0x145
257A2C:  DCW 0x145
257A2E:  DCW 0x33
257A30:  DCW 0x33
257A32:  DCW 0x145
257A34:  DCW 0x33
257A36:  DCW 0x92
257A38:  DCW 0x92
257A3A:  DCW 0x92
257A3C:  DCW 0x59
257A3E:  DCW 0x145
257A40:  DCW 0x145
257A42:  DCW 0x145
257A44:  DCW 0x145
257A46:  DCW 0x145
257A48:  DCW 0x145
257A4A:  DCW 0x145
257A4C:  DCW 0x145
257A4E:  DCW 0x145
257A50:  DCW 0xFC
257A52:  DCW 0xFC
257A54:  DCW 0x1BA
257A56:  VLDR            S0, [R6]; jumptable 002579EC cases 0,1,31,32,34
257A5A:  VCVT.F32.S32    S0, S0
257A5E:  VSTR            S0, [SP,#0x30+var_28]
257A62:  B               loc_257B04
257A64:  SUB.W           R0, R5, #0x20000; switch 8 cases
257A68:  SUBS            R0, #5
257A6A:  CMP             R0, #7
257A6C:  BHI.W           def_257A70; jumptable 00257A70 default case
257A70:  TBH.W           [PC,R0,LSL#1]; switch jump
257A74:  DCW 8; jump table for switch statement
257A76:  DCW 0x135
257A78:  DCW 0x103
257A7A:  DCW 0x103
257A7C:  DCW 0x103
257A7E:  DCW 0x150
257A80:  DCW 0x156
257A82:  DCW 0x15C
257A84:  LDR             R1, [R6]; jumptable 00257A70 case 131077
257A86:  CMP             R1, #0
257A88:  BEQ.W           loc_257EE4
257A8C:  ADD.W           R0, R4, #0x88
257A90:  BLX             j_LookupUIntMapKey
257A94:  MOV             R5, R0
257A96:  CMP             R5, #0
257A98:  BEQ.W           loc_2580D8
257A9C:  LDR.W           R4, [R8,#0x88]
257AA0:  B               loc_257EE6
257AA2:  LDR.W           R0, =(TrapALError_ptr - 0x257AAA); jumptable 002579EC cases 15,20,21,38
257AA6:  ADD             R0, PC; TrapALError_ptr
257AA8:  LDR             R0, [R0]; TrapALError
257AAA:  LDRB            R0, [R0]
257AAC:  CMP             R0, #0
257AAE:  ITT NE
257AB0:  MOVNE           R0, #5; sig
257AB2:  BLXNE           raise
257AB6:  LDREX.W         R0, [R8,#0x50]
257ABA:  CMP             R0, #0
257ABC:  BNE.W           loc_258256
257AC0:  ADD.W           R0, R8, #0x50 ; 'P'
257AC4:  MOVW            R1, #0xA004
257AC8:  DMB.W           ISH
257ACC:  STREX.W         R2, R1, [R0]
257AD0:  CMP             R2, #0
257AD2:  BEQ.W           loc_25825A
257AD6:  LDREX.W         R2, [R0]
257ADA:  CMP             R2, #0
257ADC:  BEQ             loc_257ACC
257ADE:  B               loc_258256
257AE0:  VLDR            S0, [R6]; jumptable 002579EC cases 3-5
257AE4:  VCVT.F32.S32    S0, S0
257AE8:  VSTR            S0, [SP,#0x30+var_28]
257AEC:  VLDR            S0, [R6,#4]
257AF0:  VCVT.F32.S32    S0, S0
257AF4:  VSTR            S0, [SP,#0x30+var_24]
257AF8:  VLDR            S0, [R6,#8]
257AFC:  VCVT.F32.S32    S0, S0
257B00:  VSTR            S0, [SP,#0x30+var_20]
257B04:  ADD             R3, SP, #0x30+var_28
257B06:  MOV             R0, R9
257B08:  MOV             R1, R8
257B0A:  MOV             R2, R5
257B0C:  BL              sub_256840
257B10:  B.W             loc_2583D0
257B14:  LDR             R0, [R6]; jumptable 002579EC cases 35-37
257B16:  CMP.W           R0, #0xFFFFFFFF
257B1A:  BLE.W           loc_257C3C
257B1E:  MOV             R10, #0x161AC
257B26:  LDR.W           R0, [R4,R10]
257B2A:  LDR             R1, [R0,#0x2C]
257B2C:  MOV             R0, R4
257B2E:  BLX             R1
257B30:  STR.W           R5, [R9,#0x78]
257B34:  MOVW            R1, #0x1012
257B38:  LDR             R0, [R6]
257B3A:  VMOV            S0, R0
257B3E:  VCVT.F64.S32    D16, S0
257B42:  LDR.W           R0, [R9,#0x80]
257B46:  CMP             R0, R1
257B48:  VSTR            D16, [R9,#0x70]
257B4C:  BEQ             loc_257B5C
257B4E:  LDR.W           R0, [R9,#0x80]
257B52:  MOVW            R1, #0x1013
257B56:  CMP             R0, R1
257B58:  BNE.W           loc_2583C2
257B5C:  LDR.W           R0, [R8,#0x6C]
257B60:  CMP             R0, #0
257B62:  BNE.W           loc_2583C2
257B66:  MOV             R0, R9
257B68:  BLX             j_ApplyOffset
257B6C:  CMP             R0, #0
257B6E:  BNE.W           loc_2583C2
257B72:  LDR.W           R0, [R8,#0x88]
257B76:  LDR.W           R1, [R0,R10]
257B7A:  LDR             R1, [R1,#0x30]
257B7C:  BLX             R1
257B7E:  LDR.W           R0, =(TrapALError_ptr - 0x257B86)
257B82:  ADD             R0, PC; TrapALError_ptr
257B84:  LDR             R0, [R0]; TrapALError
257B86:  LDRB            R0, [R0]
257B88:  CMP             R0, #0
257B8A:  ITT NE
257B8C:  MOVNE           R0, #5; sig
257B8E:  BLXNE           raise
257B92:  LDREX.W         R0, [R8,#0x50]
257B96:  CMP             R0, #0
257B98:  BNE.W           loc_25820A
257B9C:  ADD.W           R0, R8, #0x50 ; 'P'
257BA0:  MOVW            R1, #0xA003
257BA4:  DMB.W           ISH
257BA8:  STREX.W         R2, R1, [R0]
257BAC:  CMP             R2, #0
257BAE:  BEQ.W           loc_25820E
257BB2:  LDREX.W         R2, [R0]
257BB6:  CMP             R2, #0
257BB8:  BEQ             loc_257BA8
257BBA:  B               loc_25820A
257BBC:  CMP.W           R5, #0xC000; jumptable 00257A70 default case
257BC0:  BEQ.W           loc_257A56; jumptable 002579EC cases 0,1,31,32,34
257BC4:  CMP.W           R5, #0xD000
257BC8:  BNE             loc_257C7A; jumptable 002579EC cases 2,7,9-14,16-19,22-30,33,39-47
257BCA:  LDR             R0, [R6]
257BCC:  MOVW            R1, #0xD001
257BD0:  SUBS            R1, R0, R1
257BD2:  CMP             R1, #6
257BD4:  BCS.W           loc_25814C
257BD8:  STR.W           R0, [R9,#0x50]
257BDC:  LDRB.W          R0, [R8,#0x5C]
257BE0:  CMP             R0, #0
257BE2:  BNE.W           loc_2580CC
257BE6:  B               loc_2583CE
257BE8:  LDR.W           R0, =(TrapALError_ptr - 0x257BF0); jumptable 002579EC cases 48,49
257BEC:  ADD             R0, PC; TrapALError_ptr
257BEE:  LDR             R0, [R0]; TrapALError
257BF0:  LDRB            R0, [R0]
257BF2:  CMP             R0, #0
257BF4:  ITT NE
257BF6:  MOVNE           R0, #5; sig
257BF8:  BLXNE           raise
257BFC:  LDREX.W         R0, [R8,#0x50]
257C00:  CMP             R0, #0
257C02:  BNE.W           loc_258256
257C06:  ADD.W           R0, R8, #0x50 ; 'P'
257C0A:  MOVW            R1, #0xA004
257C0E:  DMB.W           ISH
257C12:  STREX.W         R2, R1, [R0]
257C16:  CMP             R2, #0
257C18:  BEQ.W           loc_25825A
257C1C:  LDREX.W         R2, [R0]
257C20:  CMP             R2, #0
257C22:  BEQ             loc_257C12
257C24:  B               loc_258256
257C26:  MOVW            R0, #0x202; jumptable 002579EC default case
257C2A:  CMP             R5, R0
257C2C:  BNE             loc_257C7A; jumptable 002579EC cases 2,7,9-14,16-19,22-30,33,39-47
257C2E:  LDR             R0, [R6]
257C30:  CMP             R0, #2
257C32:  BCS.W           loc_257EA6
257C36:  STRB.W          R0, [R9,#0x4C]
257C3A:  B               loc_2580CC
257C3C:  LDR.W           R0, =(TrapALError_ptr - 0x257C44)
257C40:  ADD             R0, PC; TrapALError_ptr
257C42:  LDR             R0, [R0]; TrapALError
257C44:  LDRB            R0, [R0]
257C46:  CMP             R0, #0
257C48:  ITT NE
257C4A:  MOVNE           R0, #5; sig
257C4C:  BLXNE           raise
257C50:  LDREX.W         R0, [R8,#0x50]
257C54:  CMP             R0, #0
257C56:  BNE.W           loc_25820A
257C5A:  ADD.W           R0, R8, #0x50 ; 'P'
257C5E:  MOVW            R1, #0xA003
257C62:  DMB.W           ISH
257C66:  STREX.W         R2, R1, [R0]
257C6A:  CMP             R2, #0
257C6C:  BEQ.W           loc_25820E
257C70:  LDREX.W         R2, [R0]
257C74:  CMP             R2, #0
257C76:  BEQ             loc_257C66
257C78:  B               loc_25820A
257C7A:  LDR.W           R0, =(LogLevel_ptr - 0x257C82); jumptable 002579EC cases 2,7,9-14,16-19,22-30,33,39-47
257C7E:  ADD             R0, PC; LogLevel_ptr
257C80:  LDR             R0, [R0]; LogLevel
257C82:  LDR             R0, [R0]
257C84:  CBZ             R0, loc_257C9C
257C86:  LDR.W           R0, =(aEe - 0x257C98); "(EE)"
257C8A:  ADR.W           R1, aSetsourceiv; "SetSourceiv"
257C8E:  LDR.W           R2, =(aUnexpectedProp - 0x257C9A); "Unexpected property: 0x%04x\n"
257C92:  MOV             R3, R5
257C94:  ADD             R0, PC; "(EE)"
257C96:  ADD             R2, PC; "Unexpected property: 0x%04x\n"
257C98:  BLX             j_al_print
257C9C:  LDR.W           R0, =(TrapALError_ptr - 0x257CA4)
257CA0:  ADD             R0, PC; TrapALError_ptr
257CA2:  LDR             R0, [R0]; TrapALError
257CA4:  LDRB            R0, [R0]
257CA6:  CMP             R0, #0
257CA8:  ITT NE
257CAA:  MOVNE           R0, #5; sig
257CAC:  BLXNE           raise
257CB0:  LDREX.W         R0, [R8,#0x50]
257CB4:  CBNZ            R0, loc_257CD0
257CB6:  ADD.W           R0, R8, #0x50 ; 'P'
257CBA:  MOVW            R1, #0xA002
257CBE:  DMB.W           ISH
257CC2:  STREX.W         R2, R1, [R0]
257CC6:  CBZ             R2, loc_257CD4
257CC8:  LDREX.W         R2, [R0]
257CCC:  CMP             R2, #0
257CCE:  BEQ             loc_257CC2
257CD0:  CLREX.W
257CD4:  DMB.W           ISH
257CD8:  MOVW            R0, #0xA002
257CDC:  B               loc_2583D0
257CDE:  MOV             R10, #0x161AC; jumptable 00257A70 case 131078
257CE6:  LDR.W           R0, [R4,R10]
257CEA:  LDR             R1, [R0,#0x2C]
257CEC:  MOV             R0, R4
257CEE:  BLX             R1
257CF0:  LDR             R0, [R4,#0x3C]
257CF2:  LDR             R1, [R6,#4]
257CF4:  CMP             R1, R0
257CF6:  BCS.W           loc_2581CA
257CFA:  LDR             R1, [R6]
257CFC:  CMP             R1, #0
257CFE:  BEQ.W           loc_2581B2
257D02:  ADD.W           R0, R8, #0x2C ; ','
257D06:  BLX             j_LookupUIntMapKey
257D0A:  MOV             R5, R0
257D0C:  CMP             R5, #0
257D0E:  BNE.W           loc_2581B4
257D12:  B               loc_2581CA
257D14:  LDR             R0, [R6]; jumptable 00257A70 case 131082
257D16:  CMP             R0, #2
257D18:  BCS             loc_257D70
257D1A:  STRB.W          R0, [R9,#0x55]
257D1E:  B               loc_2580CC
257D20:  LDR             R0, [R6]; jumptable 00257A70 case 131083
257D22:  CMP             R0, #2
257D24:  BCS             loc_257DAE
257D26:  STRB.W          R0, [R9,#0x56]
257D2A:  B               loc_2580CC
257D2C:  LDR             R0, [R6]; jumptable 00257A70 case 131084
257D2E:  CMP             R0, #2
257D30:  BCS             loc_257DEC
257D32:  STRB.W          R0, [R9,#0x57]
257D36:  B               loc_2580CC
257D38:  LDR             R0, [R6]; jumptable 002579EC case 6
257D3A:  CMP             R0, #2
257D3C:  BCS             loc_257E2A
257D3E:  STRB.W          R0, [R9,#0x4D]
257D42:  B               loc_2583CE
257D44:  LDR             R1, [R6]; jumptable 002579EC case 8
257D46:  CMP             R1, #0
257D48:  BEQ.W           loc_257F08
257D4C:  ADD.W           R0, R4, #0x40 ; '@'
257D50:  BLX             j_LookupUIntMapKey
257D54:  MOV             R11, R0
257D56:  CMP.W           R11, #0
257D5A:  BEQ.W           loc_258114
257D5E:  LDR.W           R4, [R8,#0x88]
257D62:  B               loc_257F0C
257D64:  LDR             R0, [R6]; jumptable 002579EC case 50
257D66:  CMP             R0, #2
257D68:  BCS             loc_257E68
257D6A:  STRB.W          R0, [R9,#0x54]
257D6E:  B               loc_2580CC
257D70:  LDR.W           R0, =(TrapALError_ptr - 0x257D78)
257D74:  ADD             R0, PC; TrapALError_ptr
257D76:  LDR             R0, [R0]; TrapALError
257D78:  LDRB            R0, [R0]
257D7A:  CMP             R0, #0
257D7C:  ITT NE
257D7E:  MOVNE           R0, #5; sig
257D80:  BLXNE           raise
257D84:  LDREX.W         R0, [R8,#0x50]
257D88:  CMP             R0, #0
257D8A:  BNE.W           loc_25820A
257D8E:  ADD.W           R0, R8, #0x50 ; 'P'
257D92:  MOVW            R1, #0xA003
257D96:  DMB.W           ISH
257D9A:  STREX.W         R2, R1, [R0]
257D9E:  CMP             R2, #0
257DA0:  BEQ.W           loc_25820E
257DA4:  LDREX.W         R2, [R0]
257DA8:  CMP             R2, #0
257DAA:  BEQ             loc_257D9A
257DAC:  B               loc_25820A
257DAE:  LDR.W           R0, =(TrapALError_ptr - 0x257DB6)
257DB2:  ADD             R0, PC; TrapALError_ptr
257DB4:  LDR             R0, [R0]; TrapALError
257DB6:  LDRB            R0, [R0]
257DB8:  CMP             R0, #0
257DBA:  ITT NE
257DBC:  MOVNE           R0, #5; sig
257DBE:  BLXNE           raise
257DC2:  LDREX.W         R0, [R8,#0x50]
257DC6:  CMP             R0, #0
257DC8:  BNE.W           loc_25820A
257DCC:  ADD.W           R0, R8, #0x50 ; 'P'
257DD0:  MOVW            R1, #0xA003
257DD4:  DMB.W           ISH
257DD8:  STREX.W         R2, R1, [R0]
257DDC:  CMP             R2, #0
257DDE:  BEQ.W           loc_25820E
257DE2:  LDREX.W         R2, [R0]
257DE6:  CMP             R2, #0
257DE8:  BEQ             loc_257DD8
257DEA:  B               loc_25820A
257DEC:  LDR.W           R0, =(TrapALError_ptr - 0x257DF4)
257DF0:  ADD             R0, PC; TrapALError_ptr
257DF2:  LDR             R0, [R0]; TrapALError
257DF4:  LDRB            R0, [R0]
257DF6:  CMP             R0, #0
257DF8:  ITT NE
257DFA:  MOVNE           R0, #5; sig
257DFC:  BLXNE           raise
257E00:  LDREX.W         R0, [R8,#0x50]
257E04:  CMP             R0, #0
257E06:  BNE.W           loc_25820A
257E0A:  ADD.W           R0, R8, #0x50 ; 'P'
257E0E:  MOVW            R1, #0xA003
257E12:  DMB.W           ISH
257E16:  STREX.W         R2, R1, [R0]
257E1A:  CMP             R2, #0
257E1C:  BEQ.W           loc_25820E
257E20:  LDREX.W         R2, [R0]
257E24:  CMP             R2, #0
257E26:  BEQ             loc_257E16
257E28:  B               loc_25820A
257E2A:  LDR.W           R0, =(TrapALError_ptr - 0x257E32)
257E2E:  ADD             R0, PC; TrapALError_ptr
257E30:  LDR             R0, [R0]; TrapALError
257E32:  LDRB            R0, [R0]
257E34:  CMP             R0, #0
257E36:  ITT NE
257E38:  MOVNE           R0, #5; sig
257E3A:  BLXNE           raise
257E3E:  LDREX.W         R0, [R8,#0x50]
257E42:  CMP             R0, #0
257E44:  BNE.W           loc_25820A
257E48:  ADD.W           R0, R8, #0x50 ; 'P'
257E4C:  MOVW            R1, #0xA003
257E50:  DMB.W           ISH
257E54:  STREX.W         R2, R1, [R0]
257E58:  CMP             R2, #0
257E5A:  BEQ.W           loc_25820E
257E5E:  LDREX.W         R2, [R0]
257E62:  CMP             R2, #0
257E64:  BEQ             loc_257E54
257E66:  B               loc_25820A
257E68:  LDR.W           R0, =(TrapALError_ptr - 0x257E70)
257E6C:  ADD             R0, PC; TrapALError_ptr
257E6E:  LDR             R0, [R0]; TrapALError
257E70:  LDRB            R0, [R0]
257E72:  CMP             R0, #0
257E74:  ITT NE
257E76:  MOVNE           R0, #5; sig
257E78:  BLXNE           raise
257E7C:  LDREX.W         R0, [R8,#0x50]
257E80:  CMP             R0, #0
257E82:  BNE.W           loc_25820A
257E86:  ADD.W           R0, R8, #0x50 ; 'P'
257E8A:  MOVW            R1, #0xA003
257E8E:  DMB.W           ISH
257E92:  STREX.W         R2, R1, [R0]
257E96:  CMP             R2, #0
257E98:  BEQ.W           loc_25820E
257E9C:  LDREX.W         R2, [R0]
257EA0:  CMP             R2, #0
257EA2:  BEQ             loc_257E92
257EA4:  B               loc_25820A
257EA6:  LDR.W           R0, =(TrapALError_ptr - 0x257EAE)
257EAA:  ADD             R0, PC; TrapALError_ptr
257EAC:  LDR             R0, [R0]; TrapALError
257EAE:  LDRB            R0, [R0]
257EB0:  CMP             R0, #0
257EB2:  ITT NE
257EB4:  MOVNE           R0, #5; sig
257EB6:  BLXNE           raise
257EBA:  LDREX.W         R0, [R8,#0x50]
257EBE:  CMP             R0, #0
257EC0:  BNE.W           loc_25820A
257EC4:  ADD.W           R0, R8, #0x50 ; 'P'
257EC8:  MOVW            R1, #0xA003
257ECC:  DMB.W           ISH
257ED0:  STREX.W         R2, R1, [R0]
257ED4:  CMP             R2, #0
257ED6:  BEQ.W           loc_25820E
257EDA:  LDREX.W         R2, [R0]
257EDE:  CMP             R2, #0
257EE0:  BEQ             loc_257ED0
257EE2:  B               loc_25820A
257EE4:  MOVS            R5, #0
257EE6:  MOV             R6, #0x161AC
257EEE:  LDR             R0, [R4,R6]
257EF0:  LDR             R1, [R0,#0x2C]
257EF2:  MOV             R0, R4
257EF4:  BLX             R1
257EF6:  CMP             R5, #0
257EF8:  BEQ.W           loc_2580B2
257EFC:  LDR             R0, [R5,#4]
257EFE:  STR.W           R0, [R9,#0xA4]
257F02:  VLDR            S0, [R5,#8]
257F06:  B               loc_2580BE
257F08:  MOV.W           R11, #0
257F0C:  MOV             R6, #0x161AC
257F14:  LDR             R0, [R4,R6]
257F16:  LDR             R1, [R0,#0x2C]
257F18:  MOV             R0, R4
257F1A:  BLX             R1
257F1C:  LDR.W           R0, [R9,#0x80]
257F20:  MOVW            R1, #0x1014
257F24:  CMP             R0, R1
257F26:  BEQ             loc_257F36
257F28:  LDR.W           R0, [R9,#0x80]
257F2C:  MOVW            R1, #0x1011
257F30:  CMP             R0, R1
257F32:  BNE.W           loc_258218
257F36:  MOVS            R5, #0
257F38:  CMP.W           R11, #0
257F3C:  STRD.W          R5, R5, [R9,#0x94]
257F40:  BEQ.W           loc_25818A
257F44:  MOVW            R0, #0x1028
257F48:  STR.W           R0, [R9,#0x7C]
257F4C:  MOVS            R0, #0xC; byte_count
257F4E:  BLX             malloc
257F52:  ADD.W           R1, R11, #0x2C ; ','
257F56:  STRD.W          R11, R5, [R0]
257F5A:  STR             R5, [R0,#8]
257F5C:  DMB.W           ISH
257F60:  LDREX.W         R2, [R1]
257F64:  ADDS            R2, #1
257F66:  STREX.W         R3, R2, [R1]
257F6A:  CMP             R3, #0
257F6C:  BNE             loc_257F60
257F6E:  ADD.W           R1, R9, #0x90
257F72:  DMB.W           ISH
257F76:  DMB.W           ISH
257F7A:  LDREX.W         R4, [R1]
257F7E:  STREX.W         R2, R0, [R1]
257F82:  CMP             R2, #0
257F84:  BNE             loc_257F7A
257F86:  MOVS            R0, #1
257F88:  ADD.W           R5, R11, #0x3C ; '<'
257F8C:  DMB.W           ISH
257F90:  STR.W           R0, [R9,#0x94]
257F94:  DMB.W           ISH
257F98:  LDREX.W         R1, [R5]
257F9C:  STREX.W         R2, R0, [R5]
257FA0:  CMP             R2, #0
257FA2:  BNE             loc_257F98
257FA4:  CMP             R1, #1
257FA6:  DMB.W           ISH
257FAA:  BNE             loc_257FCA
257FAC:  MOVS            R6, #1
257FAE:  BLX             sched_yield
257FB2:  DMB.W           ISH
257FB6:  LDREX.W         R0, [R5]
257FBA:  STREX.W         R1, R6, [R5]
257FBE:  CMP             R1, #0
257FC0:  BNE             loc_257FB6
257FC2:  CMP             R0, #1
257FC4:  DMB.W           ISH
257FC8:  BEQ             loc_257FAE
257FCA:  ADD.W           R10, R11, #0x38 ; '8'
257FCE:  MOVS            R1, #1
257FD0:  DMB.W           ISH
257FD4:  LDREX.W         R0, [R10]
257FD8:  STREX.W         R2, R1, [R10]
257FDC:  CMP             R2, #0
257FDE:  BNE             loc_257FD4
257FE0:  CMP             R0, #1
257FE2:  DMB.W           ISH
257FE6:  BNE             loc_258006
257FE8:  MOVS            R6, #1
257FEA:  BLX             sched_yield
257FEE:  DMB.W           ISH
257FF2:  LDREX.W         R0, [R10]
257FF6:  STREX.W         R1, R6, [R10]
257FFA:  CMP             R1, #0
257FFC:  BNE             loc_257FF2
257FFE:  CMP             R0, #1
258000:  DMB.W           ISH
258004:  BEQ             loc_257FEA
258006:  ADD.W           R6, R11, #0x30 ; '0'
25800A:  STR.W           R8, [SP,#0x30+var_30]
25800E:  DMB.W           ISH
258012:  STR.W           R11, [SP,#0x30+var_2C]
258016:  LDREX.W         R0, [R6]
25801A:  ADDS            R1, R0, #1
25801C:  STREX.W         R2, R1, [R6]
258020:  CMP             R2, #0
258022:  BNE             loc_258016
258024:  CMP             R0, #0
258026:  DMB.W           ISH
25802A:  BNE             loc_25806C
25802C:  DMB.W           ISH
258030:  MOVS            R1, #1
258032:  LDR             R0, [SP,#0x30+var_2C]
258034:  ADD.W           R11, R0, #0x40 ; '@'
258038:  LDREX.W         R0, [R11]
25803C:  STREX.W         R2, R1, [R11]
258040:  CMP             R2, #0
258042:  BNE             loc_258038
258044:  CMP             R0, #1
258046:  DMB.W           ISH
25804A:  BNE             loc_25806C
25804C:  MOV.W           R8, #1
258050:  BLX             sched_yield
258054:  DMB.W           ISH
258058:  LDREX.W         R0, [R11]
25805C:  STREX.W         R1, R8, [R11]
258060:  CMP             R1, #0
258062:  BNE             loc_258058
258064:  CMP             R0, #1
258066:  DMB.W           ISH
25806A:  BEQ             loc_258050
25806C:  MOVS            R0, #0
25806E:  DMB.W           ISH
258072:  LDREX.W         R1, [R10]
258076:  STREX.W         R1, R0, [R10]
25807A:  CMP             R1, #0
25807C:  BNE             loc_258072
25807E:  DMB.W           ISH
258082:  MOVS            R0, #0
258084:  DMB.W           ISH
258088:  LDRD.W          R8, R3, [SP,#0x30+var_30]
25808C:  LDREX.W         R1, [R5]
258090:  STREX.W         R1, R0, [R5]
258094:  CMP             R1, #0
258096:  BNE             loc_25808C
258098:  DMB.W           ISH
25809C:  LDR             R0, [R3,#0x10]
25809E:  SUB.W           R0, R0, #0x1500
2580A2:  CMP             R0, #6
2580A4:  BHI.W           loc_258264
2580A8:  LDR             R1, =(unk_60A680 - 0x2580AE)
2580AA:  ADD             R1, PC; unk_60A680
2580AC:  LDR.W           R0, [R1,R0,LSL#2]
2580B0:  B               loc_258266
2580B2:  MOV.W           R0, #0x3F800000
2580B6:  VMOV.F32        S0, #1.0
2580BA:  STR.W           R0, [R9,#0xA4]
2580BE:  VSTR            S0, [R9,#0xA8]
2580C2:  LDR.W           R0, [R8,#0x88]
2580C6:  LDR             R1, [R0,R6]
2580C8:  LDR             R1, [R1,#0x30]
2580CA:  BLX             R1
2580CC:  MOV.W           R0, #0x5980
2580D0:  MOVS            R1, #1
2580D2:  STR.W           R1, [R9,R0]
2580D6:  B               loc_2583CE
2580D8:  LDR             R0, =(TrapALError_ptr - 0x2580DE)
2580DA:  ADD             R0, PC; TrapALError_ptr
2580DC:  LDR             R0, [R0]; TrapALError
2580DE:  LDRB            R0, [R0]
2580E0:  CMP             R0, #0
2580E2:  ITT NE
2580E4:  MOVNE           R0, #5; sig
2580E6:  BLXNE           raise
2580EA:  LDREX.W         R0, [R8,#0x50]
2580EE:  CMP             R0, #0
2580F0:  BNE.W           loc_25820A
2580F4:  ADD.W           R0, R8, #0x50 ; 'P'
2580F8:  MOVW            R1, #0xA003
2580FC:  DMB.W           ISH
258100:  STREX.W         R2, R1, [R0]
258104:  CMP             R2, #0
258106:  BEQ.W           loc_25820E
25810A:  LDREX.W         R2, [R0]
25810E:  CMP             R2, #0
258110:  BEQ             loc_258100
258112:  B               loc_25820A
258114:  LDR             R0, =(TrapALError_ptr - 0x25811A)
258116:  ADD             R0, PC; TrapALError_ptr
258118:  LDR             R0, [R0]; TrapALError
25811A:  LDRB            R0, [R0]
25811C:  CMP             R0, #0
25811E:  ITT NE
258120:  MOVNE           R0, #5; sig
258122:  BLXNE           raise
258126:  LDREX.W         R0, [R8,#0x50]
25812A:  CMP             R0, #0
25812C:  BNE             loc_25820A
25812E:  ADD.W           R0, R8, #0x50 ; 'P'
258132:  MOVW            R1, #0xA003
258136:  DMB.W           ISH
25813A:  STREX.W         R2, R1, [R0]
25813E:  CMP             R2, #0
258140:  BEQ             loc_25820E
258142:  LDREX.W         R2, [R0]
258146:  CMP             R2, #0
258148:  BEQ             loc_25813A
25814A:  B               loc_25820A
25814C:  CMP             R0, #0
25814E:  BEQ.W           loc_257BD8
258152:  LDR             R0, =(TrapALError_ptr - 0x258158)
258154:  ADD             R0, PC; TrapALError_ptr
258156:  LDR             R0, [R0]; TrapALError
258158:  LDRB            R0, [R0]
25815A:  CMP             R0, #0
25815C:  ITT NE
25815E:  MOVNE           R0, #5; sig
258160:  BLXNE           raise
258164:  LDREX.W         R0, [R8,#0x50]
258168:  CMP             R0, #0
25816A:  BNE             loc_25820A
25816C:  ADD.W           R0, R8, #0x50 ; 'P'
258170:  MOVW            R1, #0xA003
258174:  DMB.W           ISH
258178:  STREX.W         R2, R1, [R0]
25817C:  CMP             R2, #0
25817E:  BEQ             loc_25820E
258180:  LDREX.W         R2, [R0]
258184:  CMP             R2, #0
258186:  BEQ             loc_258178
258188:  B               loc_25820A
25818A:  MOVW            R0, #0x1030
25818E:  STR.W           R0, [R9,#0x7C]
258192:  ADD.W           R0, R9, #0x90
258196:  DMB.W           ISH
25819A:  LDREX.W         R4, [R0]
25819E:  STREX.W         R1, R5, [R0]
2581A2:  CMP             R1, #0
2581A4:  BNE             loc_25819A
2581A6:  DMB.W           ISH
2581AA:  CMP             R4, #0
2581AC:  BNE.W           loc_2582E8
2581B0:  B               loc_258312
2581B2:  MOVS            R5, #0
2581B4:  LDR             R1, [R6,#8]
2581B6:  CMP             R1, #0
2581B8:  BEQ.W           loc_25831A
2581BC:  ADD.W           R0, R4, #0x88
2581C0:  BLX             j_LookupUIntMapKey
2581C4:  CMP             R0, #0
2581C6:  BNE.W           loc_25831C
2581CA:  LDR.W           R0, [R8,#0x88]
2581CE:  LDR.W           R1, [R0,R10]
2581D2:  LDR             R1, [R1,#0x30]
2581D4:  BLX             R1
2581D6:  LDR             R0, =(TrapALError_ptr - 0x2581DC)
2581D8:  ADD             R0, PC; TrapALError_ptr
2581DA:  LDR             R0, [R0]; TrapALError
2581DC:  LDRB            R0, [R0]
2581DE:  CMP             R0, #0
2581E0:  ITT NE
2581E2:  MOVNE           R0, #5; sig
2581E4:  BLXNE           raise
2581E8:  LDREX.W         R0, [R8,#0x50]
2581EC:  CMP             R0, #0
2581EE:  BNE             loc_25820A
2581F0:  ADD.W           R0, R8, #0x50 ; 'P'
2581F4:  MOVW            R1, #0xA003
2581F8:  DMB.W           ISH
2581FC:  STREX.W         R2, R1, [R0]
258200:  CBZ             R2, loc_25820E
258202:  LDREX.W         R2, [R0]
258206:  CMP             R2, #0
258208:  BEQ             loc_2581FC
25820A:  CLREX.W
25820E:  DMB.W           ISH
258212:  MOVW            R0, #0xA003
258216:  B               loc_2583D0
258218:  LDR.W           R0, [R8,#0x88]
25821C:  LDR             R1, [R0,R6]
25821E:  LDR             R1, [R1,#0x30]
258220:  BLX             R1
258222:  LDR             R0, =(TrapALError_ptr - 0x258228)
258224:  ADD             R0, PC; TrapALError_ptr
258226:  LDR             R0, [R0]; TrapALError
258228:  LDRB            R0, [R0]
25822A:  CMP             R0, #0
25822C:  ITT NE
25822E:  MOVNE           R0, #5; sig
258230:  BLXNE           raise
258234:  LDREX.W         R0, [R8,#0x50]
258238:  CMP             R0, #0
25823A:  BNE             loc_258256
25823C:  ADD.W           R0, R8, #0x50 ; 'P'
258240:  MOVW            R1, #0xA004
258244:  DMB.W           ISH
258248:  STREX.W         R2, R1, [R0]
25824C:  CBZ             R2, loc_25825A
25824E:  LDREX.W         R2, [R0]
258252:  CMP             R2, #0
258254:  BEQ             loc_258248
258256:  CLREX.W
25825A:  DMB.W           ISH
25825E:  MOVW            R0, #0xA004
258262:  B               loc_2583D0
258264:  MOVS            R0, #0
258266:  STR.W           R0, [R9,#0x9C]
25826A:  LDR             R0, [R3,#0x14]
25826C:  SUB.W           R0, R0, #0x1400
258270:  CMP             R0, #6
258272:  BHI             loc_25827E
258274:  LDR             R1, =(unk_60A580 - 0x25827A)
258276:  ADD             R1, PC; unk_60A580
258278:  LDR.W           R0, [R1,R0,LSL#2]
25827C:  B               loc_258280
25827E:  MOVS            R0, #0
258280:  STR.W           R0, [R9,#0xA0]
258284:  DMB.W           ISH
258288:  LDREX.W         R0, [R6]
25828C:  SUBS            R1, R0, #1
25828E:  STREX.W         R2, R1, [R6]
258292:  CMP             R2, #0
258294:  BNE             loc_258288
258296:  CMP             R0, #1
258298:  DMB.W           ISH
25829C:  BNE             loc_2582B8
25829E:  ADD.W           R0, R3, #0x40 ; '@'
2582A2:  MOVS            R1, #0
2582A4:  DMB.W           ISH
2582A8:  LDREX.W         R2, [R0]
2582AC:  STREX.W         R2, R1, [R0]
2582B0:  CMP             R2, #0
2582B2:  BNE             loc_2582A8
2582B4:  DMB.W           ISH
2582B8:  LDR             R0, =(CalcNonAttnSourceParams_ptr - 0x2582C6)
2582BA:  MOV.W           R2, #0x5980
2582BE:  LDR             R1, =(CalcSourceParams_ptr - 0x2582CA)
2582C0:  MOVS            R6, #1
2582C2:  ADD             R0, PC; CalcNonAttnSourceParams_ptr
2582C4:  LDR             R3, [R3,#0x10]
2582C6:  ADD             R1, PC; CalcSourceParams_ptr
2582C8:  STR.W           R6, [R9,R2]
2582CC:  CMP.W           R3, #0x1500
2582D0:  LDR             R0, [R0]; CalcNonAttnSourceParams
2582D2:  MOV             R6, #0x161AC
2582DA:  IT EQ
2582DC:  LDREQ           R0, [R1]; CalcSourceParams
2582DE:  MOVW            R1, #0x5984
2582E2:  STR.W           R0, [R9,R1]
2582E6:  CBZ             R4, loc_258312
2582E8:  MOV             R0, R4; p
2582EA:  LDRD.W          R1, R4, [R4]
2582EE:  CBZ             R1, loc_258308
2582F0:  ADDS            R1, #0x2C ; ','
2582F2:  DMB.W           ISH
2582F6:  LDREX.W         R2, [R1]
2582FA:  SUBS            R2, #1
2582FC:  STREX.W         R3, R2, [R1]
258300:  CMP             R3, #0
258302:  BNE             loc_2582F6
258304:  DMB.W           ISH
258308:  BLX             free
25830C:  CMP             R4, #0
25830E:  MOV             R0, R4
258310:  BNE             loc_2582EA
258312:  LDR.W           R0, [R8,#0x88]
258316:  LDR             R1, [R0,R6]
258318:  B               loc_2583CA
25831A:  MOVS            R0, #0
25831C:  CBZ             R5, loc_25833A
25831E:  MOVW            R1, #0x20D8
258322:  DMB.W           ISH
258326:  ADD             R1, R5
258328:  LDREX.W         R2, [R1]
25832C:  ADDS            R2, #1
25832E:  STREX.W         R3, R2, [R1]
258332:  CMP             R3, #0
258334:  BNE             loc_258328
258336:  DMB.W           ISH
25833A:  LDR             R1, [R6,#4]
25833C:  DMB.W           ISH
258340:  ADD.W           R1, R1, R1,LSL#1
258344:  ADD.W           R1, R9, R1,LSL#2
258348:  ADD.W           R2, R1, #0xAC
25834C:  LDREX.W         R1, [R2]
258350:  STREX.W         R3, R5, [R2]
258354:  CMP             R3, #0
258356:  BNE             loc_25834C
258358:  CMP             R1, #0
25835A:  DMB.W           ISH
25835E:  BEQ             loc_25837C
258360:  MOVW            R2, #0x20D8
258364:  ADD             R1, R2
258366:  DMB.W           ISH
25836A:  LDREX.W         R2, [R1]
25836E:  SUBS            R2, #1
258370:  STREX.W         R3, R2, [R1]
258374:  CMP             R3, #0
258376:  BNE             loc_25836A
258378:  DMB.W           ISH
25837C:  CBZ             R0, loc_258394
25837E:  LDR             R1, [R6,#4]
258380:  LDR             R2, [R0,#4]
258382:  ADD.W           R1, R1, R1,LSL#1
258386:  ADD.W           R1, R9, R1,LSL#2
25838A:  STR.W           R2, [R1,#0xB0]
25838E:  VLDR            S0, [R0,#8]
258392:  B               loc_2583AA
258394:  LDR             R0, [R6,#4]
258396:  MOV.W           R1, #0x3F800000
25839A:  VMOV.F32        S0, #1.0
25839E:  ADD.W           R0, R0, R0,LSL#1
2583A2:  ADD.W           R0, R9, R0,LSL#2
2583A6:  STR.W           R1, [R0,#0xB0]
2583AA:  LDR             R0, [R6,#4]
2583AC:  MOVS            R1, #1
2583AE:  ADD.W           R0, R0, R0,LSL#1
2583B2:  ADD.W           R0, R9, R0,LSL#2
2583B6:  VSTR            S0, [R0,#0xB4]
2583BA:  MOV.W           R0, #0x5980
2583BE:  STR.W           R1, [R9,R0]
2583C2:  LDR.W           R0, [R8,#0x88]
2583C6:  LDR.W           R1, [R0,R10]
2583CA:  LDR             R1, [R1,#0x30]
2583CC:  BLX             R1
2583CE:  MOVS            R0, #0
2583D0:  ADD             SP, SP, #0x14
2583D2:  POP.W           {R8-R11}
2583D6:  POP             {R4-R7,PC}
