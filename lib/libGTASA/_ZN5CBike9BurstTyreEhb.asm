; =========================================================
; Game Engine Function: _ZN5CBike9BurstTyreEhb
; Address            : 0x566D60 - 0x56702A
; =========================================================

566D60:  PUSH            {R4-R7,LR}
566D62:  ADD             R7, SP, #0xC
566D64:  PUSH.W          {R8-R11}
566D68:  SUB             SP, SP, #4
566D6A:  VPUSH           {D8-D9}
566D6E:  SUB             SP, SP, #0x98
566D70:  MOV             R4, R0
566D72:  MOV             R5, R2
566D74:  LDR.W           R0, [R4,#0x42C]
566D78:  MOV             R6, R1
566D7A:  CMP             R0, #0
566D7C:  BLT             loc_566D92
566D7E:  LDRB.W          R0, [R4,#0x47]
566D82:  LSLS            R0, R0, #0x1A
566D84:  BMI             loc_566D92
566D86:  CMP             R6, #0xF
566D88:  BEQ             loc_566DA4
566D8A:  CMP             R6, #0xD
566D8C:  IT EQ
566D8E:  MOVEQ           R6, #0
566D90:  B               loc_566DA6
566D92:  MOVS            R5, #0
566D94:  MOV             R0, R5
566D96:  ADD             SP, SP, #0x98
566D98:  VPOP            {D8-D9}
566D9C:  ADD             SP, SP, #4
566D9E:  POP.W           {R8-R11}
566DA2:  POP             {R4-R7,PC}
566DA4:  MOVS            R6, #1
566DA6:  ADDS            R0, R4, R6
566DA8:  LDRB.W          R1, [R0,#0x670]
566DAC:  CBZ             R1, loc_566DB2
566DAE:  MOVS            R5, #0
566DB0:  B               loc_566E9C
566DB2:  ADD.W           R0, R0, #0x670
566DB6:  MOVS            R1, #1
566DB8:  MOVS            R2, #0; float
566DBA:  STRB            R1, [R0]
566DBC:  ADD.W           R0, R4, #0x13C; this
566DC0:  MOVS            R1, #0x5A ; 'Z'; int
566DC2:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
566DC6:  LDRB.W          R0, [R4,#0x3A]
566DCA:  AND.W           R0, R0, #0xF8
566DCE:  CMP             R0, #0x10
566DD0:  ITT EQ
566DD2:  MOVEQ           R0, R4; this
566DD4:  BLXEQ           j__ZN8CCarCtrl26SwitchVehicleToRealPhysicsEP8CVehicle; CCarCtrl::SwitchVehicleToRealPhysics(CVehicle *)
566DD8:  CMP             R5, #1
566DDA:  BNE             loc_566E9A
566DDC:  LDR             R0, =(fBikeBurstForceMult_ptr - 0x566DE2)
566DDE:  ADD             R0, PC; fBikeBurstForceMult_ptr
566DE0:  LDR             R5, [R0]; fBikeBurstForceMult
566DE2:  VLDR            S16, [R5]
566DE6:  BLX             rand
566DEA:  VMOV            S0, R0
566DEE:  VLDR            S18, =4.6566e-10
566DF2:  VADD.F32        S2, S16, S16
566DF6:  VCVT.F32.S32    S0, S0
566DFA:  LDR             R0, [R4,#0x14]
566DFC:  VLDR            S4, [R0,#4]
566E00:  VLDR            S6, [R0,#8]
566E04:  VMUL.F32        S0, S0, S18
566E08:  VMUL.F32        S0, S2, S0
566E0C:  VLDR            S2, [R4,#0x90]
566E10:  VSUB.F32        S0, S0, S16
566E14:  VMUL.F32        S0, S2, S0
566E18:  VLDR            S2, [R0]
566E1C:  MOV             R0, R4
566E1E:  VMUL.F32        S2, S2, S0
566E22:  VMUL.F32        S4, S4, S0
566E26:  VMUL.F32        S0, S6, S0
566E2A:  VMOV            R1, S2
566E2E:  VMOV            R2, S4
566E32:  VMOV            R3, S0
566E36:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
566E3A:  VLDR            S16, [R5]
566E3E:  BLX             rand
566E42:  VMOV            S0, R0
566E46:  VADD.F32        S2, S16, S16
566E4A:  VCVT.F32.S32    S0, S0
566E4E:  LDR             R0, [R4,#0x14]
566E50:  VLDR            S4, [R0,#4]
566E54:  VLDR            S6, [R0,#8]
566E58:  VMUL.F32        S0, S0, S18
566E5C:  VMUL.F32        S0, S2, S0
566E60:  VLDR            S2, [R4,#0x94]
566E64:  VSUB.F32        S0, S0, S16
566E68:  VMUL.F32        S0, S2, S0
566E6C:  VLDR            S2, [R0]
566E70:  LDRD.W          R5, R12, [R0,#0x10]
566E74:  LDR             R0, [R0,#0x18]
566E76:  STRD.W          R5, R12, [SP,#0xC8+var_C8]
566E7A:  STR             R0, [SP,#0xC8+var_C0]
566E7C:  MOV             R0, R4
566E7E:  VMUL.F32        S2, S2, S0
566E82:  VMUL.F32        S4, S4, S0
566E86:  VMUL.F32        S0, S6, S0
566E8A:  VMOV            R1, S2
566E8E:  VMOV            R2, S4
566E92:  VMOV            R3, S0
566E96:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
566E9A:  MOVS            R5, #1
566E9C:  LDR.W           R0, [R4,#0x464]
566EA0:  CMP             R0, #0
566EA2:  BEQ.W           loc_566D94
566EA6:  CMP             R6, #0xD
566EA8:  BNE             loc_566EC6
566EAA:  VMOV.F32        S0, #1.0
566EAE:  ADDW            R0, R4, #0x734
566EB2:  VLDR            S2, [R0]
566EB6:  VCMPE.F32       S2, S0
566EBA:  VMRS            APSR_nzcv, FPSCR
566EBE:  BLT             loc_566EF6
566EC0:  ADD.W           R0, R4, #0x738
566EC4:  B               loc_566EE6
566EC6:  CMP             R6, #0xE
566EC8:  BNE.W           loc_566D94
566ECC:  VMOV.F32        S0, #1.0
566ED0:  ADDW            R0, R4, #0x73C
566ED4:  VLDR            S2, [R0]
566ED8:  VCMPE.F32       S2, S0
566EDC:  VMRS            APSR_nzcv, FPSCR
566EE0:  BLT             loc_566EF6
566EE2:  ADD.W           R0, R4, #0x740
566EE6:  VLDR            S2, [R0]
566EEA:  VCMPE.F32       S2, S0
566EEE:  VMRS            APSR_nzcv, FPSCR
566EF2:  BGE.W           loc_566D94
566EF6:  VLDR            S0, [R4,#0x48]
566EFA:  VLDR            S2, [R4,#0x4C]
566EFE:  VMUL.F32        S0, S0, S0
566F02:  VLDR            S4, [R4,#0x50]
566F06:  VMUL.F32        S2, S2, S2
566F0A:  LDR             R0, =(fBikeBurstFallSpeed_ptr - 0x566F14)
566F0C:  VMUL.F32        S4, S4, S4
566F10:  ADD             R0, PC; fBikeBurstFallSpeed_ptr
566F12:  LDR             R0, [R0]; fBikeBurstFallSpeed
566F14:  VADD.F32        S0, S0, S2
566F18:  VLDR            S2, [R0]
566F1C:  VADD.F32        S0, S0, S4
566F20:  VSQRT.F32       S0, S0
566F24:  VCMPE.F32       S0, S2
566F28:  VMRS            APSR_nzcv, FPSCR
566F2C:  BLE.W           loc_566D94
566F30:  LDRB.W          R0, [R4,#0x3A]
566F34:  CMP             R0, #7
566F36:  BHI             loc_566F4E
566F38:  LDR             R0, =(fBikeBurstFallSpeedPlayer_ptr - 0x566F3E)
566F3A:  ADD             R0, PC; fBikeBurstFallSpeedPlayer_ptr
566F3C:  LDR             R0, [R0]; fBikeBurstFallSpeedPlayer
566F3E:  VLDR            S2, [R0]
566F42:  VCMPE.F32       S0, S2
566F46:  VMRS            APSR_nzcv, FPSCR
566F4A:  BLE.W           loc_566D94
566F4E:  CMP             R6, #0xD
566F50:  BNE             loc_566FDA
566F52:  ADD.W           R8, R4, #0x48 ; 'H'
566F56:  ADD.W           R10, R4, #0xE4
566F5A:  ADD.W           R9, SP, #0xC8+var_6C
566F5E:  MOVS            R6, #0
566F60:  MOVS            R0, #1
566F62:  MOV.W           R11, #0x31 ; '1'
566F66:  STRD.W          R6, R6, [SP,#0xC8+var_C8]; float
566F6A:  MOV             R1, R4; this
566F6C:  STRD.W          R11, R6, [SP,#0xC8+var_C0]; int
566F70:  MOV             R2, R8; int
566F72:  STRD.W          R6, R6, [SP,#0xC8+var_B8]; int
566F76:  MOV             R3, R10; int
566F78:  STRD.W          R0, R6, [SP,#0xC8+var_B0]; int
566F7C:  MOV             R0, R9; int
566F7E:  BLX             j__ZN18CEventKnockOffBikeC2EP8CVehicleRK7CVectorS4_ff11eWeaponTypeaiP4CPedbb; CEventKnockOffBike::CEventKnockOffBike(CVehicle *,CVector const&,CVector const&,float,float,eWeaponType,signed char,int,CPed *,bool,bool)
566F82:  LDR.W           R0, [R4,#0x464]
566F86:  MOV             R1, R9; CEvent *
566F88:  MOVS            R2, #0; bool
566F8A:  LDR.W           R0, [R0,#0x440]
566F8E:  ADDS            R0, #0x68 ; 'h'; this
566F90:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
566F94:  LDR.W           R0, [R4,#0x468]
566F98:  CBZ             R0, loc_566FD2
566F9A:  ADD.W           R9, SP, #0xC8+var_A8
566F9E:  MOV             R1, R4; this
566FA0:  MOV             R2, R8; int
566FA2:  MOV             R3, R10; int
566FA4:  MOV             R0, R9; int
566FA6:  STRD.W          R6, R6, [SP,#0xC8+var_C8]; float
566FAA:  STRD.W          R11, R6, [SP,#0xC8+var_C0]; int
566FAE:  STRD.W          R6, R6, [SP,#0xC8+var_B8]; int
566FB2:  STRD.W          R6, R6, [SP,#0xC8+var_B0]; int
566FB6:  BLX             j__ZN18CEventKnockOffBikeC2EP8CVehicleRK7CVectorS4_ff11eWeaponTypeaiP4CPedbb; CEventKnockOffBike::CEventKnockOffBike(CVehicle *,CVector const&,CVector const&,float,float,eWeaponType,signed char,int,CPed *,bool,bool)
566FBA:  LDR.W           R0, [R4,#0x468]
566FBE:  MOV             R1, R9; CEvent *
566FC0:  MOVS            R2, #0; bool
566FC2:  LDR.W           R0, [R0,#0x440]
566FC6:  ADDS            R0, #0x68 ; 'h'; this
566FC8:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
566FCC:  MOV             R0, R9; this
566FCE:  BLX             j__ZN18CEventKnockOffBikeD2Ev; CEventKnockOffBike::~CEventKnockOffBike()
566FD2:  ADD             R0, SP, #0xC8+var_6C; this
566FD4:  BLX             j__ZN18CEventKnockOffBikeD2Ev; CEventKnockOffBike::~CEventKnockOffBike()
566FD8:  B               loc_566D94
566FDA:  LDR             R0, =(fBikeBurstForceMult_ptr - 0x566FE4)
566FDC:  VLDR            S2, [R4,#0x94]
566FE0:  ADD             R0, PC; fBikeBurstForceMult_ptr
566FE2:  LDR             R0, [R0]; fBikeBurstForceMult
566FE4:  VLDR            S0, [R0]
566FE8:  LDR             R0, [R4,#0x14]
566FEA:  VADD.F32        S0, S0, S0
566FEE:  VLDR            S4, [R0,#4]
566FF2:  VLDR            S6, [R0,#8]
566FF6:  VMUL.F32        S0, S0, S2
566FFA:  VLDR            S2, [R0]
566FFE:  LDRD.W          R6, R12, [R0,#0x10]
567002:  LDR             R0, [R0,#0x18]
567004:  STRD.W          R6, R12, [SP,#0xC8+var_C8]
567008:  STR             R0, [SP,#0xC8+var_C0]
56700A:  MOV             R0, R4
56700C:  VMUL.F32        S2, S0, S2
567010:  VMUL.F32        S4, S0, S4
567014:  VMUL.F32        S0, S0, S6
567018:  VMOV            R1, S2
56701C:  VMOV            R2, S4
567020:  VMOV            R3, S0
567024:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
567028:  B               loc_566D94
