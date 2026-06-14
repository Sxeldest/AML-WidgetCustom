; =========================================================
; Game Engine Function: _ZN6CPlane22FindPlaneCreationCoorsEP7CVectorS1_PfS2_b
; Address            : 0x578D48 - 0x578FFA
; =========================================================

578D48:  PUSH            {R4-R7,LR}
578D4A:  ADD             R7, SP, #0xC
578D4C:  PUSH.W          {R8-R11}
578D50:  SUB             SP, SP, #4
578D52:  VPUSH           {D8-D13}
578D56:  SUB             SP, SP, #0x68
578D58:  MOV             R6, R0
578D5A:  LDR             R0, [R7,#arg_0]
578D5C:  VLDR            S2, =200.0
578D60:  VMOV.F32        S16, #25.0
578D64:  CMP             R0, #0
578D66:  LDR             R0, =(TheCamera_ptr - 0x578D72)
578D68:  VLDR            S0, =340.0
578D6C:  MOV             R9, R1
578D6E:  ADD             R0, PC; TheCamera_ptr
578D70:  VLDR            S18, =140.0
578D74:  STRD.W          R2, R3, [SP,#0xB8+var_98]
578D78:  ITT NE
578D7A:  VMOVNE.F32      S18, S0
578D7E:  VMOVNE.F32      S16, S2
578D82:  LDR             R0, [R0]; TheCamera
578D84:  MOV.W           R11, #0
578D88:  STR             R0, [SP,#0xB8+var_9C]
578D8A:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x578D94)
578D8C:  VLDR            S20, =3.1416
578D90:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
578D92:  VLDR            S22, =180.0
578D96:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
578D98:  STR             R0, [SP,#0xB8+var_A0]
578D9A:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x578DA0)
578D9C:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
578D9E:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
578DA0:  STR             R0, [SP,#0xB8+var_A4]; bool
578DA2:  MOVS            R0, #0
578DA4:  STR             R0, [SP,#0xB8+var_90]
578DA6:  BLX             rand
578DAA:  ADD.W           R8, SP, #0xB8+var_78
578DAE:  MOV             R10, R0
578DB0:  MOV.W           R1, #0xFFFFFFFF
578DB4:  MOV             R0, R8; int
578DB6:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
578DBA:  MOV             R0, #0xB60B60B7
578DC2:  SMMLA.W         R0, R0, R10, R10
578DC6:  ASRS            R1, R0, #8
578DC8:  ADD.W           R0, R1, R0,LSR#31
578DCC:  MOV.W           R1, #0x168
578DD0:  MLS.W           R0, R0, R1, R10
578DD4:  VMOV            S0, R0
578DD8:  VCVT.F32.S32    S0, S0
578DDC:  VLDR            D16, [SP,#0xB8+var_78]
578DE0:  LDR             R0, [SP,#0xB8+var_70]
578DE2:  STR             R0, [R6,#8]
578DE4:  VSTR            D16, [R6]
578DE8:  VMUL.F32        S0, S0, S20
578DEC:  VDIV.F32        S0, S0, S22
578DF0:  VMOV            R5, S0
578DF4:  MOV             R0, R5; x
578DF6:  BLX             cosf
578DFA:  MOV             R4, R0
578DFC:  BLX             rand
578E00:  AND.W           R0, R0, #0xF
578E04:  VMOV            S2, R11
578E08:  VMOV            S26, R4
578E0C:  VMOV            S0, R0
578E10:  MOV             R0, R5; x
578E12:  VCVT.F32.S32    S0, S0
578E16:  VCVT.F32.S32    S2, S2
578E1A:  VADD.F32        S0, S16, S0
578E1E:  VADD.F32        S24, S0, S2
578E22:  BLX             sinf
578E26:  VMOV            S0, R0
578E2A:  LDR             R4, [SP,#0xB8+var_94]
578E2C:  VMUL.F32        S2, S18, S26
578E30:  MOV             R0, R8; int
578E32:  VMUL.F32        S0, S18, S0
578E36:  MOV.W           R1, #0xFFFFFFFF
578E3A:  VSTR            S24, [R4]
578E3E:  VLDR            S4, [R6]
578E42:  VLDR            S6, [R6,#4]
578E46:  VLDR            S8, [R6,#8]
578E4A:  VADD.F32        S2, S4, S2
578E4E:  VADD.F32        S0, S6, S0
578E52:  VSTR            S2, [R6]
578E56:  VSTR            S0, [R6,#4]
578E5A:  VLDR            S0, [R4]
578E5E:  VADD.F32        S0, S0, S8
578E62:  VSTR            S0, [R6,#8]
578E66:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
578E6A:  VLDR            D16, [SP,#0xB8+var_78]
578E6E:  LDR             R0, [SP,#0xB8+var_70]
578E70:  STR.W           R0, [R9,#8]
578E74:  VSTR            D16, [R9]
578E78:  BLX             rand
578E7C:  AND.W           R0, R0, #0x1F
578E80:  ADDS            R0, #0x14
578E82:  VMOV            S0, R0
578E86:  VCVT.F32.S32    S0, S0
578E8A:  LDR             R2, [SP,#0xB8+var_9C]; float
578E8C:  VLDR            S8, [R9,#4]
578E90:  ADDW            R1, R2, #0x90C
578E94:  ADDW            R0, R2, #0x914
578E98:  VLDR            S10, [R9,#8]
578E9C:  VLDR            S2, [R1]
578EA0:  ADD.W           R1, R2, #0x910
578EA4:  VLDR            S6, [R0]
578EA8:  VLDR            S4, [R1]
578EAC:  VMUL.F32        S2, S2, S0
578EB0:  VMUL.F32        S4, S4, S0
578EB4:  VMUL.F32        S0, S6, S0
578EB8:  VLDR            S6, [R9]
578EBC:  VADD.F32        S2, S2, S6
578EC0:  VADD.F32        S4, S4, S8
578EC4:  VADD.F32        S0, S0, S10
578EC8:  VSTR            S2, [R9]
578ECC:  VSTR            S4, [R9,#4]
578ED0:  VSTR            S0, [R9,#8]
578ED4:  VLDR            S6, [R4]
578ED8:  VADD.F32        S0, S0, S6
578EDC:  VSTR            S0, [R9,#8]
578EE0:  VLDR            S0, [R6]
578EE4:  VLDR            S6, [R6,#4]
578EE8:  VSUB.F32        S0, S2, S0
578EEC:  VSUB.F32        S2, S4, S6
578EF0:  VMOV            R0, S0; this
578EF4:  VMOV            R1, S2; float
578EF8:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
578EFC:  LDR             R1, [SP,#0xB8+var_98]
578EFE:  STR             R0, [R1]
578F00:  MOVW            R1, #0xFFFF
578F04:  VLDR            S0, [R6]
578F08:  VLDR            S6, [R9]
578F0C:  VLDR            S2, [R6,#4]
578F10:  VLDR            S8, [R9,#4]
578F14:  VSUB.F32        S0, S6, S0
578F18:  VLDR            S4, [R6,#8]
578F1C:  VLDR            S10, [R9,#8]
578F20:  VSUB.F32        S2, S8, S2
578F24:  LDR             R0, [SP,#0xB8+var_A0]
578F26:  VSUB.F32        S4, S10, S4
578F2A:  LDRH            R0, [R0]; this
578F2C:  VADD.F32        S0, S6, S0
578F30:  CMP             R0, R1
578F32:  VADD.F32        S2, S8, S2
578F36:  VADD.F32        S4, S10, S4
578F3A:  VSTR            S2, [SP,#0xB8+var_58]
578F3E:  VSTR            S0, [SP,#0xB8+var_5C]
578F42:  VSTR            S4, [SP,#0xB8+var_54]
578F46:  BEQ             loc_578F4C
578F48:  ADDS            R0, #1
578F4A:  B               loc_578F52
578F4C:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
578F50:  MOVS            R0, #1
578F52:  LDR             R1, [SP,#0xB8+var_A4]
578F54:  MOVS            R4, #0
578F56:  STR             R4, [SP,#0xB8+var_B8]; unsigned __int8
578F58:  MOV             R2, R6; CVector *
578F5A:  MOVS            R3, #0; unsigned __int8
578F5C:  STRH            R0, [R1]
578F5E:  MOVS            R0, #(elf_hash_bucket+3)
578F60:  MOVS            R1, #0
578F62:  STR             R0, [SP,#0xB8+var_B4]; CColSphere *
578F64:  ADD             R0, SP, #0xB8+var_8C; this
578F66:  MOVT            R1, #0x4170; float
578F6A:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
578F6E:  ADD             R1, SP, #0xB8+var_5C; CVector *
578F70:  MOV             R0, R6; this
578F72:  MOVS            R2, #(stderr+1); CVector *
578F74:  MOVS            R3, #0; bool
578F76:  STRD.W          R4, R4, [SP,#0xB8+var_B8]; bool
578F7A:  STRD.W          R4, R4, [SP,#0xB8+var_B0]; CColSphere *
578F7E:  STR             R4, [SP,#0xB8+var_A8]; bool
578F80:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
578F84:  CMP             R0, #1
578F86:  BNE             loc_578FB0
578F88:  VLDR            S0, [R6]
578F8C:  ADD             R3, SP, #0xB8+var_8C; CColBox *
578F8E:  VLDR            S2, [R6,#4]
578F92:  ADD             R2, SP, #0xB8+var_78; int
578F94:  VCVT.S32.F32    S0, S0
578F98:  VCVT.S32.F32    S2, S2
578F9C:  STRD.W          R3, R3, [SP,#0xB8+var_B8]; CColSphere *
578FA0:  VMOV            R0, S0; this
578FA4:  VMOV            R1, S2; int
578FA8:  BLX             j__ZN10CCollision29CheckCameraCollisionBuildingsEiiP7CColBoxP10CColSphereS3_S3_; CCollision::CheckCameraCollisionBuildings(int,int,CColBox *,CColSphere *,CColSphere *,CColSphere *)
578FAC:  CMP             R0, #1
578FAE:  BNE             loc_578FBC
578FB0:  ADD.W           R11, R11, #0xA
578FB4:  CMP.W           R11, #0x1F4
578FB8:  BLT             loc_578FC6
578FBA:  B               loc_578FCE
578FBC:  MOVS            R0, #1
578FBE:  STR             R0, [SP,#0xB8+var_90]
578FC0:  CMP.W           R11, #0x1F4
578FC4:  BGE             loc_578FCE
578FC6:  LDR             R0, [SP,#0xB8+var_90]
578FC8:  LSLS            R0, R0, #0x1F
578FCA:  BEQ.W           loc_578DA6
578FCE:  VMOV.F32        S0, #20.0
578FD2:  LDR             R0, [SP,#0xB8+var_94]
578FD4:  VLDR            S2, [R0]
578FD8:  VADD.F32        S2, S2, S0
578FDC:  VSTR            S2, [R0]
578FE0:  VLDR            S2, [R9,#8]
578FE4:  VADD.F32        S0, S2, S0
578FE8:  VSTR            S0, [R9,#8]
578FEC:  ADD             SP, SP, #0x68 ; 'h'
578FEE:  VPOP            {D8-D13}
578FF2:  ADD             SP, SP, #4
578FF4:  POP.W           {R8-R11}
578FF8:  POP             {R4-R7,PC}
