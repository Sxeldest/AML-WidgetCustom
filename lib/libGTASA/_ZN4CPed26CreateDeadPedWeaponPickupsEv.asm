; =========================================================
; Game Engine Function: _ZN4CPed26CreateDeadPedWeaponPickupsEv
; Address            : 0x320F20 - 0x3210F6
; =========================================================

320F20:  PUSH            {R4-R7,LR}
320F22:  ADD             R7, SP, #0xC
320F24:  PUSH.W          {R8-R11}
320F28:  SUB             SP, SP, #4
320F2A:  VPUSH           {D8-D13}
320F2E:  SUB             SP, SP, #0x48
320F30:  MOV             R10, R0
320F32:  LDR.W           R0, [R10,#0x484]
320F36:  LDR.W           R1, [R10,#0x48C]
320F3A:  AND.W           R0, R0, #0x100
320F3E:  AND.W           R1, R1, #0x200
320F42:  ORRS            R0, R1
320F44:  BNE.W           loc_3210E8
320F48:  ADDW            R0, R10, #0x484
320F4C:  STR             R0, [SP,#0x98+var_80]
320F4E:  ADD             R0, SP, #0x98+var_5C
320F50:  VMOV.F32        S18, #0.125
320F54:  ADD.W           R1, R0, #8
320F58:  ADDS            R0, #4
320F5A:  STR             R0, [SP,#0x98+var_74]
320F5C:  VMOV.F32        S22, #5.5
320F60:  LDR             R0, =(AmmoForWeapon_OnStreet_ptr - 0x320F70)
320F62:  VMOV.I32        D10, #0x3E000000
320F66:  VLDR            S16, =0.3
320F6A:  ADD             R4, SP, #0x98+var_60
320F6C:  ADD             R0, PC; AmmoForWeapon_OnStreet_ptr
320F6E:  MOVW            R8, #0x26B
320F72:  MOV.W           R9, #0
320F76:  STR             R1, [SP,#0x98+var_70]
320F78:  LDR             R0, [R0]; AmmoForWeapon_OnStreet
320F7A:  STR             R0, [SP,#0x98+var_78]
320F7C:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x320F82)
320F7E:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
320F80:  LDR             R0, [R0]; CPickups::aPickUps ...
320F82:  STR             R0, [SP,#0x98+var_7C]
320F84:  LDR             R0, =(AmmoForWeapon_OnStreet_ptr - 0x320F8A)
320F86:  ADD             R0, PC; AmmoForWeapon_OnStreet_ptr
320F88:  LDR             R0, [R0]; AmmoForWeapon_OnStreet
320F8A:  STR             R0, [SP,#0x98+var_84]
320F8C:  RSB.W           R0, R9, R9,LSL#3
320F90:  ADD.W           R5, R10, R0,LSL#2
320F94:  LDR.W           R0, [R5,#0x5A4]
320F98:  CMP             R0, #0
320F9A:  IT NE
320F9C:  CMPNE           R0, #0x28 ; '('
320F9E:  BEQ.W           loc_3210D6
320FA2:  LDR.W           R0, [R5,#0x5B0]
320FA6:  ADDW            R6, R5, #0x5A4
320FAA:  CBNZ            R0, loc_320FB8
320FAC:  MOV             R0, R6; this
320FAE:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
320FB2:  CMP             R0, #1
320FB4:  BNE.W           loc_3210D6
320FB8:  LDR.W           R0, [R10,#0x14]
320FBC:  ADD.W           R5, R5, #0x5B0
320FC0:  ADD.W           R2, R0, #0x30 ; '0'
320FC4:  CMP             R0, #0
320FC6:  IT EQ
320FC8:  ADDEQ.W         R2, R10, #4
320FCC:  LDM             R2, {R0-R2}; float
320FCE:  LDR             R3, [SP,#0x98+var_74]
320FD0:  STR             R3, [SP,#0x98+var_98]; float *
320FD2:  LDR             R3, [SP,#0x98+var_70]
320FD4:  STR             R3, [SP,#0x98+var_94]; float *
320FD6:  ADD             R3, SP, #0x98+var_5C; float
320FD8:  BLX             j__ZN8CPickups29CreatePickupCoorsCloseToCoorsEfffPfS0_S0_; CPickups::CreatePickupCoorsCloseToCoors(float,float,float,float *,float *,float *)
320FDC:  VLDR            S26, [SP,#0x98+var_58]
320FE0:  VLDR            S0, [SP,#0x98+var_54]
320FE4:  VLDR            S24, [SP,#0x98+var_5C]
320FE8:  VADD.F32        S27, S0, S16
320FEC:  LDR             R1, [SP,#0x98+var_78]
320FEE:  VSTR            S27, [SP,#0x98+var_54]
320FF2:  LDR             R0, [R6]
320FF4:  STR             R5, [SP,#0x98+var_64]
320FF6:  LDR             R5, [R5]
320FF8:  LDRH.W          R11, [R1,R0,LSL#1]
320FFC:  MOVS            R1, #1
320FFE:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
321002:  VMOV            R1, S24
321006:  CMP.W           R5, R11,LSR#1
32100A:  VMOV            R12, S26
32100E:  MOV.W           R2, #0xFFFFFFFF
321012:  VMOV            LR, S27
321016:  STR             R1, [SP,#0x98+var_68]
321018:  IT GE
32101A:  MOVGE.W         R5, R11,LSR#1
32101E:  LDR             R1, [SP,#0x98+var_7C]
321020:  LDR             R0, [R0,#0xC]
321022:  ADDS            R1, #0x10
321024:  LDRB            R3, [R1,#0xC]
321026:  CMP             R3, #4
321028:  ITT EQ
32102A:  LDRHEQ          R3, [R1,#8]
32102C:  CMPEQ           R0, R3
32102E:  BNE             loc_32107C
321030:  LDRSH.W         R3, [R1]
321034:  VMOV            S0, R3
321038:  VCVT.F32.S32    S0, S0
32103C:  LDR.W           R3, [R1,#2]
321040:  STR             R3, [SP,#0x98+var_60]
321042:  VLD1.32         {D16[0]}, [R4@32]
321046:  VMOVL.S16       Q8, D16
32104A:  VMUL.F32        S0, S0, S18
32104E:  VCVT.F32.S32    D16, D16
321052:  VMUL.F32        D16, D16, D10
321056:  VSUB.F32        S0, S0, S24
32105A:  VSUB.F32        D16, D16, D13
32105E:  VMUL.F32        S0, S0, S0
321062:  VMUL.F32        D1, D16, D16
321066:  VADD.F32        S0, S0, S2
32106A:  VADD.F32        S0, S0, S3
32106E:  VSQRT.F32       S0, S0
321072:  VCMPE.F32       S0, S22
321076:  VMRS            APSR_nzcv, FPSCR
32107A:  BLT             loc_3210CC
32107C:  ADDS            R2, #1
32107E:  ADDS            R1, #0x20 ; ' '
321080:  CMP             R2, R8
321082:  BLT             loc_321024
321084:  STR.W           LR, [SP,#0x98+var_6C]
321088:  MOV             R11, R12
32108A:  LDR             R0, [R6]
32108C:  LDR             R1, [SP,#0x98+var_84]
32108E:  LDR             R2, [SP,#0x98+var_64]
321090:  LDRH.W          R1, [R1,R0,LSL#1]
321094:  LDR             R5, [R2]
321096:  LDR             R2, [SP,#0x98+var_80]
321098:  CMP.W           R5, R1,LSR#1
32109C:  LDR             R6, [R2,#0xC]
32109E:  IT GE
3210A0:  LSRGE           R5, R1, #1
3210A2:  MOVS            R1, #1
3210A4:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
3210A8:  TST.W           R6, #0x80000
3210AC:  LDR             R3, [R0,#0xC]
3210AE:  ITE NE
3210B0:  MOVNE           R0, #0x16
3210B2:  MOVEQ           R0, #4
3210B4:  MOV             R1, R11
3210B6:  STRD.W          R0, R5, [SP,#0x98+var_98]
3210BA:  MOVS            R0, #0
3210BC:  STRD.W          R0, R0, [SP,#0x98+var_90]
3210C0:  STR             R0, [SP,#0x98+var_88]
3210C2:  LDR             R0, [SP,#0x98+var_68]
3210C4:  LDR             R2, [SP,#0x98+var_6C]
3210C6:  BLX             j__ZN8CPickups14GenerateNewOneE7CVectorjhjjbPc; CPickups::GenerateNewOne(CVector,uint,uchar,uint,uint,bool,char *)
3210CA:  B               loc_3210D6
3210CC:  LDR.W           R0, [R1,#-8]
3210D0:  ADD             R0, R5
3210D2:  STR.W           R0, [R1,#-8]
3210D6:  ADD.W           R9, R9, #1
3210DA:  CMP.W           R9, #0xD
3210DE:  BNE.W           loc_320F8C
3210E2:  MOV             R0, R10; this
3210E4:  BLX             j__ZN4CPed12ClearWeaponsEv; CPed::ClearWeapons(void)
3210E8:  ADD             SP, SP, #0x48 ; 'H'
3210EA:  VPOP            {D8-D13}
3210EE:  ADD             SP, SP, #4
3210F0:  POP.W           {R8-R11}
3210F4:  POP             {R4-R7,PC}
