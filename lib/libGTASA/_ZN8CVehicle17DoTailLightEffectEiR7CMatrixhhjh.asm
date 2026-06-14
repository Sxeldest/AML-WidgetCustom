; =========================================================
; Game Engine Function: _ZN8CVehicle17DoTailLightEffectEiR7CMatrixhhjh
; Address            : 0x590DA4 - 0x591044
; =========================================================

590DA4:  PUSH            {R4-R7,LR}
590DA6:  ADD             R7, SP, #0xC
590DA8:  PUSH.W          {R8-R11}
590DAC:  SUB             SP, SP, #4
590DAE:  VPUSH           {D8}
590DB2:  SUB             SP, SP, #0x68
590DB4:  MOV             R11, R0
590DB6:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x590DC0)
590DB8:  MOV             R9, R3
590DBA:  MOV             R6, R2
590DBC:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
590DBE:  MOV             R8, R1
590DC0:  LDR             R0, [R0]; MobileSettings::settings ...
590DC2:  LDR             R0, [R0,#(dword_6E03FC - 0x6E03F4)]
590DC4:  CBZ             R0, loc_590E3C
590DC6:  LDRSH.W         R0, [R11,#0x26]
590DCA:  MOVW            R1, #0x1DB
590DCE:  CMP             R0, R1
590DD0:  ITT NE
590DD2:  MOVWNE          R1, #0x1B7
590DD6:  CMPNE           R0, R1
590DD8:  BNE             loc_590DEC
590DDA:  ADDW            R0, R11, #0x5B4; this
590DDE:  MOVS            R1, #6; int
590DE0:  BLX             j__ZNK14CDamageManager14GetPanelStatusEi; CDamageManager::GetPanelStatus(int)
590DE4:  CBNZ            R0, loc_590E3C
590DE6:  LDRH.W          R0, [R11,#0x26]
590DEA:  B               loc_590DEE
590DEC:  UXTH            R0, R0
590DEE:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x590DFA)
590DF0:  SXTH            R0, R0
590DF2:  CMP.W           R8, #1
590DF6:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
590DF8:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
590DFA:  LDR.W           R0, [R1,R0,LSL#2]
590DFE:  MOV.W           R1, #1
590E02:  ORR.W           R1, R1, R8,LSL#1
590E06:  LDR             R0, [R0,#0x74]
590E08:  ADD.W           R1, R1, R1,LSL#1
590E0C:  ADD.W           R0, R0, R1,LSL#2
590E10:  VLDR            S0, [R0]
590E14:  VLDR            S4, [R0,#4]
590E18:  VLDR            S2, [R0,#8]
590E1C:  ITT EQ
590E1E:  VCMPEQ.F32      S0, #0.0
590E22:  VMRSEQ          APSR_nzcv, FPSCR
590E26:  BNE             loc_590E4C
590E28:  VCMP.F32        S4, #0.0
590E2C:  VMRS            APSR_nzcv, FPSCR
590E30:  ITT EQ
590E32:  VCMPEQ.F32      S2, #0.0
590E36:  VMRSEQ          APSR_nzcv, FPSCR
590E3A:  BNE             loc_590E4C
590E3C:  MOVS            R0, #0
590E3E:  ADD             SP, SP, #0x68 ; 'h'
590E40:  VPOP            {D8}
590E44:  ADD             SP, SP, #4
590E46:  POP.W           {R8-R11}
590E4A:  POP             {R4-R7,PC}; unsigned __int8
590E4C:  LDR.W           R10, [R7,#arg_0]
590E50:  CMP.W           R9, #0
590E54:  VSTR            S4, [SP,#0x90+var_30]
590E58:  VSTR            S0, [SP,#0x90+var_34]
590E5C:  VSTR            S2, [SP,#0x90+var_2C]
590E60:  BNE             loc_590E72
590E62:  VMOV.F32        S2, #-2.0
590E66:  VMUL.F32        S2, S0, S2
590E6A:  VADD.F32        S0, S0, S2
590E6E:  VSTR            S0, [SP,#0x90+var_34]
590E72:  LDR             R0, =(TheCamera_ptr - 0x590E7C)
590E74:  ADD             R2, SP, #0x90+var_34
590E76:  MOV             R1, R6
590E78:  ADD             R0, PC; TheCamera_ptr
590E7A:  LDR             R4, [R0]; TheCamera
590E7C:  ADD             R0, SP, #0x90+var_4C
590E7E:  LDR             R5, [R4,#(dword_951FBC - 0x951FA8)]
590E80:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
590E84:  ADD.W           R0, R5, #0x30 ; '0'
590E88:  CMP             R5, #0
590E8A:  VLDR            S0, [SP,#0x90+var_4C]
590E8E:  VLDR            S2, [SP,#0x90+var_48]
590E92:  VLDR            S4, [SP,#0x90+var_44]
590E96:  IT EQ
590E98:  ADDEQ           R0, R4, #4
590E9A:  VLDR            S6, [R0]
590E9E:  VLDR            S8, [R0,#4]
590EA2:  VLDR            S10, [R0,#8]
590EA6:  VSUB.F32        S0, S6, S0
590EAA:  VSUB.F32        S2, S8, S2
590EAE:  ADD             R0, SP, #0x90+var_40; this
590EB0:  VSUB.F32        S4, S10, S4
590EB4:  VSTR            S0, [SP,#0x90+var_40]
590EB8:  VSTR            S2, [SP,#0x90+var_3C]
590EBC:  VSTR            S4, [SP,#0x90+var_38]
590EC0:  BLX             j__ZN7CVector15NormaliseAndMagEv; CVector::NormaliseAndMag(void)
590EC4:  MOV             R4, R0
590EC6:  MOVS            R0, #0
590EC8:  CMP.W           R10, #0
590ECC:  BNE.W           loc_590FD6
590ED0:  VLDR            S0, [R6,#0x10]
590ED4:  VLDR            S6, [SP,#0x90+var_40]
590ED8:  VLDR            S2, [R6,#0x14]
590EDC:  VLDR            S8, [SP,#0x90+var_3C]
590EE0:  VMUL.F32        S0, S0, S6
590EE4:  VLDR            S4, [R6,#0x18]
590EE8:  MOVS            R6, #0
590EEA:  VNMUL.F32       S2, S2, S8
590EEE:  VLDR            S10, [SP,#0x90+var_38]
590EF2:  VMUL.F32        S4, S4, S10
590EF6:  VSUB.F32        S0, S2, S0
590EFA:  VSUB.F32        S16, S0, S4
590EFE:  VCMPE.F32       S16, #0.0
590F02:  VMRS            APSR_nzcv, FPSCR
590F06:  BLE.W           loc_591032
590F0A:  LDR             R0, =(TheCamera_ptr - 0x590F10)
590F0C:  ADD             R0, PC; TheCamera_ptr
590F0E:  LDR             R0, [R0]; TheCamera
590F10:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
590F14:  ADD.W           R1, R1, R1,LSL#5
590F18:  ADD.W           R0, R0, R1,LSL#4
590F1C:  LDRH.W          R0, [R0,#0x17E]
590F20:  CMP             R0, #0x10
590F22:  BNE             loc_590F34
590F24:  MOV.W           R0, #0xFFFFFFFF; int
590F28:  MOVS            R1, #0; bool
590F2A:  MOVS            R6, #0
590F2C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
590F30:  CMP             R0, R11
590F32:  BEQ             loc_591030
590F34:  VMOV            S0, R4
590F38:  VLDR            S2, =-150.0
590F3C:  VMOV.F32        S4, #0.5
590F40:  VLDR            S6, =0.2
590F44:  VDIV.F32        S0, S0, S2
590F48:  MOV.W           R0, R8,LSL#1
590F4C:  ADD             R0, R11
590F4E:  LDR.W           R1, [R11,#0x5A4]
590F52:  ADD             R0, R9
590F54:  ADDS            R0, #8; this
590F56:  CMP             R1, #6
590F58:  VMOV.F32        S2, #1.0
590F5C:  VMUL.F32        S4, S16, S4
590F60:  VMUL.F32        S8, S16, S6
590F64:  VADD.F32        S0, S0, S2
590F68:  VADD.F32        S4, S4, S6
590F6C:  VMUL.F32        S0, S0, S8
590F70:  BNE             loc_590F92
590F72:  LDRH.W          R1, [R11,#0x26]
590F76:  MOVW            R2, #0x1C1
590F7A:  CMP             R1, R2
590F7C:  BEQ             loc_590F92
590F7E:  VMOV.F32        S8, #3.0
590F82:  VMOV.F32        S6, #4.0
590F86:  VMUL.F32        S4, S4, S8
590F8A:  VMUL.F32        S0, S0, S6
590F8E:  VMIN.F32        D2, D2, D1
590F92:  VSQRT.F32       S2, S16
590F96:  ADDW            R1, R11, #0x4A4
590F9A:  ADD             R4, SP, #0x90+var_34
590F9C:  VLDR            S6, [R1]
590FA0:  VCMPE.F32       S6, #0.0
590FA4:  VMRS            APSR_nzcv, FPSCR
590FA8:  BLE             loc_590FBE
590FAA:  LDRB.W          R1, [R11,#0x42C]
590FAE:  LSLS            R1, R1, #0x1A
590FB0:  BMI             loc_590FBE
590FB2:  LDR.W           R1, [R11,#0x464]
590FB6:  CBZ             R1, loc_590FBE
590FB8:  VLDR            S6, =128.0
590FBC:  B               loc_590FC6
590FBE:  LDR             R1, [R7,#arg_8]
590FC0:  CBZ             R1, loc_590FDA
590FC2:  VLDR            S6, =96.0
590FC6:  VMUL.F32        S4, S4, S6
590FCA:  MOVS            R6, #1
590FCC:  VCVT.S32.F32    S4, S4
590FD0:  VMOV            R1, S4
590FD4:  B               loc_590FDE
590FD6:  MOVS            R6, #0
590FD8:  B               loc_591032
590FDA:  MOVS            R6, #0
590FDC:  MOVS            R1, #0
590FDE:  LDR             R2, =(TheCamera_ptr - 0x590FEE)
590FE0:  MOVS            R3, #0
590FE2:  VLDR            S4, =150.0
590FE6:  MOVT            R3, #0x4170
590FEA:  ADD             R2, PC; TheCamera_ptr
590FEC:  MOV.W           R5, #0x3F000000
590FF0:  LDR             R2, [R2]; TheCamera
590FF2:  VLDR            S6, [R2,#0xEC]
590FF6:  MOVS            R2, #0
590FF8:  STRD.W          R2, R5, [SP,#0x90+var_64]; float
590FFC:  VMUL.F32        S4, S6, S4
591000:  STRD.W          R2, R3, [SP,#0x90+var_5C]; float
591004:  MOVS            R3, #1
591006:  STRD.W          R2, R2, [SP,#0x90+var_54]; float
59100A:  VSTR            S2, [SP,#0x90+var_68]
59100E:  STRD.W          R3, R2, [SP,#0x90+var_7C]; float
591012:  STRD.W          R3, R2, [SP,#0x90+var_74]; unsigned __int8
591016:  MOVS            R3, #0x80
591018:  STR             R2, [SP,#0x90+var_6C]; unsigned __int8
59101A:  VSTR            S0, [SP,#0x90+var_84]
59101E:  STMEA.W         SP, {R2-R4}
591022:  UXTB            R2, R1; CEntity *
591024:  MOV             R1, R11; unsigned int
591026:  MOVS            R3, #0; unsigned __int8
591028:  VSTR            S4, [SP,#0x90+var_80]
59102C:  BLX.W           j__ZN8CCoronas14RegisterCoronaEjP7CEntityhhhhRK7CVectorffhhhhhfbfbfbb; CCoronas::RegisterCorona(uint,CEntity *,uchar,uchar,uchar,uchar,CVector const&,float,float,uchar,uchar,uchar,uchar,uchar,float,bool,float,bool,float,bool,bool)
591030:  MOVS            R0, #0
591032:  CMP.W           R10, #0
591036:  IT EQ
591038:  MOVEQ           R0, #1
59103A:  CMP             R6, #0
59103C:  IT NE
59103E:  MOVNE           R6, #1
591040:  ANDS            R0, R6
591042:  B               loc_590E3E
