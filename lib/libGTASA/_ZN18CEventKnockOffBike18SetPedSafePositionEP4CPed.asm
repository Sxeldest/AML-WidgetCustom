; =========================================================
; Game Engine Function: _ZN18CEventKnockOffBike18SetPedSafePositionEP4CPed
; Address            : 0x375CF4 - 0x37608C
; =========================================================

375CF4:  PUSH            {R4-R7,LR}
375CF6:  ADD             R7, SP, #0xC
375CF8:  PUSH.W          {R8-R11}
375CFC:  SUB             SP, SP, #4
375CFE:  VPUSH           {D8}
375D02:  SUB             SP, SP, #0x18
375D04:  MOV             R5, R0
375D06:  MOV             R4, R1
375D08:  LDR             R0, [R5,#0x38]
375D0A:  LDR.W           R1, [R0,#0x5A0]
375D0E:  CMP             R1, #9
375D10:  BNE             loc_375D26
375D12:  MOVS            R1, #0
375D14:  STR.W           R1, [R0,#0x65C]
375D18:  LDR             R0, [R5,#0x38]
375D1A:  STRB.W          R1, [R0,#0x5DC]
375D1E:  MOV             R0, R4; this
375D20:  BLX             j__ZN4CPed19SetPedPositionInCarEv; CPed::SetPedPositionInCar(void)
375D24:  LDR             R0, [R5,#0x38]
375D26:  LDR             R2, [R0,#0x14]
375D28:  LDR             R1, [R0,#0x14]; float
375D2A:  VLDR            S16, [R2,#0x28]
375D2E:  CMP             R1, #0
375D30:  BEQ             loc_375D44
375D32:  LDRD.W          R0, R1, [R1,#0x10]; x
375D36:  EOR.W           R0, R0, #0x80000000; y
375D3A:  BLX             atan2f
375D3E:  VMOV            S0, R0
375D42:  B               loc_375D48
375D44:  VLDR            S0, [R0,#0x10]
375D48:  VCMPE.F32       S16, #0.0
375D4C:  VMRS            APSR_nzcv, FPSCR
375D50:  BGE             loc_375D66
375D52:  VLDR            S2, =3.1416
375D56:  VADD.F32        S0, S0, S2
375D5A:  VMOV            R0, S0; this
375D5E:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
375D62:  VMOV            S0, R0
375D66:  ADDW            R1, R4, #0x55C
375D6A:  LDR             R0, [R4,#0x14]; this
375D6C:  VSTR            S0, [R1]
375D70:  ADD.W           R1, R4, #0x560
375D74:  CMP             R0, #0
375D76:  VSTR            S0, [R1]
375D7A:  BEQ             loc_375D86
375D7C:  VMOV            R1, S0; x
375D80:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
375D84:  B               loc_375D8A
375D86:  VSTR            S0, [R4,#0x10]
375D8A:  LDR             R1, [R5,#0x38]
375D8C:  LDR.W           R0, [R1,#0x5A0]
375D90:  CMP             R0, #9
375D92:  ITT EQ
375D94:  LDRBEQ.W        R0, [R5,#0x35]
375D98:  MOVSEQ.W        R0, R0,LSL#31
375D9C:  BNE             loc_375E36
375D9E:  LDR             R0, [R4,#0x14]
375DA0:  LDR             R1, [R1,#0x14]
375DA2:  CMP             R0, #0
375DA4:  VLDR            S0, [R0,#0x10]
375DA8:  VLDR            S6, [R1,#0x10]
375DAC:  VLDR            S2, [R0,#0x14]
375DB0:  VLDR            S8, [R1,#0x14]
375DB4:  VMUL.F32        S6, S6, S0
375DB8:  VLDR            S10, [R1,#0x18]
375DBC:  ADD.W           R1, R0, #0x30 ; '0'
375DC0:  VMUL.F32        S8, S8, S2
375DC4:  VLDR            S4, [R0,#0x18]
375DC8:  MOV             R2, R1
375DCA:  VMUL.F32        S10, S10, S4
375DCE:  IT EQ
375DD0:  ADDEQ           R2, R4, #4
375DD2:  CMP             R0, #0
375DD4:  VADD.F32        S6, S6, S8
375DD8:  VMOV.F32        S8, #1.0
375DDC:  VADD.F32        S6, S6, S10
375DE0:  VLDR            S10, [R2,#4]
375DE4:  VABS.F32        S6, S6
375DE8:  VSUB.F32        S6, S8, S6
375DEC:  VLDR            S8, =0.8
375DF0:  VMUL.F32        S6, S6, S8
375DF4:  VLDR            S8, [R2]
375DF8:  VMUL.F32        S2, S2, S6
375DFC:  VMUL.F32        S4, S4, S6
375E00:  VMUL.F32        S6, S0, S6
375E04:  VLDR            S0, [R2,#8]
375E08:  VSUB.F32        S2, S10, S2
375E0C:  VSUB.F32        S0, S0, S4
375E10:  VSUB.F32        S4, S8, S6
375E14:  BEQ             loc_375E26
375E16:  VSTR            S4, [R1]
375E1A:  LDR             R0, [R4,#0x14]
375E1C:  VSTR            S2, [R0,#0x34]
375E20:  LDR             R0, [R4,#0x14]
375E22:  ADDS            R0, #0x38 ; '8'
375E24:  B               loc_375E32
375E26:  ADD.W           R0, R4, #0xC
375E2A:  VSTR            S4, [R4,#4]
375E2E:  VSTR            S2, [R4,#8]
375E32:  VSTR            S0, [R0]
375E36:  ADDW            R0, R4, #0x544
375E3A:  VLDR            S0, [R0]
375E3E:  VCMPE.F32       S0, #0.0
375E42:  VMRS            APSR_nzcv, FPSCR
375E46:  BLE             loc_375E50
375E48:  LDR             R0, [R5,#0x30]
375E4A:  CMP             R0, #0
375E4C:  BEQ.W           loc_37607A
375E50:  MOVS            R6, #1
375E52:  LDR             R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x375E62)
375E54:  ADD.W           R9, R4, #4
375E58:  LDR             R1, [R5,#0x38]
375E5A:  MOV.W           R8, #0
375E5E:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
375E60:  LDR             R0, [R0]; CWorld::pIgnoreEntity ...
375E62:  STR             R1, [R0]; CWorld::pIgnoreEntity
375E64:  LDR             R0, [R4]
375E66:  LDR             R2, [R4,#0x14]
375E68:  STR.W           R1, [R4,#0x12C]
375E6C:  MOVS            R1, #0
375E6E:  LDR             R3, [R0,#0x38]
375E70:  CMP             R2, #0
375E72:  MOV             R0, R9
375E74:  IT NE
375E76:  ADDNE.W         R0, R2, #0x30 ; '0'
375E7A:  LDRD.W          R11, R10, [R0]
375E7E:  LDR             R0, [R0,#8]
375E80:  STR             R0, [SP,#0x40+var_2C]; bool
375E82:  MOV             R0, R4
375E84:  BLX             R3
375E86:  CMP             R0, #0
375E88:  BNE             loc_375F38
375E8A:  LDR             R2, [R5,#0x38]
375E8C:  MOVS            R1, #1
375E8E:  LDR             R0, [R4,#0x14]
375E90:  LDR             R3, [R2,#0x14]
375E92:  CMP             R0, #0
375E94:  STRD.W          R8, R1, [SP,#0x40+var_40]; bool
375E98:  MOV             R1, R9
375E9A:  STRD.W          R8, R8, [SP,#0x40+var_38]; bool
375E9E:  STR.W           R8, [SP,#0x40+var_30]; bool
375EA2:  IT NE
375EA4:  ADDNE.W         R1, R0, #0x30 ; '0'; CVector *
375EA8:  ADD.W           R0, R3, #0x30 ; '0'
375EAC:  CMP             R3, #0
375EAE:  IT EQ
375EB0:  ADDEQ           R0, R2, #4; this
375EB2:  MOVS            R2, #(stderr+1); CVector *
375EB4:  MOVS            R3, #0; bool
375EB6:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
375EBA:  CBZ             R0, loc_375F38
375EBC:  LDRB.W          R0, [R5,#0x36]
375EC0:  CMP             R0, #0x31 ; '1'
375EC2:  BNE.W           loc_376016
375EC6:  VMOV.F32        S0, #0.5
375ECA:  LDR             R0, [R4,#0x14]
375ECC:  MOVS            R1, #0
375ECE:  MOV.W           R8, #0
375ED2:  VLDR            S2, [R0,#0x38]
375ED6:  VADD.F32        S0, S2, S0
375EDA:  VSTR            S0, [R0,#0x38]
375EDE:  LDR             R0, [R4]
375EE0:  LDR             R2, [R0,#0x38]
375EE2:  MOV             R0, R4
375EE4:  BLX             R2
375EE6:  CMP             R0, #0
375EE8:  BNE             loc_375F20
375EEA:  LDR             R1, [R5,#0x38]
375EEC:  MOVS            R3, #1
375EEE:  LDR             R0, [R4,#0x14]
375EF0:  LDR             R2, [R1,#0x14]
375EF2:  CMP             R0, #0
375EF4:  STRD.W          R8, R3, [SP,#0x40+var_40]; bool
375EF8:  MOV.W           R3, #0; bool
375EFC:  STRD.W          R8, R8, [SP,#0x40+var_38]; bool
375F00:  STR.W           R8, [SP,#0x40+var_30]; bool
375F04:  IT NE
375F06:  ADDNE.W         R9, R0, #0x30 ; '0'
375F0A:  ADD.W           R0, R2, #0x30 ; '0'
375F0E:  CMP             R2, #0
375F10:  IT EQ
375F12:  ADDEQ           R0, R1, #4; this
375F14:  MOV             R1, R9; CVector *
375F16:  MOVS            R2, #(stderr+1); CVector *
375F18:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
375F1C:  CMP             R0, #0
375F1E:  BNE             loc_376016
375F20:  LDR             R0, [R4,#0x14]
375F22:  CMP             R0, #0
375F24:  BEQ.W           loc_37607E
375F28:  STR.W           R11, [R0,#0x30]
375F2C:  LDR             R0, [R4,#0x14]
375F2E:  STR.W           R10, [R0,#0x34]
375F32:  LDR             R0, [R4,#0x14]
375F34:  ADDS            R0, #0x38 ; '8'
375F36:  B               loc_376086
375F38:  LDR             R0, [R4,#0x14]
375F3A:  MOVS            R1, #0
375F3C:  VLDR            S0, =0.6
375F40:  MOV             R8, R6
375F42:  MOVS            R6, #0
375F44:  VLDR            S2, [R0,#0x38]
375F48:  VADD.F32        S0, S2, S0
375F4C:  VSTR            S0, [R0,#0x38]
375F50:  LDR             R0, [R4]
375F52:  LDR             R2, [R0,#0x38]
375F54:  MOV             R0, R4
375F56:  BLX             R2
375F58:  CBNZ            R0, loc_375F8C
375F5A:  LDR             R2, [R5,#0x38]
375F5C:  MOVS            R1, #1
375F5E:  LDR             R0, [R4,#0x14]
375F60:  LDR             R3, [R2,#0x14]
375F62:  CMP             R0, #0
375F64:  STRD.W          R6, R1, [SP,#0x40+var_40]; bool
375F68:  MOV             R1, R9
375F6A:  STRD.W          R6, R6, [SP,#0x40+var_38]; bool
375F6E:  STR             R6, [SP,#0x40+var_30]; bool
375F70:  IT NE
375F72:  ADDNE.W         R1, R0, #0x30 ; '0'; CVector *
375F76:  ADD.W           R0, R3, #0x30 ; '0'
375F7A:  CMP             R3, #0
375F7C:  IT EQ
375F7E:  ADDEQ           R0, R2, #4; this
375F80:  MOVS            R2, #(stderr+1); CVector *
375F82:  MOVS            R3, #0; bool
375F84:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
375F88:  CMP             R0, #0
375F8A:  BNE             loc_376010
375F8C:  LDR             R0, [R4,#0x14]
375F8E:  CBZ             R0, loc_375FA0
375F90:  STR.W           R11, [R0,#0x30]
375F94:  LDR             R0, [R4,#0x14]
375F96:  STR.W           R10, [R0,#0x34]
375F9A:  LDR             R0, [R4,#0x14]
375F9C:  ADDS            R0, #0x38 ; '8'
375F9E:  B               loc_375FA8
375FA0:  ADD.W           R0, R4, #0xC
375FA4:  STRD.W          R11, R10, [R4,#4]
375FA8:  LDR             R1, [SP,#0x40+var_2C]
375FAA:  MOVS            R6, #0
375FAC:  STR             R1, [R0]
375FAE:  MOVS            R1, #0
375FB0:  LDR             R0, [R4,#0x14]
375FB2:  VLDR            S0, =-0.6
375FB6:  VLDR            S2, [R0,#0x38]
375FBA:  VADD.F32        S0, S2, S0
375FBE:  VSTR            S0, [R0,#0x38]
375FC2:  LDR             R0, [R4]
375FC4:  LDR             R2, [R0,#0x38]
375FC6:  MOV             R0, R4
375FC8:  BLX             R2
375FCA:  CBNZ            R0, loc_375FFE
375FCC:  LDR             R1, [R5,#0x38]
375FCE:  MOVS            R3, #1
375FD0:  LDR             R0, [R4,#0x14]
375FD2:  LDR             R2, [R1,#0x14]
375FD4:  CMP             R0, #0
375FD6:  STRD.W          R6, R3, [SP,#0x40+var_40]; bool
375FDA:  MOV.W           R3, #0; bool
375FDE:  STRD.W          R6, R6, [SP,#0x40+var_38]; bool
375FE2:  STR             R6, [SP,#0x40+var_30]; bool
375FE4:  IT NE
375FE6:  ADDNE.W         R9, R0, #0x30 ; '0'
375FEA:  ADD.W           R0, R2, #0x30 ; '0'
375FEE:  CMP             R2, #0
375FF0:  IT EQ
375FF2:  ADDEQ           R0, R1, #4; this
375FF4:  MOV             R1, R9; CVector *
375FF6:  MOVS            R2, #(stderr+1); CVector *
375FF8:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
375FFC:  CBNZ            R0, loc_376010
375FFE:  LDR             R2, [R5,#0x38]; CVehicle *
376000:  MOV             R0, R4; this
376002:  LDRSB.W         R1, [R5,#0x37]; int
376006:  MOV             R3, R8; bool
376008:  BLX             j__ZN4CPed25PositionPedOutOfCollisionEiP8CVehicleb; CPed::PositionPedOutOfCollision(int,CVehicle *,bool)
37600C:  CMP             R0, #1
37600E:  BNE             loc_376060
376010:  LDR             R0, [R5,#0x38]
376012:  STR.W           R0, [R4,#0x12C]
376016:  LDR.W           R6, [R4,#0x488]
37601A:  ADDW            R5, R4, #0x484
37601E:  LDR.W           R0, [R4,#0x56C]; this
376022:  LDR.W           R1, [R4,#0x484]
376026:  ORR.W           R6, R6, #0x80000000
37602A:  LDR.W           R2, [R4,#0x48C]
37602E:  CMP             R0, #0
376030:  LDR.W           R3, [R4,#0x490]
376034:  STR.W           R6, [R4,#0x488]
376038:  BEQ             loc_376050
37603A:  ADDW            R4, R4, #0x56C
37603E:  MOV             R1, R4; CEntity **
376040:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
376044:  MOVS            R0, #0
376046:  STR             R0, [R4]
376048:  LDRD.W          R1, R6, [R5]
37604C:  LDRD.W          R2, R3, [R5,#8]
376050:  BIC.W           R0, R1, #3
376054:  STRD.W          R0, R6, [R5]
376058:  MOVS            R0, #1
37605A:  STRD.W          R2, R3, [R5,#8]
37605E:  B               loc_376062
376060:  MOVS            R0, #0
376062:  LDR             R1, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x37606A)
376064:  MOVS            R2, #0
376066:  ADD             R1, PC; _ZN6CWorld13pIgnoreEntityE_ptr
376068:  LDR             R1, [R1]; CWorld::pIgnoreEntity ...
37606A:  STR             R2, [R1]; CWorld::pIgnoreEntity
37606C:  ADD             SP, SP, #0x18
37606E:  VPOP            {D8}
376072:  ADD             SP, SP, #4
376074:  POP.W           {R8-R11}
376078:  POP             {R4-R7,PC}
37607A:  MOVS            R6, #0
37607C:  B               loc_375E52
37607E:  ADD.W           R0, R4, #0xC
376082:  STRD.W          R11, R10, [R4,#4]
376086:  LDR             R1, [SP,#0x40+var_2C]
376088:  STR             R1, [R0]
37608A:  B               loc_376016
