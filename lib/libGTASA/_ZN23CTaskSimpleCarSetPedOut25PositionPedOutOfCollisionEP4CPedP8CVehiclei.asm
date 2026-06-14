; =========================================================
; Game Engine Function: _ZN23CTaskSimpleCarSetPedOut25PositionPedOutOfCollisionEP4CPedP8CVehiclei
; Address            : 0x503D1C - 0x504040
; =========================================================

503D1C:  PUSH            {R4-R7,LR}
503D1E:  ADD             R7, SP, #0xC
503D20:  PUSH.W          {R8-R11}
503D24:  SUB             SP, SP, #4
503D26:  VPUSH           {D8}
503D2A:  SUB             SP, SP, #0x20
503D2C:  MOV             R4, R1
503D2E:  MOV             R5, R0
503D30:  CMP             R4, #0
503D32:  MOV             R8, R2
503D34:  ITT EQ
503D36:  LDREQ.W         R4, [R5,#0x590]
503D3A:  CMPEQ           R4, #0
503D3C:  BEQ.W           loc_503FF4
503D40:  LDR             R0, [R4,#0x14]
503D42:  CBZ             R0, loc_503D56
503D44:  LDRD.W          R2, R1, [R0,#0x10]; x
503D48:  EOR.W           R0, R2, #0x80000000; y
503D4C:  BLX             atan2f
503D50:  VMOV            S0, R0
503D54:  B               loc_503D5A
503D56:  VLDR            S0, [R4,#0x10]
503D5A:  ADDW            R1, R5, #0x55C
503D5E:  LDR             R0, [R5,#0x14]; this
503D60:  VSTR            S0, [R1]
503D64:  ADD.W           R1, R5, #0x560
503D68:  CMP             R0, #0
503D6A:  VSTR            S0, [R1]
503D6E:  BEQ             loc_503D7A
503D70:  VMOV            R1, S0; x
503D74:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
503D78:  B               loc_503D7E
503D7A:  VSTR            S0, [R5,#0x10]
503D7E:  LDR.W           R0, [R4,#0x5A0]
503D82:  CMP             R0, #5
503D84:  BNE             loc_503E7E
503D86:  LDR.W           R0, [R4,#0x388]
503D8A:  LDRB.W          R0, [R0,#0xCD]
503D8E:  LSLS            R0, R0, #0x1D
503D90:  BPL             loc_503DD6
503D92:  VMOV.F32        S0, #0.5
503D96:  LDR             R0, [R4,#0x14]
503D98:  VLDR            S2, [R0,#0x20]
503D9C:  VLDR            S4, [R0,#0x24]
503DA0:  VLDR            S6, [R0,#0x28]
503DA4:  LDR             R0, [R5,#0x14]
503DA6:  VMUL.F32        S2, S2, S0
503DAA:  VMUL.F32        S4, S4, S0
503DAE:  VMUL.F32        S0, S6, S0
503DB2:  VLDR            S6, [R0,#0x30]
503DB6:  VLDR            S8, [R0,#0x34]
503DBA:  VLDR            S10, [R0,#0x38]
503DBE:  VADD.F32        S2, S2, S6
503DC2:  VADD.F32        S4, S4, S8
503DC6:  VADD.F32        S0, S0, S10
503DCA:  VSTR            S2, [R0,#0x30]
503DCE:  VSTR            S4, [R0,#0x34]
503DD2:  VSTR            S0, [R0,#0x38]
503DD6:  LDR             R0, [R5]
503DD8:  MOVS            R1, #0
503DDA:  LDR             R2, [R0,#0x38]
503DDC:  MOV             R0, R5
503DDE:  BLX             R2
503DE0:  CMP             R0, #1
503DE2:  BNE             loc_503EDE
503DE4:  LDRB.W          R1, [R4,#0x42F]
503DE8:  LDR             R0, [R5,#0x14]
503DEA:  LSLS            R1, R1, #0x19
503DEC:  BMI.W           loc_504002
503DF0:  VLDR            S16, =0.3
503DF4:  MOVS            R1, #0
503DF6:  VLDR            S0, [R0,#0x10]
503DFA:  VLDR            S2, [R0,#0x14]
503DFE:  VLDR            S4, [R0,#0x18]
503E02:  VMUL.F32        S0, S0, S16
503E06:  VMUL.F32        S2, S2, S16
503E0A:  VLDR            S6, [R0,#0x30]
503E0E:  VMUL.F32        S4, S4, S16
503E12:  VLDR            S8, [R0,#0x34]
503E16:  VLDR            S10, [R0,#0x38]
503E1A:  VSUB.F32        S0, S6, S0
503E1E:  VSUB.F32        S2, S8, S2
503E22:  VSUB.F32        S4, S10, S4
503E26:  VSTR            S0, [R0,#0x30]
503E2A:  VSTR            S2, [R0,#0x34]
503E2E:  VSTR            S4, [R0,#0x38]
503E32:  LDR             R0, [R5]
503E34:  LDR             R2, [R0,#0x38]
503E36:  MOV             R0, R5
503E38:  BLX             R2
503E3A:  CMP             R0, #1
503E3C:  BNE             loc_503EDE
503E3E:  LDR             R0, [R5,#0x14]
503E40:  VLDR            S0, [R0,#0x10]
503E44:  VLDR            S2, [R0,#0x14]
503E48:  VLDR            S4, [R0,#0x18]
503E4C:  VMUL.F32        S0, S0, S16
503E50:  VMUL.F32        S2, S2, S16
503E54:  VLDR            S6, [R0,#0x30]
503E58:  VMUL.F32        S4, S4, S16
503E5C:  VLDR            S8, [R0,#0x34]
503E60:  VLDR            S10, [R0,#0x38]
503E64:  VADD.F32        S0, S0, S6
503E68:  VADD.F32        S2, S2, S8
503E6C:  VADD.F32        S4, S4, S10
503E70:  VSTR            S0, [R0,#0x30]
503E74:  VSTR            S2, [R0,#0x34]
503E78:  VSTR            S4, [R0,#0x38]
503E7C:  B               loc_504032
503E7E:  LDR             R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x503E90)
503E80:  ADD.W           R10, R5, #4
503E84:  VLDR            S0, =-0.2
503E88:  MOVW            R3, #0xCCCD
503E8C:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
503E8E:  MOV             R1, R10
503E90:  MOVS            R6, #0
503E92:  MOV.W           R11, #1
503E96:  LDR             R0, [R0]; CWorld::pIgnoreEntity ...
503E98:  MOVT            R3, #0x3ECC
503E9C:  STR             R4, [R0]; CWorld::pIgnoreEntity
503E9E:  LDR             R0, [R5,#0x14]
503EA0:  CMP             R0, #0
503EA2:  IT NE
503EA4:  ADDNE.W         R1, R0, #0x30 ; '0'
503EA8:  VLDR            S2, [R1,#8]
503EAC:  LDRD.W          R0, R1, [R1]
503EB0:  VADD.F32        S0, S2, S0
503EB4:  STRD.W          R4, R11, [SP,#0x48+var_48]
503EB8:  STRD.W          R11, R6, [SP,#0x48+var_40]
503EBC:  STRD.W          R6, R6, [SP,#0x48+var_38]
503EC0:  STR             R6, [SP,#0x48+var_30]
503EC2:  VMOV            R2, S0
503EC6:  BLX             j__ZN6CWorld22TestSphereAgainstWorldE7CVectorfP7CEntitybbbbbb; CWorld::TestSphereAgainstWorld(CVector,float,CEntity *,bool,bool,bool,bool,bool,bool)
503ECA:  CBZ             R0, loc_503F3E
503ECC:  LDR.W           R1, [R4,#0x100]
503ED0:  MOV.W           R9, #0
503ED4:  CMP             R0, R1
503ED6:  IT NE
503ED8:  MOVNE.W         R9, #1
503EDC:  B               loc_503F42
503EDE:  VLDR            S0, =0.9
503EE2:  VLDR            S6, [R4,#0x50]
503EE6:  VLDR            S4, [R4,#0x4C]
503EEA:  VMUL.F32        S6, S6, S0
503EEE:  VLDR            S2, [R4,#0x48]
503EF2:  VLDR            S8, =-0.1
503EF6:  VMUL.F32        S4, S4, S0
503EFA:  VMUL.F32        S0, S2, S0
503EFE:  LDR.W           R1, [R5,#0x56C]
503F02:  LDR.W           R0, [R5,#0x484]
503F06:  CMP             R1, #0
503F08:  ORR.W           R0, R0, #1
503F0C:  STR.W           R0, [R5,#0x484]
503F10:  VADD.F32        S2, S6, S8
503F14:  VSTR            S0, [R5,#0x48]
503F18:  VSTR            S4, [R5,#0x4C]
503F1C:  VSTR            S2, [R5,#0x50]
503F20:  BNE             loc_503FF4
503F22:  ADDW            R1, R5, #0x56C; CEntity **
503F26:  MOV             R0, R4; this
503F28:  STR             R4, [R1]
503F2A:  ADD             SP, SP, #0x20 ; ' '
503F2C:  VPOP            {D8}
503F30:  ADD             SP, SP, #4
503F32:  POP.W           {R8-R11}
503F36:  POP.W           {R4-R7,LR}
503F3A:  B.W             j_j__ZN7CEntity17RegisterReferenceEPPS_; j_CEntity::RegisterReference(CEntity**)
503F3E:  MOV.W           R9, #0
503F42:  LDR             R0, [R5,#0x14]
503F44:  MOV             R1, R10
503F46:  VLDR            S0, =0.0
503F4A:  MOVW            R3, #0xCCCD
503F4E:  CMP             R0, #0
503F50:  VLDR            S8, =0.2
503F54:  IT NE
503F56:  ADDNE.W         R1, R0, #0x30 ; '0'
503F5A:  MOVT            R3, #0x3ECC
503F5E:  VLDR            S2, [R1]
503F62:  VLDR            S4, [R1,#4]
503F66:  VLDR            S6, [R1,#8]
503F6A:  VADD.F32        S2, S2, S0
503F6E:  VADD.F32        S0, S4, S0
503F72:  STRD.W          R4, R11, [SP,#0x48+var_48]
503F76:  VADD.F32        S4, S6, S8
503F7A:  STRD.W          R11, R6, [SP,#0x48+var_40]
503F7E:  STRD.W          R6, R6, [SP,#0x48+var_38]
503F82:  STR             R6, [SP,#0x48+var_30]
503F84:  VMOV            R0, S2
503F88:  VMOV            R1, S0
503F8C:  VMOV            R2, S4
503F90:  BLX             j__ZN6CWorld22TestSphereAgainstWorldE7CVectorfP7CEntitybbbbbb; CWorld::TestSphereAgainstWorld(CVector,float,CEntity *,bool,bool,bool,bool,bool,bool)
503F94:  CBZ             R0, loc_503FA6
503F96:  LDR.W           R1, [R4,#0x100]
503F9A:  MOVS            R2, #0
503F9C:  CMP             R0, R1
503F9E:  IT NE
503FA0:  MOVNE           R2, #1
503FA2:  ORR.W           R9, R9, R2
503FA6:  LDR             R2, [R4,#0x14]
503FA8:  MOVS            R0, #0
503FAA:  LDR             R1, [R5,#0x14]
503FAC:  MOVS            R3, #1
503FAE:  STRD.W          R0, R3, [SP,#0x48+var_48]; bool
503FB2:  CMP             R2, #0
503FB4:  STRD.W          R0, R0, [SP,#0x48+var_40]; bool
503FB8:  MOV.W           R3, #0; bool
503FBC:  STR             R0, [SP,#0x48+var_38]; bool
503FBE:  ADD.W           R0, R2, #0x30 ; '0'
503FC2:  IT EQ
503FC4:  ADDEQ           R0, R4, #4; this
503FC6:  CMP             R1, #0
503FC8:  IT NE
503FCA:  ADDNE.W         R10, R1, #0x30 ; '0'
503FCE:  MOVS            R2, #(stderr+1); CVector *
503FD0:  MOV             R1, R10; CVector *
503FD2:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
503FD6:  CMP.W           R9, #0
503FDA:  BNE             loc_503FDE
503FDC:  CBNZ            R0, loc_503FEA
503FDE:  MOV             R0, R5; this
503FE0:  MOV             R1, R8; int
503FE2:  MOV             R2, R4; CVehicle *
503FE4:  MOVS            R3, #1; bool
503FE6:  BLX             j__ZN4CPed25PositionPedOutOfCollisionEiP8CVehicleb; CPed::PositionPedOutOfCollision(int,CVehicle *,bool)
503FEA:  LDR             R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x503FF2)
503FEC:  MOVS            R1, #0
503FEE:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
503FF0:  LDR             R0, [R0]; CWorld::pIgnoreEntity ...
503FF2:  STR             R1, [R0]; CWorld::pIgnoreEntity
503FF4:  ADD             SP, SP, #0x20 ; ' '
503FF6:  VPOP            {D8}
503FFA:  ADD             SP, SP, #4
503FFC:  POP.W           {R8-R11}
504000:  POP             {R4-R7,PC}
504002:  VLDR            S0, =-0.3
504006:  MOVS            R1, #0
504008:  VLDR            S2, [R0,#0x38]
50400C:  VADD.F32        S0, S2, S0
504010:  VSTR            S0, [R0,#0x38]
504014:  LDR             R0, [R5]
504016:  LDR             R2, [R0,#0x38]
504018:  MOV             R0, R5
50401A:  BLX             R2
50401C:  CMP             R0, #1
50401E:  BNE             loc_503FF4
504020:  LDR             R0, [R5,#0x14]
504022:  VLDR            S0, =0.3
504026:  VLDR            S2, [R0,#0x38]
50402A:  VADD.F32        S0, S2, S0
50402E:  VSTR            S0, [R0,#0x38]
504032:  MOV             R0, R5; this
504034:  MOV             R1, R8; int
504036:  MOV             R2, R4; CVehicle *
504038:  MOVS            R3, #1; bool
50403A:  BLX             j__ZN4CPed25PositionPedOutOfCollisionEiP8CVehicleb; CPed::PositionPedOutOfCollision(int,CVehicle *,bool)
50403E:  B               loc_503FF4
