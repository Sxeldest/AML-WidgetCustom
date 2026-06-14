; =========================================================
; Game Engine Function: sub_259AC0
; Address            : 0x259AC0 - 0x259D30
; =========================================================

259AC0:  PUSH            {R4-R7,LR}
259AC2:  ADD             R7, SP, #0xC
259AC4:  PUSH.W          {R8}
259AC8:  SUB             SP, SP, #0x18
259ACA:  MOV             R4, R2
259ACC:  MOV             R8, R3
259ACE:  MOV             R5, R1
259AD0:  MOV             R6, R0
259AD2:  CMP.W           R4, #0xC000
259AD6:  BGE.W           loc_259B72
259ADA:  MOVW            R0, #0x1001
259ADE:  SUBS            R0, R4, R0
259AE0:  CMP             R0, #0x32 ; '2'; switch 51 cases
259AE2:  BHI.W           def_259AE6; jumptable 00259AE6 default case
259AE6:  TBH.W           [PC,R0,LSL#1]; switch jump
259AEA:  DCW 0x33; jump table for switch statement
259AEC:  DCW 0x33
259AEE:  DCW 0xA0
259AF0:  DCW 0x5D
259AF2:  DCW 0x5D
259AF4:  DCW 0x5D
259AF6:  DCW 0xCD
259AF8:  DCW 0xA0
259AFA:  DCW 0xD0
259AFC:  DCW 0xA0
259AFE:  DCW 0xA0
259B00:  DCW 0xA0
259B02:  DCW 0xA0
259B04:  DCW 0xA0
259B06:  DCW 0xA0
259B08:  DCW 0xEE
259B0A:  DCW 0xA0
259B0C:  DCW 0xA0
259B0E:  DCW 0xA0
259B10:  DCW 0xA0
259B12:  DCW 0xF1
259B14:  DCW 0xF4
259B16:  DCW 0xA0
259B18:  DCW 0xA0
259B1A:  DCW 0xA0
259B1C:  DCW 0xA0
259B1E:  DCW 0xA0
259B20:  DCW 0xA0
259B22:  DCW 0xA0
259B24:  DCW 0xA0
259B26:  DCW 0xA0
259B28:  DCW 0x33
259B2A:  DCW 0x33
259B2C:  DCW 0xA0
259B2E:  DCW 0x33
259B30:  DCW 0x33
259B32:  DCW 0x33
259B34:  DCW 0x33
259B36:  DCW 0x102
259B38:  DCW 0xA0
259B3A:  DCW 0xA0
259B3C:  DCW 0xA0
259B3E:  DCW 0xA0
259B40:  DCW 0xA0
259B42:  DCW 0xA0
259B44:  DCW 0xA0
259B46:  DCW 0xA0
259B48:  DCW 0xA0
259B4A:  DCW 0x82
259B4C:  DCW 0x82
259B4E:  DCW 0x104
259B50:  MOV             R3, SP; jumptable 00259AE6 cases 0,1,31,32,34-37
259B52:  MOV             R0, R6
259B54:  MOV             R1, R5
259B56:  MOV             R2, R4
259B58:  BL              sub_258E98
259B5C:  CMP             R0, #0
259B5E:  BNE.W           loc_259D08
259B62:  VLDR            D16, [SP,#0x28+var_28]
259B66:  MOVS            R0, #0
259B68:  VCVT.S32.F64    S0, D16
259B6C:  VSTR            S0, [R8]
259B70:  B               loc_259D08
259B72:  MOVS            R0, #0x20009
259B78:  CMP             R4, R0
259B7A:  BLE             loc_259BDE
259B7C:  MOVS            R0, #0x2000A
259B82:  CMP             R4, R0
259B84:  BEQ.W           loc_259CF8
259B88:  MOVS            R0, #0x2000B
259B8E:  CMP             R4, R0
259B90:  BEQ.W           loc_259CFE
259B94:  MOVS            R0, #0x2000C
259B9A:  CMP             R4, R0
259B9C:  BNE             loc_259C2A; jumptable 00259AE6 cases 2,7,9-14,16-19,22-30,33,39-47
259B9E:  LDRB.W          R0, [R6,#0x57]
259BA2:  B               loc_259D02
259BA4:  MOV             R3, SP; jumptable 00259AE6 cases 3-5
259BA6:  MOV             R0, R6
259BA8:  MOV             R1, R5
259BAA:  MOV             R2, R4
259BAC:  BL              sub_258E98
259BB0:  CMP             R0, #0
259BB2:  BNE.W           loc_259D08
259BB6:  VLDR            D16, [SP,#0x28+var_28]
259BBA:  MOVS            R0, #0
259BBC:  VCVT.S32.F64    S0, D16
259BC0:  VSTR            S0, [R8]
259BC4:  VLDR            D16, [SP,#0x28+var_20]
259BC8:  VCVT.S32.F64    S0, D16
259BCC:  VSTR            S0, [R8,#4]
259BD0:  VLDR            D16, [SP,#0x28+var_18]
259BD4:  VCVT.S32.F64    S0, D16
259BD8:  VSTR            S0, [R8,#8]
259BDC:  B               loc_259D08
259BDE:  CMP.W           R4, #0xC000
259BE2:  BEQ             loc_259B50; jumptable 00259AE6 cases 0,1,31,32,34-37
259BE4:  CMP.W           R4, #0xD000
259BE8:  BNE             loc_259C2A; jumptable 00259AE6 cases 2,7,9-14,16-19,22-30,33,39-47
259BEA:  LDR             R0, [R6,#0x50]
259BEC:  B               loc_259D02
259BEE:  MOV             R3, SP; jumptable 00259AE6 cases 48,49
259BF0:  MOV             R0, R6
259BF2:  MOV             R1, R5
259BF4:  MOV             R2, R4
259BF6:  BL              sub_258E98
259BFA:  CMP             R0, #0
259BFC:  BNE.W           loc_259D08
259C00:  VLDR            D16, [SP,#0x28+var_28]
259C04:  MOVS            R0, #0
259C06:  VCVT.S32.F64    S0, D16
259C0A:  VSTR            S0, [R8]
259C0E:  VLDR            D16, [SP,#0x28+var_20]
259C12:  VCVT.S32.F64    S0, D16
259C16:  VSTR            S0, [R8,#4]
259C1A:  B               loc_259D08
259C1C:  MOVW            R0, #0x202; jumptable 00259AE6 default case
259C20:  CMP             R4, R0
259C22:  BNE             loc_259C2A; jumptable 00259AE6 cases 2,7,9-14,16-19,22-30,33,39-47
259C24:  LDRB.W          R0, [R6,#0x4C]
259C28:  B               loc_259D02
259C2A:  LDR             R0, =(LogLevel_ptr - 0x259C30); jumptable 00259AE6 cases 2,7,9-14,16-19,22-30,33,39-47
259C2C:  ADD             R0, PC; LogLevel_ptr
259C2E:  LDR             R0, [R0]; LogLevel
259C30:  LDR             R0, [R0]
259C32:  CBZ             R0, loc_259C44
259C34:  LDR             R0, =(aEe - 0x259C40); "(EE)"
259C36:  ADR             R1, aGetsourceiv; "GetSourceiv"
259C38:  LDR             R2, =(aUnexpectedProp - 0x259C42); "Unexpected property: 0x%04x\n"
259C3A:  MOV             R3, R4
259C3C:  ADD             R0, PC; "(EE)"
259C3E:  ADD             R2, PC; "Unexpected property: 0x%04x\n"
259C40:  BLX             j_al_print
259C44:  LDR             R0, =(TrapALError_ptr - 0x259C4A)
259C46:  ADD             R0, PC; TrapALError_ptr
259C48:  LDR             R0, [R0]; TrapALError
259C4A:  LDRB            R0, [R0]
259C4C:  CMP             R0, #0
259C4E:  ITT NE
259C50:  MOVNE           R0, #5; sig
259C52:  BLXNE           raise
259C56:  LDREX.W         R0, [R5,#0x50]
259C5A:  CBNZ            R0, loc_259C76
259C5C:  ADD.W           R0, R5, #0x50 ; 'P'
259C60:  MOVW            R1, #0xA002
259C64:  DMB.W           ISH
259C68:  STREX.W         R2, R1, [R0]
259C6C:  CBZ             R2, loc_259C7A
259C6E:  LDREX.W         R2, [R0]
259C72:  CMP             R2, #0
259C74:  BEQ             loc_259C68
259C76:  CLREX.W
259C7A:  MOVW            R0, #0xA002
259C7E:  DMB.W           ISH
259C82:  B               loc_259D08
259C84:  LDRB.W          R0, [R6,#0x4D]; jumptable 00259AE6 case 6
259C88:  B               loc_259D02
259C8A:  LDR.W           R0, [R5,#0x88]; jumptable 00259AE6 case 8
259C8E:  MOV             R4, #0x161AC
259C96:  LDR             R1, [R0,R4]
259C98:  LDR             R1, [R1,#0x2C]
259C9A:  BLX             R1
259C9C:  LDR             R1, [R6,#0x7C]
259C9E:  MOVW            R2, #0x1028
259CA2:  LDR.W           R0, [R6,#0x90]
259CA6:  CMP             R1, R2
259CA8:  ITT NE
259CAA:  LDRNE.W         R1, [R6,#0x98]
259CAE:  CMPNE           R1, #0
259CB0:  BEQ             loc_259CB8
259CB2:  LDR             R0, [R0,#4]
259CB4:  SUBS            R1, #1
259CB6:  BNE             loc_259CB2
259CB8:  CBZ             R0, loc_259CEA
259CBA:  LDR             R0, [R0]
259CBC:  CMP             R0, #0
259CBE:  ITE NE
259CC0:  LDRNE           R0, [R0,#0x44]
259CC2:  MOVEQ           R0, #0
259CC4:  B               loc_259D20
259CC6:  LDR.W           R0, [R6,#0x80]; jumptable 00259AE6 case 15
259CCA:  B               loc_259D02
259CCC:  LDR.W           R0, [R6,#0x94]; jumptable 00259AE6 case 20
259CD0:  B               loc_259D02
259CD2:  LDR.W           R0, [R5,#0x88]; jumptable 00259AE6 case 21
259CD6:  MOV             R4, #0x161AC
259CDE:  LDR             R1, [R0,R4]
259CE0:  LDR             R1, [R1,#0x2C]
259CE2:  BLX             R1
259CE4:  LDRB.W          R0, [R6,#0x4D]
259CE8:  CBZ             R0, loc_259D10
259CEA:  MOVS            R0, #0
259CEC:  B               loc_259D20
259CEE:  LDR             R0, [R6,#0x7C]; jumptable 00259AE6 case 38
259CF0:  B               loc_259D02
259CF2:  LDRB.W          R0, [R6,#0x54]; jumptable 00259AE6 case 50
259CF6:  B               loc_259D02
259CF8:  LDRB.W          R0, [R6,#0x55]
259CFC:  B               loc_259D02
259CFE:  LDRB.W          R0, [R6,#0x56]
259D02:  STR.W           R0, [R8]
259D06:  MOVS            R0, #0
259D08:  ADD             SP, SP, #0x18
259D0A:  POP.W           {R8}
259D0E:  POP             {R4-R7,PC}
259D10:  LDR             R0, [R6,#0x7C]
259D12:  MOVW            R1, #0x1029
259D16:  CMP             R0, R1
259D18:  ITE EQ
259D1A:  LDREQ.W         R0, [R6,#0x98]
259D1E:  MOVNE           R0, #0
259D20:  STR.W           R0, [R8]
259D24:  LDR.W           R0, [R5,#0x88]
259D28:  LDR             R1, [R0,R4]
259D2A:  LDR             R1, [R1,#0x30]
259D2C:  BLX             R1
259D2E:  B               loc_259D06
