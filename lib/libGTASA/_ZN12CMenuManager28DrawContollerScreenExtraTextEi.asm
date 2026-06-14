; =========================================================
; Game Engine Function: _ZN12CMenuManager28DrawContollerScreenExtraTextEi
; Address            : 0x434FB8 - 0x435204
; =========================================================

434FB8:  PUSH            {R4-R7,LR}
434FBA:  ADD             R7, SP, #0xC
434FBC:  PUSH.W          {R8-R11}
434FC0:  SUB             SP, SP, #4
434FC2:  VPUSH           {D8-D9}
434FC6:  SUB             SP, SP, #0x30
434FC8:  MOV             R5, R0
434FCA:  MOV             R11, R1
434FCC:  LDRB.W          R0, [R5,#0x7B]
434FD0:  CMP             R0, #1
434FD2:  BEQ             loc_434FF2
434FD4:  CMP             R0, #0
434FD6:  BNE.W           loc_4351F6
434FDA:  LDRB.W          R0, [R5,#0x94]
434FDE:  MOVS            R1, #0x1C
434FE0:  CMP             R0, #0
434FE2:  MOV.W           R0, #0xB
434FE6:  IT EQ
434FE8:  MOVEQ           R1, #0x16
434FEA:  STR             R1, [SP,#0x60+var_3C]
434FEC:  IT EQ
434FEE:  MOVEQ           R0, #0xF
434FF0:  B               loc_434FF8
434FF2:  MOVS            R0, #0x19
434FF4:  STR             R0, [SP,#0x60+var_3C]
434FF6:  MOVS            R0, #0xD
434FF8:  STR             R0, [SP,#0x60+var_40]
434FFA:  MOVW            R0, #0x1ACD
434FFE:  ADD             R0, R5
435000:  STR             R0, [SP,#0x60+var_54]
435002:  LDR             R0, =(ControlsManager_ptr - 0x435012)
435004:  MOVW            R9, #0
435008:  MOVS            R6, #0
43500A:  MOVT            R9, #0x4296
43500E:  ADD             R0, PC; ControlsManager_ptr
435010:  LDR             R0, [R0]; ControlsManager
435012:  STR             R0, [SP,#0x60+var_44]
435014:  LDR             R0, =(ControlsManager_ptr - 0x43501A)
435016:  ADD             R0, PC; ControlsManager_ptr
435018:  LDR             R0, [R0]; ControlsManager
43501A:  STR             R0, [SP,#0x60+var_48]
43501C:  LDR             R0, =(ControlsManager_ptr - 0x435022)
43501E:  ADD             R0, PC; ControlsManager_ptr
435020:  LDR             R0, [R0]; ControlsManager
435022:  STR             R0, [SP,#0x60+var_4C]
435024:  LDR             R0, =(ControlsManager_ptr - 0x43502A)
435026:  ADD             R0, PC; ControlsManager_ptr
435028:  LDR             R0, [R0]; ControlsManager
43502A:  STR             R0, [SP,#0x60+var_50]
43502C:  LDR             R0, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x435032)
43502E:  ADD             R0, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
435030:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode ...
435032:  STR             R0, [SP,#0x60+var_58]
435034:  LDR             R0, =(TheText_ptr - 0x43503A)
435036:  ADD             R0, PC; TheText_ptr
435038:  LDR             R0, [R0]; TheText
43503A:  STR             R0, [SP,#0x60+var_5C]
43503C:  MOVS            R1, #0
43503E:  MOV             R0, R5; this
435040:  MOVT            R1, #0x4370; float
435044:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
435048:  MOV             R4, R0
43504A:  LDR             R0, [SP,#0x60+var_44]
43504C:  MOV             R1, R6
43504E:  MOVS            R2, #1
435050:  BLX             j__ZN24CControllerConfigManager39GetControllerSettingTextWithOrderNumberE18e_ControllerAction13eContSetOrder; CControllerConfigManager::GetControllerSettingTextWithOrderNumber(e_ControllerAction,eContSetOrder)
435054:  VMOV            S0, R11
435058:  MOV             R10, R0
43505A:  CMP.W           R10, #0
43505E:  VCVT.F32.S32    S16, S0
435062:  VMOV            S0, R4
435066:  VCVT.S32.F32    S18, S0
43506A:  VMOV            R8, S18
43506E:  BEQ             loc_4350A2
435070:  VMOV            R1, S16; float
435074:  MOV             R0, R5; this
435076:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
43507A:  VCVT.F32.S32    S18, S18
43507E:  MOV             R1, R0; float
435080:  MOV             R2, R10; CFont *
435082:  VMOV            R0, S18; this
435086:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
43508A:  MOV             R0, R5; this
43508C:  MOV             R1, R9; float
43508E:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
435092:  VMOV            S0, R0
435096:  VADD.F32        S0, S0, S18
43509A:  VCVT.S32.F32    S0, S0
43509E:  VMOV            R8, S0
4350A2:  LDR             R0, [SP,#0x60+var_48]
4350A4:  MOV             R1, R6
4350A6:  MOVS            R2, #2
4350A8:  BLX             j__ZN24CControllerConfigManager39GetControllerSettingTextWithOrderNumberE18e_ControllerAction13eContSetOrder; CControllerConfigManager::GetControllerSettingTextWithOrderNumber(e_ControllerAction,eContSetOrder)
4350AC:  MOV             R4, R0
4350AE:  CBZ             R4, loc_4350E6
4350B0:  VMOV            R1, S16; float
4350B4:  MOV             R0, R5; this
4350B6:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
4350BA:  VMOV            S0, R8
4350BE:  MOV             R1, R0; float
4350C0:  MOV             R2, R4; CFont *
4350C2:  VCVT.F32.S32    S18, S0
4350C6:  VMOV            R0, S18; this
4350CA:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
4350CE:  MOV             R0, R5; this
4350D0:  MOV             R1, R9; float
4350D2:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
4350D6:  VMOV            S0, R0
4350DA:  VADD.F32        S0, S0, S18
4350DE:  VCVT.S32.F32    S0, S0
4350E2:  VMOV            R8, S0
4350E6:  LDR             R0, [SP,#0x60+var_4C]
4350E8:  MOV             R1, R6
4350EA:  MOVS            R2, #3
4350EC:  BLX             j__ZN24CControllerConfigManager39GetControllerSettingTextWithOrderNumberE18e_ControllerAction13eContSetOrder; CControllerConfigManager::GetControllerSettingTextWithOrderNumber(e_ControllerAction,eContSetOrder)
4350F0:  MOV             R4, R0
4350F2:  CBZ             R4, loc_43512A
4350F4:  VMOV            R1, S16; float
4350F8:  MOV             R0, R5; this
4350FA:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
4350FE:  VMOV            S0, R8
435102:  MOV             R1, R0; float
435104:  MOV             R2, R4; CFont *
435106:  VCVT.F32.S32    S18, S0
43510A:  VMOV            R0, S18; this
43510E:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
435112:  MOV             R0, R5; this
435114:  MOV             R1, R9; float
435116:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
43511A:  VMOV            S0, R0
43511E:  VADD.F32        S0, S0, S18
435122:  VCVT.S32.F32    S0, S0
435126:  VMOV            R8, S0
43512A:  LDR             R0, [SP,#0x60+var_50]
43512C:  MOV             R1, R6
43512E:  MOVS            R2, #4
435130:  BLX             j__ZN24CControllerConfigManager39GetControllerSettingTextWithOrderNumberE18e_ControllerAction13eContSetOrder; CControllerConfigManager::GetControllerSettingTextWithOrderNumber(e_ControllerAction,eContSetOrder)
435134:  MOV             R4, R0
435136:  CBZ             R4, loc_43516E
435138:  VMOV            R1, S16; float
43513C:  MOV             R0, R5; this
43513E:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
435142:  VMOV            S0, R8
435146:  MOV             R1, R0; float
435148:  MOV             R2, R4; CFont *
43514A:  VCVT.F32.S32    S18, S0
43514E:  VMOV            R0, S18; this
435152:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
435156:  MOV             R0, R5; this
435158:  MOV             R1, R9; float
43515A:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
43515E:  VMOV            S0, R0
435162:  VADD.F32        S0, S0, S18
435166:  VCVT.S32.F32    S0, S0
43516A:  VMOV            R8, S0
43516E:  LDR             R0, [R5,#0x38]
435170:  CMP             R6, R0
435172:  BNE             loc_4351E8
435174:  LDR             R0, [SP,#0x60+var_54]
435176:  LDRB            R0, [R0]
435178:  CBZ             R0, loc_4351E8
43517A:  LDR             R0, =(dword_990C14 - 0x435180)
43517C:  ADD             R0, PC; dword_990C14
43517E:  LDR             R2, [R0]
435180:  LDR             R0, [SP,#0x60+var_58]
435182:  LDR             R1, [R0]
435184:  LDR             R0, =(byte_990C10 - 0x43518C)
435186:  SUBS            R2, R1, R2
435188:  ADD             R0, PC; byte_990C10
43518A:  CMP             R2, #0x97
43518C:  LDRB            R0, [R0]
43518E:  BCC             loc_4351A0
435190:  LDR             R2, =(dword_990C14 - 0x43519A)
435192:  EOR.W           R0, R0, #1
435196:  ADD             R2, PC; dword_990C14
435198:  STR             R1, [R2]
43519A:  LDR             R1, =(byte_990C10 - 0x4351A0)
43519C:  ADD             R1, PC; byte_990C10
43519E:  STRB            R0, [R1]
4351A0:  CBZ             R0, loc_4351E8
4351A2:  ADD             R0, SP, #0x60+var_34; this
4351A4:  MOVS            R4, #0xFF
4351A6:  MOVS            R1, #0; unsigned __int8
4351A8:  MOVS            R2, #0; unsigned __int8
4351AA:  MOVS            R3, #0; unsigned __int8
4351AC:  STR             R4, [SP,#0x60+var_60]; unsigned __int8
4351AE:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
4351B2:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
4351B6:  LDR             R1, =(aFecQue - 0x4351BE); "FEC_QUE"
4351B8:  LDR             R0, [SP,#0x60+var_5C]; this
4351BA:  ADD             R1, PC; "FEC_QUE"
4351BC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4351C0:  VMOV            S0, R8
4351C4:  MOV             R2, R0; CFont *
4351C6:  VMOV            R1, S16; float
4351CA:  VCVT.F32.S32    S0, S0
4351CE:  VMOV            R0, S0; this
4351D2:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
4351D6:  ADD             R0, SP, #0x60+var_38; this
4351D8:  MOVS            R1, #0x4A ; 'J'; unsigned __int8
4351DA:  MOVS            R2, #0x5A ; 'Z'; unsigned __int8
4351DC:  MOVS            R3, #0x6B ; 'k'; unsigned __int8
4351DE:  STR             R4, [SP,#0x60+var_60]; unsigned __int8
4351E0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
4351E4:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
4351E8:  LDR             R0, [SP,#0x60+var_40]
4351EA:  ADDS            R6, #1
4351EC:  ADD             R11, R0
4351EE:  LDR             R0, [SP,#0x60+var_3C]
4351F0:  CMP             R0, R6
4351F2:  BNE.W           loc_43503C
4351F6:  ADD             SP, SP, #0x30 ; '0'
4351F8:  VPOP            {D8-D9}
4351FC:  ADD             SP, SP, #4
4351FE:  POP.W           {R8-R11}
435202:  POP             {R4-R7,PC}
