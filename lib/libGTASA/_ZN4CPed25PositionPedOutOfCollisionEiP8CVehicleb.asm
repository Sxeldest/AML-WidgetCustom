; =========================================================
; Game Engine Function: _ZN4CPed25PositionPedOutOfCollisionEiP8CVehicleb
; Address            : 0x49FD00 - 0x4A06D8
; =========================================================

49FD00:  PUSH            {R4-R7,LR}
49FD02:  ADD             R7, SP, #0xC
49FD04:  PUSH.W          {R8-R11}
49FD08:  SUB             SP, SP, #4
49FD0A:  VPUSH           {D8-D13}
49FD0E:  SUB             SP, SP, #0x68
49FD10:  MOV             R4, R2
49FD12:  MOV             R5, R0
49FD14:  CMP             R4, #0
49FD16:  MOV             R10, R1
49FD18:  ITT EQ
49FD1A:  LDREQ.W         R4, [R5,#0x590]
49FD1E:  CMPEQ           R4, #0
49FD20:  BEQ.W           loc_4A0560
49FD24:  LDR.W           R0, [R5,#0x48C]
49FD28:  MOVS            R1, #1
49FD2A:  TST             R0, R1
49FD2C:  BNE.W           loc_4A03EA
49FD30:  ADDW            R0, R5, #0x484
49FD34:  STR             R0, [SP,#0xB8+var_94]
49FD36:  MOV             R0, R4; this
49FD38:  STR             R3, [SP,#0xB8+var_9C]
49FD3A:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
49FD3E:  MOV             R9, R0
49FD40:  LDR             R0, [R4,#0x14]
49FD42:  MOV             R6, R5
49FD44:  MOV             R3, R5
49FD46:  ADD.W           R1, R0, #0x30 ; '0'
49FD4A:  CMP             R0, #0
49FD4C:  IT EQ
49FD4E:  ADDEQ           R1, R4, #4
49FD50:  VLDR            D16, [R1]
49FD54:  LDR             R0, [R1,#8]
49FD56:  STR             R0, [SP,#0xB8+var_58]
49FD58:  VSTR            D16, [SP,#0xB8+var_60]
49FD5C:  LDR             R0, [R5,#0x14]
49FD5E:  LDR.W           R1, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x49FD6C)
49FD62:  ADD.W           R2, R0, #0x30 ; '0'
49FD66:  CMP             R0, #0
49FD68:  ADD             R1, PC; _ZN6CWorld13pIgnoreEntityE_ptr
49FD6A:  IT EQ
49FD6C:  ADDEQ           R2, R5, #4
49FD6E:  VLDR            S18, [R2]
49FD72:  VLDR            S20, [R2,#4]
49FD76:  VLDR            S22, [R2,#8]
49FD7A:  LDR             R0, [R1]; CWorld::pIgnoreEntity ...
49FD7C:  VSTR            S22, [SP,#0xB8+var_68]
49FD80:  VSTR            S20, [SP,#0xB8+var_70+4]
49FD84:  VSTR            S18, [SP,#0xB8+var_70]
49FD88:  LDR.W           R8, [R6,#0x1C]!
49FD8C:  LDR             R1, [R5,#0x20]
49FD8E:  STR             R4, [R0]; CWorld::pIgnoreEntity
49FD90:  MOVS            R0, #0
49FD92:  STR             R1, [R5,#0x20]
49FD94:  BIC.W           R2, R8, #1
49FD98:  STR.W           R0, [R3,#0x48]!
49FD9C:  LDR.W           R1, [R3,#-4]
49FDA0:  STR             R2, [R6]
49FDA2:  STRD.W          R0, R0, [R3,#4]
49FDA6:  ORR.W           R0, R1, #0x10000
49FDAA:  STR             R3, [SP,#0xB8+var_98]
49FDAC:  STR.W           R0, [R3,#-4]
49FDB0:  MOV             R0, R4; this
49FDB2:  BLX             j__ZNK8CVehicle11IsOnItsSideEv; CVehicle::IsOnItsSide(void)
49FDB6:  CMP             R0, #0
49FDB8:  STR             R6, [SP,#0xB8+var_8C]
49FDBA:  ITT NE
49FDBC:  LDRNE.W         R0, [R4,#0x5A0]
49FDC0:  CMPNE           R0, #9
49FDC2:  BNE             loc_49FDF6
49FDC4:  CMP.W           R10, #0
49FDC8:  BEQ             loc_49FE2E
49FDCA:  ADD             R0, SP, #0xB8+var_80; this
49FDCC:  MOV             R1, R4; CVehicle *
49FDCE:  MOV             R2, R10; int
49FDD0:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
49FDD4:  VLDR            D16, [SP,#0xB8+var_80]
49FDD8:  LDR             R0, [SP,#0xB8+var_78]
49FDDA:  STR             R0, [SP,#0xB8+var_68]
49FDDC:  VSTR            D16, [SP,#0xB8+var_70]
49FDE0:  LDRD.W          R2, R1, [SP,#0xB8+var_70]
49FDE4:  LDR             R3, [R5,#0x14]
49FDE6:  LDR             R0, [SP,#0xB8+var_68]
49FDE8:  CBZ             R3, loc_49FE66
49FDEA:  STR             R2, [R3,#0x30]
49FDEC:  LDR             R2, [R5,#0x14]
49FDEE:  STR             R1, [R2,#0x34]
49FDF0:  LDR             R1, [R5,#0x14]
49FDF2:  ADDS            R1, #0x38 ; '8'
49FDF4:  B               loc_49FE6E
49FDF6:  VMOV.F32        S0, #1.0
49FDFA:  VLDR            D16, [SP,#0xB8+var_60]
49FDFE:  LDR             R0, [SP,#0xB8+var_58]
49FE00:  STR             R0, [SP,#0xB8+var_68]
49FE02:  VSTR            D16, [SP,#0xB8+var_70]
49FE06:  VLDR            S2, [R9,#0xC]
49FE0A:  VADD.F32        S0, S2, S0
49FE0E:  VLDR            S2, [SP,#0xB8+var_68]
49FE12:  LDRD.W          R1, R0, [SP,#0xB8+var_70]
49FE16:  VADD.F32        S0, S2, S0
49FE1A:  VSTR            S0, [SP,#0xB8+var_68]
49FE1E:  LDR             R2, [R5,#0x14]
49FE20:  CBZ             R2, loc_49FE32
49FE22:  STR             R1, [R2,#0x30]
49FE24:  LDR             R1, [R5,#0x14]
49FE26:  STR             R0, [R1,#0x34]
49FE28:  LDR             R0, [R5,#0x14]
49FE2A:  ADDS            R0, #0x38 ; '8'
49FE2C:  B               loc_49FE3A
49FE2E:  MOVS            R6, #0
49FE30:  B               loc_49FF0E
49FE32:  STRD.W          R1, R0, [R5,#4]
49FE36:  ADD.W           R0, R5, #0xC
49FE3A:  VSTR            S0, [R0]
49FE3E:  MOV             R0, R5; this
49FE40:  BLX             j__ZN9CPhysical14CheckCollisionEv; CPhysical::CheckCollision(void)
49FE44:  MOVS            R6, #0
49FE46:  CMP             R0, #0
49FE48:  BNE             loc_49FF0E
49FE4A:  MOVS            R0, #1
49FE4C:  ADD             R1, SP, #0xB8+var_70; CVector *
49FE4E:  STRD.W          R6, R0, [SP,#0xB8+var_B8]; bool
49FE52:  ADD             R0, SP, #0xB8+var_60; this
49FE54:  MOVS            R2, #(stderr+1); CVector *
49FE56:  MOVS            R3, #0; bool
49FE58:  STRD.W          R6, R6, [SP,#0xB8+var_B0]; bool
49FE5C:  STR             R6, [SP,#0xB8+var_A8]; bool
49FE5E:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
49FE62:  MOV             R6, R0
49FE64:  B               loc_49FF0E
49FE66:  STRD.W          R2, R1, [R5,#4]
49FE6A:  ADD.W           R1, R5, #0xC
49FE6E:  STR             R0, [R1]
49FE70:  MOV             R0, R5; this
49FE72:  BLX             j__ZN9CPhysical14CheckCollisionEv; CPhysical::CheckCollision(void)
49FE76:  CBNZ            R0, loc_49FE94
49FE78:  MOVS            R0, #0
49FE7A:  MOVS            R6, #1
49FE7C:  STRD.W          R0, R6, [SP,#0xB8+var_B8]; bool
49FE80:  ADD             R1, SP, #0xB8+var_70; CVector *
49FE82:  STRD.W          R0, R0, [SP,#0xB8+var_B0]; bool
49FE86:  MOVS            R2, #(stderr+1); CVector *
49FE88:  STR             R0, [SP,#0xB8+var_A8]; bool
49FE8A:  ADD             R0, SP, #0xB8+var_60; this
49FE8C:  MOVS            R3, #0; bool
49FE8E:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
49FE92:  CBNZ            R0, loc_49FF0E
49FE94:  ORR.W           R0, R10, #1
49FE98:  MOVS            R6, #0
49FE9A:  CMP             R0, #0xB
49FE9C:  ITT EQ
49FE9E:  LDREQ.W         R0, [R4,#0x5A0]
49FEA2:  CMPEQ           R0, #9
49FEA4:  BNE             loc_49FF0E
49FEA6:  MOVS            R2, #8
49FEA8:  CMP.W           R10, #0xB
49FEAC:  ADD             R0, SP, #0xB8+var_80; this
49FEAE:  IT EQ
49FEB0:  MOVEQ           R2, #9; int
49FEB2:  MOV             R1, R4; CVehicle *
49FEB4:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
49FEB8:  VLDR            D16, [SP,#0xB8+var_80]
49FEBC:  LDR             R0, [SP,#0xB8+var_78]
49FEBE:  STR             R0, [SP,#0xB8+var_68]
49FEC0:  VSTR            D16, [SP,#0xB8+var_70]
49FEC4:  LDRD.W          R2, R1, [SP,#0xB8+var_70]
49FEC8:  LDR             R3, [R5,#0x14]
49FECA:  LDR             R0, [SP,#0xB8+var_68]
49FECC:  CBZ             R3, loc_49FEDA
49FECE:  STR             R2, [R3,#0x30]
49FED0:  LDR             R2, [R5,#0x14]
49FED2:  STR             R1, [R2,#0x34]
49FED4:  LDR             R1, [R5,#0x14]
49FED6:  ADDS            R1, #0x38 ; '8'
49FED8:  B               loc_49FEE2
49FEDA:  STRD.W          R2, R1, [R5,#4]
49FEDE:  ADD.W           R1, R5, #0xC
49FEE2:  STR             R0, [R1]
49FEE4:  MOV             R0, R5; this
49FEE6:  BLX             j__ZN9CPhysical14CheckCollisionEv; CPhysical::CheckCollision(void)
49FEEA:  MOVS            R6, #0
49FEEC:  CBNZ            R0, loc_49FF08
49FEEE:  MOVS            R0, #1
49FEF0:  ADD             R1, SP, #0xB8+var_70; CVector *
49FEF2:  STRD.W          R6, R0, [SP,#0xB8+var_B8]; bool
49FEF6:  ADD             R0, SP, #0xB8+var_60; this
49FEF8:  MOVS            R2, #(stderr+1); CVector *
49FEFA:  MOVS            R3, #0; bool
49FEFC:  STRD.W          R6, R6, [SP,#0xB8+var_B0]; bool
49FF00:  STR             R6, [SP,#0xB8+var_A8]; bool
49FF02:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
49FF06:  MOV             R6, R0
49FF08:  CMP             R6, #0
49FF0A:  IT NE
49FF0C:  MOVNE           R6, #1
49FF0E:  AND.W           R0, R8, #1
49FF12:  STR             R0, [SP,#0xB8+var_90]
49FF14:  VLDR            S6, [R9,#8]
49FF18:  ORR.W           R1, R10, #1
49FF1C:  LDR             R0, [R4,#0x14]
49FF1E:  CMP             R1, #9
49FF20:  VNEG.F32        S6, S6
49FF24:  VLDR            S4, [R9]
49FF28:  VLDR            S8, [R9,#0xC]
49FF2C:  VLDR            S0, [R0,#8]
49FF30:  STR.W           R9, [SP,#0xB8+var_88]
49FF34:  VLDR            S10, [R9,#0x14]
49FF38:  VABS.F32        S2, S0
49FF3C:  VLDR            S26, =-0.355
49FF40:  VMAX.F32        D3, D5, D3
49FF44:  VLDR            S24, =0.355
49FF48:  VADD.F32        S4, S4, S26
49FF4C:  VMUL.F32        S2, S6, S2
49FF50:  VADD.F32        S16, S4, S2
49FF54:  VADD.F32        S2, S8, S24
49FF58:  IT EQ
49FF5A:  VMOVEQ.F32      S16, S2
49FF5E:  CMP             R6, #0
49FF60:  BNE.W           loc_4A0388
49FF64:  VLDR            S2, [SP,#0xB8+var_60]
49FF68:  VLDR            S4, [SP,#0xB8+var_60+4]
49FF6C:  VSUB.F32        S2, S18, S2
49FF70:  VLDR            S6, [SP,#0xB8+var_58]
49FF74:  VSUB.F32        S4, S20, S4
49FF78:  VLDR            S8, [R0]
49FF7C:  VLDR            S10, [R0,#4]
49FF80:  VSUB.F32        S6, S22, S6
49FF84:  VMUL.F32        S2, S2, S8
49FF88:  VMUL.F32        S4, S4, S10
49FF8C:  VMUL.F32        S6, S6, S0
49FF90:  VADD.F32        S2, S2, S4
49FF94:  VADD.F32        S2, S2, S6
49FF98:  VSUB.F32        S2, S16, S2
49FF9C:  VMUL.F32        S4, S8, S2
49FFA0:  VMUL.F32        S0, S0, S2
49FFA4:  VMUL.F32        S6, S10, S2
49FFA8:  VADD.F32        S4, S18, S4
49FFAC:  VADD.F32        S0, S22, S0
49FFB0:  VADD.F32        S2, S20, S6
49FFB4:  VSTR            S4, [SP,#0xB8+var_70]
49FFB8:  VSTR            S2, [SP,#0xB8+var_70+4]
49FFBC:  VSTR            S0, [SP,#0xB8+var_68]
49FFC0:  LDR             R0, [R5,#0x14]
49FFC2:  CBZ             R0, loc_49FFD4
49FFC4:  VSTR            S4, [R0,#0x30]
49FFC8:  LDR             R0, [R5,#0x14]
49FFCA:  VSTR            S2, [R0,#0x34]
49FFCE:  LDR             R0, [R5,#0x14]
49FFD0:  ADDS            R0, #0x38 ; '8'
49FFD2:  B               loc_49FFE0
49FFD4:  ADD.W           R0, R5, #0xC
49FFD8:  VSTR            S4, [R5,#4]
49FFDC:  VSTR            S2, [R5,#8]
49FFE0:  VSTR            S0, [R0]
49FFE4:  MOV             R0, R5; this
49FFE6:  BLX             j__ZN9CPhysical14CheckCollisionEv; CPhysical::CheckCollision(void)
49FFEA:  CBNZ            R0, loc_4A000C
49FFEC:  MOVS            R0, #0
49FFEE:  MOVS            R1, #1
49FFF0:  STRD.W          R0, R1, [SP,#0xB8+var_B8]; bool
49FFF4:  ADD             R1, SP, #0xB8+var_70; CVector *
49FFF6:  STRD.W          R0, R0, [SP,#0xB8+var_B0]; bool
49FFFA:  MOVS            R2, #(stderr+1); CVector *
49FFFC:  STR             R0, [SP,#0xB8+var_A8]; bool
49FFFE:  ADD             R0, SP, #0xB8+var_60; this
4A0000:  MOVS            R3, #0; bool
4A0002:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
4A0006:  CMP             R0, #0
4A0008:  BNE.W           loc_4A0388
4A000C:  LDR             R0, [SP,#0xB8+var_88]
4A000E:  VMOV.F32        S2, #3.0
4A0012:  ADD.W           R10, SP, #0xB8+var_60
4A0016:  ADD.W           R8, SP, #0xB8+var_70
4A001A:  MOV.W           R6, #0xFFFFFFFF
4A001E:  MOV.W           R9, #0
4A0022:  VLDR            S18, [R0,#4]
4A0026:  MOV.W           R11, #1
4A002A:  VLDR            S0, [R0,#0x10]
4A002E:  ADD.W           R0, R5, #0xC
4A0032:  STR             R0, [SP,#0xB8+var_84]
4A0034:  VSUB.F32        S0, S0, S18
4A0038:  VDIV.F32        S20, S0, S2
4A003C:  ADDS            R6, #1
4A003E:  VMOV            S0, R6
4A0042:  VCVT.F32.S32    S0, S0
4A0046:  LDR             R0, [R4,#0x14]
4A0048:  VLDR            S14, [SP,#0xB8+var_60]
4A004C:  VLDR            S1, [SP,#0xB8+var_60+4]
4A0050:  VLDR            S2, [R0]
4A0054:  VLDR            S4, [R0,#4]
4A0058:  VLDR            S6, [R0,#8]
4A005C:  VMUL.F32        S2, S16, S2
4A0060:  VMUL.F32        S4, S16, S4
4A0064:  VLDR            S8, [R0,#0x10]
4A0068:  VMUL.F32        S0, S20, S0
4A006C:  VLDR            S10, [R0,#0x14]
4A0070:  VMUL.F32        S6, S16, S6
4A0074:  VLDR            S3, [SP,#0xB8+var_58]
4A0078:  VLDR            S12, [R0,#0x18]
4A007C:  VADD.F32        S2, S2, S14
4A0080:  VADD.F32        S14, S4, S1
4A0084:  VADD.F32        S0, S18, S0
4A0088:  VADD.F32        S6, S6, S3
4A008C:  VMUL.F32        S4, S0, S8
4A0090:  VMUL.F32        S8, S0, S10
4A0094:  VMUL.F32        S0, S0, S12
4A0098:  VADD.F32        S4, S2, S4
4A009C:  VADD.F32        S2, S14, S8
4A00A0:  VADD.F32        S0, S6, S0
4A00A4:  VSTR            S4, [SP,#0xB8+var_70]
4A00A8:  VSTR            S2, [SP,#0xB8+var_70+4]
4A00AC:  VSTR            S0, [SP,#0xB8+var_68]
4A00B0:  LDR             R0, [R5,#0x14]
4A00B2:  CBZ             R0, loc_4A00C4
4A00B4:  VSTR            S4, [R0,#0x30]
4A00B8:  LDR             R0, [R5,#0x14]
4A00BA:  VSTR            S2, [R0,#0x34]
4A00BE:  LDR             R0, [R5,#0x14]
4A00C0:  ADDS            R0, #0x38 ; '8'
4A00C2:  B               loc_4A00CE
4A00C4:  VSTR            S4, [R5,#4]
4A00C8:  VSTR            S2, [R5,#8]
4A00CC:  LDR             R0, [SP,#0xB8+var_84]
4A00CE:  VSTR            S0, [R0]
4A00D2:  MOV             R0, R5; this
4A00D4:  BLX             j__ZN9CPhysical14CheckCollisionEv; CPhysical::CheckCollision(void)
4A00D8:  CBNZ            R0, loc_4A00F8
4A00DA:  MOV             R0, R10; this
4A00DC:  MOV             R1, R8; CVector *
4A00DE:  MOVS            R2, #(stderr+1); CVector *
4A00E0:  MOVS            R3, #0; bool
4A00E2:  STRD.W          R9, R11, [SP,#0xB8+var_B8]; bool
4A00E6:  STRD.W          R9, R9, [SP,#0xB8+var_B0]; bool
4A00EA:  STR.W           R9, [SP,#0xB8+var_A8]; bool
4A00EE:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
4A00F2:  CMP             R0, #0
4A00F4:  BNE.W           loc_4A0388
4A00F8:  CMP             R6, #3
4A00FA:  BLT             loc_4A003C
4A00FC:  LDR             R0, [SP,#0xB8+var_88]
4A00FE:  VLDR            S10, [SP,#0xB8+var_58]
4A0102:  VLDR            S0, [R0,#4]
4A0106:  LDR             R0, [R4,#0x14]
4A0108:  VADD.F32        S0, S0, S26
4A010C:  VLDR            S2, [R0,#0x10]
4A0110:  VLDR            S4, [R0,#0x14]
4A0114:  VLDR            S6, [R0,#0x18]
4A0118:  VMUL.F32        S8, S0, S4
4A011C:  VLDR            S4, [SP,#0xB8+var_60]
4A0120:  VMUL.F32        S2, S0, S2
4A0124:  VMUL.F32        S0, S0, S6
4A0128:  VLDR            S6, [SP,#0xB8+var_60+4]
4A012C:  VADD.F32        S4, S2, S4
4A0130:  VADD.F32        S2, S8, S6
4A0134:  VADD.F32        S0, S0, S10
4A0138:  VSTR            S4, [SP,#0xB8+var_70]
4A013C:  VSTR            S2, [SP,#0xB8+var_70+4]
4A0140:  VSTR            S0, [SP,#0xB8+var_68]
4A0144:  LDR             R0, [R5,#0x14]
4A0146:  CBZ             R0, loc_4A0158
4A0148:  VSTR            S4, [R0,#0x30]
4A014C:  LDR             R0, [R5,#0x14]
4A014E:  VSTR            S2, [R0,#0x34]
4A0152:  LDR             R0, [R5,#0x14]
4A0154:  ADDS            R0, #0x38 ; '8'
4A0156:  B               loc_4A0162
4A0158:  VSTR            S4, [R5,#4]
4A015C:  VSTR            S2, [R5,#8]
4A0160:  LDR             R0, [SP,#0xB8+var_84]
4A0162:  VSTR            S0, [R0]
4A0166:  MOV             R0, R5; this
4A0168:  BLX             j__ZN9CPhysical14CheckCollisionEv; CPhysical::CheckCollision(void)
4A016C:  CBNZ            R0, loc_4A018E
4A016E:  MOVS            R0, #0
4A0170:  MOVS            R1, #1
4A0172:  STRD.W          R0, R1, [SP,#0xB8+var_B8]; bool
4A0176:  ADD             R1, SP, #0xB8+var_70; CVector *
4A0178:  STRD.W          R0, R0, [SP,#0xB8+var_B0]; bool
4A017C:  MOVS            R2, #(stderr+1); CVector *
4A017E:  STR             R0, [SP,#0xB8+var_A8]; bool
4A0180:  ADD             R0, SP, #0xB8+var_60; this
4A0182:  MOVS            R3, #0; bool
4A0184:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
4A0188:  CMP             R0, #0
4A018A:  BNE.W           loc_4A0388
4A018E:  LDR             R0, [SP,#0xB8+var_88]
4A0190:  VLDR            S10, [SP,#0xB8+var_58]
4A0194:  VLDR            S0, [R0,#0x10]
4A0198:  LDR             R0, [R4,#0x14]
4A019A:  VADD.F32        S0, S0, S24
4A019E:  VLDR            S2, [R0,#0x10]
4A01A2:  VLDR            S4, [R0,#0x14]
4A01A6:  VLDR            S6, [R0,#0x18]
4A01AA:  VMUL.F32        S8, S0, S4
4A01AE:  VLDR            S4, [SP,#0xB8+var_60]
4A01B2:  VMUL.F32        S2, S0, S2
4A01B6:  VMUL.F32        S0, S0, S6
4A01BA:  VLDR            S6, [SP,#0xB8+var_60+4]
4A01BE:  VADD.F32        S4, S2, S4
4A01C2:  VADD.F32        S2, S8, S6
4A01C6:  VADD.F32        S0, S0, S10
4A01CA:  VSTR            S4, [SP,#0xB8+var_70]
4A01CE:  VSTR            S2, [SP,#0xB8+var_70+4]
4A01D2:  VSTR            S0, [SP,#0xB8+var_68]
4A01D6:  LDR             R0, [R5,#0x14]
4A01D8:  CBZ             R0, loc_4A01EA
4A01DA:  VSTR            S4, [R0,#0x30]
4A01DE:  LDR             R0, [R5,#0x14]
4A01E0:  VSTR            S2, [R0,#0x34]
4A01E4:  LDR             R0, [R5,#0x14]
4A01E6:  ADDS            R0, #0x38 ; '8'
4A01E8:  B               loc_4A01F4
4A01EA:  VSTR            S4, [R5,#4]
4A01EE:  VSTR            S2, [R5,#8]
4A01F2:  LDR             R0, [SP,#0xB8+var_84]
4A01F4:  VSTR            S0, [R0]
4A01F8:  MOV             R0, R5; this
4A01FA:  BLX             j__ZN9CPhysical14CheckCollisionEv; CPhysical::CheckCollision(void)
4A01FE:  CBNZ            R0, loc_4A0220
4A0200:  MOVS            R0, #0
4A0202:  MOVS            R1, #1
4A0204:  STRD.W          R0, R1, [SP,#0xB8+var_B8]; bool
4A0208:  ADD             R1, SP, #0xB8+var_70; CVector *
4A020A:  STRD.W          R0, R0, [SP,#0xB8+var_B0]; bool
4A020E:  MOVS            R2, #(stderr+1); CVector *
4A0210:  STR             R0, [SP,#0xB8+var_A8]; bool
4A0212:  ADD             R0, SP, #0xB8+var_60; this
4A0214:  MOVS            R3, #0; bool
4A0216:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
4A021A:  CMP             R0, #0
4A021C:  BNE.W           loc_4A0388
4A0220:  LDR             R0, [R4,#0x14]
4A0222:  VLDR            S14, [SP,#0xB8+var_60]
4A0226:  VLDR            S1, [SP,#0xB8+var_60+4]
4A022A:  VLDR            S0, [R0]
4A022E:  VLDR            S2, [R0,#4]
4A0232:  VLDR            S4, [R0,#8]
4A0236:  VMUL.F32        S0, S16, S0
4A023A:  VMUL.F32        S2, S16, S2
4A023E:  VLDR            S6, [R0,#0x10]
4A0242:  VMUL.F32        S4, S16, S4
4A0246:  VLDR            S8, [R0,#0x14]
4A024A:  VLDR            S10, [R0,#0x18]
4A024E:  LDR             R0, [SP,#0xB8+var_88]
4A0250:  VLDR            S3, [SP,#0xB8+var_58]
4A0254:  VLDR            S12, [R0,#4]
4A0258:  VSUB.F32        S0, S14, S0
4A025C:  VSUB.F32        S2, S1, S2
4A0260:  VMUL.F32        S8, S12, S8
4A0264:  VMUL.F32        S6, S12, S6
4A0268:  VMUL.F32        S10, S12, S10
4A026C:  VSUB.F32        S12, S3, S4
4A0270:  VADD.F32        S2, S2, S8
4A0274:  VADD.F32        S4, S0, S6
4A0278:  VADD.F32        S0, S12, S10
4A027C:  VSTR            S4, [SP,#0xB8+var_70]
4A0280:  VSTR            S2, [SP,#0xB8+var_70+4]
4A0284:  VSTR            S0, [SP,#0xB8+var_68]
4A0288:  LDR             R0, [R5,#0x14]
4A028A:  CBZ             R0, loc_4A02A4
4A028C:  VSTR            S4, [R0,#0x30]
4A0290:  LDR             R0, [R5,#0x14]
4A0292:  VSTR            S2, [R0,#0x34]
4A0296:  LDR             R0, [R5,#0x14]
4A0298:  ADDS            R0, #0x38 ; '8'
4A029A:  B               loc_4A02AE
4A029C:  DCFS -0.355
4A02A0:  DCFS 0.355
4A02A4:  VSTR            S4, [R5,#4]
4A02A8:  VSTR            S2, [R5,#8]
4A02AC:  LDR             R0, [SP,#0xB8+var_84]
4A02AE:  VSTR            S0, [R0]
4A02B2:  MOV             R0, R5; this
4A02B4:  BLX             j__ZN9CPhysical14CheckCollisionEv; CPhysical::CheckCollision(void)
4A02B8:  CBNZ            R0, loc_4A02D8
4A02BA:  MOVS            R0, #0
4A02BC:  MOVS            R1, #1
4A02BE:  STRD.W          R0, R1, [SP,#0xB8+var_B8]; bool
4A02C2:  ADD             R1, SP, #0xB8+var_70; CVector *
4A02C4:  STRD.W          R0, R0, [SP,#0xB8+var_B0]; bool
4A02C8:  MOVS            R2, #(stderr+1); CVector *
4A02CA:  STR             R0, [SP,#0xB8+var_A8]; bool
4A02CC:  ADD             R0, SP, #0xB8+var_60; this
4A02CE:  MOVS            R3, #0; bool
4A02D0:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
4A02D4:  CMP             R0, #0
4A02D6:  BNE             loc_4A0388
4A02D8:  LDR             R0, [R4,#0x14]
4A02DA:  VLDR            S14, [SP,#0xB8+var_60]
4A02DE:  VLDR            S1, [SP,#0xB8+var_60+4]
4A02E2:  VLDR            S0, [R0]
4A02E6:  VLDR            S2, [R0,#4]
4A02EA:  VLDR            S4, [R0,#8]
4A02EE:  VMUL.F32        S0, S16, S0
4A02F2:  VMUL.F32        S2, S16, S2
4A02F6:  VLDR            S6, [R0,#0x10]
4A02FA:  VMUL.F32        S4, S16, S4
4A02FE:  VLDR            S8, [R0,#0x14]
4A0302:  VLDR            S10, [R0,#0x18]
4A0306:  LDR             R0, [SP,#0xB8+var_88]
4A0308:  VLDR            S3, [SP,#0xB8+var_58]
4A030C:  VLDR            S12, [R0,#0x10]
4A0310:  VSUB.F32        S0, S14, S0
4A0314:  VSUB.F32        S2, S1, S2
4A0318:  VMUL.F32        S8, S12, S8
4A031C:  VMUL.F32        S6, S12, S6
4A0320:  VMUL.F32        S10, S12, S10
4A0324:  VSUB.F32        S12, S3, S4
4A0328:  VADD.F32        S2, S2, S8
4A032C:  VADD.F32        S4, S0, S6
4A0330:  VADD.F32        S0, S12, S10
4A0334:  VSTR            S4, [SP,#0xB8+var_70]
4A0338:  VSTR            S2, [SP,#0xB8+var_70+4]
4A033C:  VSTR            S0, [SP,#0xB8+var_68]
4A0340:  LDR             R0, [R5,#0x14]
4A0342:  CBZ             R0, loc_4A0354
4A0344:  VSTR            S4, [R0,#0x30]
4A0348:  LDR             R0, [R5,#0x14]
4A034A:  VSTR            S2, [R0,#0x34]
4A034E:  LDR             R0, [R5,#0x14]
4A0350:  ADDS            R0, #0x38 ; '8'
4A0352:  B               loc_4A035E
4A0354:  VSTR            S4, [R5,#4]
4A0358:  VSTR            S2, [R5,#8]
4A035C:  LDR             R0, [SP,#0xB8+var_84]
4A035E:  VSTR            S0, [R0]
4A0362:  MOV             R0, R5; this
4A0364:  BLX             j__ZN9CPhysical14CheckCollisionEv; CPhysical::CheckCollision(void)
4A0368:  CMP             R0, #0
4A036A:  BNE             loc_4A03FC
4A036C:  MOVS            R0, #0
4A036E:  MOVS            R1, #1
4A0370:  STRD.W          R0, R1, [SP,#0xB8+var_B8]; bool
4A0374:  ADD             R1, SP, #0xB8+var_70; CVector *
4A0376:  STRD.W          R0, R0, [SP,#0xB8+var_B0]; bool
4A037A:  MOVS            R2, #(stderr+1); CVector *
4A037C:  STR             R0, [SP,#0xB8+var_A8]; bool
4A037E:  ADD             R0, SP, #0xB8+var_60; this
4A0380:  MOVS            R3, #0; bool
4A0382:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
4A0386:  CBZ             R0, loc_4A03FC
4A0388:  LDR             R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x4A0392)
4A038A:  MOVS            R1, #0
4A038C:  LDR             R2, [SP,#0xB8+var_90]
4A038E:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
4A0390:  LDR             R0, [R0]; CWorld::pIgnoreEntity ...
4A0392:  STR             R1, [R0]; CWorld::pIgnoreEntity
4A0394:  LDR             R1, [SP,#0xB8+var_8C]
4A0396:  LDR             R0, [R1]
4A0398:  BIC.W           R0, R0, #1
4A039C:  ORRS            R0, R2
4A039E:  STR             R0, [R1]
4A03A0:  LDR             R0, [R5,#0x44]
4A03A2:  BIC.W           R0, R0, #0x10000
4A03A6:  STR             R0, [R5,#0x44]
4A03A8:  LDR             R1, [SP,#0xB8+var_94]
4A03AA:  MOVS            R2, #1
4A03AC:  VMOV.I32        Q8, #0
4A03B0:  ADD.W           R0, R4, #0x5A0
4A03B4:  MOV             R3, R1
4A03B6:  LDR             R1, [R3,#8]
4A03B8:  ORRS            R1, R2
4A03BA:  STR             R1, [R3,#8]
4A03BC:  LDR             R2, [SP,#0xB8+var_98]
4A03BE:  MOVS            R1, #0
4A03C0:  STR             R1, [R2,#0x14]
4A03C2:  VST1.32         {D16-D17}, [R2]!
4A03C6:  STR             R1, [R2]
4A03C8:  LDR             R0, [R0]
4A03CA:  CMP             R0, #9
4A03CC:  BNE             loc_4A03D4
4A03CE:  LDR             R0, [SP,#0xB8+var_9C]
4A03D0:  CMP             R0, #1
4A03D2:  BNE             loc_4A03EA
4A03D4:  ADD.W           R0, R4, #0x48 ; 'H'
4A03D8:  STRD.W          R1, R1, [R4,#0x58]
4A03DC:  VST1.32         {D16-D17}, [R0]
4A03E0:  MOV             R0, #0xBD4CCCCD
4A03E8:  STR             R0, [R4,#0x50]
4A03EA:  MOVS            R6, #1
4A03EC:  MOV             R0, R6
4A03EE:  ADD             SP, SP, #0x68 ; 'h'
4A03F0:  VPOP            {D8-D13}
4A03F4:  ADD             SP, SP, #4
4A03F6:  POP.W           {R8-R11}
4A03FA:  POP             {R4-R7,PC}
4A03FC:  LDR.W           R0, [R4,#0x5A0]
4A0400:  LDR             R6, [SP,#0xB8+var_8C]
4A0402:  CBNZ            R0, loc_4A047E
4A0404:  LDR             R0, [R4,#0x14]
4A0406:  VMOV.F32        S14, #1.0
4A040A:  LDR             R1, [SP,#0xB8+var_88]
4A040C:  VLDR            S12, [SP,#0xB8+var_58]
4A0410:  VLDR            S6, [R0,#0x28]
4A0414:  VLDR            S0, [R1,#0x14]
4A0418:  VLDR            S2, [R0,#0x20]
4A041C:  VMUL.F32        S6, S0, S6
4A0420:  VLDR            S4, [R0,#0x24]
4A0424:  VMUL.F32        S2, S0, S2
4A0428:  VLDR            S8, [SP,#0xB8+var_60]
4A042C:  VMUL.F32        S0, S0, S4
4A0430:  VLDR            S10, [SP,#0xB8+var_60+4]
4A0434:  VADD.F32        S6, S6, S12
4A0438:  VADD.F32        S4, S2, S8
4A043C:  VADD.F32        S2, S0, S10
4A0440:  VADD.F32        S0, S6, S14
4A0444:  VSTR            S4, [SP,#0xB8+var_70]
4A0448:  VSTR            S2, [SP,#0xB8+var_70+4]
4A044C:  VSTR            S0, [SP,#0xB8+var_68]
4A0450:  LDR             R0, [R5,#0x14]
4A0452:  CBZ             R0, loc_4A0464
4A0454:  VSTR            S4, [R0,#0x30]
4A0458:  LDR             R0, [R5,#0x14]
4A045A:  VSTR            S2, [R0,#0x34]
4A045E:  LDR             R0, [R5,#0x14]
4A0460:  ADDS            R0, #0x38 ; '8'
4A0462:  B               loc_4A046E
4A0464:  VSTR            S4, [R5,#4]
4A0468:  VSTR            S2, [R5,#8]
4A046C:  LDR             R0, [SP,#0xB8+var_84]
4A046E:  VSTR            S0, [R0]
4A0472:  MOV             R0, R5; this
4A0474:  BLX             j__ZN9CPhysical14CheckCollisionEv; CPhysical::CheckCollision(void)
4A0478:  CMP             R0, #0
4A047A:  BEQ.W           loc_4A0630
4A047E:  LDR             R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x4A0486)
4A0480:  MOVS            R1, #0
4A0482:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
4A0484:  LDR             R0, [R0]; CWorld::pIgnoreEntity ...
4A0486:  STR             R1, [R0]; CWorld::pIgnoreEntity
4A0488:  LDR             R0, [R6]
4A048A:  LDR             R1, [SP,#0xB8+var_90]
4A048C:  BIC.W           R0, R0, #1
4A0490:  ORRS            R0, R1
4A0492:  STR             R0, [R6]
4A0494:  LDR             R0, [R5,#0x44]
4A0496:  BIC.W           R0, R0, #0x10000
4A049A:  STR             R0, [R5,#0x44]
4A049C:  LDR             R0, [SP,#0xB8+var_9C]
4A049E:  MOVS            R6, #0
4A04A0:  CMP             R0, #1
4A04A2:  BNE             loc_4A03EC
4A04A4:  LDR             R0, =(ThePaths_ptr - 0x4A04B0)
4A04A6:  ADD             R3, SP, #0xB8+var_60
4A04A8:  MOVW            R10, #0x23FE
4A04AC:  ADD             R0, PC; ThePaths_ptr
4A04AE:  LDM             R3, {R1-R3}
4A04B0:  MOVT            R10, #0x4974
4A04B4:  LDR.W           R9, [R0]; ThePaths
4A04B8:  MOVS            R0, #1
4A04BA:  STR             R6, [SP,#0xB8+var_A0]
4A04BC:  STRD.W          R6, R6, [SP,#0xB8+var_A8]
4A04C0:  STRD.W          R6, R6, [SP,#0xB8+var_B0]
4A04C4:  STR.W           R10, [SP,#0xB8+var_B4]
4A04C8:  STR             R0, [SP,#0xB8+var_B8]
4A04CA:  MOV             R0, R9
4A04CC:  BLX             j__ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb; CPathFind::FindNodeClosestToCoors(CVector,uchar,float,bool,bool,bool,bool,bool)
4A04D0:  ADD             R3, SP, #0xB8+var_60
4A04D2:  MOV             R8, R0
4A04D4:  MOV             R0, R9
4A04D6:  LDM             R3, {R1-R3}
4A04D8:  STRD.W          R6, R10, [SP,#0xB8+var_B8]
4A04DC:  UXTH.W          R10, R8
4A04E0:  STRD.W          R6, R6, [SP,#0xB8+var_B0]
4A04E4:  STRD.W          R6, R6, [SP,#0xB8+var_A8]
4A04E8:  STR             R6, [SP,#0xB8+var_A0]
4A04EA:  BLX             j__ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb; CPathFind::FindNodeClosestToCoors(CVector,uchar,float,bool,bool,bool,bool,bool)
4A04EE:  MOVW            R1, #0xFFFF
4A04F2:  CMP             R10, R1
4A04F4:  BEQ             loc_4A0554
4A04F6:  LDR             R2, =(ThePaths_ptr - 0x4A0506)
4A04F8:  MOV.W           R3, R8,LSR#16
4A04FC:  LSLS            R3, R3, #3
4A04FE:  VMOV.F32        S0, #0.125
4A0502:  ADD             R2, PC; ThePaths_ptr
4A0504:  SUB.W           R3, R3, R8,LSR#16
4A0508:  LDR             R2, [R2]; ThePaths
4A050A:  ADD.W           R2, R2, R10,LSL#2
4A050E:  LDR.W           R2, [R2,#0x804]
4A0512:  ADD.W           R2, R2, R3,LSL#2
4A0516:  LDRSH.W         R3, [R2,#8]
4A051A:  LDRSH.W         R6, [R2,#0xA]
4A051E:  LDRSH.W         R2, [R2,#0xC]
4A0522:  VMOV            S4, R3
4A0526:  VMOV            S2, R6
4A052A:  MOVS            R6, #1
4A052C:  VMOV            S6, R2
4A0530:  VCVT.F32.S32    S2, S2
4A0534:  VCVT.F32.S32    S4, S4
4A0538:  VCVT.F32.S32    S6, S6
4A053C:  VMUL.F32        S2, S2, S0
4A0540:  VMUL.F32        S4, S4, S0
4A0544:  VMUL.F32        S0, S6, S0
4A0548:  VSTR            S2, [SP,#0xB8+var_70+4]
4A054C:  VSTR            S4, [SP,#0xB8+var_70]
4A0550:  VSTR            S0, [SP,#0xB8+var_68]
4A0554:  UXTH            R2, R0
4A0556:  CMP             R2, R1
4A0558:  BNE             loc_4A0564
4A055A:  CMP             R6, #1
4A055C:  LDR             R6, [SP,#0xB8+var_84]
4A055E:  BEQ             loc_4A0612
4A0560:  MOVS            R6, #0
4A0562:  B               loc_4A03EC
4A0564:  LDR             R1, =(ThePaths_ptr - 0x4A056E)
4A0566:  VMOV.F32        S0, #0.125
4A056A:  ADD             R1, PC; ThePaths_ptr
4A056C:  LDR             R1, [R1]; ThePaths
4A056E:  ADD.W           R2, R1, R2,LSL#2
4A0572:  LSRS            R1, R0, #0x10; CVector *
4A0574:  LSLS            R3, R1, #3
4A0576:  SUB.W           R0, R3, R0,LSR#16
4A057A:  LDR.W           R2, [R2,#0x804]
4A057E:  ADD.W           R0, R2, R0,LSL#2
4A0582:  LDRSH.W         R3, [R0,#8]
4A0586:  LDRSH.W         R0, [R0,#0xA]
4A058A:  VMOV            S4, R3
4A058E:  VMOV            S2, R0
4A0592:  VCVT.F32.S32    S2, S2
4A0596:  VCVT.F32.S32    S6, S4
4A059A:  VLDR            S8, [SP,#0xB8+var_60]
4A059E:  VLDR            S12, [SP,#0xB8+var_70]
4A05A2:  VLDR            S10, [SP,#0xB8+var_60+4]
4A05A6:  VLDR            S14, [SP,#0xB8+var_70+4]
4A05AA:  VSUB.F32        S12, S12, S8
4A05AE:  LDR             R6, [SP,#0xB8+var_84]
4A05B0:  VMUL.F32        S4, S2, S0
4A05B4:  VMUL.F32        S2, S6, S0
4A05B8:  VSUB.F32        S6, S14, S10
4A05BC:  VMUL.F32        S12, S12, S12
4A05C0:  VSUB.F32        S10, S4, S10
4A05C4:  VSUB.F32        S8, S2, S8
4A05C8:  VMUL.F32        S6, S6, S6
4A05CC:  VMUL.F32        S10, S10, S10
4A05D0:  VMUL.F32        S8, S8, S8
4A05D4:  VADD.F32        S6, S12, S6
4A05D8:  VADD.F32        S8, S8, S10
4A05DC:  VSQRT.F32       S6, S6
4A05E0:  VSQRT.F32       S8, S8
4A05E4:  VCMPE.F32       S8, S6
4A05E8:  VMRS            APSR_nzcv, FPSCR
4A05EC:  BGE             loc_4A0612
4A05EE:  RSB.W           R0, R1, R1,LSL#3
4A05F2:  ADD.W           R0, R2, R0,LSL#2
4A05F6:  LDRSH.W         R0, [R0,#0xC]
4A05FA:  VMOV            S6, R0
4A05FE:  VCVT.F32.S32    S6, S6
4A0602:  VSTR            S4, [SP,#0xB8+var_70+4]
4A0606:  VSTR            S2, [SP,#0xB8+var_70]
4A060A:  VMUL.F32        S0, S6, S0
4A060E:  VSTR            S0, [SP,#0xB8+var_68]
4A0612:  ADD             R0, SP, #0xB8+var_70; this
4A0614:  BLX             j__ZN13CPedPlacement15FindZCoorForPedEP7CVector; CPedPlacement::FindZCoorForPed(CVector *)
4A0618:  LDRD.W          R2, R1, [SP,#0xB8+var_70]
4A061C:  LDR             R3, [R5,#0x14]
4A061E:  LDR             R0, [SP,#0xB8+var_68]
4A0620:  CBZ             R3, loc_4A0676
4A0622:  STR             R2, [R3,#0x30]
4A0624:  LDR             R2, [R5,#0x14]
4A0626:  STR             R1, [R2,#0x34]
4A0628:  LDR             R1, [R5,#0x14]
4A062A:  ADD.W           R6, R1, #0x38 ; '8'
4A062E:  B               loc_4A067A
4A0630:  MOV.W           R8, #0
4A0634:  MOVS            R0, #1
4A0636:  STRD.W          R8, R0, [SP,#0xB8+var_B8]; bool
4A063A:  ADD             R0, SP, #0xB8+var_60; this
4A063C:  ADD             R1, SP, #0xB8+var_70; CVector *
4A063E:  MOVS            R2, #(stderr+1); CVector *
4A0640:  MOVS            R3, #0; bool
4A0642:  STRD.W          R8, R8, [SP,#0xB8+var_B0]; bool
4A0646:  STR.W           R8, [SP,#0xB8+var_A8]; bool
4A064A:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
4A064E:  LDR             R1, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x4A0658)
4A0650:  CMP             R0, #0
4A0652:  LDR             R2, [SP,#0xB8+var_90]
4A0654:  ADD             R1, PC; _ZN6CWorld13pIgnoreEntityE_ptr
4A0656:  LDR             R1, [R1]; CWorld::pIgnoreEntity ...
4A0658:  STR.W           R8, [R1]; CWorld::pIgnoreEntity
4A065C:  LDR             R1, [R6]
4A065E:  BIC.W           R1, R1, #1
4A0662:  ORR.W           R1, R1, R2
4A0666:  STR             R1, [R6]
4A0668:  LDR             R1, [R5,#0x44]
4A066A:  BIC.W           R1, R1, #0x10000
4A066E:  STR             R1, [R5,#0x44]
4A0670:  BNE.W           loc_4A03A8
4A0674:  B               loc_4A049C
4A0676:  STRD.W          R2, R1, [R5,#4]
4A067A:  STR             R0, [R6]
4A067C:  LDR             R0, [R4,#0x14]
4A067E:  CBZ             R0, loc_4A0692
4A0680:  LDRD.W          R2, R1, [R0,#0x10]; x
4A0684:  EOR.W           R0, R2, #0x80000000; y
4A0688:  BLX             atan2f
4A068C:  VMOV            S0, R0
4A0690:  B               loc_4A0696
4A0692:  VLDR            S0, [R4,#0x10]
4A0696:  LDR             R0, [R5,#0x14]; this
4A0698:  CBZ             R0, loc_4A06A4
4A069A:  VMOV            R1, S0; x
4A069E:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
4A06A2:  B               loc_4A06A8
4A06A4:  VSTR            S0, [R5,#0x10]
4A06A8:  ADR             R0, dword_4A06E0
4A06AA:  MOVS            R1, #1
4A06AC:  VLD1.64         {D16-D17}, [R0@128]
4A06B0:  VMOV.I32        Q9, #0
4A06B4:  LDR             R0, [SP,#0xB8+var_94]
4A06B6:  MOV             R2, R0
4A06B8:  LDR             R0, [R2,#8]
4A06BA:  ORRS            R0, R1
4A06BC:  STR             R0, [R2,#8]
4A06BE:  LDR             R1, [SP,#0xB8+var_98]
4A06C0:  MOVS            R0, #0
4A06C2:  STR             R0, [R1,#0x14]
4A06C4:  VST1.32         {D18-D19}, [R1]!
4A06C8:  STR             R0, [R1]
4A06CA:  ADD.W           R1, R4, #0x48 ; 'H'
4A06CE:  VST1.32         {D16-D17}, [R1]
4A06D2:  STRD.W          R0, R0, [R4,#0x58]
4A06D6:  B               loc_4A03EA
