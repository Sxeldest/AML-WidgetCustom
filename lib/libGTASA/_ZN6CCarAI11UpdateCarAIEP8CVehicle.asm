; =========================================================
; Game Engine Function: _ZN6CCarAI11UpdateCarAIEP8CVehicle
; Address            : 0x2E3A1C - 0x2E6078
; =========================================================

2E3A1C:  PUSH            {R4-R7,LR}
2E3A1E:  ADD             R7, SP, #0xC
2E3A20:  PUSH.W          {R8-R10}
2E3A24:  VPUSH           {D8-D13}
2E3A28:  SUB             SP, SP, #0x58; bool
2E3A2A:  MOV             R4, R0
2E3A2C:  LDRSB.W         R0, [R4,#0x428]
2E3A30:  CMP             R0, #0
2E3A32:  BLT             loc_2E3A44
2E3A34:  LDR.W           R1, =(_ZN17CVehicleRecording9bUseCarAIE_ptr - 0x2E3A3C)
2E3A38:  ADD             R1, PC; _ZN17CVehicleRecording9bUseCarAIE_ptr
2E3A3A:  LDR             R1, [R1]; CVehicleRecording::bUseCarAI ...
2E3A3C:  LDRB            R0, [R1,R0]
2E3A3E:  CMP             R0, #0
2E3A40:  BEQ.W           loc_2E5CE8
2E3A44:  LDR.W           R0, [R4,#0x5A4]
2E3A48:  CMP             R0, #3
2E3A4A:  BEQ.W           loc_2E5CE8
2E3A4E:  LDRB.W          R0, [R4,#0x3BE]
2E3A52:  CMP             R0, #0x3B ; ';'
2E3A54:  BNE             loc_2E3A98
2E3A56:  MOV.W           R0, #0xFFFFFFFF; int
2E3A5A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2E3A5E:  LDR.W           R0, [R0,#0x444]
2E3A62:  LDR             R0, [R0]
2E3A64:  LDR             R0, [R0,#0x2C]
2E3A66:  CMP             R0, #3
2E3A68:  BLT             loc_2E3A76
2E3A6A:  MOV.W           R0, #0xFFFFFFFF; int
2E3A6E:  MOVS            R1, #0; bool
2E3A70:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E3A74:  CBNZ            R0, loc_2E3A98
2E3A76:  MOVS            R1, #0x16
2E3A78:  MOVW            R0, #0x8000
2E3A7C:  MOVS            R2, #0
2E3A7E:  STRB.W          R1, [R4,#0x3BE]
2E3A82:  MOVW            R1, #0x4000
2E3A86:  MOVT            R0, #0xC5BB
2E3A8A:  MOVT            R1, #0x461C
2E3A8E:  MOVT            R2, #0x43FA
2E3A92:  ADD.W           R3, R4, #0x3F0
2E3A96:  STM             R3!, {R0-R2}
2E3A98:  LDRB.W          R0, [R4,#0x42C]
2E3A9C:  ADDW            R10, R4, #0x42C
2E3AA0:  LSLS            R0, R0, #0x1F
2E3AA2:  BEQ             loc_2E3B7A
2E3AA4:  LDRB.W          R0, [R4,#0x3BE]
2E3AA8:  SUB.W           R1, R0, #0x2B ; '+'
2E3AAC:  CMP             R1, #0xC
2E3AAE:  BLS             loc_2E3AB8
2E3AB0:  SUBS            R0, #2
2E3AB2:  CMP             R0, #4
2E3AB4:  BCC             loc_2E3AC6
2E3AB6:  B               loc_2E3B7A
2E3AB8:  MOVS            R2, #1
2E3ABA:  LSL.W           R1, R2, R1
2E3ABE:  MOVW            R2, #0x1803
2E3AC2:  TST             R1, R2
2E3AC4:  BEQ             loc_2E3AB0
2E3AC6:  MOV.W           R0, #0xFFFFFFFF; int
2E3ACA:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
2E3ACE:  LDR             R1, [R0,#0x2C]
2E3AD0:  CMP             R1, #6; switch 7 cases
2E3AD2:  BHI             def_2E3AD6; jumptable 002E3AD6 default case
2E3AD4:  MOVS            R0, #0x19
2E3AD6:  TBB.W           [PC,R1]; switch jump
2E3ADA:  DCB 4; jump table for switch statement
2E3ADB:  DCB 0x4E
2E3ADC:  DCB 0x19
2E3ADD:  DCB 0x1B
2E3ADE:  DCB 0x26
2E3ADF:  DCB 0x31
2E3AE0:  DCB 0x3E
2E3AE1:  ALIGN 2
2E3AE2:  BLX             rand; jumptable 002E3AD6 case 0
2E3AE6:  VMOV            S0, R0
2E3AEA:  VLDR            S2, =4.6566e-10
2E3AEE:  VMOV.F32        S4, #4.0
2E3AF2:  VCVT.F32.S32    S0, S0
2E3AF6:  VMUL.F32        S0, S0, S2
2E3AFA:  VMOV.F32        S2, #12.0
2E3AFE:  VMUL.F32        S0, S0, S4
2E3B02:  VADD.F32        S0, S0, S2
2E3B06:  B               loc_2E3B6E
2E3B08:  MOVS            R0, #0; jumptable 002E3AD6 default case
2E3B0A:  B               loc_2E3B76; jumptable 002E3AD6 case 1
2E3B0C:  MOVS            R0, #0x22 ; '"'; jumptable 002E3AD6 case 2
2E3B0E:  B               loc_2E3B76; jumptable 002E3AD6 case 1
2E3B10:  LDR.W           R0, [R4,#0x388]; jumptable 002E3AD6 case 3
2E3B14:  VLDR            S0, =60.0
2E3B18:  VLDR            S2, [R0,#0x88]
2E3B1C:  VMUL.F32        S0, S2, S0
2E3B20:  VLDR            S2, =0.9
2E3B24:  B               loc_2E3B6A
2E3B26:  LDR.W           R0, [R4,#0x388]; jumptable 002E3AD6 case 4
2E3B2A:  VLDR            S0, =60.0
2E3B2E:  VLDR            S2, [R0,#0x88]
2E3B32:  VMUL.F32        S0, S2, S0
2E3B36:  VLDR            S2, =1.2
2E3B3A:  B               loc_2E3B6A
2E3B3C:  LDR.W           R0, [R4,#0x388]; jumptable 002E3AD6 case 5
2E3B40:  VMOV.F32        S4, #1.25
2E3B44:  VLDR            S0, =60.0
2E3B48:  VLDR            S2, [R0,#0x88]
2E3B4C:  VMUL.F32        S0, S2, S0
2E3B50:  VMUL.F32        S0, S0, S4
2E3B54:  B               loc_2E3B6E
2E3B56:  LDR.W           R0, [R4,#0x388]; jumptable 002E3AD6 case 6
2E3B5A:  VLDR            S0, =60.0
2E3B5E:  VLDR            S2, [R0,#0x88]
2E3B62:  VMUL.F32        S0, S2, S0
2E3B66:  VLDR            S2, =1.3
2E3B6A:  VMUL.F32        S0, S0, S2
2E3B6E:  VCVT.S32.F32    S0, S0
2E3B72:  VMOV            R0, S0
2E3B76:  STRB.W          R0, [R4,#0x3D4]; jumptable 002E3AD6 case 1
2E3B7A:  LDRB.W          R0, [R4,#0x3A]
2E3B7E:  LSRS            R0, R0, #3
2E3B80:  CMP             R0, #0xC
2E3B82:  BHI.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E3B86:  MOVS            R1, #1
2E3B88:  LSL.W           R0, R1, R0
2E3B8C:  MOVW            R1, #0x100C
2E3B90:  TST             R0, R1
2E3B92:  BEQ.W           loc_2E3CF0
2E3B96:  LDRSB.W         R0, [R4,#0x3BE]
2E3B9A:  SUBS            R0, #2; switch 67 cases
2E3B9C:  CMP             R0, #0x42 ; 'B'
2E3B9E:  BHI.W           def_2E3BA2; jumptable 002E3BA2 default case, cases 6,7,11,14,19,20,22,23,33-42,45-51,56-59,62,63
2E3BA2:  TBH.W           [PC,R0,LSL#1]; switch jump
2E3BA6:  DCW 0x119; jump table for switch statement
2E3BA8:  DCW 0x185
2E3BAA:  DCW 0x1E2
2E3BAC:  DCW 0x24D
2E3BAE:  DCW 0x2AA
2E3BB0:  DCW 0x2AA
2E3BB2:  DCW 0x2F0
2E3BB4:  DCW 0x312
2E3BB6:  DCW 0xB6C
2E3BB8:  DCW 0x2AA
2E3BBA:  DCW 0x331
2E3BBC:  DCW 0x353
2E3BBE:  DCW 0x2AA
2E3BC0:  DCW 0x37D
2E3BC2:  DCW 0x3B2
2E3BC4:  DCW 0x3F4
2E3BC6:  DCW 0x436
2E3BC8:  DCW 0x2AA
2E3BCA:  DCW 0x2AA
2E3BCC:  DCW 0x46D
2E3BCE:  DCW 0x2AA
2E3BD0:  DCW 0x2AA
2E3BD2:  DCW 0x493
2E3BD4:  DCW 0x4B1
2E3BD6:  DCW 0x540
2E3BD8:  DCW 0xB6C
2E3BDA:  DCW 0xB6C
2E3BDC:  DCW 0x43
2E3BDE:  DCW 0x43
2E3BE0:  DCW 0x43
2E3BE2:  DCW 0x43
2E3BE4:  DCW 0x2AA
2E3BE6:  DCW 0x2AA
2E3BE8:  DCW 0x2AA
2E3BEA:  DCW 0x2AA
2E3BEC:  DCW 0x2AA
2E3BEE:  DCW 0x2AA
2E3BF0:  DCW 0x2AA
2E3BF2:  DCW 0x2AA
2E3BF4:  DCW 0x2AA
2E3BF6:  DCW 0x2AA
2E3BF8:  DCW 0x597
2E3BFA:  DCW 0x5FF
2E3BFC:  DCW 0x2AA
2E3BFE:  DCW 0x2AA
2E3C00:  DCW 0x2AA
2E3C02:  DCW 0x2AA
2E3C04:  DCW 0x2AA
2E3C06:  DCW 0x2AA
2E3C08:  DCW 0x2AA
2E3C0A:  DCW 0x65B
2E3C0C:  DCW 0x690
2E3C0E:  DCW 0x6D5
2E3C10:  DCW 0x70A
2E3C12:  DCW 0x2AA
2E3C14:  DCW 0x2AA
2E3C16:  DCW 0x2AA
2E3C18:  DCW 0x2AA
2E3C1A:  DCW 0x73F
2E3C1C:  DCW 0x773
2E3C1E:  DCW 0x2AA
2E3C20:  DCW 0x2AA
2E3C22:  DCW 0x7A9
2E3C24:  DCW 0xAF
2E3C26:  DCW 0xAF
2E3C28:  DCW 0xAF
2E3C2A:  DCW 0xAF
2E3C2C:  LDRB.W          R0, [R4,#0x3E1]; jumptable 002E3BA2 cases 29-32
2E3C30:  CMP             R0, #0xEF
2E3C32:  BHI.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E3C36:  ADD             R0, SP, #0xA0+var_88; int
2E3C38:  MOV.W           R1, #0xFFFFFFFF
2E3C3C:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E3C40:  LDR             R0, [R4,#0x14]
2E3C42:  ADDS            R5, R4, #4
2E3C44:  VLDR            S16, [SP,#0xA0+var_88]
2E3C48:  CMP             R0, #0
2E3C4A:  MOV             R1, R5
2E3C4C:  IT NE
2E3C4E:  ADDNE.W         R1, R0, #0x30 ; '0'
2E3C52:  ADD             R0, SP, #0xA0+var_54; int
2E3C54:  VLDR            S18, [R1]
2E3C58:  MOV.W           R1, #0xFFFFFFFF
2E3C5C:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E3C60:  LDR             R0, [R4,#0x14]
2E3C62:  MOV             R1, R5
2E3C64:  VLDR            S20, [SP,#0xA0+var_54]
2E3C68:  CMP             R0, #0
2E3C6A:  IT NE
2E3C6C:  ADDNE.W         R1, R0, #0x30 ; '0'
2E3C70:  ADD             R0, SP, #0xA0+var_60; int
2E3C72:  VLDR            S22, [R1]
2E3C76:  MOV.W           R1, #0xFFFFFFFF
2E3C7A:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E3C7E:  LDR             R0, [R4,#0x14]
2E3C80:  MOV             R1, R5
2E3C82:  VLDR            S24, [SP,#0xA0+var_5C]
2E3C86:  CMP             R0, #0
2E3C88:  IT NE
2E3C8A:  ADDNE.W         R1, R0, #0x30 ; '0'
2E3C8E:  ADD             R0, SP, #0xA0+var_70; int
2E3C90:  VLDR            S26, [R1,#4]
2E3C94:  MOV.W           R1, #0xFFFFFFFF
2E3C98:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E3C9C:  LDR             R0, [R4,#0x14]
2E3C9E:  VSUB.F32        S0, S16, S18
2E3CA2:  VLDR            S2, [SP,#0xA0+var_70+4]
2E3CA6:  VSUB.F32        S6, S20, S22
2E3CAA:  CMP             R0, #0
2E3CAC:  VSUB.F32        S8, S24, S26
2E3CB0:  IT NE
2E3CB2:  ADDNE.W         R5, R0, #0x30 ; '0'
2E3CB6:  LDRB.W          R0, [R10]
2E3CBA:  VLDR            S4, [R5,#4]
2E3CBE:  VSUB.F32        S2, S2, S4
2E3CC2:  LSLS            R0, R0, #0x1F
2E3CC4:  VMUL.F32        S0, S0, S6
2E3CC8:  VMUL.F32        S2, S8, S2
2E3CCC:  VADD.F32        S0, S0, S2
2E3CD0:  VSQRT.F32       S0, S0
2E3CD4:  BNE.W           loc_2E4B1E
2E3CD8:  LDRB.W          R0, [R4,#0x3E1]
2E3CDC:  VMOV.F32        S2, #5.0
2E3CE0:  VMOV            S4, R0
2E3CE4:  VCVT.F32.U32    S4, S4
2E3CE8:  VADD.F32        S2, S4, S2
2E3CEC:  B.W             loc_2E4B22
2E3CF0:  TST.W           R0, #0x30
2E3CF4:  ITTT NE
2E3CF6:  MOVNE           R0, #0
2E3CF8:  STRBNE.W        R0, [R4,#0x3D4]
2E3CFC:  STRBNE.W        R0, [R4,#0x3BE]
2E3D00:  B.W             loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E3D04:  ADD             R0, SP, #0xA0+var_88; jumptable 002E3BA2 cases 65-68
2E3D06:  MOV.W           R1, #0xFFFFFFFF
2E3D0A:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E3D0E:  LDR             R0, [R4,#0x14]
2E3D10:  ADDS            R5, R4, #4
2E3D12:  VLDR            S16, [SP,#0xA0+var_88]
2E3D16:  CMP             R0, #0
2E3D18:  MOV             R1, R5
2E3D1A:  IT NE
2E3D1C:  ADDNE.W         R1, R0, #0x30 ; '0'
2E3D20:  ADD             R0, SP, #0xA0+var_54; int
2E3D22:  VLDR            S18, [R1]
2E3D26:  MOV.W           R1, #0xFFFFFFFF
2E3D2A:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E3D2E:  LDR             R0, [R4,#0x14]
2E3D30:  MOV             R1, R5
2E3D32:  VLDR            S20, [SP,#0xA0+var_54]
2E3D36:  CMP             R0, #0
2E3D38:  IT NE
2E3D3A:  ADDNE.W         R1, R0, #0x30 ; '0'
2E3D3E:  ADD             R0, SP, #0xA0+var_60; int
2E3D40:  VLDR            S22, [R1]
2E3D44:  MOV.W           R1, #0xFFFFFFFF
2E3D48:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E3D4C:  LDR             R0, [R4,#0x14]
2E3D4E:  MOV             R1, R5
2E3D50:  VLDR            S24, [SP,#0xA0+var_5C]
2E3D54:  CMP             R0, #0
2E3D56:  IT NE
2E3D58:  ADDNE.W         R1, R0, #0x30 ; '0'
2E3D5C:  ADD             R0, SP, #0xA0+var_70; int
2E3D5E:  VLDR            S26, [R1,#4]
2E3D62:  MOV.W           R1, #0xFFFFFFFF
2E3D66:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E3D6A:  LDR             R0, [R4,#0x14]
2E3D6C:  VSUB.F32        S0, S16, S18
2E3D70:  VLDR            S2, [SP,#0xA0+var_70+4]
2E3D74:  VSUB.F32        S6, S20, S22
2E3D78:  CMP             R0, #0
2E3D7A:  VSUB.F32        S8, S24, S26
2E3D7E:  IT NE
2E3D80:  ADDNE.W         R5, R0, #0x30 ; '0'
2E3D84:  LDRB.W          R0, [R4,#0x3E1]
2E3D88:  VLDR            S4, [R5,#4]
2E3D8C:  VSUB.F32        S2, S2, S4
2E3D90:  VMUL.F32        S0, S0, S6
2E3D94:  VMUL.F32        S2, S8, S2
2E3D98:  VADD.F32        S0, S0, S2
2E3D9C:  VMOV            S2, R0
2E3DA0:  VCVT.F32.U32    S2, S2
2E3DA4:  VSQRT.F32       S0, S0
2E3DA8:  VCMPE.F32       S0, S2
2E3DAC:  VMRS            APSR_nzcv, FPSCR
2E3DB0:  ITTT LT
2E3DB2:  LDRBLT.W        R0, [R4,#0x3BE]
2E3DB6:  ADDLT           R0, #0xDC
2E3DB8:  STRBLT.W        R0, [R4,#0x3BE]
2E3DBC:  B.W             loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E3DC0:  DCFS 4.6566e-10
2E3DC4:  DCFS 60.0
2E3DC8:  DCFS 0.9
2E3DCC:  DCFS 1.2
2E3DD0:  DCFS 1.3
2E3DD4:  DCFS 40.0
2E3DD8:  ADD             R0, SP, #0xA0+var_88; jumptable 002E3BA2 case 2
2E3DDA:  MOV.W           R1, #0xFFFFFFFF
2E3DDE:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E3DE2:  LDR             R0, [R4,#0x14]
2E3DE4:  ADDS            R5, R4, #4
2E3DE6:  VLDR            S16, [SP,#0xA0+var_88]
2E3DEA:  CMP             R0, #0
2E3DEC:  MOV             R1, R5
2E3DEE:  IT NE
2E3DF0:  ADDNE.W         R1, R0, #0x30 ; '0'
2E3DF4:  ADD             R0, SP, #0xA0+var_54; int
2E3DF6:  VLDR            S18, [R1]
2E3DFA:  MOV.W           R1, #0xFFFFFFFF
2E3DFE:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E3E02:  LDR             R0, [R4,#0x14]
2E3E04:  MOV             R1, R5
2E3E06:  VLDR            S20, [SP,#0xA0+var_54]
2E3E0A:  CMP             R0, #0
2E3E0C:  IT NE
2E3E0E:  ADDNE.W         R1, R0, #0x30 ; '0'
2E3E12:  ADD             R0, SP, #0xA0+var_60; int
2E3E14:  VLDR            S22, [R1]
2E3E18:  MOV.W           R1, #0xFFFFFFFF
2E3E1C:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E3E20:  LDR             R0, [R4,#0x14]
2E3E22:  MOV             R1, R5
2E3E24:  VLDR            S24, [SP,#0xA0+var_5C]
2E3E28:  CMP             R0, #0
2E3E2A:  IT NE
2E3E2C:  ADDNE.W         R1, R0, #0x30 ; '0'
2E3E30:  ADD             R0, SP, #0xA0+var_70; int
2E3E32:  VLDR            S26, [R1,#4]
2E3E36:  MOV.W           R1, #0xFFFFFFFF
2E3E3A:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E3E3E:  LDR             R0, [R4,#0x14]
2E3E40:  VSUB.F32        S0, S16, S18
2E3E44:  VLDR            S2, [SP,#0xA0+var_70+4]
2E3E48:  VSUB.F32        S6, S20, S22
2E3E4C:  CMP             R0, #0
2E3E4E:  VSUB.F32        S8, S24, S26
2E3E52:  IT NE
2E3E54:  ADDNE.W         R5, R0, #0x30 ; '0'
2E3E58:  LDRB.W          R0, [R4,#0x3E1]
2E3E5C:  VLDR            S4, [R5,#4]
2E3E60:  VSUB.F32        S2, S2, S4
2E3E64:  VMUL.F32        S0, S0, S6
2E3E68:  VMUL.F32        S2, S8, S2
2E3E6C:  VADD.F32        S0, S0, S2
2E3E70:  VSQRT.F32       S16, S0
2E3E74:  VMOV            S0, R0
2E3E78:  VCVT.F32.U32    S0, S0
2E3E7C:  VCMPE.F32       S16, S0
2E3E80:  VMRS            APSR_nzcv, FPSCR
2E3E84:  BLT             loc_2E3EAA
2E3E86:  MOV.W           R0, #0xFFFFFFFF; int
2E3E8A:  BLX             j__Z16FindPlayerEntityi; FindPlayerEntity(int)
2E3E8E:  MOV             R1, R4; CEntity *
2E3E90:  BLX             j__ZN6CCarAI16EntitiesGoHeadOnEP7CEntityS1_; CCarAI::EntitiesGoHeadOn(CEntity *,CEntity *)
2E3E94:  VLDR            S0, =40.0
2E3E98:  VCMPE.F32       S16, S0
2E3E9C:  VMRS            APSR_nzcv, FPSCR
2E3EA0:  BGE.W           def_2E44B0; jumptable 002E44B0 default case
2E3EA4:  CMP             R0, #1
2E3EA6:  BNE.W           def_2E44B0; jumptable 002E44B0 default case
2E3EAA:  MOVS            R0, #3
2E3EAC:  B.W             loc_2E4786
2E3EB0:  ADD             R0, SP, #0xA0+var_88; jumptable 002E3BA2 case 3
2E3EB2:  MOV.W           R1, #0xFFFFFFFF
2E3EB6:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E3EBA:  LDR             R0, [R4,#0x14]
2E3EBC:  ADDS            R5, R4, #4
2E3EBE:  VLDR            S16, [SP,#0xA0+var_88]
2E3EC2:  CMP             R0, #0
2E3EC4:  MOV             R1, R5
2E3EC6:  IT NE
2E3EC8:  ADDNE.W         R1, R0, #0x30 ; '0'
2E3ECC:  ADD             R0, SP, #0xA0+var_54; int
2E3ECE:  VLDR            S18, [R1]
2E3ED2:  MOV.W           R1, #0xFFFFFFFF
2E3ED6:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E3EDA:  LDR             R0, [R4,#0x14]
2E3EDC:  MOV             R1, R5
2E3EDE:  VLDR            S20, [SP,#0xA0+var_54]
2E3EE2:  CMP             R0, #0
2E3EE4:  IT NE
2E3EE6:  ADDNE.W         R1, R0, #0x30 ; '0'
2E3EEA:  ADD             R0, SP, #0xA0+var_60; int
2E3EEC:  VLDR            S22, [R1]
2E3EF0:  MOV.W           R1, #0xFFFFFFFF
2E3EF4:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E3EF8:  LDR             R0, [R4,#0x14]
2E3EFA:  MOV             R1, R5
2E3EFC:  VLDR            S24, [SP,#0xA0+var_5C]
2E3F00:  CMP             R0, #0
2E3F02:  IT NE
2E3F04:  ADDNE.W         R1, R0, #0x30 ; '0'
2E3F08:  ADD             R0, SP, #0xA0+var_70; int
2E3F0A:  VLDR            S26, [R1,#4]
2E3F0E:  MOV.W           R1, #0xFFFFFFFF
2E3F12:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E3F16:  LDR             R0, [R4,#0x14]
2E3F18:  VSUB.F32        S0, S16, S18
2E3F1C:  VLDR            S2, [SP,#0xA0+var_70+4]
2E3F20:  VSUB.F32        S6, S20, S22
2E3F24:  CMP             R0, #0
2E3F26:  VSUB.F32        S8, S24, S26
2E3F2A:  IT NE
2E3F2C:  ADDNE.W         R5, R0, #0x30 ; '0'
2E3F30:  LDRB.W          R0, [R10]
2E3F34:  VLDR            S4, [R5,#4]
2E3F38:  VSUB.F32        S2, S2, S4
2E3F3C:  LSLS            R0, R0, #0x1F
2E3F3E:  VMUL.F32        S0, S0, S6
2E3F42:  VMUL.F32        S2, S8, S2
2E3F46:  VADD.F32        S0, S0, S2
2E3F4A:  VSQRT.F32       S16, S0
2E3F4E:  BNE.W           loc_2E4B58
2E3F52:  LDRB.W          R0, [R4,#0x3E1]
2E3F56:  VMOV.F32        S0, #5.0
2E3F5A:  VMOV            S2, R0
2E3F5E:  VCVT.F32.U32    S2, S2
2E3F62:  VADD.F32        S0, S2, S0
2E3F66:  B.W             loc_2E4B5C
2E3F6A:  ADD             R0, SP, #0xA0+var_88; jumptable 002E3BA2 case 4
2E3F6C:  MOV.W           R1, #0xFFFFFFFF
2E3F70:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E3F74:  LDR             R0, [R4,#0x14]
2E3F76:  ADDS            R5, R4, #4
2E3F78:  VLDR            S16, [SP,#0xA0+var_88]
2E3F7C:  CMP             R0, #0
2E3F7E:  MOV             R1, R5
2E3F80:  IT NE
2E3F82:  ADDNE.W         R1, R0, #0x30 ; '0'
2E3F86:  ADD             R0, SP, #0xA0+var_54; int
2E3F88:  VLDR            S18, [R1]
2E3F8C:  MOV.W           R1, #0xFFFFFFFF
2E3F90:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E3F94:  LDR             R0, [R4,#0x14]
2E3F96:  MOV             R1, R5
2E3F98:  VLDR            S20, [SP,#0xA0+var_54]
2E3F9C:  CMP             R0, #0
2E3F9E:  IT NE
2E3FA0:  ADDNE.W         R1, R0, #0x30 ; '0'
2E3FA4:  ADD             R0, SP, #0xA0+var_60; int
2E3FA6:  VLDR            S22, [R1]
2E3FAA:  MOV.W           R1, #0xFFFFFFFF
2E3FAE:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E3FB2:  LDR             R0, [R4,#0x14]
2E3FB4:  MOV             R1, R5
2E3FB6:  VLDR            S24, [SP,#0xA0+var_5C]
2E3FBA:  CMP             R0, #0
2E3FBC:  IT NE
2E3FBE:  ADDNE.W         R1, R0, #0x30 ; '0'
2E3FC2:  ADD             R0, SP, #0xA0+var_70; int
2E3FC4:  VLDR            S26, [R1,#4]
2E3FC8:  MOV.W           R1, #0xFFFFFFFF
2E3FCC:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E3FD0:  LDR             R0, [R4,#0x14]
2E3FD2:  VSUB.F32        S0, S16, S18
2E3FD6:  VLDR            S2, [SP,#0xA0+var_70+4]
2E3FDA:  VSUB.F32        S6, S20, S22
2E3FDE:  CMP             R0, #0
2E3FE0:  VSUB.F32        S8, S24, S26
2E3FE4:  IT NE
2E3FE6:  ADDNE.W         R5, R0, #0x30 ; '0'
2E3FEA:  LDRB.W          R0, [R4,#0x3E1]
2E3FEE:  VLDR            S4, [R5,#4]
2E3FF2:  VSUB.F32        S2, S2, S4
2E3FF6:  VMUL.F32        S0, S0, S6
2E3FFA:  VMUL.F32        S2, S8, S2
2E3FFE:  VADD.F32        S0, S0, S2
2E4002:  VSQRT.F32       S16, S0
2E4006:  VMOV            S0, R0
2E400A:  VCVT.F32.U32    S0, S0
2E400E:  VCMPE.F32       S16, S0
2E4012:  VMRS            APSR_nzcv, FPSCR
2E4016:  BLT             loc_2E403C
2E4018:  MOV.W           R0, #0xFFFFFFFF; int
2E401C:  BLX             j__Z16FindPlayerEntityi; FindPlayerEntity(int)
2E4020:  MOV             R1, R4; CEntity *
2E4022:  BLX             j__ZN6CCarAI16EntitiesGoHeadOnEP7CEntityS1_; CCarAI::EntitiesGoHeadOn(CEntity *,CEntity *)
2E4026:  VLDR            S0, =40.0
2E402A:  VCMPE.F32       S16, S0
2E402E:  VMRS            APSR_nzcv, FPSCR
2E4032:  BGE.W           def_2E44B0; jumptable 002E44B0 default case
2E4036:  CMP             R0, #1
2E4038:  BNE.W           def_2E44B0; jumptable 002E44B0 default case
2E403C:  MOVS            R0, #5
2E403E:  B               loc_2E4786
2E4040:  ADD             R0, SP, #0xA0+var_88; jumptable 002E3BA2 case 5
2E4042:  MOV.W           R1, #0xFFFFFFFF
2E4046:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E404A:  LDR             R0, [R4,#0x14]
2E404C:  ADDS            R5, R4, #4
2E404E:  VLDR            S16, [SP,#0xA0+var_88]
2E4052:  CMP             R0, #0
2E4054:  MOV             R1, R5
2E4056:  IT NE
2E4058:  ADDNE.W         R1, R0, #0x30 ; '0'
2E405C:  ADD             R0, SP, #0xA0+var_54; int
2E405E:  VLDR            S18, [R1]
2E4062:  MOV.W           R1, #0xFFFFFFFF
2E4066:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E406A:  LDR             R0, [R4,#0x14]
2E406C:  MOV             R1, R5
2E406E:  VLDR            S20, [SP,#0xA0+var_54]
2E4072:  CMP             R0, #0
2E4074:  IT NE
2E4076:  ADDNE.W         R1, R0, #0x30 ; '0'
2E407A:  ADD             R0, SP, #0xA0+var_60; int
2E407C:  VLDR            S22, [R1]
2E4080:  MOV.W           R1, #0xFFFFFFFF
2E4084:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E4088:  LDR             R0, [R4,#0x14]
2E408A:  MOV             R1, R5
2E408C:  VLDR            S24, [SP,#0xA0+var_5C]
2E4090:  CMP             R0, #0
2E4092:  IT NE
2E4094:  ADDNE.W         R1, R0, #0x30 ; '0'
2E4098:  ADD             R0, SP, #0xA0+var_70; int
2E409A:  VLDR            S26, [R1,#4]
2E409E:  MOV.W           R1, #0xFFFFFFFF
2E40A2:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E40A6:  LDR             R0, [R4,#0x14]
2E40A8:  VSUB.F32        S0, S16, S18
2E40AC:  VLDR            S2, [SP,#0xA0+var_70+4]
2E40B0:  VSUB.F32        S6, S20, S22
2E40B4:  CMP             R0, #0
2E40B6:  VSUB.F32        S8, S24, S26
2E40BA:  IT NE
2E40BC:  ADDNE.W         R5, R0, #0x30 ; '0'
2E40C0:  LDRB.W          R0, [R10]
2E40C4:  VLDR            S4, [R5,#4]
2E40C8:  VSUB.F32        S2, S2, S4
2E40CC:  LSLS            R0, R0, #0x1F
2E40CE:  VMUL.F32        S0, S0, S6
2E40D2:  VMUL.F32        S2, S8, S2
2E40D6:  VADD.F32        S0, S0, S2
2E40DA:  VSQRT.F32       S16, S0
2E40DE:  BNE.W           loc_2E4B8C
2E40E2:  LDRB.W          R0, [R4,#0x3E1]
2E40E6:  VMOV.F32        S0, #5.0
2E40EA:  VMOV            S2, R0
2E40EE:  VCVT.F32.U32    S2, S2
2E40F2:  VADD.F32        S0, S2, S0
2E40F6:  B.W             loc_2E4B90
2E40FA:  LDRB.W          R0, [R10]; jumptable 002E3BA2 default case, cases 6,7,11,14,19,20,22,23,33-42,45-51,56-59,62,63
2E40FE:  LSLS            R0, R0, #0x1F
2E4100:  BEQ.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E4104:  MOV.W           R0, #0xFFFFFFFF; int
2E4108:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2E410C:  LDR.W           R0, [R0,#0x444]
2E4110:  LDR             R0, [R0]
2E4112:  LDR             R0, [R0,#0x2C]; this
2E4114:  CMP             R0, #1
2E4116:  BLT.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E411A:  BLX             j__ZN10CCullZones8NoPoliceEv; CCullZones::NoPolice(void)
2E411E:  CMP             R0, #0
2E4120:  BNE.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E4124:  ADD             R0, SP, #0xA0+var_88; int
2E4126:  MOV.W           R1, #0xFFFFFFFF
2E412A:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E412E:  LDR             R0, [R4,#0x14]
2E4130:  ADDS            R5, R4, #4
2E4132:  VLDR            S0, [SP,#0xA0+var_88]
2E4136:  CMP             R0, #0
2E4138:  MOV             R1, R5
2E413A:  IT NE
2E413C:  ADDNE.W         R1, R0, #0x30 ; '0'
2E4140:  VLDR            S2, [R1]
2E4144:  VSUB.F32        S0, S0, S2
2E4148:  VCMPE.F32       S0, #0.0
2E414C:  VMRS            APSR_nzcv, FPSCR
2E4150:  BGE.W           loc_2E5D1E
2E4154:  ADD             R0, SP, #0xA0+var_54; int
2E4156:  MOV.W           R1, #0xFFFFFFFF
2E415A:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E415E:  LDR             R0, [R4,#0x14]
2E4160:  MOV             R1, R5
2E4162:  VLDR            S0, [SP,#0xA0+var_54]
2E4166:  MOV.W           R8, #1
2E416A:  CMP             R0, #0
2E416C:  MOV.W           R9, #0
2E4170:  IT NE
2E4172:  ADDNE.W         R1, R0, #0x30 ; '0'
2E4176:  VLDR            S2, [R1]
2E417A:  VSUB.F32        S0, S0, S2
2E417E:  VNEG.F32        S0, S0
2E4182:  B.W             loc_2E5D48
2E4186:  LDR             R0, [R4,#0x14]; jumptable 002E3BA2 case 8
2E4188:  VLDR            D16, [R4,#0x3F0]
2E418C:  ADD.W           R1, R0, #0x30 ; '0'
2E4190:  CMP             R0, #0
2E4192:  IT EQ
2E4194:  ADDEQ           R1, R4, #4
2E4196:  LDRB.W          R0, [R4,#0x3E1]
2E419A:  VLDR            D17, [R1]
2E419E:  VSUB.F32        D16, D16, D17
2E41A2:  VMOV            S2, R0
2E41A6:  VCVT.F32.U32    S2, S2
2E41AA:  VMUL.F32        D0, D16, D16
2E41AE:  VADD.F32        S0, S0, S1
2E41B2:  VSQRT.F32       S0, S0
2E41B6:  VCMPE.F32       S0, S2
2E41BA:  VMRS            APSR_nzcv, FPSCR
2E41BE:  ITT LT
2E41C0:  MOVLT           R0, #9
2E41C2:  STRBLT.W        R0, [R4,#0x3BE]
2E41C6:  B.W             loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E41CA:  LDR             R0, [R4,#0x14]; jumptable 002E3BA2 case 9
2E41CC:  VMOV.F32        S2, #3.0
2E41D0:  VLDR            D16, [R4,#0x3F0]
2E41D4:  ADD.W           R1, R0, #0x30 ; '0'
2E41D8:  CMP             R0, #0
2E41DA:  IT EQ
2E41DC:  ADDEQ           R1, R4, #4
2E41DE:  VLDR            D17, [R1]
2E41E2:  VSUB.F32        D16, D16, D17
2E41E6:  VMUL.F32        D0, D16, D16
2E41EA:  VADD.F32        S0, S0, S1
2E41EE:  VSQRT.F32       S0, S0
2E41F2:  VCMPE.F32       S0, S2
2E41F6:  VMRS            APSR_nzcv, FPSCR
2E41FA:  BGE.W           loc_2E4BD4
2E41FE:  MOVS            R0, #0
2E4200:  STRH.W          R0, [R4,#0x3BE]
2E4204:  B.W             loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E4208:  LDR             R0, [R4,#0x14]; jumptable 002E3BA2 case 12
2E420A:  VLDR            D16, [R4,#0x3F0]
2E420E:  ADD.W           R1, R0, #0x30 ; '0'
2E4212:  CMP             R0, #0
2E4214:  IT EQ
2E4216:  ADDEQ           R1, R4, #4
2E4218:  LDRB.W          R0, [R4,#0x3E1]
2E421C:  VLDR            D17, [R1]
2E4220:  VSUB.F32        D16, D16, D17
2E4224:  VMOV            S2, R0
2E4228:  VCVT.F32.U32    S2, S2
2E422C:  VMUL.F32        D0, D16, D16
2E4230:  VADD.F32        S0, S0, S1
2E4234:  VSQRT.F32       S0, S0
2E4238:  VCMPE.F32       S0, S2
2E423C:  VMRS            APSR_nzcv, FPSCR
2E4240:  ITT LT
2E4242:  MOVLT           R0, #0xD
2E4244:  STRBLT.W        R0, [R4,#0x3BE]
2E4248:  B.W             loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E424C:  LDR             R0, [R4,#0x14]; jumptable 002E3BA2 case 13
2E424E:  VMOV.F32        S2, #1.0
2E4252:  VLDR            D16, [R4,#0x3F0]
2E4256:  ADD.W           R1, R0, #0x30 ; '0'
2E425A:  CMP             R0, #0
2E425C:  IT EQ
2E425E:  ADDEQ           R1, R4, #4; CVehicle *
2E4260:  VLDR            D17, [R1]
2E4264:  VSUB.F32        D16, D16, D17
2E4268:  VMUL.F32        D0, D16, D16
2E426C:  VADD.F32        S0, S0, S1
2E4270:  VSQRT.F32       S0, S0
2E4274:  VCMPE.F32       S0, S2
2E4278:  VMRS            APSR_nzcv, FPSCR
2E427C:  BGE.W           loc_2E4C26
2E4280:  MOVS            R0, #0
2E4282:  STRH.W          R0, [R4,#0x3BE]
2E4286:  LDRB.W          R0, [R10,#4]
2E428A:  LSLS            R0, R0, #0x1D
2E428C:  BPL.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E4290:  MOV             R0, R4; this
2E4292:  BLX             j__ZN6CCarAI23TellOccupantsToLeaveCarEP8CVehicle; CCarAI::TellOccupantsToLeaveCar(CVehicle *)
2E4296:  LDR.W           R0, [R10,#4]
2E429A:  BIC.W           R0, R0, #4
2E429E:  B               loc_2E440A
2E42A0:  LDR.W           R0, [R4,#0x420]; jumptable 002E3BA2 case 15
2E42A4:  CMP             R0, #0
2E42A6:  BEQ.W           loc_2E4AF0
2E42AA:  LDR             R1, [R4,#0x14]
2E42AC:  LDR             R2, [R0,#0x14]
2E42AE:  ADD.W           R3, R1, #0x30 ; '0'
2E42B2:  CMP             R1, #0
2E42B4:  IT EQ
2E42B6:  ADDEQ           R3, R4, #4
2E42B8:  ADD.W           R1, R2, #0x30 ; '0'
2E42BC:  CMP             R2, #0
2E42BE:  VLDR            S0, [R3]
2E42C2:  VLDR            S2, [R3,#4]
2E42C6:  IT EQ
2E42C8:  ADDEQ           R1, R0, #4
2E42CA:  VLDR            S4, [R1]
2E42CE:  VLDR            S6, [R1,#4]
2E42D2:  VSUB.F32        S0, S4, S0
2E42D6:  LDRB.W          R0, [R4,#0x3E1]
2E42DA:  VSUB.F32        S2, S6, S2
2E42DE:  VMUL.F32        S0, S0, S0
2E42E2:  VMUL.F32        S2, S2, S2
2E42E6:  VADD.F32        S0, S0, S2
2E42EA:  VMOV            S2, R0
2E42EE:  VCVT.F32.U32    S2, S2
2E42F2:  VSQRT.F32       S0, S0
2E42F6:  VCMPE.F32       S0, S2
2E42FA:  VMRS            APSR_nzcv, FPSCR
2E42FE:  ITT LT
2E4300:  MOVLT           R0, #0x10
2E4302:  STRBLT.W        R0, [R4,#0x3BE]
2E4306:  B.W             loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E430A:  LDR.W           R5, [R4,#0x420]; jumptable 002E3BA2 case 16
2E430E:  CMP             R5, #0
2E4310:  BEQ.W           loc_2E4EC4
2E4314:  MOV.W           R0, #0xFFFFFFFF; int
2E4318:  MOVS            R1, #0; bool
2E431A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E431E:  CMP             R5, R0
2E4320:  ITT EQ
2E4322:  MOVEQ           R0, R4; this
2E4324:  BLXEQ           j__ZN6CCarAI29BackToCruisingIfNoWantedLevelEP8CVehicle; CCarAI::BackToCruisingIfNoWantedLevel(CVehicle *)
2E4328:  LDR.W           R1, [R4,#0x420]; CEntity *
2E432C:  LDR             R0, [R4,#0x14]
2E432E:  LDR             R2, [R1,#0x14]
2E4330:  ADD.W           R3, R0, #0x30 ; '0'
2E4334:  CMP             R0, #0
2E4336:  IT EQ
2E4338:  ADDEQ           R3, R4, #4
2E433A:  ADD.W           R0, R2, #0x30 ; '0'
2E433E:  CMP             R2, #0
2E4340:  VLDR            S0, [R3]
2E4344:  VLDR            S2, [R3,#4]
2E4348:  IT EQ
2E434A:  ADDEQ           R0, R1, #4
2E434C:  VLDR            S4, [R0]
2E4350:  VLDR            S6, [R0,#4]
2E4354:  VSUB.F32        S0, S4, S0
2E4358:  LDRB.W          R0, [R10]
2E435C:  VSUB.F32        S2, S6, S2
2E4360:  LSLS            R0, R0, #0x1F
2E4362:  VMUL.F32        S0, S0, S0
2E4366:  VMUL.F32        S2, S2, S2
2E436A:  VADD.F32        S0, S0, S2
2E436E:  VSQRT.F32       S0, S0
2E4372:  BNE.W           loc_2E5054
2E4376:  LDRB.W          R0, [R4,#0x3E1]
2E437A:  VMOV.F32        S2, #5.0
2E437E:  VMOV            S4, R0
2E4382:  VCVT.F32.U32    S4, S4
2E4386:  VADD.F32        S2, S4, S2
2E438A:  B.W             loc_2E5058
2E438E:  LDR.W           R0, [R4,#0x420]; jumptable 002E3BA2 case 17
2E4392:  CMP             R0, #0
2E4394:  BEQ.W           loc_2E4AF0
2E4398:  LDR             R1, [R4,#0x14]
2E439A:  LDR             R2, [R0,#0x14]
2E439C:  ADD.W           R3, R1, #0x30 ; '0'
2E43A0:  CMP             R1, #0
2E43A2:  IT EQ
2E43A4:  ADDEQ           R3, R4, #4
2E43A6:  ADD.W           R1, R2, #0x30 ; '0'
2E43AA:  CMP             R2, #0
2E43AC:  VLDR            S0, [R3]
2E43B0:  VLDR            S2, [R3,#4]
2E43B4:  IT EQ
2E43B6:  ADDEQ           R1, R0, #4
2E43B8:  VLDR            S4, [R1]
2E43BC:  VLDR            S6, [R1,#4]
2E43C0:  VSUB.F32        S0, S4, S0
2E43C4:  LDRB.W          R0, [R4,#0x3E1]
2E43C8:  VSUB.F32        S2, S6, S2
2E43CC:  VMUL.F32        S0, S0, S0
2E43D0:  VMUL.F32        S2, S2, S2
2E43D4:  VADD.F32        S0, S0, S2
2E43D8:  VMOV            S2, R0
2E43DC:  VCVT.F32.U32    S2, S2
2E43E0:  VSQRT.F32       S0, S0
2E43E4:  VCMPE.F32       S0, S2
2E43E8:  VMRS            APSR_nzcv, FPSCR
2E43EC:  BGE.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E43F0:  MOVS            R0, #0x12
2E43F2:  STRB.W          R0, [R4,#0x3BE]
2E43F6:  MOV             R0, R4; this
2E43F8:  BLX             j__ZNK8CVehicle9UsesSirenEv; CVehicle::UsesSiren(void)
2E43FC:  CMP             R0, #0
2E43FE:  BEQ.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E4402:  LDR.W           R0, [R10,#4]
2E4406:  ORR.W           R0, R0, #0x8000
2E440A:  STR.W           R0, [R10,#4]
2E440E:  B.W             loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E4412:  LDR.W           R0, [R4,#0x420]; jumptable 002E3BA2 case 18
2E4416:  CMP             R0, #0
2E4418:  BEQ.W           loc_2E4AF0
2E441C:  LDR             R1, [R4,#0x14]
2E441E:  LDR             R2, [R0,#0x14]
2E4420:  ADD.W           R3, R1, #0x30 ; '0'
2E4424:  CMP             R1, #0
2E4426:  IT EQ
2E4428:  ADDEQ           R3, R4, #4
2E442A:  ADD.W           R1, R2, #0x30 ; '0'
2E442E:  CMP             R2, #0
2E4430:  VLDR            S0, [R3]
2E4434:  VLDR            S2, [R3,#4]
2E4438:  IT EQ
2E443A:  ADDEQ           R1, R0, #4
2E443C:  VLDR            S4, [R1]
2E4440:  VLDR            S6, [R1,#4]
2E4444:  VSUB.F32        S0, S4, S0
2E4448:  LDRD.W          R0, R1, [R10]
2E444C:  VSUB.F32        S2, S6, S2
2E4450:  TST.W           R0, #1
2E4454:  VMUL.F32        S0, S0, S0
2E4458:  VMUL.F32        S2, S2, S2
2E445C:  VADD.F32        S0, S0, S2
2E4460:  VSQRT.F32       S0, S0
2E4464:  BNE.W           loc_2E5066
2E4468:  LDRB.W          R2, [R4,#0x3E1]
2E446C:  VMOV.F32        S2, #5.0
2E4470:  VMOV            S4, R2
2E4474:  VCVT.F32.U32    S4, S4
2E4478:  VADD.F32        S2, S4, S2
2E447C:  B.W             loc_2E506A
2E4480:  LDRB.W          R0, [R10]; jumptable 002E3BA2 case 21
2E4484:  LSLS            R0, R0, #0x1F
2E4486:  BEQ.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E448A:  MOV.W           R0, #0xFFFFFFFF; int
2E448E:  MOVS            R1, #0; bool
2E4490:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E4494:  CMP             R0, #0
2E4496:  ITT EQ
2E4498:  MOVEQ           R0, #0x40 ; '@'
2E449A:  STRBEQ.W        R0, [R4,#0x3BE]
2E449E:  MOV.W           R0, #0xFFFFFFFF; int
2E44A2:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
2E44A6:  LDR             R1, [R0,#0x2C]
2E44A8:  CMP             R1, #6; switch 7 cases
2E44AA:  BHI.W           def_2E44B0; jumptable 002E44B0 default case
2E44AE:  MOVS            R0, #8
2E44B0:  TBH.W           [PC,R1,LSL#1]; switch jump
2E44B4:  DCW 0xCAC; jump table for switch statement
2E44B6:  DCW 0x331
2E44B8:  DCW 7
2E44BA:  DCW 0xC9C
2E44BC:  DCW 0xCA1
2E44BE:  DCW 0xCA6
2E44C0:  DCW 0xCAB
2E44C2:  MOVS            R0, #0xF; jumptable 002E44B0 case 2
2E44C4:  STRB.W          R0, [R4,#0x3D4]
2E44C8:  B.W             def_2E44B0; jumptable 002E44B0 default case
2E44CC:  LDR             R0, [R4,#0x14]; jumptable 002E3BA2 case 24
2E44CE:  VMOV.F32        S2, #1.5
2E44D2:  VLDR            D16, [R4,#0x3F0]
2E44D6:  ADD.W           R1, R0, #0x30 ; '0'
2E44DA:  CMP             R0, #0
2E44DC:  IT EQ
2E44DE:  ADDEQ           R1, R4, #4
2E44E0:  VLDR            D17, [R1]
2E44E4:  VSUB.F32        D16, D16, D17
2E44E8:  VMUL.F32        D0, D16, D16
2E44EC:  VADD.F32        S0, S0, S1
2E44F0:  VSQRT.F32       S0, S0
2E44F4:  VCMPE.F32       S0, S2
2E44F8:  VMRS            APSR_nzcv, FPSCR
2E44FC:  ITT LT
2E44FE:  MOVLT           R0, #0x19
2E4500:  STRBLT.W        R0, [R4,#0x3BE]
2E4504:  B.W             def_2E44B0; jumptable 002E44B0 default case
2E4508:  ADD             R0, SP, #0xA0+var_88; jumptable 002E3BA2 case 25
2E450A:  MOV.W           R1, #0xFFFFFFFF
2E450E:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E4512:  LDR             R0, [R4,#0x14]
2E4514:  ADDS            R5, R4, #4
2E4516:  VLDR            S16, [SP,#0xA0+var_88]
2E451A:  CMP             R0, #0
2E451C:  MOV             R1, R5
2E451E:  IT NE
2E4520:  ADDNE.W         R1, R0, #0x30 ; '0'
2E4524:  ADD             R0, SP, #0xA0+var_54; int
2E4526:  VLDR            S18, [R1]
2E452A:  MOV.W           R1, #0xFFFFFFFF
2E452E:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E4532:  LDR             R0, [R4,#0x14]
2E4534:  MOV             R1, R5
2E4536:  VLDR            S20, [SP,#0xA0+var_54]
2E453A:  CMP             R0, #0
2E453C:  IT NE
2E453E:  ADDNE.W         R1, R0, #0x30 ; '0'
2E4542:  ADD             R0, SP, #0xA0+var_60; int
2E4544:  VLDR            S22, [R1]
2E4548:  MOV.W           R1, #0xFFFFFFFF
2E454C:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E4550:  LDR             R0, [R4,#0x14]
2E4552:  MOV             R1, R5
2E4554:  VLDR            S24, [SP,#0xA0+var_5C]
2E4558:  CMP             R0, #0
2E455A:  IT NE
2E455C:  ADDNE.W         R1, R0, #0x30 ; '0'
2E4560:  ADD             R0, SP, #0xA0+var_70; int
2E4562:  VLDR            S26, [R1,#4]
2E4566:  MOV.W           R1, #0xFFFFFFFF
2E456A:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E456E:  LDR             R0, [R4,#0x14]
2E4570:  VSUB.F32        S0, S16, S18
2E4574:  VLDR            S2, [SP,#0xA0+var_70+4]
2E4578:  VSUB.F32        S6, S20, S22
2E457C:  CMP             R0, #0
2E457E:  VSUB.F32        S8, S24, S26
2E4582:  IT NE
2E4584:  ADDNE.W         R5, R0, #0x30 ; '0'
2E4588:  VLDR            S4, [R5,#4]
2E458C:  VSUB.F32        S2, S2, S4
2E4590:  VMUL.F32        S0, S0, S6
2E4594:  VMUL.F32        S2, S8, S2
2E4598:  VADD.F32        S0, S0, S2
2E459C:  VSQRT.F32       S16, S0
2E45A0:  VMOV.F32        S0, #13.0
2E45A4:  VCMPE.F32       S16, S0
2E45A8:  VMRS            APSR_nzcv, FPSCR
2E45AC:  BGE             loc_2E45C0
2E45AE:  MOV             R0, R4; this
2E45B0:  BLX             j__ZN6CCarAI23TellOccupantsToLeaveCarEP8CVehicle; CCarAI::TellOccupantsToLeaveCar(CVehicle *)
2E45B4:  MOVS            R0, #0xB
2E45B6:  STRB.W          R0, [R4,#0x3BE]
2E45BA:  MOVS            R0, #0
2E45BC:  STRB.W          R0, [R4,#0x3D4]
2E45C0:  VLDR            S0, =70.0
2E45C4:  VCMPE.F32       S16, S0
2E45C8:  VMRS            APSR_nzcv, FPSCR
2E45CC:  BGT             loc_2E4610
2E45CE:  MOV.W           R0, #0xFFFFFFFF; int
2E45D2:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
2E45D6:  LDRB            R0, [R0,#0x1E]
2E45D8:  LSLS            R0, R0, #0x1D
2E45DA:  BMI             loc_2E4610
2E45DC:  LDRB.W          R0, [R10]
2E45E0:  LSLS            R0, R0, #0x1F
2E45E2:  BEQ.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E45E6:  MOV.W           R0, #0xFFFFFFFF; int
2E45EA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2E45EE:  LDR.W           R0, [R0,#0x444]
2E45F2:  LDR             R0, [R0]
2E45F4:  LDR             R0, [R0,#0x2C]
2E45F6:  CBZ             R0, loc_2E4610
2E45F8:  MOV.W           R0, #0xFFFFFFFF; int
2E45FC:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
2E4600:  LDRB            R0, [R0,#0x1E]
2E4602:  LSLS            R0, R0, #0x1D; this
2E4604:  BNE             loc_2E4610
2E4606:  BLX             j__ZN10CCullZones8NoPoliceEv; CCullZones::NoPolice(void)
2E460A:  CMP             R0, #1
2E460C:  BNE.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E4610:  MOV             R0, R4; this
2E4612:  BLX             j__ZN6CCarAI23TellOccupantsToLeaveCarEP8CVehicle; CCarAI::TellOccupantsToLeaveCar(CVehicle *)
2E4616:  MOVS            R0, #0xB
2E4618:  STRB.W          R0, [R4,#0x3BE]
2E461C:  MOVS            R0, #0
2E461E:  STRB.W          R0, [R4,#0x3D4]
2E4622:  B.W             loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E4626:  ADD             R0, SP, #0xA0+var_88; jumptable 002E3BA2 case 26
2E4628:  MOV.W           R1, #0xFFFFFFFF
2E462C:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E4630:  LDR             R0, [R4,#0x14]
2E4632:  ADDS            R5, R4, #4
2E4634:  VLDR            S16, [SP,#0xA0+var_88]
2E4638:  CMP             R0, #0
2E463A:  MOV             R1, R5
2E463C:  IT NE
2E463E:  ADDNE.W         R1, R0, #0x30 ; '0'
2E4642:  ADD             R0, SP, #0xA0+var_88; int
2E4644:  VLDR            S18, [R1]
2E4648:  MOV.W           R1, #0xFFFFFFFF
2E464C:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E4650:  LDR             R0, [R4,#0x14]
2E4652:  MOVS            R1, #0; bool
2E4654:  VLDR            S20, [SP,#0xA0+var_84]
2E4658:  CMP             R0, #0
2E465A:  IT NE
2E465C:  ADDNE.W         R5, R0, #0x30 ; '0'
2E4660:  MOV.W           R0, #0xFFFFFFFF; int
2E4664:  VLDR            S22, [R5,#4]
2E4668:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E466C:  CBZ             R0, loc_2E46CA
2E466E:  VSUB.F32        S0, S16, S18
2E4672:  MOV.W           R0, #0xFFFFFFFF; int
2E4676:  VSUB.F32        S2, S20, S22
2E467A:  VMUL.F32        S4, S0, S0
2E467E:  VMUL.F32        S6, S2, S2
2E4682:  VADD.F32        S4, S4, S6
2E4686:  VLDR            S6, =0.001
2E468A:  VSQRT.F32       S4, S4
2E468E:  VMAX.F32        D2, D2, D3
2E4692:  VDIV.F32        S16, S2, S4
2E4696:  VDIV.F32        S18, S0, S4
2E469A:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
2E469E:  VLDR            S20, [R0]
2E46A2:  MOV.W           R0, #0xFFFFFFFF; int
2E46A6:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
2E46AA:  VLDR            S0, [R0,#4]
2E46AE:  VMUL.F32        S2, S18, S20
2E46B2:  VMUL.F32        S0, S16, S0
2E46B6:  VADD.F32        S0, S2, S0
2E46BA:  VLDR            S2, =0.05
2E46BE:  VCMPE.F32       S0, S2
2E46C2:  VMRS            APSR_nzcv, FPSCR
2E46C6:  BLE.W           def_2E44B0; jumptable 002E44B0 default case
2E46CA:  MOVS            R0, #5
2E46CC:  STRB.W          R0, [R4,#0x3BE]
2E46D0:  B.W             def_2E44B0; jumptable 002E44B0 default case
2E46D4:  ADD             R0, SP, #0xA0+var_88; jumptable 002E3BA2 case 43
2E46D6:  MOV.W           R1, #0xFFFFFFFF
2E46DA:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E46DE:  LDR             R0, [R4,#0x14]
2E46E0:  ADDS            R5, R4, #4
2E46E2:  VLDR            S16, [SP,#0xA0+var_88]
2E46E6:  CMP             R0, #0
2E46E8:  MOV             R1, R5
2E46EA:  IT NE
2E46EC:  ADDNE.W         R1, R0, #0x30 ; '0'
2E46F0:  ADD             R0, SP, #0xA0+var_54; int
2E46F2:  VLDR            S18, [R1]
2E46F6:  MOV.W           R1, #0xFFFFFFFF
2E46FA:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E46FE:  LDR             R0, [R4,#0x14]
2E4700:  MOV             R1, R5
2E4702:  VLDR            S20, [SP,#0xA0+var_54]
2E4706:  CMP             R0, #0
2E4708:  IT NE
2E470A:  ADDNE.W         R1, R0, #0x30 ; '0'
2E470E:  ADD             R0, SP, #0xA0+var_60; int
2E4710:  VLDR            S22, [R1]
2E4714:  MOV.W           R1, #0xFFFFFFFF
2E4718:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E471C:  LDR             R0, [R4,#0x14]
2E471E:  MOV             R1, R5
2E4720:  VLDR            S24, [SP,#0xA0+var_5C]
2E4724:  CMP             R0, #0
2E4726:  IT NE
2E4728:  ADDNE.W         R1, R0, #0x30 ; '0'
2E472C:  ADD             R0, SP, #0xA0+var_70; int
2E472E:  VLDR            S26, [R1,#4]
2E4732:  MOV.W           R1, #0xFFFFFFFF
2E4736:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E473A:  LDR             R0, [R4,#0x14]
2E473C:  VSUB.F32        S0, S16, S18
2E4740:  VLDR            S2, [SP,#0xA0+var_70+4]
2E4744:  VSUB.F32        S6, S20, S22
2E4748:  CMP             R0, #0
2E474A:  VSUB.F32        S8, S24, S26
2E474E:  IT NE
2E4750:  ADDNE.W         R5, R0, #0x30 ; '0'
2E4754:  LDRB.W          R0, [R4,#0x3E1]
2E4758:  VLDR            S4, [R5,#4]
2E475C:  VSUB.F32        S2, S2, S4
2E4760:  VMUL.F32        S0, S0, S6
2E4764:  VMUL.F32        S2, S8, S2
2E4768:  VADD.F32        S0, S0, S2
2E476C:  VMOV            S2, R0
2E4770:  VCVT.F32.U32    S2, S2
2E4774:  VSQRT.F32       S0, S0
2E4778:  VCMPE.F32       S0, S2
2E477C:  VMRS            APSR_nzcv, FPSCR
2E4780:  BGE.W           def_2E44B0; jumptable 002E44B0 default case
2E4784:  MOVS            R0, #0x2C ; ','
2E4786:  STRB.W          R0, [R4,#0x3BE]
2E478A:  MOV             R0, R4; this
2E478C:  BLX             j__ZNK8CVehicle9UsesSirenEv; CVehicle::UsesSiren(void)
2E4790:  CMP             R0, #0
2E4792:  ITTT NE
2E4794:  LDRNE.W         R0, [R10,#4]
2E4798:  ORRNE.W         R0, R0, #0x8000
2E479C:  STRNE.W         R0, [R10,#4]
2E47A0:  B.W             def_2E44B0; jumptable 002E44B0 default case
2E47A4:  ADD             R0, SP, #0xA0+var_88; jumptable 002E3BA2 case 44
2E47A6:  MOV.W           R1, #0xFFFFFFFF
2E47AA:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E47AE:  LDR             R0, [R4,#0x14]
2E47B0:  ADDS            R5, R4, #4
2E47B2:  VLDR            S16, [SP,#0xA0+var_88]
2E47B6:  CMP             R0, #0
2E47B8:  MOV             R1, R5
2E47BA:  IT NE
2E47BC:  ADDNE.W         R1, R0, #0x30 ; '0'
2E47C0:  ADD             R0, SP, #0xA0+var_54; int
2E47C2:  VLDR            S18, [R1]
2E47C6:  MOV.W           R1, #0xFFFFFFFF
2E47CA:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E47CE:  LDR             R0, [R4,#0x14]
2E47D0:  MOV             R1, R5
2E47D2:  VLDR            S20, [SP,#0xA0+var_54]
2E47D6:  CMP             R0, #0
2E47D8:  IT NE
2E47DA:  ADDNE.W         R1, R0, #0x30 ; '0'
2E47DE:  ADD             R0, SP, #0xA0+var_60; int
2E47E0:  VLDR            S22, [R1]
2E47E4:  MOV.W           R1, #0xFFFFFFFF
2E47E8:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E47EC:  LDR             R0, [R4,#0x14]
2E47EE:  MOV             R1, R5
2E47F0:  VLDR            S24, [SP,#0xA0+var_5C]
2E47F4:  CMP             R0, #0
2E47F6:  IT NE
2E47F8:  ADDNE.W         R1, R0, #0x30 ; '0'
2E47FC:  ADD             R0, SP, #0xA0+var_70; int
2E47FE:  VLDR            S26, [R1,#4]
2E4802:  MOV.W           R1, #0xFFFFFFFF
2E4806:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E480A:  LDR             R0, [R4,#0x14]
2E480C:  VSUB.F32        S0, S16, S18
2E4810:  VLDR            S2, [SP,#0xA0+var_70+4]
2E4814:  VSUB.F32        S6, S20, S22
2E4818:  CMP             R0, #0
2E481A:  VSUB.F32        S8, S24, S26
2E481E:  IT NE
2E4820:  ADDNE.W         R5, R0, #0x30 ; '0'
2E4824:  LDRB.W          R0, [R10]
2E4828:  VLDR            S4, [R5,#4]
2E482C:  VSUB.F32        S2, S2, S4
2E4830:  LSLS            R0, R0, #0x1F
2E4832:  VMUL.F32        S0, S0, S6
2E4836:  VMUL.F32        S2, S8, S2
2E483A:  VADD.F32        S0, S0, S2
2E483E:  VSQRT.F32       S16, S0
2E4842:  BNE.W           loc_2E4C78
2E4846:  LDRB.W          R0, [R4,#0x3E1]
2E484A:  VMOV.F32        S0, #5.0
2E484E:  VMOV            S2, R0
2E4852:  VCVT.F32.U32    S2, S2
2E4856:  VADD.F32        S0, S2, S0
2E485A:  B               loc_2E4C7C
2E485C:  LDR.W           R0, [R4,#0x420]; jumptable 002E3BA2 case 52
2E4860:  CMP             R0, #0
2E4862:  BEQ.W           loc_2E4AF0
2E4866:  LDR             R1, [R4,#0x14]
2E4868:  LDR             R2, [R0,#0x14]
2E486A:  ADD.W           R3, R1, #0x30 ; '0'
2E486E:  CMP             R1, #0
2E4870:  IT EQ
2E4872:  ADDEQ           R3, R4, #4
2E4874:  ADD.W           R1, R2, #0x30 ; '0'
2E4878:  CMP             R2, #0
2E487A:  VLDR            S0, [R3]
2E487E:  VLDR            S2, [R3,#4]
2E4882:  IT EQ
2E4884:  ADDEQ           R1, R0, #4
2E4886:  VLDR            S4, [R1]
2E488A:  VLDR            S6, [R1,#4]
2E488E:  VSUB.F32        S0, S4, S0
2E4892:  LDRB.W          R0, [R4,#0x3E1]
2E4896:  VSUB.F32        S2, S6, S2
2E489A:  VMUL.F32        S0, S0, S0
2E489E:  VMUL.F32        S2, S2, S2
2E48A2:  VADD.F32        S0, S0, S2
2E48A6:  VMOV            S2, R0
2E48AA:  VCVT.F32.U32    S2, S2
2E48AE:  VSQRT.F32       S0, S0
2E48B2:  VCMPE.F32       S0, S2
2E48B6:  VMRS            APSR_nzcv, FPSCR
2E48BA:  ITT LT
2E48BC:  MOVLT           R0, #0x35 ; '5'
2E48BE:  STRBLT.W        R0, [R4,#0x3BE]
2E48C2:  B.W             loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E48C6:  LDR.W           R0, [R4,#0x420]; jumptable 002E3BA2 case 53
2E48CA:  CMP             R0, #0
2E48CC:  BEQ.W           loc_2E4AF0
2E48D0:  LDR             R1, [R4,#0x14]
2E48D2:  LDR             R2, [R0,#0x14]
2E48D4:  ADD.W           R3, R1, #0x30 ; '0'
2E48D8:  CMP             R1, #0
2E48DA:  IT EQ
2E48DC:  ADDEQ           R3, R4, #4
2E48DE:  ADD.W           R1, R2, #0x30 ; '0'
2E48E2:  CMP             R2, #0
2E48E4:  VLDR            S0, [R3]
2E48E8:  VLDR            S2, [R3,#4]
2E48EC:  IT EQ
2E48EE:  ADDEQ           R1, R0, #4
2E48F0:  VLDR            S4, [R1]
2E48F4:  VLDR            S6, [R1,#4]
2E48F8:  VSUB.F32        S0, S4, S0
2E48FC:  LDRB.W          R0, [R10]
2E4900:  VSUB.F32        S2, S6, S2
2E4904:  LSLS            R0, R0, #0x1F
2E4906:  VMUL.F32        S0, S0, S0
2E490A:  VMUL.F32        S2, S2, S2
2E490E:  VADD.F32        S0, S0, S2
2E4912:  VSQRT.F32       S0, S0
2E4916:  BNE.W           loc_2E508C
2E491A:  LDRB.W          R0, [R4,#0x3E1]
2E491E:  VMOV.F32        S2, #5.0
2E4922:  VMOV            S4, R0
2E4926:  VCVT.F32.U32    S4, S4
2E492A:  VADD.F32        S2, S4, S2
2E492E:  B               loc_2E5090
2E4930:  DCD _ZN17CVehicleRecording9bUseCarAIE_ptr - 0x2E3A3C
2E4934:  DCFS 70.0
2E4938:  DCFS 0.001
2E493C:  DCFS 0.05
2E4940:  DCFS 50.0
2E4944:  DCD _ZN6CTimer14m_FrameCounterE_ptr - 0x2E4BFC
2E4948:  DCD _ZN6CTimer14m_FrameCounterE_ptr - 0x2E4C4E
2E494C:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2E4D1E
2E4950:  LDR.W           R0, [R4,#0x420]; jumptable 002E3BA2 case 54
2E4954:  CMP             R0, #0
2E4956:  BEQ.W           loc_2E4AF0
2E495A:  LDR             R1, [R4,#0x14]
2E495C:  LDR             R2, [R0,#0x14]
2E495E:  ADD.W           R3, R1, #0x30 ; '0'
2E4962:  CMP             R1, #0
2E4964:  IT EQ
2E4966:  ADDEQ           R3, R4, #4
2E4968:  ADD.W           R1, R2, #0x30 ; '0'
2E496C:  CMP             R2, #0
2E496E:  VLDR            S0, [R3]
2E4972:  VLDR            S2, [R3,#4]
2E4976:  IT EQ
2E4978:  ADDEQ           R1, R0, #4
2E497A:  VLDR            S4, [R1]
2E497E:  VLDR            S6, [R1,#4]
2E4982:  VSUB.F32        S0, S4, S0
2E4986:  LDRB.W          R0, [R4,#0x3E1]
2E498A:  VSUB.F32        S2, S6, S2
2E498E:  VMUL.F32        S0, S0, S0
2E4992:  VMUL.F32        S2, S2, S2
2E4996:  VADD.F32        S0, S0, S2
2E499A:  VMOV            S2, R0
2E499E:  VCVT.F32.U32    S2, S2
2E49A2:  VSQRT.F32       S0, S0
2E49A6:  VCMPE.F32       S0, S2
2E49AA:  VMRS            APSR_nzcv, FPSCR
2E49AE:  ITT LT
2E49B0:  MOVLT           R0, #0x37 ; '7'
2E49B2:  STRBLT.W        R0, [R4,#0x3BE]
2E49B6:  B.W             loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E49BA:  LDR.W           R0, [R4,#0x420]; jumptable 002E3BA2 case 55
2E49BE:  CMP             R0, #0
2E49C0:  BEQ.W           loc_2E4AF0
2E49C4:  LDR             R1, [R4,#0x14]
2E49C6:  LDR             R2, [R0,#0x14]
2E49C8:  ADD.W           R3, R1, #0x30 ; '0'
2E49CC:  CMP             R1, #0
2E49CE:  IT EQ
2E49D0:  ADDEQ           R3, R4, #4
2E49D2:  ADD.W           R1, R2, #0x30 ; '0'
2E49D6:  CMP             R2, #0
2E49D8:  VLDR            S0, [R3]
2E49DC:  VLDR            S2, [R3,#4]
2E49E0:  IT EQ
2E49E2:  ADDEQ           R1, R0, #4
2E49E4:  VLDR            S4, [R1]
2E49E8:  VLDR            S6, [R1,#4]
2E49EC:  VSUB.F32        S0, S4, S0
2E49F0:  LDRB.W          R0, [R10]
2E49F4:  VSUB.F32        S2, S6, S2
2E49F8:  LSLS            R0, R0, #0x1F
2E49FA:  VMUL.F32        S0, S0, S0
2E49FE:  VMUL.F32        S2, S2, S2
2E4A02:  VADD.F32        S0, S0, S2
2E4A06:  VSQRT.F32       S0, S0
2E4A0A:  BNE.W           loc_2E50A0
2E4A0E:  LDRB.W          R0, [R4,#0x3E1]
2E4A12:  VMOV.F32        S2, #5.0
2E4A16:  VMOV            S4, R0
2E4A1A:  VCVT.F32.U32    S4, S4
2E4A1E:  VADD.F32        S2, S4, S2
2E4A22:  B               loc_2E50A4
2E4A24:  LDR.W           R0, [R4,#0x420]; jumptable 002E3BA2 case 60
2E4A28:  CMP             R0, #0
2E4A2A:  BEQ             loc_2E4AF0
2E4A2C:  LDR             R1, [R4,#0x14]
2E4A2E:  LDR             R2, [R0,#0x14]
2E4A30:  ADD.W           R3, R1, #0x30 ; '0'
2E4A34:  CMP             R1, #0
2E4A36:  IT EQ
2E4A38:  ADDEQ           R3, R4, #4
2E4A3A:  ADD.W           R1, R2, #0x30 ; '0'
2E4A3E:  CMP             R2, #0
2E4A40:  VLDR            S0, [R3]
2E4A44:  VLDR            S2, [R3,#4]
2E4A48:  IT EQ
2E4A4A:  ADDEQ           R1, R0, #4; CVehicle *
2E4A4C:  VLDR            S4, [R1]
2E4A50:  VLDR            S6, [R1,#4]
2E4A54:  VSUB.F32        S0, S4, S0
2E4A58:  LDRB.W          R0, [R10]
2E4A5C:  VSUB.F32        S2, S6, S2
2E4A60:  LSLS            R0, R0, #0x1F
2E4A62:  VMUL.F32        S0, S0, S0
2E4A66:  VMUL.F32        S2, S2, S2
2E4A6A:  VADD.F32        S0, S0, S2
2E4A6E:  VSQRT.F32       S0, S0
2E4A72:  BNE.W           loc_2E50B4
2E4A76:  LDRB.W          R0, [R4,#0x3E1]
2E4A7A:  VMOV.F32        S2, #5.0
2E4A7E:  VMOV            S4, R0
2E4A82:  VCVT.F32.U32    S4, S4
2E4A86:  VADD.F32        S2, S4, S2
2E4A8A:  B               loc_2E50B8
2E4A8C:  LDR.W           R0, [R4,#0x420]; jumptable 002E3BA2 case 61
2E4A90:  CBZ             R0, loc_2E4AF0
2E4A92:  LDR             R1, [R4,#0x14]
2E4A94:  LDR             R2, [R0,#0x14]
2E4A96:  ADD.W           R3, R1, #0x30 ; '0'
2E4A9A:  CMP             R1, #0
2E4A9C:  IT EQ
2E4A9E:  ADDEQ           R3, R4, #4
2E4AA0:  ADD.W           R1, R2, #0x30 ; '0'
2E4AA4:  CMP             R2, #0
2E4AA6:  VLDR            S0, [R3]
2E4AAA:  VLDR            S2, [R3,#4]
2E4AAE:  IT EQ
2E4AB0:  ADDEQ           R1, R0, #4
2E4AB2:  VLDR            S4, [R1]
2E4AB6:  VLDR            S6, [R1,#4]
2E4ABA:  VSUB.F32        S0, S4, S0
2E4ABE:  LDRB.W          R0, [R4,#0x3E1]
2E4AC2:  VSUB.F32        S2, S6, S2
2E4AC6:  VMUL.F32        S0, S0, S0
2E4ACA:  VMUL.F32        S2, S2, S2
2E4ACE:  VADD.F32        S0, S0, S2
2E4AD2:  VMOV            S2, R0
2E4AD6:  VCVT.F32.U32    S2, S2
2E4ADA:  VSQRT.F32       S0, S0
2E4ADE:  VCMPE.F32       S0, S2
2E4AE2:  VMRS            APSR_nzcv, FPSCR
2E4AE6:  ITT LT
2E4AE8:  MOVLT           R0, #0x3C ; '<'
2E4AEA:  STRBLT.W        R0, [R4,#0x3BE]
2E4AEE:  B               loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E4AF0:  MOVS            R0, #0
2E4AF2:  STRB.W          R0, [R4,#0x3BE]
2E4AF6:  B               loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E4AF8:  LDRB.W          R0, [R10]; jumptable 002E3BA2 case 64
2E4AFC:  LSLS            R0, R0, #0x1F
2E4AFE:  BEQ.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E4B02:  MOV.W           R0, #0xFFFFFFFF; int
2E4B06:  MOVS            R1, #0; bool
2E4B08:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E4B0C:  CMP             R0, #0
2E4B0E:  ITT NE
2E4B10:  MOVNE           R0, #0x15
2E4B12:  STRBNE.W        R0, [R4,#0x3BE]
2E4B16:  MOVS            R0, #0xA; jumptable 002E44B0 case 1
2E4B18:  STRB.W          R0, [R4,#0x3D4]
2E4B1C:  B               def_2E44B0; jumptable 002E44B0 default case
2E4B1E:  VLDR            S2, =50.0
2E4B22:  VCMPE.F32       S0, S2
2E4B26:  VMRS            APSR_nzcv, FPSCR
2E4B2A:  BLE.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E4B2E:  ADD             R5, SP, #0xA0+var_88
2E4B30:  MOV.W           R1, #0xFFFFFFFF
2E4B34:  MOV             R0, R5; int
2E4B36:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E4B3A:  MOV             R0, R4; this
2E4B3C:  MOV             R1, R5; CVehicle *
2E4B3E:  MOVS            R2, #(stderr+1); CVector *
2E4B40:  MOVS            R3, #0; bool
2E4B42:  BLX             j__ZN8CCarCtrl30JoinCarWithRoadSystemGotoCoorsEP8CVehicleRK7CVectorbb; CCarCtrl::JoinCarWithRoadSystemGotoCoors(CVehicle *,CVector const&,bool,bool)
2E4B46:  CMP             R0, #0
2E4B48:  BNE.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E4B4C:  LDRB.W          R0, [R4,#0x3BE]
2E4B50:  ADDS            R0, #0x24 ; '$'
2E4B52:  STRB.W          R0, [R4,#0x3BE]
2E4B56:  B               loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E4B58:  VLDR            S0, =50.0
2E4B5C:  VCMPE.F32       S16, S0
2E4B60:  VMRS            APSR_nzcv, FPSCR
2E4B64:  BLE.W           loc_2E4CC0
2E4B68:  ADD             R5, SP, #0xA0+var_88
2E4B6A:  MOV.W           R1, #0xFFFFFFFF
2E4B6E:  MOV             R0, R5; int
2E4B70:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E4B74:  MOV             R0, R4; this
2E4B76:  MOV             R1, R5; CVehicle *
2E4B78:  MOVS            R2, #(stderr+1); CVector *
2E4B7A:  MOVS            R3, #0; bool
2E4B7C:  MOVS            R6, #0
2E4B7E:  BLX             j__ZN8CCarCtrl30JoinCarWithRoadSystemGotoCoorsEP8CVehicleRK7CVectorbb; CCarCtrl::JoinCarWithRoadSystemGotoCoors(CVehicle *,CVector const&,bool,bool)
2E4B82:  CMP             R0, #0
2E4B84:  BNE.W           loc_2E526A
2E4B88:  MOVS            R0, #2
2E4B8A:  B               loc_2E4BBE
2E4B8C:  VLDR            S0, =50.0
2E4B90:  VCMPE.F32       S16, S0
2E4B94:  VMRS            APSR_nzcv, FPSCR
2E4B98:  BLE.W           loc_2E4DC6
2E4B9C:  ADD             R5, SP, #0xA0+var_88
2E4B9E:  MOV.W           R1, #0xFFFFFFFF
2E4BA2:  MOV             R0, R5; int
2E4BA4:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E4BA8:  MOV             R0, R4; this
2E4BAA:  MOV             R1, R5; CVehicle *
2E4BAC:  MOVS            R2, #(stderr+1); CVector *
2E4BAE:  MOVS            R3, #0; bool
2E4BB0:  MOVS            R6, #0
2E4BB2:  BLX             j__ZN8CCarCtrl30JoinCarWithRoadSystemGotoCoorsEP8CVehicleRK7CVectorbb; CCarCtrl::JoinCarWithRoadSystemGotoCoors(CVehicle *,CVector const&,bool,bool)
2E4BB6:  CMP             R0, #0
2E4BB8:  BNE.W           loc_2E526A
2E4BBC:  MOVS            R0, #4
2E4BBE:  STRB.W          R0, [R4,#0x3BE]
2E4BC2:  LDR.W           R0, [R10,#4]
2E4BC6:  BIC.W           R0, R0, #0x8000
2E4BCA:  STR.W           R0, [R10,#4]
2E4BCE:  STR.W           R6, [R4,#0x524]
2E4BD2:  B               loc_2E526A
2E4BD4:  LDRB.W          R0, [R4,#0x3E1]
2E4BD8:  VMOV.F32        S2, #5.0
2E4BDC:  VMOV            S4, R0
2E4BE0:  VCVT.F32.U32    S4, S4
2E4BE4:  VADD.F32        S2, S4, S2
2E4BE8:  VCMPE.F32       S0, S2
2E4BEC:  VMRS            APSR_nzcv, FPSCR
2E4BF0:  BLE.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E4BF4:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x2E4BFC)
2E4BF8:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
2E4BFA:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
2E4BFC:  LDRB            R0, [R0]; CTimer::m_FrameCounter
2E4BFE:  LSLS            R0, R0, #0x1D
2E4C00:  BNE.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E4C04:  MOVS            R0, #0
2E4C06:  ADD.W           R1, R4, #0x3F0; CVehicle *
2E4C0A:  STRB.W          R0, [R4,#0x3BF]
2E4C0E:  MOV             R0, R4; this
2E4C10:  MOVS            R2, #(stderr+1); CVector *
2E4C12:  MOVS            R3, #0; bool
2E4C14:  BLX             j__ZN8CCarCtrl30JoinCarWithRoadSystemGotoCoorsEP8CVehicleRK7CVectorbb; CCarCtrl::JoinCarWithRoadSystemGotoCoors(CVehicle *,CVector const&,bool,bool)
2E4C18:  MOVS            R1, #8
2E4C1A:  CMP             R0, #0
2E4C1C:  IT NE
2E4C1E:  MOVNE           R1, #9
2E4C20:  STRB.W          R1, [R4,#0x3BE]
2E4C24:  B               loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E4C26:  LDRB.W          R0, [R4,#0x3E1]
2E4C2A:  VMOV.F32        S2, #5.0
2E4C2E:  VMOV            S4, R0
2E4C32:  VCVT.F32.U32    S4, S4
2E4C36:  VADD.F32        S2, S4, S2
2E4C3A:  VCMPE.F32       S0, S2
2E4C3E:  VMRS            APSR_nzcv, FPSCR
2E4C42:  BLE.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E4C46:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x2E4C4E)
2E4C4A:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
2E4C4C:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
2E4C4E:  LDRB            R0, [R0]; CTimer::m_FrameCounter
2E4C50:  LSLS            R0, R0, #0x1D
2E4C52:  BNE.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E4C56:  MOVS            R0, #0
2E4C58:  ADD.W           R1, R4, #0x3F0; CVehicle *
2E4C5C:  STRB.W          R0, [R4,#0x3BF]
2E4C60:  MOV             R0, R4; this
2E4C62:  MOVS            R2, #(stderr+1); CVector *
2E4C64:  MOVS            R3, #0; bool
2E4C66:  BLX             j__ZN8CCarCtrl30JoinCarWithRoadSystemGotoCoorsEP8CVehicleRK7CVectorbb; CCarCtrl::JoinCarWithRoadSystemGotoCoors(CVehicle *,CVector const&,bool,bool)
2E4C6A:  MOVS            R1, #0xC
2E4C6C:  CMP             R0, #0
2E4C6E:  IT NE
2E4C70:  MOVNE           R1, #0xD
2E4C72:  STRB.W          R1, [R4,#0x3BE]
2E4C76:  B               loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E4C78:  VLDR            S0, =50.0
2E4C7C:  VCMPE.F32       S16, S0
2E4C80:  VMRS            APSR_nzcv, FPSCR
2E4C84:  BLE.W           loc_2E4E46
2E4C88:  ADD             R5, SP, #0xA0+var_88
2E4C8A:  MOV.W           R1, #0xFFFFFFFF
2E4C8E:  MOV             R0, R5; int
2E4C90:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E4C94:  MOV             R0, R4; this
2E4C96:  MOV             R1, R5; CVehicle *
2E4C98:  MOVS            R2, #(stderr+1); CVector *
2E4C9A:  MOVS            R3, #0; bool
2E4C9C:  MOVS            R6, #0
2E4C9E:  BLX             j__ZN8CCarCtrl30JoinCarWithRoadSystemGotoCoorsEP8CVehicleRK7CVectorbb; CCarCtrl::JoinCarWithRoadSystemGotoCoors(CVehicle *,CVector const&,bool,bool)
2E4CA2:  CMP             R0, #0
2E4CA4:  BNE.W           loc_2E522A
2E4CA8:  MOVS            R0, #0x2B ; '+'
2E4CAA:  STRB.W          R0, [R4,#0x3BE]
2E4CAE:  LDR.W           R0, [R10,#4]
2E4CB2:  BIC.W           R0, R0, #0x8000
2E4CB6:  STR.W           R0, [R10,#4]
2E4CBA:  STR.W           R6, [R4,#0x524]
2E4CBE:  B               loc_2E522A
2E4CC0:  MOV.W           R0, #0xFFFFFFFF; int
2E4CC4:  MOVS            R1, #0; bool
2E4CC6:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E4CCA:  CBZ             R0, loc_2E4D46
2E4CCC:  MOV.W           R0, #0xFFFFFFFF; int
2E4CD0:  MOVS            R1, #0; bool
2E4CD2:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E4CD6:  MOV             R1, R0; CEntity *
2E4CD8:  MOV             R0, R4; this
2E4CDA:  BLX             j__ZN9CPhysical18GetHasCollidedWithEP7CEntity; CPhysical::GetHasCollidedWith(CEntity *)
2E4CDE:  CMP             R0, #1
2E4CE0:  BNE             loc_2E4D46
2E4CE2:  LDRB.W          R0, [R4,#0x3BF]
2E4CE6:  SUBS            R0, #7
2E4CE8:  UXTB            R0, R0
2E4CEA:  CMP             R0, #2
2E4CEC:  BCC             loc_2E4D46
2E4CEE:  MOV.W           R0, #0xFFFFFFFF; int
2E4CF2:  MOVS            R1, #0; bool
2E4CF4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E4CF8:  VLDR            S0, [R0,#0x48]
2E4CFC:  MOVS            R1, #3
2E4CFE:  VLDR            S2, [R0,#0x4C]
2E4D02:  VMUL.F32        S0, S0, S0
2E4D06:  VLDR            S4, [R0,#0x50]
2E4D0A:  VMUL.F32        S2, S2, S2
2E4D0E:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2E4D1E)
2E4D12:  VMUL.F32        S4, S4, S4
2E4D16:  STRB.W          R1, [R4,#0x3BF]
2E4D1A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2E4D1C:  MOVS            R1, #0x32 ; '2'
2E4D1E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2E4D20:  VADD.F32        S0, S0, S2
2E4D24:  VLDR            S2, =0.05
2E4D28:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2E4D2A:  VADD.F32        S0, S0, S4
2E4D2E:  VSQRT.F32       S0, S0
2E4D32:  VCMPE.F32       S0, S2
2E4D36:  VMRS            APSR_nzcv, FPSCR
2E4D3A:  IT LT
2E4D3C:  MOVLT.W         R1, #0x320
2E4D40:  ADD             R0, R1
2E4D42:  STR.W           R0, [R4,#0x3C0]
2E4D46:  MOV.W           R0, #0xFFFFFFFF; int
2E4D4A:  MOVS            R1, #0; bool
2E4D4C:  MOVS            R5, #0
2E4D4E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E4D52:  CMP             R0, #0
2E4D54:  BEQ.W           loc_2E4ECC
2E4D58:  MOV.W           R0, #0xFFFFFFFF; int
2E4D5C:  MOVS            R1, #0; bool
2E4D5E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E4D62:  VLDR            S0, [R0,#0x48]
2E4D66:  VLDR            S2, [R0,#0x4C]
2E4D6A:  VMUL.F32        S0, S0, S0
2E4D6E:  VLDR            S4, [R0,#0x50]
2E4D72:  VMUL.F32        S2, S2, S2
2E4D76:  VMUL.F32        S4, S4, S4
2E4D7A:  VADD.F32        S0, S0, S2
2E4D7E:  VLDR            S2, =0.05
2E4D82:  VADD.F32        S0, S0, S4
2E4D86:  VSQRT.F32       S0, S0
2E4D8A:  VCMPE.F32       S0, S2
2E4D8E:  VMRS            APSR_nzcv, FPSCR
2E4D92:  BGE.W           loc_2E4ECC
2E4D96:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x2E4DA0)
2E4D98:  LDRH.W          R1, [R4,#0x4EC]
2E4D9C:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
2E4D9E:  VLDR            S0, =16.667
2E4DA2:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
2E4DA4:  VMOV            S4, R1
2E4DA8:  VLDR            S2, [R0]
2E4DAC:  VCVT.F32.U32    S4, S4
2E4DB0:  VMUL.F32        S0, S2, S0
2E4DB4:  VADD.F32        S0, S0, S4
2E4DB8:  VCVT.U32.F32    S0, S0
2E4DBC:  VMOV            R0, S0
2E4DC0:  STRH.W          R0, [R4,#0x4EC]
2E4DC4:  B               loc_2E4ED0
2E4DC6:  MOV.W           R0, #0xFFFFFFFF; int
2E4DCA:  MOVS            R1, #0; bool
2E4DCC:  MOVS            R5, #0
2E4DCE:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E4DD2:  CMP             R0, #0
2E4DD4:  BEQ.W           loc_2E4F1C
2E4DD8:  MOV.W           R0, #0xFFFFFFFF; int
2E4DDC:  MOVS            R1, #0; bool
2E4DDE:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E4DE2:  VLDR            S0, [R0,#0x48]
2E4DE6:  VLDR            S2, [R0,#0x4C]
2E4DEA:  VMUL.F32        S0, S0, S0
2E4DEE:  VLDR            S4, [R0,#0x50]
2E4DF2:  VMUL.F32        S2, S2, S2
2E4DF6:  VMUL.F32        S4, S4, S4
2E4DFA:  VADD.F32        S0, S0, S2
2E4DFE:  VLDR            S2, =0.04
2E4E02:  VADD.F32        S0, S0, S4
2E4E06:  VSQRT.F32       S0, S0
2E4E0A:  VCMPE.F32       S0, S2
2E4E0E:  VMRS            APSR_nzcv, FPSCR
2E4E12:  BGE.W           loc_2E4F1C
2E4E16:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x2E4E20)
2E4E18:  LDRH.W          R1, [R4,#0x4EC]
2E4E1C:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
2E4E1E:  VLDR            S0, =16.667
2E4E22:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
2E4E24:  VMOV            S4, R1
2E4E28:  VLDR            S2, [R0]
2E4E2C:  VCVT.F32.U32    S4, S4
2E4E30:  VMUL.F32        S0, S2, S0
2E4E34:  VADD.F32        S0, S0, S4
2E4E38:  VCVT.U32.F32    S0, S0
2E4E3C:  VMOV            R0, S0
2E4E40:  STRH.W          R0, [R4,#0x4EC]
2E4E44:  B               loc_2E4F20
2E4E46:  MOV.W           R0, #0xFFFFFFFF; int
2E4E4A:  MOVS            R1, #0; bool
2E4E4C:  MOVS            R5, #0
2E4E4E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E4E52:  CMP             R0, #0
2E4E54:  BEQ.W           loc_2E4FBA
2E4E58:  MOV.W           R0, #0xFFFFFFFF; int
2E4E5C:  MOVS            R1, #0; bool
2E4E5E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E4E62:  VLDR            S0, [R0,#0x48]
2E4E66:  VLDR            S2, [R0,#0x4C]
2E4E6A:  VMUL.F32        S0, S0, S0
2E4E6E:  VLDR            S4, [R0,#0x50]
2E4E72:  VMUL.F32        S2, S2, S2
2E4E76:  VMUL.F32        S4, S4, S4
2E4E7A:  VADD.F32        S0, S0, S2
2E4E7E:  VLDR            S2, =0.05
2E4E82:  VADD.F32        S0, S0, S4
2E4E86:  VSQRT.F32       S0, S0
2E4E8A:  VCMPE.F32       S0, S2
2E4E8E:  VMRS            APSR_nzcv, FPSCR
2E4E92:  BGE.W           loc_2E4FBA
2E4E96:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x2E4EA0)
2E4E98:  VLDR            S0, =50.0
2E4E9C:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
2E4E9E:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
2E4EA0:  VLDR            S2, [R0]
2E4EA4:  LDRH.W          R0, [R4,#0x4EC]
2E4EA8:  VDIV.F32        S0, S2, S0
2E4EAC:  VLDR            S2, =1000.0
2E4EB0:  VMUL.F32        S0, S0, S2
2E4EB4:  VCVT.U32.F32    S0, S0
2E4EB8:  VMOV            R1, S0
2E4EBC:  ADD             R0, R1
2E4EBE:  STRH.W          R0, [R4,#0x4EC]
2E4EC2:  B               loc_2E4FBE
2E4EC4:  MOVS            R0, #1
2E4EC6:  STRB.W          R0, [R4,#0x3BE]
2E4ECA:  B               loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E4ECC:  STRH.W          R5, [R4,#0x4EC]
2E4ED0:  MOV.W           R0, #0xFFFFFFFF; int
2E4ED4:  MOVS            R1, #0; bool
2E4ED6:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E4EDA:  CMP             R0, #0
2E4EDC:  BEQ             loc_2E4F88
2E4EDE:  MOV.W           R0, #0xFFFFFFFF; int
2E4EE2:  MOVS            R1, #0; bool
2E4EE4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E4EE8:  BLX             j__ZNK8CVehicle12IsUpsideDownEv; CVehicle::IsUpsideDown(void)
2E4EEC:  CMP             R0, #0
2E4EEE:  BNE             loc_2E4F88
2E4EF0:  MOV.W           R0, #0xFFFFFFFF; int
2E4EF4:  MOVS            R1, #0; bool
2E4EF6:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E4EFA:  VLDR            S0, [R0,#0x48]
2E4EFE:  VLDR            S2, [R0,#0x4C]
2E4F02:  VMUL.F32        S0, S0, S0
2E4F06:  VLDR            S4, [R0,#0x50]
2E4F0A:  VMUL.F32        S2, S2, S2
2E4F0E:  VMUL.F32        S4, S4, S4
2E4F12:  VADD.F32        S0, S0, S2
2E4F16:  VLDR            S2, =0.05
2E4F1A:  B               loc_2E4F66
2E4F1C:  STRH.W          R5, [R4,#0x4EC]
2E4F20:  MOV.W           R0, #0xFFFFFFFF; int
2E4F24:  MOVS            R1, #0; bool
2E4F26:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E4F2A:  CBZ             R0, loc_2E4F88
2E4F2C:  MOV.W           R0, #0xFFFFFFFF; int
2E4F30:  MOVS            R1, #0; bool
2E4F32:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E4F36:  BLX             j__ZNK8CVehicle12IsUpsideDownEv; CVehicle::IsUpsideDown(void)
2E4F3A:  CBNZ            R0, loc_2E4F88
2E4F3C:  MOV.W           R0, #0xFFFFFFFF; int
2E4F40:  MOVS            R1, #0; bool
2E4F42:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E4F46:  VLDR            S0, [R0,#0x48]
2E4F4A:  VLDR            S2, [R0,#0x4C]
2E4F4E:  VMUL.F32        S0, S0, S0
2E4F52:  VLDR            S4, [R0,#0x50]
2E4F56:  VMUL.F32        S2, S2, S2
2E4F5A:  VMUL.F32        S4, S4, S4
2E4F5E:  VADD.F32        S0, S0, S2
2E4F62:  VLDR            S2, =0.04
2E4F66:  VADD.F32        S0, S0, S4
2E4F6A:  VSQRT.F32       S0, S0
2E4F6E:  VCMPE.F32       S0, S2
2E4F72:  VMRS            APSR_nzcv, FPSCR
2E4F76:  BGE.W           loc_2E526A
2E4F7A:  LDRH.W          R0, [R4,#0x4EC]
2E4F7E:  MOVW            R1, #(elf_hash_bucket+0x8C9); CVehicle *
2E4F82:  CMP             R0, R1
2E4F84:  BCC.W           loc_2E526A
2E4F88:  LDRB.W          R0, [R10]
2E4F8C:  LSLS            R0, R0, #0x1F
2E4F8E:  BEQ.W           loc_2E526A
2E4F92:  VMOV.F32        S0, #10.0
2E4F96:  LDRH            R0, [R4,#0x26]
2E4F98:  CMP.W           R0, #0x1B0
2E4F9C:  VCMPE.F32       S16, S0
2E4FA0:  BNE.W           loc_2E5234
2E4FA4:  VMRS            APSR_nzcv, FPSCR
2E4FA8:  BGE.W           loc_2E526A
2E4FAC:  LDRH            R0, [R4,#0x24]
2E4FAE:  MOVW            R1, #0x2710
2E4FB2:  CMP             R0, R1
2E4FB4:  BHI.W           loc_2E523A
2E4FB8:  B               loc_2E526A
2E4FBA:  STRH.W          R5, [R4,#0x4EC]
2E4FBE:  LDRH            R0, [R4,#0x26]
2E4FC0:  MOVW            R1, #0x20B
2E4FC4:  ADR             R5, loc_2E50F4
2E4FC6:  CMP             R0, R1
2E4FC8:  MOV.W           R0, #0xFFFFFFFF; int
2E4FCC:  MOV.W           R1, #0; bool
2E4FD0:  IT EQ
2E4FD2:  ADDEQ           R5, #4
2E4FD4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E4FD8:  CBZ             R0, loc_2E5006
2E4FDA:  MOV.W           R0, #0xFFFFFFFF; int
2E4FDE:  MOVS            R1, #0; bool
2E4FE0:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E4FE4:  BLX             j__ZNK8CVehicle12IsUpsideDownEv; CVehicle::IsUpsideDown(void)
2E4FE8:  CBNZ            R0, loc_2E5006
2E4FEA:  LDRH.W          R0, [R4,#0x4EC]
2E4FEE:  VLDR            S0, [R5]
2E4FF2:  VMOV            S2, R0
2E4FF6:  VCVT.F32.U32    S2, S2
2E4FFA:  VCMPE.F32       S0, S2
2E4FFE:  VMRS            APSR_nzcv, FPSCR
2E5002:  BGE.W           loc_2E5162
2E5006:  VMOV.F32        S0, #10.0
2E500A:  VCMPE.F32       S16, S0
2E500E:  VMRS            APSR_nzcv, FPSCR
2E5012:  BGE.W           loc_2E5162
2E5016:  LDR.W           R0, [R10]
2E501A:  ANDS.W          R0, R0, #1
2E501E:  BEQ.W           loc_2E5162
2E5022:  MOV             R0, R4; this
2E5024:  BLX             j__ZN6CCarAI23TellOccupantsToLeaveCarEP8CVehicle; CCarAI::TellOccupantsToLeaveCar(CVehicle *)
2E5028:  MOVS            R0, #0
2E502A:  STRB.W          R0, [R4,#0x3BE]
2E502E:  STRB.W          R0, [R4,#0x3D4]
2E5032:  MOV.W           R0, #0xFFFFFFFF; int
2E5036:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2E503A:  LDR.W           R0, [R0,#0x444]
2E503E:  LDR             R0, [R0]
2E5040:  LDR             R0, [R0,#0x2C]
2E5042:  CMP             R0, #1
2E5044:  ITTT LE
2E5046:  LDRLE.W         R0, [R10,#4]
2E504A:  BICLE.W         R0, R0, #0x8000
2E504E:  STRLE.W         R0, [R10,#4]
2E5052:  B               loc_2E522A
2E5054:  VLDR            S2, =50.0
2E5058:  VCMPE.F32       S0, S2
2E505C:  VMRS            APSR_nzcv, FPSCR
2E5060:  BLE             loc_2E5108
2E5062:  MOVS            R0, #0xF
2E5064:  B               loc_2E50C6
2E5066:  VLDR            S2, =50.0
2E506A:  VCMPE.F32       S0, S2
2E506E:  VMRS            APSR_nzcv, FPSCR
2E5072:  BLE.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E5076:  BIC.W           R1, R1, #0x8000
2E507A:  MOVS            R2, #0x11
2E507C:  STRB.W          R2, [R4,#0x3BE]
2E5080:  STRD.W          R0, R1, [R10]
2E5084:  MOVS            R0, #0
2E5086:  STR.W           R0, [R4,#0x524]
2E508A:  B               loc_2E50CA
2E508C:  VLDR            S2, =50.0
2E5090:  VCMPE.F32       S0, S2
2E5094:  VMRS            APSR_nzcv, FPSCR
2E5098:  BLE.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E509C:  MOVS            R0, #0x34 ; '4'
2E509E:  B               loc_2E50C6
2E50A0:  VLDR            S2, =50.0
2E50A4:  VCMPE.F32       S0, S2
2E50A8:  VMRS            APSR_nzcv, FPSCR
2E50AC:  BLE.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E50B0:  MOVS            R0, #0x36 ; '6'
2E50B2:  B               loc_2E50C6
2E50B4:  VLDR            S2, =50.0
2E50B8:  VCMPE.F32       S0, S2
2E50BC:  VMRS            APSR_nzcv, FPSCR
2E50C0:  BLE.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E50C4:  MOVS            R0, #0x3D ; '='
2E50C6:  STRB.W          R0, [R4,#0x3BE]
2E50CA:  MOV             R0, R4; this
2E50CC:  BLX             j__ZN8CCarCtrl21JoinCarWithRoadSystemEP8CVehicle; CCarCtrl::JoinCarWithRoadSystem(CVehicle *)
2E50D0:  B               loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E50D2:  ALIGN 4
2E50D4:  DCFS 0.05
2E50D8:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x2E4DA0
2E50DC:  DCFS 16.667
2E50E0:  DCFS 0.04
2E50E4:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x2E4E20
2E50E8:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x2E4EA0
2E50EC:  DCFS 50.0
2E50F0:  DCFS 1000.0
2E50F4:  ANDS            R0, R0
2E50F6:  CMP             R4, R3
2E50F8:  ANDS            R0, R0
2E50FA:  MOV             R12, R3
2E50FC:  DCFS 0.0025
2E5100:  DCFS -0.7
2E5104:  DCFS 0.000144
2E5108:  MOV             R0, R4; this
2E510A:  BLX             j__ZN9CPhysical18GetHasCollidedWithEP7CEntity; CPhysical::GetHasCollidedWith(CEntity *)
2E510E:  CMP             R0, #1
2E5110:  BNE.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E5114:  VLDR            S0, [R4,#0x48]
2E5118:  VLDR            S2, [R4,#0x4C]
2E511C:  VMUL.F32        S0, S0, S0
2E5120:  VLDR            S4, [R4,#0x50]
2E5124:  VMUL.F32        S2, S2, S2
2E5128:  VMUL.F32        S4, S4, S4
2E512C:  VADD.F32        S0, S0, S2
2E5130:  VLDR            S2, =0.04
2E5134:  VADD.F32        S0, S0, S4
2E5138:  VSQRT.F32       S0, S0
2E513C:  VCMPE.F32       S0, S2
2E5140:  VMRS            APSR_nzcv, FPSCR
2E5144:  BGE.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E5148:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2E5156)
2E514C:  MOVS            R1, #3
2E514E:  STRB.W          R1, [R4,#0x3BF]
2E5152:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2E5154:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2E5156:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2E5158:  ADD.W           R0, R0, #0x320
2E515C:  STR.W           R0, [R4,#0x3C0]
2E5160:  B               loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E5162:  LDRH            R0, [R4,#0x26]
2E5164:  MOVW            R1, #0x20B
2E5168:  CMP             R0, R1
2E516A:  BNE             loc_2E522A
2E516C:  LDR.W           R0, [R4,#0x464]
2E5170:  CMP             R0, #0
2E5172:  BEQ             loc_2E522A
2E5174:  LDR.W           R0, [R0,#0x440]
2E5178:  LDR             R5, [R0,#0x10]
2E517A:  CBZ             R5, loc_2E51A4
2E517C:  LDR             R0, [R5]
2E517E:  LDR             R1, [R0,#0x14]
2E5180:  MOV             R0, R5
2E5182:  BLX             R1
2E5184:  CMP             R0, #0xF4
2E5186:  BNE             loc_2E51A4
2E5188:  MOV             R0, R5; this
2E518A:  MOVW            R1, #0x2BD; int
2E518E:  BLX             j__ZN20CTaskComplexSequence8ContainsEi; CTaskComplexSequence::Contains(int)
2E5192:  CMP             R0, #0
2E5194:  BNE             loc_2E522A
2E5196:  MOV             R0, R5; this
2E5198:  MOVW            R1, #0x3FE; int
2E519C:  BLX             j__ZN20CTaskComplexSequence8ContainsEi; CTaskComplexSequence::Contains(int)
2E51A0:  CMP             R0, #0
2E51A2:  BNE             loc_2E522A
2E51A4:  MOVS            R0, #dword_40; this
2E51A6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
2E51AA:  MOV             R8, R0
2E51AC:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
2E51B0:  MOVS            R0, #dword_50; this
2E51B2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
2E51B6:  MOV             R1, R4; CVehicle *
2E51B8:  MOV             R5, R0
2E51BA:  BLX             j__ZN28CTaskComplexEnterCarAsDriverC2EP8CVehicle; CTaskComplexEnterCarAsDriver::CTaskComplexEnterCarAsDriver(CVehicle *)
2E51BE:  MOV             R0, R8; this
2E51C0:  MOV             R1, R5; CTask *
2E51C2:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
2E51C6:  MOVS            R0, #dword_44; this
2E51C8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
2E51CC:  MOV             R5, R0
2E51CE:  MOV.W           R0, #0xFFFFFFFF; int
2E51D2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2E51D6:  MOVS            R2, #8
2E51D8:  MOVS            R3, #0x32 ; '2'
2E51DA:  STRD.W          R3, R2, [SP,#0xA0+var_A0]; signed __int8
2E51DE:  MOVS            R3, #0
2E51E0:  MOV             R1, R0; CEntity *
2E51E2:  MOVS            R0, #0
2E51E4:  STR             R0, [SP,#0xA0+var_98]; bool
2E51E6:  MOVT            R3, #0x4248; float
2E51EA:  MOV             R0, R5; this
2E51EC:  MOVS            R2, #0; CVector *
2E51EE:  BLX             j__ZN22CTaskSimpleGangDriveByC2EP7CEntityPK7CVectorfaab; CTaskSimpleGangDriveBy::CTaskSimpleGangDriveBy(CEntity *,CVector const*,float,signed char,signed char,bool)
2E51F2:  MOV             R0, R8; this
2E51F4:  MOV             R1, R5; CTask *
2E51F6:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
2E51FA:  ADD             R5, SP, #0xA0+var_88
2E51FC:  MOVS            R1, #3; int
2E51FE:  MOV             R2, R8; CTask *
2E5200:  MOVS            R3, #0; bool
2E5202:  MOV             R0, R5; this
2E5204:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
2E5208:  LDR.W           R0, [R4,#0x464]
2E520C:  MOV             R1, R5; CEvent *
2E520E:  MOVS            R2, #0; bool
2E5210:  LDR.W           R0, [R0,#0x440]
2E5214:  ADDS            R0, #0x68 ; 'h'; this
2E5216:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
2E521A:  LDR.W           R0, [R4,#0x464]
2E521E:  MOVS            R1, #0x16
2E5220:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
2E5224:  MOV             R0, R5; this
2E5226:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
2E522A:  LDRB.W          R0, [R10]
2E522E:  LSLS            R0, R0, #0x1F
2E5230:  BNE             loc_2E5272
2E5232:  B               def_2E44B0; jumptable 002E44B0 default case
2E5234:  VMRS            APSR_nzcv, FPSCR
2E5238:  BGE             loc_2E526A
2E523A:  MOV             R0, R4; this
2E523C:  BLX             j__ZN6CCarAI23TellOccupantsToLeaveCarEP8CVehicle; CCarAI::TellOccupantsToLeaveCar(CVehicle *)
2E5240:  MOVS            R0, #0
2E5242:  STRB.W          R0, [R4,#0x3BE]
2E5246:  STRB.W          R0, [R4,#0x3D4]
2E524A:  MOV.W           R0, #0xFFFFFFFF; int
2E524E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2E5252:  LDR.W           R0, [R0,#0x444]
2E5256:  LDR             R0, [R0]
2E5258:  LDR             R0, [R0,#0x2C]
2E525A:  CMP             R0, #1
2E525C:  ITTT LE
2E525E:  LDRLE.W         R0, [R10,#4]
2E5262:  BICLE.W         R0, R0, #0x8000
2E5266:  STRLE.W         R0, [R10,#4]
2E526A:  LDRB.W          R0, [R10]
2E526E:  LSLS            R0, R0, #0x1F
2E5270:  BEQ             loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E5272:  MOV             R0, R4; this
2E5274:  BLX             j__ZN6CCarAI19MellowOutChaseSpeedEP8CVehicle; CCarAI::MellowOutChaseSpeed(CVehicle *)
2E5278:  MOV             R0, R4; jumptable 002E44B0 default case
2E527A:  BLX             j__ZN6CCarAI29BackToCruisingIfNoWantedLevelEP8CVehicle; CCarAI::BackToCruisingIfNoWantedLevel(CVehicle *)
2E527E:  LDRB.W          R0, [R10]; jumptable 002E3BA2 cases 10,27,28
2E5282:  LSLS            R0, R0, #0x1F
2E5284:  BEQ             loc_2E52B2
2E5286:  MOV.W           R0, #0xFFFFFFFF; int
2E528A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2E528E:  LDR.W           R0, [R0,#0x444]
2E5292:  LDR             R0, [R0]
2E5294:  LDR             R0, [R0,#0x2C]; this
2E5296:  CMP             R0, #1
2E5298:  BLT             loc_2E52B2
2E529A:  BLX             j__ZN10CCullZones17PoliceAbandonCarsEv; CCullZones::PoliceAbandonCars(void)
2E529E:  CMP             R0, #1
2E52A0:  BNE             loc_2E52B2
2E52A2:  MOV             R0, R4; this
2E52A4:  BLX             j__ZN6CCarAI23TellOccupantsToLeaveCarEP8CVehicle; CCarAI::TellOccupantsToLeaveCar(CVehicle *)
2E52A8:  MOVS            R0, #0
2E52AA:  STRB.W          R0, [R4,#0x3BE]
2E52AE:  STRB.W          R0, [R4,#0x3D4]
2E52B2:  VLDR            S0, [R4,#0x48]
2E52B6:  VLDR            S2, [R4,#0x4C]
2E52BA:  VMUL.F32        S0, S0, S0
2E52BE:  VMUL.F32        S2, S2, S2
2E52C2:  VADD.F32        S0, S0, S2
2E52C6:  VLDR            S2, =0.0025
2E52CA:  VCMPE.F32       S0, S2
2E52CE:  VMRS            APSR_nzcv, FPSCR
2E52D2:  BLE             loc_2E52E2
2E52D4:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2E52DC)
2E52D8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2E52DA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2E52DC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2E52DE:  STRD.W          R0, R0, [R4,#0x3B0]
2E52E2:  LDRB.W          R0, [R4,#0x3BF]
2E52E6:  CBNZ            R0, loc_2E5300
2E52E8:  LDRB.W          R2, [R4,#0x3BE]
2E52EC:  CMP             R2, #0xB
2E52EE:  BHI.W           loc_2E5430
2E52F2:  MOVS            R0, #1
2E52F4:  MOVW            R1, #0x841
2E52F8:  LSLS            R0, R2
2E52FA:  TST             R0, R1
2E52FC:  BEQ.W           loc_2E5430
2E5300:  LDRB.W          R0, [R4,#0x24]
2E5304:  LSLS            R0, R0, #0x1D
2E5306:  BNE             loc_2E5368
2E5308:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2E5314)
2E530C:  MOVW            R2, #0x7531
2E5310:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2E5312:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
2E5314:  LDR.W           R0, [R4,#0x3B4]
2E5318:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
2E531A:  SUBS            R1, R1, R0
2E531C:  CMP             R1, R2
2E531E:  BCC             loc_2E5368
2E5320:  LDR.W           R1, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x2E5328)
2E5324:  ADD             R1, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
2E5326:  LDR             R1, [R1]; CTimer::m_snPreviousTimeInMilliseconds ...
2E5328:  LDR             R1, [R1]; CTimer::m_snPreviousTimeInMilliseconds
2E532A:  SUBS            R0, R1, R0
2E532C:  MOVW            R1, #(elf_hash_bucket+0x7434); CVehicle *
2E5330:  CMP             R0, R1
2E5332:  BHI             loc_2E5368
2E5334:  LDRB.W          R0, [R4,#0x3BE]
2E5338:  CMP             R0, #1
2E533A:  BNE             loc_2E5368
2E533C:  MOV             R0, R4; this
2E533E:  BLX             j__ZN14CTrafficLights22ShouldCarStopForBridgeEP8CVehicle; CTrafficLights::ShouldCarStopForBridge(CVehicle *)
2E5342:  CBNZ            R0, loc_2E5368
2E5344:  MOV             R0, R4; this
2E5346:  BLX             j__ZN8CCarCtrl26SwitchVehicleToRealPhysicsEP8CVehicle; CCarCtrl::SwitchVehicleToRealPhysics(CVehicle *)
2E534A:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2E535A)
2E534E:  MOVS            R1, #3
2E5350:  STRB.W          R1, [R4,#0x3BF]
2E5354:  MOVS            R1, #2
2E5356:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2E5358:  STRB.W          R1, [R4,#0x3BD]
2E535C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2E535E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2E5360:  ADD.W           R0, R0, #0x190
2E5364:  STR.W           R0, [R4,#0x3C0]
2E5368:  LDRB.W          R0, [R10]
2E536C:  LSLS            R0, R0, #0x1F
2E536E:  BEQ             loc_2E53A0
2E5370:  LDRB.W          R0, [R4,#0x3BE]
2E5374:  AND.W           R0, R0, #0xFE
2E5378:  CMP             R0, #2
2E537A:  BNE             loc_2E53A0
2E537C:  MOV.W           R0, #0xFFFFFFFF; int
2E5380:  MOVS            R1, #0; bool
2E5382:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E5386:  CBZ             R0, loc_2E53A0
2E5388:  MOV.W           R0, #0xFFFFFFFF; int
2E538C:  MOVS            R1, #0; bool
2E538E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E5392:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
2E5396:  CMP             R0, #2
2E5398:  ITT EQ
2E539A:  MOVEQ           R0, #4
2E539C:  STRBEQ.W        R0, [R4,#0x3BE]
2E53A0:  LDR             R0, [R4,#0x14]
2E53A2:  VLDR            S0, =-0.7
2E53A6:  VLDR            S2, [R0,#0x28]
2E53AA:  VCMPE.F32       S2, S0
2E53AE:  VMRS            APSR_nzcv, FPSCR
2E53B2:  BGE             loc_2E53CE
2E53B4:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2E53C2)
2E53B8:  MOVS            R1, #1
2E53BA:  STRB.W          R1, [R4,#0x3BF]
2E53BE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2E53C0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2E53C2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2E53C4:  ADD.W           R0, R0, #0x3E8
2E53C8:  STR.W           R0, [R4,#0x3C0]
2E53CC:  B               loc_2E5A84
2E53CE:  LDRB.W          R0, [R4,#0x3BF]
2E53D2:  CMP             R0, #0x17
2E53D4:  IT NE
2E53D6:  CMPNE           R0, #0
2E53D8:  BNE.W           loc_2E5A84
2E53DC:  LDRSB.W         R0, [R4,#0x3BE]
2E53E0:  SUBS            R1, R0, #2
2E53E2:  CMP             R1, #4
2E53E4:  ITT CS
2E53E6:  SUBCS           R0, #0x2B ; '+'
2E53E8:  CMPCS           R0, #1
2E53EA:  BHI.W           loc_2E5A84
2E53EE:  MOV.W           R0, #0xFFFFFFFF; int
2E53F2:  MOVS            R1, #0; bool
2E53F4:  MOVS            R5, #0
2E53F6:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E53FA:  CMP             R0, #0
2E53FC:  BEQ.W           loc_2E5A84
2E5400:  MOV.W           R0, #0xFFFFFFFF; int
2E5404:  MOVS            R1, #0; bool
2E5406:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E540A:  LDR             R0, [R0,#0x14]
2E540C:  LDRD.W          R1, R0, [R0,#0x10]
2E5410:  STRD.W          R1, R0, [SP,#0xA0+var_88]
2E5414:  ADD             R0, SP, #0xA0+var_88; this
2E5416:  STR             R5, [SP,#0xA0+var_80]
2E5418:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
2E541C:  LDR             R0, [R4,#0x14]
2E541E:  CMP             R0, #0
2E5420:  BEQ             loc_2E54C0
2E5422:  VLDR            D16, [R0,#0x10]
2E5426:  LDR             R0, [R0,#0x18]
2E5428:  STR             R0, [SP,#0xA0+var_68]
2E542A:  VSTR            D16, [SP,#0xA0+var_70]
2E542E:  B               loc_2E54DA
2E5430:  LDRB.W          R0, [R4,#0x3D4]
2E5434:  CMP             R0, #0
2E5436:  BEQ.W           loc_2E5300
2E543A:  SUB.W           R0, R2, #0x1B
2E543E:  CMP             R0, #0x1A
2E5440:  BHI             loc_2E5454
2E5442:  MOVS            R1, #1
2E5444:  LSL.W           R0, R1, R0
2E5448:  MOVS            R1, #0x400003F
2E544E:  TST             R0, R1
2E5450:  BNE.W           loc_2E5300
2E5454:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2E545E)
2E5458:  LDR             R1, [R4,#0x40]
2E545A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2E545C:  VLDR            S2, =0.000144
2E5460:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2E5462:  VCMPE.F32       S0, S2
2E5466:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2E5468:  SUBS            R1, R0, R1
2E546A:  CMP.W           R1, #0x1F4
2E546E:  IT HI
2E5470:  STRHI.W         R0, [R4,#0x3B0]
2E5474:  VMRS            APSR_nzcv, FPSCR
2E5478:  BGE.W           loc_2E5300
2E547C:  LDRB.W          R1, [R4,#0x3BD]
2E5480:  ORR.W           R3, R1, #4
2E5484:  CMP             R3, #4
2E5486:  BNE.W           loc_2E5CF4
2E548A:  LDRH            R3, [R4,#0x24]
2E548C:  MOVW            R6, #0x4E20
2E5490:  MOV.W           R5, #0x1F4
2E5494:  AND.W           R3, R3, #0xF
2E5498:  SMLABB.W        R3, R3, R5, R6
2E549C:  B.W             loc_2E5CF8
2E54A0:  DCFS 0.1
2E54A4:  DCFS 0.8
2E54A8:  DCFS 0.6
2E54AC:  DCFS -0.2
2E54B0:  DCFS 120.0
2E54B4:  DCFS -3.1416
2E54B8:  DCFS 6.2832
2E54BC:  DCFS 3.1416
2E54C0:  LDR             R5, [R4,#0x10]
2E54C2:  MOVS            R0, #0
2E54C4:  STR             R0, [SP,#0xA0+var_68]
2E54C6:  MOV             R0, R5; x
2E54C8:  BLX             cosf
2E54CC:  STR             R0, [SP,#0xA0+var_70+4]
2E54CE:  MOV             R0, R5; x
2E54D0:  BLX             sinf
2E54D4:  EOR.W           R0, R0, #0x80000000
2E54D8:  STR             R0, [SP,#0xA0+var_70]
2E54DA:  MOVS            R0, #0
2E54DC:  STR             R0, [SP,#0xA0+var_68]
2E54DE:  ADD             R0, SP, #0xA0+var_70; this
2E54E0:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
2E54E4:  MOV.W           R0, #0xFFFFFFFF; int
2E54E8:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
2E54EC:  VLDR            S0, [R4,#0x48]
2E54F0:  VLDR            S2, [R4,#0x4C]
2E54F4:  VLDR            S6, [R0]
2E54F8:  VMUL.F32        S0, S0, S0
2E54FC:  VLDR            S8, [R0,#4]
2E5500:  VMUL.F32        S2, S2, S2
2E5504:  VMUL.F32        S6, S6, S6
2E5508:  VLDR            S4, [R4,#0x50]
2E550C:  VMUL.F32        S8, S8, S8
2E5510:  VLDR            S10, [R0,#8]
2E5514:  VMUL.F32        S4, S4, S4
2E5518:  VADD.F32        S0, S0, S2
2E551C:  VMUL.F32        S2, S10, S10
2E5520:  VADD.F32        S6, S6, S8
2E5524:  VADD.F32        S0, S0, S4
2E5528:  VADD.F32        S2, S6, S2
2E552C:  VSQRT.F32       S0, S0
2E5530:  VSQRT.F32       S2, S2
2E5534:  VCMPE.F32       S2, S0
2E5538:  VMRS            APSR_nzcv, FPSCR
2E553C:  BLE.W           loc_2E58DA
2E5540:  MOV.W           R0, #0xFFFFFFFF; int
2E5544:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
2E5548:  VLDR            S0, [R0]
2E554C:  VLDR            S2, [R0,#4]
2E5550:  VMUL.F32        S0, S0, S0
2E5554:  VLDR            S4, [R0,#8]
2E5558:  VMUL.F32        S2, S2, S2
2E555C:  VMUL.F32        S4, S4, S4
2E5560:  VADD.F32        S0, S0, S2
2E5564:  VLDR            S2, =0.1
2E5568:  VADD.F32        S0, S0, S4
2E556C:  VSQRT.F32       S0, S0
2E5570:  VCMPE.F32       S0, S2
2E5574:  VMRS            APSR_nzcv, FPSCR
2E5578:  BLE.W           loc_2E58DA
2E557C:  MOV.W           R0, #0xFFFFFFFF; int
2E5580:  MOVS            R1, #0; bool
2E5582:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E5586:  LDR             R0, [R0,#0x14]
2E5588:  LDR             R1, [R4,#0x14]
2E558A:  VLDR            S16, [R0,#0x10]
2E558E:  MOV.W           R0, #0xFFFFFFFF; int
2E5592:  VLDR            S18, [R1,#0x10]
2E5596:  MOVS            R1, #0; bool
2E5598:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E559C:  LDR             R1, [R0,#0x14]
2E559E:  VMUL.F32        S4, S16, S18
2E55A2:  LDR             R0, [R4,#0x14]
2E55A4:  VLDR            S0, [R1,#0x14]
2E55A8:  VLDR            S2, [R0,#0x14]
2E55AC:  VMUL.F32        S0, S0, S2
2E55B0:  VADD.F32        S0, S4, S0
2E55B4:  VCMPE.F32       S0, #0.0
2E55B8:  VMRS            APSR_nzcv, FPSCR
2E55BC:  BLE.W           loc_2E58DA
2E55C0:  ADDS            R5, R4, #4
2E55C2:  CMP             R0, #0
2E55C4:  MOV             R1, R5
2E55C6:  IT NE
2E55C8:  ADDNE.W         R1, R0, #0x30 ; '0'
2E55CC:  ADD             R0, SP, #0xA0+var_94; int
2E55CE:  VLDR            S16, [R1]
2E55D2:  MOV.W           R1, #0xFFFFFFFF
2E55D6:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E55DA:  LDR             R0, [R4,#0x14]
2E55DC:  MOV             R1, R5
2E55DE:  VLDR            S18, [SP,#0xA0+var_94]
2E55E2:  CMP             R0, #0
2E55E4:  IT NE
2E55E6:  ADDNE.W         R1, R0, #0x30 ; '0'
2E55EA:  ADD             R0, SP, #0xA0+var_94; int
2E55EC:  VLDR            S20, [R1,#4]
2E55F0:  MOV.W           R1, #0xFFFFFFFF
2E55F4:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E55F8:  VLDR            S0, [SP,#0xA0+var_90]
2E55FC:  VSUB.F32        S16, S16, S18
2E5600:  MOV.W           R0, #0xFFFFFFFF; int
2E5604:  VSUB.F32        S18, S20, S0
2E5608:  VMUL.F32        S20, S16, S16
2E560C:  VMUL.F32        S22, S18, S18
2E5610:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
2E5614:  VLDR            S24, [R0]
2E5618:  MOV.W           R0, #0xFFFFFFFF; int
2E561C:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
2E5620:  VLDR            S0, [R0,#4]
2E5624:  VMUL.F32        S2, S24, S24
2E5628:  VADD.F32        S6, S20, S22
2E562C:  VMUL.F32        S4, S0, S0
2E5630:  VMUL.F32        S8, S16, S24
2E5634:  VMUL.F32        S0, S18, S0
2E5638:  VADD.F32        S2, S2, S4
2E563C:  VSQRT.F32       S4, S6
2E5640:  VSQRT.F32       S2, S2
2E5644:  VMOV.F32        S6, #0.5
2E5648:  VADD.F32        S0, S8, S0
2E564C:  VMUL.F32        S4, S4, S6
2E5650:  VMUL.F32        S2, S4, S2
2E5654:  VCMPE.F32       S0, S2
2E5658:  VMRS            APSR_nzcv, FPSCR
2E565C:  BLE.W           loc_2E58DA
2E5660:  ADD             R0, SP, #0xA0+var_94; int
2E5662:  MOV.W           R1, #0xFFFFFFFF
2E5666:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E566A:  LDR             R0, [R4,#0x14]
2E566C:  MOV             R1, R5
2E566E:  VLDR            S0, [SP,#0xA0+var_94]
2E5672:  CMP             R0, #0
2E5674:  IT NE
2E5676:  ADDNE.W         R1, R0, #0x30 ; '0'
2E567A:  VLDR            D16, [SP,#0xA0+var_90]
2E567E:  VLDR            S2, [R1]
2E5682:  VLDR            D17, [R1,#4]
2E5686:  VSUB.F32        S0, S0, S2
2E568A:  VSUB.F32        D16, D16, D17
2E568E:  VMUL.F32        D1, D16, D16
2E5692:  VMUL.F32        S0, S0, S0
2E5696:  VADD.F32        S0, S0, S2
2E569A:  VADD.F32        S0, S0, S3
2E569E:  VMOV.F32        S2, #12.0
2E56A2:  VSQRT.F32       S0, S0
2E56A6:  VCMPE.F32       S0, S2
2E56AA:  VMRS            APSR_nzcv, FPSCR
2E56AE:  BLE             loc_2E56C6
2E56B0:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2E56BE)
2E56B4:  MOVS            R1, #1
2E56B6:  STRB.W          R1, [R4,#0x3BF]
2E56BA:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2E56BC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2E56BE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2E56C0:  ADDS            R0, #0xFA
2E56C2:  STR.W           R0, [R4,#0x3C0]
2E56C6:  ADD             R0, SP, #0xA0+var_94; int
2E56C8:  MOV.W           R1, #0xFFFFFFFF
2E56CC:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E56D0:  LDR             R0, [R4,#0x14]
2E56D2:  MOV             R1, R5
2E56D4:  VLDR            S0, [SP,#0xA0+var_94]
2E56D8:  CMP             R0, #0
2E56DA:  IT NE
2E56DC:  ADDNE.W         R1, R0, #0x30 ; '0'
2E56E0:  VLDR            D16, [SP,#0xA0+var_90]
2E56E4:  VLDR            S2, [R1]
2E56E8:  VLDR            D17, [R1,#4]
2E56EC:  VSUB.F32        S0, S0, S2
2E56F0:  VSUB.F32        D16, D16, D17
2E56F4:  VMUL.F32        D1, D16, D16
2E56F8:  VMUL.F32        S0, S0, S0
2E56FC:  VADD.F32        S0, S0, S2
2E5700:  VADD.F32        S0, S0, S3
2E5704:  VMOV.F32        S2, #20.0
2E5708:  VSQRT.F32       S0, S0
2E570C:  VCMPE.F32       S0, S2
2E5710:  VMRS            APSR_nzcv, FPSCR
2E5714:  BGE.W           loc_2E58DA
2E5718:  VLDR            S0, [SP,#0xA0+var_70]
2E571C:  VLDR            S6, [SP,#0xA0+var_88]
2E5720:  VLDR            S2, [SP,#0xA0+var_70+4]
2E5724:  VLDR            S8, [SP,#0xA0+var_84]
2E5728:  VMUL.F32        S0, S6, S0
2E572C:  VLDR            S4, [SP,#0xA0+var_68]
2E5730:  VMUL.F32        S2, S8, S2
2E5734:  VLDR            S10, [SP,#0xA0+var_80]
2E5738:  VMUL.F32        S4, S10, S4
2E573C:  VADD.F32        S0, S0, S2
2E5740:  VLDR            S2, =0.8
2E5744:  VADD.F32        S0, S0, S4
2E5748:  VCMPE.F32       S0, S2
2E574C:  VMRS            APSR_nzcv, FPSCR
2E5750:  BLE.W           loc_2E58DA
2E5754:  MOV.W           R0, #0xFFFFFFFF; int
2E5758:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
2E575C:  VLDR            S0, [R0]
2E5760:  VLDR            S2, [R0,#4]
2E5764:  VMUL.F32        S0, S0, S0
2E5768:  VLDR            S4, [R0,#8]
2E576C:  VMUL.F32        S2, S2, S2
2E5770:  VMUL.F32        S4, S4, S4
2E5774:  VADD.F32        S0, S0, S2
2E5778:  VLDR            S2, =0.6
2E577C:  VADD.F32        S0, S0, S4
2E5780:  VSQRT.F32       S0, S0
2E5784:  VCMPE.F32       S0, S2
2E5788:  VMRS            APSR_nzcv, FPSCR
2E578C:  BLE.W           loc_2E58DA
2E5790:  MOV.W           R0, #0xFFFFFFFF; int
2E5794:  VLDR            S16, [R4,#0x48]
2E5798:  VLDR            S18, [R4,#0x4C]
2E579C:  VLDR            S20, [R4,#0x50]
2E57A0:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
2E57A4:  VLDR            S0, [R0]
2E57A8:  VMUL.F32        S6, S18, S18
2E57AC:  VLDR            S2, [R0,#4]
2E57B0:  VMUL.F32        S8, S16, S16
2E57B4:  VMUL.F32        S0, S0, S0
2E57B8:  VLDR            S4, [R0,#8]
2E57BC:  VMUL.F32        S2, S2, S2
2E57C0:  VMUL.F32        S4, S4, S4
2E57C4:  VADD.F32        S6, S8, S6
2E57C8:  VADD.F32        S0, S0, S2
2E57CC:  VMUL.F32        S2, S20, S20
2E57D0:  VADD.F32        S0, S0, S4
2E57D4:  VLDR            S4, =-0.2
2E57D8:  VADD.F32        S2, S6, S2
2E57DC:  VSQRT.F32       S0, S0
2E57E0:  VSQRT.F32       S2, S2
2E57E4:  VADD.F32        S0, S0, S4
2E57E8:  VCMPE.F32       S2, S0
2E57EC:  VMRS            APSR_nzcv, FPSCR
2E57F0:  BGE             loc_2E58DA
2E57F2:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2E5804)
2E57F6:  MOVS            R1, #0x17
2E57F8:  STRB.W          R1, [R4,#0x3BF]
2E57FC:  MOV.W           R1, #0xFFFFFFFF
2E5800:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2E5802:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2E5804:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2E5806:  ADDS            R0, #0xFA
2E5808:  STR.W           R0, [R4,#0x3C0]
2E580C:  ADD             R0, SP, #0xA0+var_94; int
2E580E:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E5812:  MOV.W           R0, #0xFFFFFFFF; int
2E5816:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
2E581A:  VLDR            S0, =120.0
2E581E:  VLDR            S2, [R0]
2E5822:  VLDR            S4, [R0,#4]
2E5826:  VMUL.F32        S2, S2, S0
2E582A:  VLDR            S6, [SP,#0xA0+var_90]
2E582E:  VMUL.F32        S0, S4, S0
2E5832:  VLDR            S4, [SP,#0xA0+var_94]
2E5836:  LDR             R0, [R4,#0x14]
2E5838:  CMP             R0, #0
2E583A:  IT NE
2E583C:  ADDNE.W         R5, R0, #0x30 ; '0'
2E5840:  VADD.F32        S2, S2, S4
2E5844:  VLDR            S4, [R5]
2E5848:  VADD.F32        S0, S0, S6
2E584C:  VLDR            S6, [R5,#4]
2E5850:  VSUB.F32        S2, S2, S4
2E5854:  VSUB.F32        S0, S0, S6
2E5858:  VMOV            R0, S2; this
2E585C:  VMOV            R1, S0; float
2E5860:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2E5864:  LDR             R1, [R4,#0x14]
2E5866:  VMOV            S16, R0
2E586A:  LDRD.W          R2, R1, [R1,#0x10]; float
2E586E:  MOV             R0, R2; this
2E5870:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2E5874:  VMOV            S0, R0
2E5878:  VSUB.F32        S16, S16, S0
2E587C:  VLDR            S0, =-3.1416
2E5880:  VCMPE.F32       S16, S0
2E5884:  VMRS            APSR_nzcv, FPSCR
2E5888:  BGE             loc_2E589C
2E588A:  VLDR            S2, =6.2832
2E588E:  VADD.F32        S16, S16, S2
2E5892:  VCMPE.F32       S16, S0
2E5896:  VMRS            APSR_nzcv, FPSCR
2E589A:  BLT             loc_2E588E
2E589C:  VLDR            S0, =3.1416
2E58A0:  VCMPE.F32       S16, S0
2E58A4:  VMRS            APSR_nzcv, FPSCR
2E58A8:  BLE             loc_2E58BC
2E58AA:  VLDR            S2, =-6.2832
2E58AE:  VADD.F32        S16, S16, S2
2E58B2:  VCMPE.F32       S16, S0
2E58B6:  VMRS            APSR_nzcv, FPSCR
2E58BA:  BGT             loc_2E58AE
2E58BC:  MOV             R0, R4; this
2E58BE:  BLX             j__ZN8CCarCtrl17FindMaxSteerAngleEP8CVehicle; CCarCtrl::FindMaxSteerAngle(CVehicle *)
2E58C2:  VMOV            S0, R0
2E58C6:  ADD.W           R0, R4, #0x498
2E58CA:  VNEG.F32        S2, S0
2E58CE:  VMAX.F32        D16, D8, D1
2E58D2:  VMIN.F32        D0, D16, D0
2E58D6:  VSTR            S0, [R0]
2E58DA:  VLDR            S0, [SP,#0xA0+var_70]
2E58DE:  VLDR            S6, [SP,#0xA0+var_88]
2E58E2:  VLDR            S2, [SP,#0xA0+var_70+4]
2E58E6:  VLDR            S8, [SP,#0xA0+var_84]
2E58EA:  VMUL.F32        S0, S6, S0
2E58EE:  VLDR            S4, [SP,#0xA0+var_68]
2E58F2:  VMUL.F32        S2, S8, S2
2E58F6:  VLDR            S10, [SP,#0xA0+var_80]
2E58FA:  VMUL.F32        S4, S10, S4
2E58FE:  VADD.F32        S0, S0, S2
2E5902:  VLDR            S2, =-0.8
2E5906:  VADD.F32        S0, S0, S4
2E590A:  VCMPE.F32       S0, S2
2E590E:  VMRS            APSR_nzcv, FPSCR
2E5912:  BGE.W           loc_2E5A84
2E5916:  MOV.W           R0, #0xFFFFFFFF; int
2E591A:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
2E591E:  VLDR            S0, [R0]
2E5922:  VLDR            S2, [R0,#4]
2E5926:  VMUL.F32        S0, S0, S0
2E592A:  VLDR            S4, [R0,#8]
2E592E:  VMUL.F32        S2, S2, S2
2E5932:  VMUL.F32        S4, S4, S4
2E5936:  VADD.F32        S0, S0, S2
2E593A:  VLDR            S2, =0.3
2E593E:  VADD.F32        S0, S0, S4
2E5942:  VSQRT.F32       S0, S0
2E5946:  VCMPE.F32       S0, S2
2E594A:  VMRS            APSR_nzcv, FPSCR
2E594E:  BLE.W           loc_2E5A84
2E5952:  ADD             R0, SP, #0xA0+var_94; int
2E5954:  MOV.W           R1, #0xFFFFFFFF
2E5958:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E595C:  LDR             R0, [R4,#0x14]
2E595E:  ADDS            R5, R4, #4
2E5960:  VLDR            S0, [SP,#0xA0+var_94]
2E5964:  CMP             R0, #0
2E5966:  MOV             R1, R5
2E5968:  IT NE
2E596A:  ADDNE.W         R1, R0, #0x30 ; '0'
2E596E:  VLDR            D16, [SP,#0xA0+var_90]
2E5972:  VLDR            S2, [R1]
2E5976:  VLDR            D17, [R1,#4]
2E597A:  VSUB.F32        S0, S0, S2
2E597E:  VSUB.F32        D16, D16, D17
2E5982:  VMUL.F32        D1, D16, D16
2E5986:  VMUL.F32        S0, S0, S0
2E598A:  VADD.F32        S0, S0, S2
2E598E:  VADD.F32        S0, S0, S3
2E5992:  VLDR            S2, =45.0
2E5996:  VSQRT.F32       S0, S0
2E599A:  VCMPE.F32       S0, S2
2E599E:  VMRS            APSR_nzcv, FPSCR
2E59A2:  BGE             loc_2E5A84
2E59A4:  ADD             R0, SP, #0xA0+var_94; int
2E59A6:  MOV.W           R1, #0xFFFFFFFF
2E59AA:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E59AE:  LDR             R0, [R4,#0x14]
2E59B0:  VLDR            S16, [SP,#0xA0+var_94]
2E59B4:  CMP             R0, #0
2E59B6:  VLDR            S18, [SP,#0xA0+var_90]
2E59BA:  VLDR            S20, [SP,#0xA0+var_90+4]
2E59BE:  IT NE
2E59C0:  ADDNE.W         R5, R0, #0x30 ; '0'
2E59C4:  VLDR            S22, [R5]
2E59C8:  CMP             R0, #0
2E59CA:  VLDR            S24, [R5,#4]
2E59CE:  VLDR            S26, [R5,#8]
2E59D2:  BEQ             loc_2E59E2
2E59D4:  VLDR            S0, [R0]
2E59D8:  VLDR            S2, [R0,#4]
2E59DC:  VLDR            S4, [R0,#8]
2E59E0:  B               loc_2E59FE
2E59E2:  LDR             R5, [R4,#0x10]
2E59E4:  MOV             R0, R5; x
2E59E6:  BLX             cosf
2E59EA:  MOV             R8, R0
2E59EC:  MOV             R0, R5; x
2E59EE:  BLX             sinf
2E59F2:  VMOV            S2, R0
2E59F6:  VLDR            S4, =0.0
2E59FA:  VMOV            S0, R8
2E59FE:  VLDR            S6, [R4,#0x48]
2E5A02:  VLDR            S8, [R4,#0x4C]
2E5A06:  VMUL.F32        S6, S6, S6
2E5A0A:  VLDR            S10, [R4,#0x50]
2E5A0E:  VMUL.F32        S8, S8, S8
2E5A12:  VMUL.F32        S10, S10, S10
2E5A16:  VADD.F32        S6, S6, S8
2E5A1A:  VMOV.F32        S8, #0.5
2E5A1E:  VADD.F32        S6, S6, S10
2E5A22:  VSQRT.F32       S6, S6
2E5A26:  VCMPE.F32       S6, S8
2E5A2A:  VMRS            APSR_nzcv, FPSCR
2E5A2E:  BLE             loc_2E5A84
2E5A30:  VSUB.F32        S8, S18, S24
2E5A34:  VSUB.F32        S10, S16, S22
2E5A38:  VSUB.F32        S6, S20, S26
2E5A3C:  VMUL.F32        S2, S8, S2
2E5A40:  VMUL.F32        S0, S10, S0
2E5A44:  VMUL.F32        S4, S6, S4
2E5A48:  VADD.F32        S0, S0, S2
2E5A4C:  VMOV.F32        S2, #15.0
2E5A50:  VADD.F32        S0, S0, S4
2E5A54:  VABS.F32        S4, S0
2E5A58:  VCMPE.F32       S4, S2
2E5A5C:  VMRS            APSR_nzcv, FPSCR
2E5A60:  BGE             loc_2E5A74
2E5A62:  VCMPE.F32       S0, #0.0
2E5A66:  MOVS            R0, #5
2E5A68:  VMRS            APSR_nzcv, FPSCR
2E5A6C:  IT LT
2E5A6E:  MOVLT           R0, #4
2E5A70:  STRB.W          R0, [R4,#0x3BF]
2E5A74:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2E5A7C)
2E5A78:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2E5A7A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2E5A7C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2E5A7E:  ADD.W           R0, R0, #0x7D0
2E5A82:  B               loc_2E53C8
2E5A84:  LDRB.W          R0, [R10,#5]
2E5A88:  LSLS            R0, R0, #0x18
2E5A8A:  BPL             loc_2E5AA0
2E5A8C:  BLX             rand
2E5A90:  LDRH            R1, [R4,#0x24]; signed __int8
2E5A92:  EORS            R0, R1
2E5A94:  UXTB            R0, R0
2E5A96:  CMP             R0, #0xAD
2E5A98:  ITT EQ
2E5A9A:  MOVEQ           R0, #0x2D ; '-'
2E5A9C:  STREQ.W         R0, [R4,#0x524]
2E5AA0:  LDRB.W          R0, [R4,#0x3BE]
2E5AA4:  CMP             R0, #1
2E5AA6:  BNE             loc_2E5AB6
2E5AA8:  LDRSB.W         R0, [R4,#0x3D5]; this
2E5AAC:  BLX             j__ZN8CCarCtrl37FindSpeedMultiplierWithSpeedFromNodesEa; CCarCtrl::FindSpeedMultiplierWithSpeedFromNodes(signed char)
2E5AB0:  VMOV            S0, R0
2E5AB4:  B               loc_2E5ABA
2E5AB6:  VMOV.F32        S0, #1.0
2E5ABA:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x2E5AC6)
2E5ABE:  VLDR            S2, [R4,#0x3D8]
2E5AC2:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
2E5AC4:  VLDR            S4, =0.01
2E5AC8:  VSUB.F32        S6, S2, S0
2E5ACC:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
2E5ACE:  VLDR            S8, [R0]
2E5AD2:  VMUL.F32        S4, S8, S4
2E5AD6:  VABS.F32        S6, S6
2E5ADA:  VCMPE.F32       S6, S4
2E5ADE:  VMRS            APSR_nzcv, FPSCR
2E5AE2:  BLT             loc_2E5AFA
2E5AE4:  VCMPE.F32       S2, S0
2E5AE8:  VMRS            APSR_nzcv, FPSCR
2E5AEC:  VNEG.F32        S6, S4
2E5AF0:  IT GT
2E5AF2:  VMOVGT.F32      S4, S6
2E5AF6:  VADD.F32        S0, S2, S4
2E5AFA:  VSTR            S0, [R4,#0x3D8]
2E5AFE:  LDRB.W          R0, [R10]
2E5B02:  LSLS            R0, R0, #0x1F
2E5B04:  BEQ             loc_2E5BE6
2E5B06:  MOV.W           R0, #0xFFFFFFFF; int
2E5B0A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2E5B0E:  LDR.W           R0, [R0,#0x444]
2E5B12:  LDR             R0, [R0]
2E5B14:  LDR             R0, [R0,#0x2C]
2E5B16:  CMP             R0, #1
2E5B18:  BLT             loc_2E5BE6
2E5B1A:  MOV.W           R0, #0xFFFFFFFF; int
2E5B1E:  MOVS            R1, #0; bool
2E5B20:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E5B24:  CBZ             R0, loc_2E5B3C
2E5B26:  MOV.W           R0, #0xFFFFFFFF; int
2E5B2A:  MOVS            R1, #0; bool
2E5B2C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E5B30:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
2E5B34:  CMP             R0, #1
2E5B36:  BNE             loc_2E5B94
2E5B38:  MOVS            R6, #1
2E5B3A:  B               loc_2E5BAA
2E5B3C:  MOV.W           R0, #0xFFFFFFFF; int
2E5B40:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2E5B44:  LDR.W           R0, [R0,#0x440]; this
2E5B48:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
2E5B4C:  MOV             R5, R0
2E5B4E:  CMP             R5, #0
2E5B50:  IT NE
2E5B52:  MOVNE           R5, #1
2E5B54:  BEQ             loc_2E5BC4
2E5B56:  CMP             R5, #1
2E5B58:  BNE             loc_2E5BE6
2E5B5A:  MOV             R0, R4; this
2E5B5C:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
2E5B60:  CMP             R0, #1
2E5B62:  BEQ             loc_2E5B6E
2E5B64:  MOV             R0, R4; this
2E5B66:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
2E5B6A:  CMP             R0, #2
2E5B6C:  BNE             loc_2E5BE6
2E5B6E:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2E5B76)
2E5B72:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2E5B74:  B               loc_2E5BD4
2E5B76:  ALIGN 4
2E5B78:  DCFS -6.2832
2E5B7C:  DCFS -0.8
2E5B80:  DCFS 0.3
2E5B84:  DCFS 45.0
2E5B88:  DCFS 0.0
2E5B8C:  DCFS 0.01
2E5B90:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2E5156
2E5B94:  MOV.W           R0, #0xFFFFFFFF; int
2E5B98:  MOVS            R1, #0; bool
2E5B9A:  MOVS            R6, #0
2E5B9C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E5BA0:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
2E5BA4:  CMP             R0, #2
2E5BA6:  IT EQ
2E5BA8:  MOVEQ           R6, #1
2E5BAA:  MOV.W           R0, #0xFFFFFFFF; int
2E5BAE:  MOVS            R1, #0; bool
2E5BB0:  MOVS            R5, #0
2E5BB2:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E5BB6:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
2E5BBA:  CMP             R0, #4
2E5BBC:  IT EQ
2E5BBE:  MOVEQ           R5, #1
2E5BC0:  CMP             R6, #0
2E5BC2:  BEQ             loc_2E5B56
2E5BC4:  MOV             R0, R4; this
2E5BC6:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
2E5BCA:  CMP             R0, #4
2E5BCC:  BNE             loc_2E5BE6
2E5BCE:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2E5BD6)
2E5BD2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2E5BD4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2E5BD6:  MOVS            R1, #1
2E5BD8:  STRB.W          R1, [R4,#0x3BF]
2E5BDC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2E5BDE:  ADD.W           R0, R0, #0x3E8
2E5BE2:  STR.W           R0, [R4,#0x3C0]
2E5BE6:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x2E5BEE)
2E5BEA:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
2E5BEC:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
2E5BEE:  LDR             R0, [R0]; CTimer::m_FrameCounter
2E5BF0:  AND.W           R0, R0, #0xF
2E5BF4:  CMP             R0, #0xE
2E5BF6:  BNE             loc_2E5CE8
2E5BF8:  LDRB.W          R0, [R10]
2E5BFC:  LSLS            R0, R0, #0x1F
2E5BFE:  BEQ             loc_2E5CE8
2E5C00:  LDRB.W          R0, [R4,#0x3A]
2E5C04:  AND.W           R0, R0, #0xF0
2E5C08:  CMP             R0, #0x10
2E5C0A:  BNE             loc_2E5CE8
2E5C0C:  LDRB.W          R0, [R4,#0x3BE]
2E5C10:  CMP             R0, #1
2E5C12:  ITT EQ
2E5C14:  LDREQ.W         R0, [R4,#0x5A4]
2E5C18:  CMPEQ           R0, #0
2E5C1A:  BNE             loc_2E5CE8
2E5C1C:  LDR.W           R0, =(_ZN9CPopCycle24m_bCurrentZoneIsGangAreaE_ptr - 0x2E5C24)
2E5C20:  ADD             R0, PC; _ZN9CPopCycle24m_bCurrentZoneIsGangAreaE_ptr
2E5C22:  LDR             R0, [R0]; CPopCycle::m_bCurrentZoneIsGangArea ...
2E5C24:  LDRB            R0, [R0]; CPopCycle::m_bCurrentZoneIsGangArea
2E5C26:  CMP             R0, #0
2E5C28:  BEQ             loc_2E5CE8
2E5C2A:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x2E5C32)
2E5C2E:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
2E5C30:  LDR             R0, [R0]; CPools::ms_pPedPool ...
2E5C32:  LDR.W           R8, [R0]; CPools::ms_pPedPool
2E5C36:  LDR.W           R2, [R8,#8]
2E5C3A:  CMP             R2, #0
2E5C3C:  BEQ             loc_2E5CD6
2E5C3E:  VMOV.F32        S0, #10.0
2E5C42:  LDR.W           R9, [R8,#4]
2E5C46:  MOV.W           LR, #0
2E5C4A:  MOVW            R12, #0x7CC
2E5C4E:  MUL.W           R6, R2, R12
2E5C52:  SUBS            R2, #1
2E5C54:  SUBW            R5, R6, #0x7CC
2E5C58:  LDRSB.W         R6, [R9,R2]
2E5C5C:  CMP             R6, #0
2E5C5E:  BLT             loc_2E5CC0
2E5C60:  LDR.W           R6, [R8]
2E5C64:  ADDS            R6, R6, R5
2E5C66:  BEQ             loc_2E5CC0
2E5C68:  LDR.W           R0, [R6,#0x59C]
2E5C6C:  SUBS            R0, #7
2E5C6E:  CMP             R0, #0xB
2E5C70:  BCS             loc_2E5CC0
2E5C72:  LDR             R0, [R4,#0x14]
2E5C74:  LDR             R1, [R6,#0x14]
2E5C76:  ADD.W           R3, R0, #0x30 ; '0'
2E5C7A:  CMP             R0, #0
2E5C7C:  IT EQ
2E5C7E:  ADDEQ           R3, R4, #4
2E5C80:  ADD.W           R0, R1, #0x30 ; '0'
2E5C84:  CMP             R1, #0
2E5C86:  VLDR            S2, [R3]
2E5C8A:  IT EQ
2E5C8C:  ADDEQ           R0, R6, #4
2E5C8E:  VLDR            D16, [R3,#4]
2E5C92:  VLDR            S4, [R0]
2E5C96:  VLDR            D17, [R0,#4]
2E5C9A:  VSUB.F32        S2, S2, S4
2E5C9E:  VSUB.F32        D16, D16, D17
2E5CA2:  VMUL.F32        D2, D16, D16
2E5CA6:  VMUL.F32        S2, S2, S2
2E5CAA:  VADD.F32        S2, S2, S4
2E5CAE:  VADD.F32        S2, S2, S5
2E5CB2:  VSQRT.F32       S2, S2
2E5CB6:  VCMPE.F32       S2, S0
2E5CBA:  VMRS            APSR_nzcv, FPSCR
2E5CBE:  BLT             loc_2E5CCC
2E5CC0:  SUBS            R2, #1
2E5CC2:  SUBW            R5, R5, #0x7CC
2E5CC6:  ADDS            R0, R2, #1
2E5CC8:  BNE             loc_2E5C58
2E5CCA:  B               loc_2E5CDA
2E5CCC:  ADD.W           LR, LR, #1
2E5CD0:  CMP             R2, #0
2E5CD2:  BNE             loc_2E5C4E
2E5CD4:  B               loc_2E5CDA
2E5CD6:  MOV.W           LR, #0
2E5CDA:  RSB.W           R0, LR, #0xA
2E5CDE:  CMP             R0, #1
2E5CE0:  IT LE
2E5CE2:  MOVLE           R0, #1
2E5CE4:  STRB.W          R0, [R4,#0x3D4]
2E5CE8:  ADD             SP, SP, #0x58 ; 'X'
2E5CEA:  VPOP            {D8-D13}
2E5CEE:  POP.W           {R8-R10}
2E5CF2:  POP             {R4-R7,PC}
2E5CF4:  MOV.W           R3, #0x3E8
2E5CF8:  LDR.W           R6, [R4,#0x3B0]
2E5CFC:  SUBS            R6, R0, R6
2E5CFE:  CMP             R6, R3
2E5D00:  BLE.W           loc_2E5300
2E5D04:  LDR.W           R3, [R4,#0x3C4]
2E5D08:  MOVW            R6, #0x2710
2E5D0C:  ADD             R3, R6
2E5D0E:  CMP             R0, R3
2E5D10:  BCS             loc_2E5DAC
2E5D12:  LDRB.W          R3, [R4,#0x3C8]
2E5D16:  ADDS            R3, #1
2E5D18:  AND.W           R3, R3, #3
2E5D1C:  B               loc_2E5DAE
2E5D1E:  ADD             R0, SP, #0xA0+var_60; int
2E5D20:  MOV.W           R1, #0xFFFFFFFF
2E5D24:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E5D28:  LDR             R0, [R4,#0x14]
2E5D2A:  MOV             R1, R5
2E5D2C:  VLDR            S0, [SP,#0xA0+var_60]
2E5D30:  MOV.W           R8, #0
2E5D34:  CMP             R0, #0
2E5D36:  MOV.W           R9, #1
2E5D3A:  IT NE
2E5D3C:  ADDNE.W         R1, R0, #0x30 ; '0'
2E5D40:  VLDR            S2, [R1]
2E5D44:  VSUB.F32        S0, S0, S2
2E5D48:  VMOV.F32        S16, #10.0
2E5D4C:  VCMPE.F32       S0, S16
2E5D50:  VMRS            APSR_nzcv, FPSCR
2E5D54:  BLE             loc_2E5D5A
2E5D56:  MOVS            R0, #1
2E5D58:  B               loc_2E5E3C
2E5D5A:  ADD             R0, SP, #0xA0+var_70; int
2E5D5C:  MOV.W           R1, #0xFFFFFFFF
2E5D60:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E5D64:  LDR             R0, [R4,#0x14]
2E5D66:  MOV             R1, R5
2E5D68:  VLDR            S0, [SP,#0xA0+var_70+4]
2E5D6C:  CMP             R0, #0
2E5D6E:  IT NE
2E5D70:  ADDNE.W         R1, R0, #0x30 ; '0'
2E5D74:  ADD             R0, SP, #0xA0+var_94; int
2E5D76:  VLDR            S2, [R1,#4]
2E5D7A:  MOV.W           R1, #0xFFFFFFFF
2E5D7E:  VSUB.F32        S0, S0, S2
2E5D82:  VCMPE.F32       S0, #0.0
2E5D86:  VMRS            APSR_nzcv, FPSCR
2E5D8A:  BGE             loc_2E5E14
2E5D8C:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E5D90:  LDR             R0, [R4,#0x14]
2E5D92:  VLDR            S0, [SP,#0xA0+var_90]
2E5D96:  CMP             R0, #0
2E5D98:  IT NE
2E5D9A:  ADDNE.W         R5, R0, #0x30 ; '0'
2E5D9E:  VLDR            S2, [R5,#4]
2E5DA2:  VSUB.F32        S0, S0, S2
2E5DA6:  VNEG.F32        S0, S0
2E5DAA:  B               loc_2E5E2E
2E5DAC:  MOVS            R3, #0
2E5DAE:  CMP             R2, #1
2E5DB0:  STR.W           R0, [R4,#0x3C4]
2E5DB4:  STRB.W          R3, [R4,#0x3C8]
2E5DB8:  BHI             loc_2E5DD2
2E5DBA:  LDRB.W          R2, [R4,#0x4A8]
2E5DBE:  CMP             R2, #2
2E5DC0:  BEQ             loc_2E5DD2
2E5DC2:  LDRB.W          R2, [R10,#6]
2E5DC6:  LSLS            R2, R2, #0x1C
2E5DC8:  BMI             loc_2E5DD2
2E5DCA:  MOVS            R2, #3
2E5DCC:  MOV.W           R3, #0x2BC
2E5DD0:  B               loc_2E5EF4
2E5DD2:  AND.W           R2, R3, #3
2E5DD6:  CMP             R2, #1
2E5DD8:  BEQ.W           loc_2E5EDE
2E5DDC:  CMP             R2, #2
2E5DDE:  BEQ.W           loc_2E5EE6
2E5DE2:  CMP             R2, #3
2E5DE4:  BNE.W           loc_2E5EEE
2E5DE8:  MOVS            R2, #0xE
2E5DEA:  B               loc_2E5EE8
2E5DEC:  MOVS            R0, #0x14; jumptable 002E44B0 case 3
2E5DEE:  STRB.W          R0, [R4,#0x3D4]
2E5DF2:  B.W             def_2E44B0; jumptable 002E44B0 default case
2E5DF6:  MOVS            R0, #0x19; jumptable 002E44B0 case 4
2E5DF8:  STRB.W          R0, [R4,#0x3D4]
2E5DFC:  B.W             def_2E44B0; jumptable 002E44B0 default case
2E5E00:  MOVS            R0, #0x1E; jumptable 002E44B0 case 5
2E5E02:  STRB.W          R0, [R4,#0x3D4]
2E5E06:  B.W             def_2E44B0; jumptable 002E44B0 default case
2E5E0A:  MOVS            R0, #0x28 ; '('; jumptable 002E44B0 case 6
2E5E0C:  STRB.W          R0, [R4,#0x3D4]; jumptable 002E44B0 case 0
2E5E10:  B.W             def_2E44B0; jumptable 002E44B0 default case
2E5E14:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2E5E18:  LDR             R0, [R4,#0x14]
2E5E1A:  VLDR            S0, [SP,#0xA0+var_90]
2E5E1E:  CMP             R0, #0
2E5E20:  IT NE
2E5E22:  ADDNE.W         R5, R0, #0x30 ; '0'
2E5E26:  VLDR            S2, [R5,#4]
2E5E2A:  VSUB.F32        S0, S0, S2
2E5E2E:  VCMPE.F32       S0, S16
2E5E32:  MOVS            R0, #0
2E5E34:  VMRS            APSR_nzcv, FPSCR
2E5E38:  IT GT
2E5E3A:  MOVGT           R0, #1
2E5E3C:  CMP.W           R9, #1
2E5E40:  CMP.W           R8, #1
2E5E44:  CMP             R0, #1
2E5E46:  BNE             loc_2E5E8C
2E5E48:  MOV.W           R0, #0xFFFFFFFF; int
2E5E4C:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
2E5E50:  LDR             R1, [R0,#0x2C]
2E5E52:  CMP             R1, #6; switch 7 cases
2E5E54:  BHI.W           def_2E5E5A; jumptable 002E5E5A default case
2E5E58:  MOVS            R0, #0x19
2E5E5A:  TBB.W           [PC,R1]; switch jump
2E5E5E:  DCB 4; jump table for switch statement
2E5E5F:  DCB 0xAB
2E5E60:  DCB 0x76
2E5E61:  DCB 0x78
2E5E62:  DCB 0x83
2E5E63:  DCB 0x8E
2E5E64:  DCB 0x9B
2E5E65:  ALIGN 2
2E5E66:  BLX             rand; jumptable 002E5E5A case 0
2E5E6A:  VMOV            S0, R0
2E5E6E:  VLDR            S2, =4.6566e-10
2E5E72:  VMOV.F32        S4, #4.0
2E5E76:  VCVT.F32.S32    S0, S0
2E5E7A:  VMUL.F32        S0, S0, S2
2E5E7E:  VMOV.F32        S2, #12.0
2E5E82:  VMUL.F32        S0, S0, S4
2E5E86:  VADD.F32        S0, S0, S2
2E5E8A:  B               loc_2E5FAC
2E5E8C:  LDRB.W          R0, [R4,#0x3BE]
2E5E90:  CMP             R0, #1
2E5E92:  BNE.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E5E96:  LDRB.W          R0, [R4,#0x3A]
2E5E9A:  AND.W           R1, R0, #0xF8
2E5E9E:  CMP             R1, #0x60 ; '`'
2E5EA0:  ITTT NE
2E5EA2:  MOVNE           R1, #(stderr+3); CVehicle *
2E5EA4:  BFINE.W         R0, R1, #3, #0x1D
2E5EA8:  STRBNE.W        R0, [R4,#0x3A]
2E5EAC:  MOV             R0, R4; this
2E5EAE:  BLX             j__ZN6CCarAI23TellOccupantsToLeaveCarEP8CVehicle; CCarAI::TellOccupantsToLeaveCar(CVehicle *)
2E5EB2:  MOVS            R0, #0
2E5EB4:  STRB.W          R0, [R4,#0x3BE]
2E5EB8:  STRB.W          R0, [R4,#0x3D4]
2E5EBC:  MOV.W           R0, #0xFFFFFFFF; int
2E5EC0:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2E5EC4:  LDR.W           R0, [R0,#0x444]
2E5EC8:  LDR             R0, [R0]
2E5ECA:  LDR             R0, [R0,#0x2C]
2E5ECC:  CMP             R0, #1
2E5ECE:  BGT.W           loc_2E527E; jumptable 002E3BA2 cases 10,27,28
2E5ED2:  LDR.W           R0, [R10,#4]
2E5ED6:  BIC.W           R0, R0, #0x8000
2E5EDA:  B.W             loc_2E440A
2E5EDE:  MOVS            R2, #3
2E5EE0:  MOV.W           R3, #0xFA0
2E5EE4:  B               loc_2E5EF4
2E5EE6:  MOVS            R2, #0xD
2E5EE8:  MOVW            R3, #0x9C4
2E5EEC:  B               loc_2E5EF4
2E5EEE:  MOVS            R2, #3
2E5EF0:  MOVW            R3, #0x5DC
2E5EF4:  STR.W           R0, [R4,#0x3B0]
2E5EF8:  ADD             R0, R3
2E5EFA:  STR.W           R0, [R4,#0x3C0]
2E5EFE:  LDRB.W          R0, [R4,#0x4A8]
2E5F02:  STRB.W          R2, [R4,#0x3BF]
2E5F06:  CMP             R0, #1
2E5F08:  BNE             loc_2E5F22
2E5F0A:  SXTB            R0, R1
2E5F0C:  CMP             R0, #6
2E5F0E:  BHI             loc_2E5F22
2E5F10:  MOVS            R1, #1
2E5F12:  LSL.W           R0, R1, R0
2E5F16:  TST.W           R0, #0x53
2E5F1A:  ITT NE
2E5F1C:  MOVNE           R0, #2
2E5F1E:  STRBNE.W        R0, [R4,#0x3BD]
2E5F22:  LDRB.W          R0, [R4,#0x3A]
2E5F26:  AND.W           R1, R0, #0xF8
2E5F2A:  CMP             R1, #0x10
2E5F2C:  ITTT EQ
2E5F2E:  MOVEQ           R1, #3
2E5F30:  BFIEQ.W         R0, R1, #3, #0x1D
2E5F34:  STRBEQ.W        R0, [R4,#0x3A]
2E5F38:  LDR             R0, [R4]
2E5F3A:  LDR.W           R1, [R0,#0xDC]
2E5F3E:  MOV             R0, R4
2E5F40:  BLX             R1
2E5F42:  B.W             loc_2E5300
2E5F46:  MOVS            R0, #0; jumptable 002E5E5A default case
2E5F48:  B               loc_2E5FB4; jumptable 002E5E5A case 1
2E5F4A:  MOVS            R0, #0x22 ; '"'; jumptable 002E5E5A case 2
2E5F4C:  B               loc_2E5FB4; jumptable 002E5E5A case 1
2E5F4E:  LDR.W           R0, [R4,#0x388]; jumptable 002E5E5A case 3
2E5F52:  VLDR            S0, =60.0
2E5F56:  VLDR            S2, [R0,#0x88]
2E5F5A:  VMUL.F32        S0, S2, S0
2E5F5E:  VLDR            S2, =0.9
2E5F62:  B               loc_2E5FA8
2E5F64:  LDR.W           R0, [R4,#0x388]; jumptable 002E5E5A case 4
2E5F68:  VLDR            S0, =60.0
2E5F6C:  VLDR            S2, [R0,#0x88]
2E5F70:  VMUL.F32        S0, S2, S0
2E5F74:  VLDR            S2, =1.2
2E5F78:  B               loc_2E5FA8
2E5F7A:  LDR.W           R0, [R4,#0x388]; jumptable 002E5E5A case 5
2E5F7E:  VMOV.F32        S4, #1.25
2E5F82:  VLDR            S0, =60.0
2E5F86:  VLDR            S2, [R0,#0x88]
2E5F8A:  VMUL.F32        S0, S2, S0
2E5F8E:  VMUL.F32        S0, S0, S4
2E5F92:  B               loc_2E5FAC
2E5F94:  LDR.W           R0, [R4,#0x388]; jumptable 002E5E5A case 6
2E5F98:  VLDR            S0, =60.0
2E5F9C:  VLDR            S2, [R0,#0x88]
2E5FA0:  VMUL.F32        S0, S2, S0
2E5FA4:  VLDR            S2, =1.3
2E5FA8:  VMUL.F32        S0, S0, S2
2E5FAC:  VCVT.S32.F32    S0, S0
2E5FB0:  VMOV            R0, S0
2E5FB4:  LDRB.W          R1, [R4,#0x3A]; jumptable 002E5E5A case 1
2E5FB8:  STRB.W          R0, [R4,#0x3D4]
2E5FBC:  AND.W           R0, R1, #0xF8
2E5FC0:  CMP             R0, #0x60 ; '`'
2E5FC2:  ITTT NE
2E5FC4:  MOVNE           R0, #3
2E5FC6:  BFINE.W         R1, R0, #3, #0x1D
2E5FCA:  STRBNE.W        R1, [R4,#0x3A]
2E5FCE:  MOV             R0, R4; this
2E5FD0:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
2E5FD4:  CMP             R0, #4
2E5FD6:  BNE             loc_2E6008
2E5FD8:  MOV.W           R0, #0xFFFFFFFF; int
2E5FDC:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
2E5FE0:  LDR             R5, [R0,#0x2C]
2E5FE2:  MOV.W           R0, #0xFFFFFFFF; int
2E5FE6:  MOVS            R1, #0; bool
2E5FE8:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E5FEC:  CMP             R0, #0
2E5FEE:  MOV.W           R1, #0x40 ; '@'
2E5FF2:  MOV.W           R0, #0x40 ; '@'
2E5FF6:  SUB.W           R2, R5, #2
2E5FFA:  ITT NE
2E5FFC:  MOVNE           R0, #0x15
2E5FFE:  MOVNE           R1, #4
2E6000:  CMP             R2, #5
2E6002:  IT CC
2E6004:  MOVCC           R1, R0
2E6006:  B               loc_2E6064
2E6008:  MOV             R0, R4; this
2E600A:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
2E600E:  CMP             R0, #2
2E6010:  BNE             loc_2E6016
2E6012:  MOVS            R1, #0x2B ; '+'
2E6014:  B               loc_2E6064
2E6016:  MOV.W           R0, #0xFFFFFFFF; int
2E601A:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
2E601E:  LDR             R0, [R0,#0x2C]
2E6020:  SUBS            R1, R0, #4
2E6022:  CMP             R1, #3
2E6024:  BCS             loc_2E6036
2E6026:  BLX             rand
2E602A:  MOVS            R1, #2
2E602C:  TST.W           R0, #3
2E6030:  IT EQ
2E6032:  MOVEQ           R1, #4
2E6034:  B               loc_2E6064
2E6036:  CMP             R0, #3
2E6038:  BEQ             loc_2E6050
2E603A:  CMP             R0, #2
2E603C:  BNE             loc_2E6062
2E603E:  BLX             rand
2E6042:  AND.W           R0, R0, #3
2E6046:  MOVS            R1, #4
2E6048:  CMP             R0, #3
2E604A:  IT EQ
2E604C:  MOVEQ           R1, #2
2E604E:  B               loc_2E6064
2E6050:  BLX             rand
2E6054:  AND.W           R0, R0, #2
2E6058:  MOVS            R1, #2
2E605A:  CMP             R0, #2
2E605C:  IT CC
2E605E:  MOVCC           R1, #4
2E6060:  B               loc_2E6064
2E6062:  MOVS            R1, #4
2E6064:  MOVS            R0, #2
2E6066:  STRB.W          R0, [R4,#0x3BD]
2E606A:  MOVS            R0, #0
2E606C:  STRB.W          R0, [R4,#0x3BF]
2E6070:  STRB.W          R1, [R4,#0x3BE]
2E6074:  B.W             loc_2E527E; jumptable 002E3BA2 cases 10,27,28
