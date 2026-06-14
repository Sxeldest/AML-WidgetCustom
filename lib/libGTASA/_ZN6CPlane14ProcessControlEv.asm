; =========================================================
; Game Engine Function: _ZN6CPlane14ProcessControlEv
; Address            : 0x575C88 - 0x575E86
; =========================================================

575C88:  PUSH            {R4-R7,LR}
575C8A:  ADD             R7, SP, #0xC
575C8C:  PUSH.W          {R8-R11}
575C90:  SUB             SP, SP, #0x7C
575C92:  MOV             R4, R0
575C94:  LDRB.W          R0, [R4,#0x3A]
575C98:  CMP             R0, #7
575C9A:  BHI             loc_575CDC
575C9C:  LDRSH.W         R0, [R4,#0x26]
575CA0:  BIC.W           R0, R0, #1
575CA4:  CMP.W           R0, #0x200
575CA8:  BNE             loc_575CDC
575CAA:  LDR.W           R0, [R4,#0x464]
575CAE:  CBZ             R0, loc_575CBC
575CB0:  LDR.W           R0, [R0,#0x59C]
575CB4:  CMP             R0, #1
575CB6:  IT NE
575CB8:  MOVNE           R0, #0
575CBA:  B               loc_575CBE
575CBC:  MOVS            R0, #0; this
575CBE:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
575CC2:  MOVS            R0, #0x66 ; 'f'
575CC4:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
575CC8:  CMP             R0, #1
575CCA:  BNE             loc_575CDC
575CCC:  LDRB.W          R0, [R4,#0xA14]
575CD0:  MOVS            R1, #0
575CD2:  CMP             R0, #0
575CD4:  IT EQ
575CD6:  MOVEQ           R1, #1
575CD8:  STRB.W          R1, [R4,#0xA14]
575CDC:  LDRB.W          R0, [R4,#0xA14]
575CE0:  CBZ             R0, loc_575D00
575CE2:  LDR.W           R0, [R4,#0x42C]
575CE6:  MOVS            R1, #0x40000010
575CEC:  ANDS            R0, R1
575CEE:  TEQ.W           R0, #0x10
575CF2:  BNE             loc_575CFA
575CF4:  LDR.W           R0, [R4,#0x464]
575CF8:  CBNZ            R0, loc_575D00
575CFA:  MOVS            R0, #0
575CFC:  STRB.W          R0, [R4,#0xA14]
575D00:  LDRH            R0, [R4,#0x26]
575D02:  CMP.W           R0, #0x1CC
575D06:  BNE             loc_575D34
575D08:  ADDW            R5, R4, #0x5B4
575D0C:  MOVS            R1, #0; int
575D0E:  MOVS            R2, #2; unsigned int
575D10:  MOV             R0, R5; this
575D12:  BLX             j__ZN14CDamageManager14SetWheelStatusEij; CDamageManager::SetWheelStatus(int,uint)
575D16:  MOV             R0, R5; this
575D18:  MOVS            R1, #1; int
575D1A:  MOVS            R2, #2; unsigned int
575D1C:  BLX             j__ZN14CDamageManager14SetWheelStatusEij; CDamageManager::SetWheelStatus(int,uint)
575D20:  MOV             R0, R5; this
575D22:  MOVS            R1, #2; int
575D24:  MOVS            R2, #2; unsigned int
575D26:  BLX             j__ZN14CDamageManager14SetWheelStatusEij; CDamageManager::SetWheelStatus(int,uint)
575D2A:  MOV             R0, R5; this
575D2C:  MOVS            R1, #3; int
575D2E:  MOVS            R2, #2; unsigned int
575D30:  BLX             j__ZN14CDamageManager14SetWheelStatusEij; CDamageManager::SetWheelStatus(int,uint)
575D34:  MOV             R0, R4; this
575D36:  BLX             j__ZN11CAutomobile14ProcessControlEv; CAutomobile::ProcessControl(void)
575D3A:  LDR.W           R0, [R4,#0x9B4]
575D3E:  STRH.W          R0, [R4,#0x1B8]
575D42:  CMP             R0, #0
575D44:  ITT NE
575D46:  MOVNE           R0, #0
575D48:  STRNE.W         R0, [R4,#0x9B4]
575D4C:  MOV             R0, R4; this
575D4E:  BLX             j__ZN8CVehicle14ProcessWeaponsEv; CVehicle::ProcessWeapons(void)
575D52:  LDRH            R0, [R4,#0x26]
575D54:  MOVW            R1, #0x21B
575D58:  CMP             R0, R1
575D5A:  ITTT EQ
575D5C:  VMOVEQ.I32      Q8, #0
575D60:  ADDWEQ          R0, R4, #0x97C
575D64:  VST1EQ.32       {D16-D17}, [R0]
575D68:  LDR.W           R0, [R4,#0xA0C]
575D6C:  CMP             R0, #0
575D6E:  BEQ.W           loc_575E7E
575D72:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x575D80)
575D74:  ADD.W           R8, SP, #0x98+var_5C
575D78:  VLDR            S0, =50.0
575D7C:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
575D7E:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
575D80:  VLDR            S2, [R1]
575D84:  LDR.W           R1, [R4,#0xA10]
575D88:  VDIV.F32        S0, S2, S0
575D8C:  VLDR            S2, =1000.0
575D90:  VMUL.F32        S0, S0, S2
575D94:  VCVT.U32.F32    S0, S0
575D98:  VMOV            R2, S0
575D9C:  SUBS            R1, R1, R2
575D9E:  STR.W           R1, [R4,#0xA10]
575DA2:  MOV             R1, R8
575DA4:  BLX             j__ZN10FxSystem_c18GetCompositeMatrixEP11RwMatrixTag; FxSystem_c::GetCompositeMatrix(RwMatrixTag *)
575DA8:  VMOV.F32        S0, #-5.0
575DAC:  VLDR            S2, [R4,#0x48]
575DB0:  VLDR            S4, [R4,#0x4C]
575DB4:  MOVW            R0, #0xCCCD
575DB8:  VLDR            S6, [R4,#0x50]
575DBC:  MOVW            R2, #0xCCCD
575DC0:  ADD.W           R10, SP, #0x98+var_84
575DC4:  MOVT            R0, #0x3DCC
575DC8:  MOV.W           R1, #0x3F800000
575DCC:  MOVT            R2, #0x3E4C
575DD0:  MOVS            R3, #0; float
575DD2:  MOVS            R5, #0
575DD4:  VMUL.F32        S4, S4, S0
575DD8:  VMUL.F32        S2, S2, S0
575DDC:  VMUL.F32        S0, S6, S0
575DE0:  VSTR            S4, [SP,#0x98+var_64]
575DE4:  VSTR            S2, [SP,#0x98+var_68]
575DE8:  VSTR            S0, [SP,#0x98+var_60]
575DEC:  STRD.W          R2, R1, [SP,#0x98+var_98]; float
575DF0:  MOVS            R2, #0; float
575DF2:  STRD.W          R1, R0, [SP,#0x98+var_90]; float
575DF6:  MOV             R0, R10; this
575DF8:  MOVS            R1, #0; float
575DFA:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
575DFE:  LDR             R0, =(g_fx_ptr - 0x575E10)
575E00:  MOVW            R1, #0x999A
575E04:  MOVW            R9, #0x999A
575E08:  MOVW            R11, #0
575E0C:  ADD             R0, PC; g_fx_ptr
575E0E:  MOVT            R1, #0x3F19
575E12:  MOVT            R9, #0x3F99
575E16:  MOVT            R11, #0xBF80
575E1A:  LDR             R6, [R0]; g_fx
575E1C:  MOVS            R3, #0; int
575E1E:  LDR             R0, [R6,#(dword_820540 - 0x820520)]; int
575E20:  STRD.W          R10, R11, [SP,#0x98+var_98]; int
575E24:  STRD.W          R9, R1, [SP,#0x98+var_90]; float
575E28:  STR             R5, [SP,#0x98+var_88]; int
575E2A:  ADD.W           R5, R8, #0x30 ; '0'
575E2E:  ADD.W           R8, SP, #0x98+var_68
575E32:  MOV             R1, R5; int
575E34:  MOV             R2, R8; int
575E36:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
575E3A:  LDR             R0, [R6,#(dword_820540 - 0x820520)]; int
575E3C:  MOVW            R1, #0x999A
575E40:  MOVW            R3, #0xCCCD
575E44:  MOVS            R6, #0
575E46:  MOVT            R1, #0x3F19
575E4A:  STRD.W          R10, R11, [SP,#0x98+var_98]; int
575E4E:  STR.W           R9, [SP,#0x98+var_90]; float
575E52:  MOVT            R3, #0x3D4C; int
575E56:  STRD.W          R1, R6, [SP,#0x98+var_8C]; float
575E5A:  MOV             R1, R5; int
575E5C:  MOV             R2, R8; int
575E5E:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
575E62:  LDR.W           R0, [R4,#0xA10]
575E66:  CMP             R0, #1
575E68:  BLT             loc_575E72
575E6A:  LDRB.W          R0, [R4,#0x42F]
575E6E:  LSLS            R0, R0, #0x19
575E70:  BPL             loc_575E7E
575E72:  LDR.W           R0, [R4,#0xA0C]; this
575E76:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
575E7A:  STR.W           R6, [R4,#0xA0C]
575E7E:  ADD             SP, SP, #0x7C ; '|'
575E80:  POP.W           {R8-R11}
575E84:  POP             {R4-R7,PC}
