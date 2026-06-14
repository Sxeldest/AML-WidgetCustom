; =========================================================
; Game Engine Function: _ZN25CPedToPlayerConversations6UpdateEv
; Address            : 0x301AF8 - 0x302C00
; =========================================================

301AF8:  PUSH            {R4-R7,LR}
301AFA:  ADD             R7, SP, #0xC
301AFC:  PUSH.W          {R8-R11}
301B00:  SUB             SP, SP, #4
301B02:  VPUSH           {D8-D15}
301B06:  SUB             SP, SP, #0x60
301B08:  MOV.W           R0, #0xFFFFFFFF; int
301B0C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
301B10:  MOV             R4, R0
301B12:  MOV.W           R0, #0xFFFFFFFF; int
301B16:  MOVS            R1, #0; bool
301B18:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
301B1C:  CBZ             R0, loc_301B34
301B1E:  MOV.W           R0, #0xFFFFFFFF; int
301B22:  MOVS            R1, #0; bool
301B24:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
301B28:  LDR.W           R1, =(dword_7A1130 - 0x301B30)
301B2C:  ADD             R1, PC; dword_7A1130 ; CEntity **
301B2E:  STR             R0, [R1]
301B30:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
301B34:  LDR.W           R0, =(_ZN25CPedToPlayerConversations7m_StateE_ptr - 0x301B3C)
301B38:  ADD             R0, PC; _ZN25CPedToPlayerConversations7m_StateE_ptr
301B3A:  LDR             R0, [R0]; CPedToPlayerConversations::m_State ...
301B3C:  LDR             R0, [R0]; CPedToPlayerConversations::m_State
301B3E:  CMP             R0, #3; switch 4 cases
301B40:  BHI.W           def_301B44; jumptable 00301B44 default case
301B44:  TBH.W           [PC,R0,LSL#1]; switch jump
301B48:  DCW 4; jump table for switch statement
301B4A:  DCW 0x3FB
301B4C:  DCW 0x463
301B4E:  DCW 0x498
301B50:  LDR.W           R0, =(_ZN25CPedToPlayerConversations30m_TimeOfLastPlayerConversationE_ptr - 0x301B60); jumptable 00301B44 case 0
301B54:  MOVW            R2, #0x7530
301B58:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x301B62)
301B5C:  ADD             R0, PC; _ZN25CPedToPlayerConversations30m_TimeOfLastPlayerConversationE_ptr
301B5E:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
301B60:  LDR             R0, [R0]; CPedToPlayerConversations::m_TimeOfLastPlayerConversation ...
301B62:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
301B64:  LDR             R0, [R0]; CPedToPlayerConversations::m_TimeOfLastPlayerConversation
301B66:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
301B68:  ADD             R0, R2
301B6A:  CMP             R1, R0
301B6C:  BLS.W           def_301B44; jumptable 00301B44 default case
301B70:  MOV.W           R0, #0xFFFFFFFF; int
301B74:  MOVS            R1, #0; bool
301B76:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
301B7A:  CMP             R0, #0
301B7C:  BNE.W           def_301B44; jumptable 00301B44 default case
301B80:  MOV.W           R0, #0xFFFFFFFF; int
301B84:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
301B88:  LDR.W           R0, [R0,#0x444]
301B8C:  LDR             R0, [R0]
301B8E:  LDR             R0, [R0,#0x2C]
301B90:  CMP             R0, #0
301B92:  BNE.W           def_301B44; jumptable 00301B44 default case
301B96:  LDR.W           R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301B9E)
301B9A:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
301B9C:  LDR             R0, [R0]; CConversations::m_aConversations ...
301B9E:  LDR             R1, [R0,#(dword_7A0F94 - 0x7A0F80)]
301BA0:  LDR             R2, [R0,#(dword_7A0FB0 - 0x7A0F80)]
301BA2:  LDR             R3, [R0,#(dword_7A0FCC - 0x7A0F80)]
301BA4:  ORRS            R1, R2
301BA6:  LDR             R6, [R0,#(dword_7A0FE8 - 0x7A0F80)]
301BA8:  ORRS            R1, R3
301BAA:  LDR.W           R3, [R0,#(dword_7A1004 - 0x7A0F80)]
301BAE:  ORRS            R1, R6
301BB0:  LDR.W           R6, [R0,#(dword_7A1020 - 0x7A0F80)]
301BB4:  ORRS            R1, R3
301BB6:  LDR.W           R3, [R0,#(dword_7A103C - 0x7A0F80)]
301BBA:  ORRS            R1, R6
301BBC:  LDR.W           LR, [R0,#(dword_7A10C8 - 0x7A0F80)]
301BC0:  ORRS            R1, R3
301BC2:  LDR.W           R12, [R0,#(dword_7A10E4 - 0x7A0F80)]
301BC6:  LDR.W           R5, [R0,#(dword_7A10AC - 0x7A0F80)]
301BCA:  LDR.W           R2, [R0,#(dword_7A1090 - 0x7A0F80)]
301BCE:  LDR.W           R6, [R0,#(dword_7A1074 - 0x7A0F80)]
301BD2:  LDR.W           R3, [R0,#(dword_7A1100 - 0x7A0F80)]
301BD6:  LDR.W           R0, [R0,#(dword_7A1058 - 0x7A0F80)]
301BDA:  ORRS            R0, R1
301BDC:  ORRS            R0, R6
301BDE:  ORRS            R0, R2
301BE0:  ORRS            R0, R5
301BE2:  ORR.W           R0, R0, LR
301BE6:  ORR.W           R0, R0, R12
301BEA:  ORRS            R0, R3
301BEC:  BNE.W           def_301B44; jumptable 00301B44 default case
301BF0:  MOV             R0, R4; this
301BF2:  MOVS            R1, #1; bool
301BF4:  BLX             j__ZN4CPed25PedIsReadyForConversationEb; CPed::PedIsReadyForConversation(bool)
301BF8:  CMP             R0, #1
301BFA:  BNE.W           def_301B44; jumptable 00301B44 default case
301BFE:  LDR.W           R0, =(_ZN9CGangWars15bGangWarsActiveE_ptr - 0x301C06)
301C02:  ADD             R0, PC; _ZN9CGangWars15bGangWarsActiveE_ptr
301C04:  LDR             R0, [R0]; CGangWars::bGangWarsActive ...
301C06:  LDRB            R0, [R0]; CGangWars::bGangWarsActive
301C08:  CMP             R0, #0
301C0A:  BNE.W           def_301B44; jumptable 00301B44 default case
301C0E:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x301C1C)
301C12:  ADD             R1, SP, #0xC0+var_78
301C14:  ADDS            R1, #4
301C16:  STR             R1, [SP,#0xC0+var_7C]
301C18:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
301C1A:  VMOV.F32        S18, #7.0
301C1E:  VMOV.F32        S28, #5.0
301C22:  LDR.W           R5, =(dword_7A1134 - 0x301C30)
301C26:  LDR             R0, [R0]; CPools::ms_pPedPool ...
301C28:  VMOV.F32        S23, #0.5
301C2C:  ADD             R5, PC; dword_7A1134
301C2E:  VLDR            S16, =0.0
301C32:  VLDR            S20, =0.000015259
301C36:  MOV.W           R8, #0xFFFFFFFF
301C3A:  LDR             R6, [R0]; CPools::ms_pPedPool
301C3C:  MOV.W           R9, #0
301C40:  LDR.W           R0, =(_ZN25CPedToPlayerConversations7m_TopicE_ptr - 0x301C50)
301C44:  MOVW            R2, #0x7CC
301C48:  VLDR            S26, =-256.0
301C4C:  ADD             R0, PC; _ZN25CPedToPlayerConversations7m_TopicE_ptr
301C4E:  VLDR            S30, =-128.0
301C52:  VLDR            S17, =-512.0
301C56:  LDR             R0, [R0]; CPedToPlayerConversations::m_Topic ...
301C58:  STR             R0, [SP,#0xC0+var_80]
301C5A:  LDR.W           R0, =(_ZN25CPedToPlayerConversations7m_TopicE_ptr - 0x301C66)
301C5E:  VLDR            S19, =1000.0
301C62:  ADD             R0, PC; _ZN25CPedToPlayerConversations7m_TopicE_ptr
301C64:  VLDR            S21, =0.1
301C68:  LDR             R0, [R0]; CPedToPlayerConversations::m_Topic ...
301C6A:  STR             R0, [SP,#0xC0+var_84]
301C6C:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x301C74)
301C70:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
301C72:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
301C74:  STR             R0, [SP,#0xC0+var_90]
301C76:  LDR.W           R0, =(_ZN8CWeather4WindE_ptr - 0x301C7E)
301C7A:  ADD             R0, PC; _ZN8CWeather4WindE_ptr
301C7C:  LDR             R0, [R0]; CWeather::Wind ...
301C7E:  STR             R0, [SP,#0xC0+var_88]
301C80:  LDR.W           R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x301C88)
301C84:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
301C86:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
301C88:  STR             R0, [SP,#0xC0+var_8C]
301C8A:  LDR             R0, [R5]
301C8C:  LDR             R1, [R6,#8]
301C8E:  ADDS            R0, #1
301C90:  CMP             R0, R1
301C92:  IT GE
301C94:  MOVGE           R0, R9
301C96:  STR             R0, [R5]
301C98:  LDR             R1, [R6,#4]
301C9A:  LDRSB           R1, [R1,R0]
301C9C:  CMP             R1, #0
301C9E:  BLT.W           loc_302330
301CA2:  LDR             R1, [R6]
301CA4:  MLA.W           R10, R0, R2, R1
301CA8:  CMP.W           R10, #0
301CAC:  BEQ.W           loc_302330
301CB0:  LDRB.W          R0, [R10,#0x448]
301CB4:  CMP             R0, #1
301CB6:  BNE.W           loc_302330
301CBA:  MOV             R0, R10; this
301CBC:  MOVS            R1, #1; bool
301CBE:  BLX             j__ZN4CPed25PedIsReadyForConversationEb; CPed::PedIsReadyForConversation(bool)
301CC2:  CMP             R0, #1
301CC4:  MOVW            R2, #0x7CC
301CC8:  ITT EQ
301CCA:  LDRBEQ.W        R0, [R10,#0x48E]
301CCE:  CMPEQ.W         R9, R0,LSR#7
301CD2:  BNE.W           loc_302330
301CD6:  MOV             R0, R10; this
301CD8:  BLX             j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
301CDC:  MOVW            R2, #0x7CC
301CE0:  CMP             R0, #1
301CE2:  BNE.W           loc_302330
301CE6:  MOV             R0, R10
301CE8:  LDR.W           R9, [R0,#0x14]!
301CEC:  STR             R0, [SP,#0xC0+var_94]
301CEE:  CMP.W           R9, #0
301CF2:  BEQ             loc_301D02
301CF4:  VLDR            S0, [R9,#0x10]
301CF8:  VLDR            S2, [R9,#0x14]
301CFC:  VLDR            S4, [R9,#0x18]
301D00:  B               loc_301D28
301D02:  LDR.W           R11, [R10,#0x10]
301D06:  MOV             R0, R11; x
301D08:  BLX             sinf
301D0C:  MOV             R5, R0
301D0E:  MOV             R0, R11; x
301D10:  BLX             cosf
301D14:  VMOV.F32        S4, S16
301D18:  MOVW            R2, #0x7CC
301D1C:  VMOV            S2, R0
301D20:  EOR.W           R0, R5, #0x80000000
301D24:  VMOV            S0, R0
301D28:  LDR             R0, [R4,#0x14]
301D2A:  ADD.W           R11, R10, #4
301D2E:  LDR.W           R5, =(dword_7A1134 - 0x301D48)
301D32:  ADD.W           R1, R0, #0x30 ; '0'
301D36:  CMP             R0, #0
301D38:  IT EQ
301D3A:  ADDEQ           R1, R4, #4
301D3C:  CMP.W           R9, #0
301D40:  VLDR            S25, [R1]
301D44:  ADD             R5, PC; dword_7A1134
301D46:  VLDR            S29, [R1,#4]
301D4A:  VLDR            S27, [R1,#8]
301D4E:  STR.W           R11, [SP,#0xC0+var_98]
301D52:  IT NE
301D54:  ADDNE.W         R11, R9, #0x30 ; '0'
301D58:  VLDR            S31, [R11]
301D5C:  MOV.W           R9, #0
301D60:  VLDR            S24, [R11,#4]
301D64:  VSUB.F32        S8, S25, S31
301D68:  VLDR            S22, [R11,#8]
301D6C:  VSUB.F32        S6, S29, S24
301D70:  VSUB.F32        S10, S27, S22
301D74:  VMUL.F32        S0, S0, S8
301D78:  VMUL.F32        S2, S2, S6
301D7C:  VMUL.F32        S4, S4, S10
301D80:  VADD.F32        S0, S0, S2
301D84:  VADD.F32        S0, S0, S4
301D88:  VCMPE.F32       S0, #0.0
301D8C:  VMRS            APSR_nzcv, FPSCR
301D90:  BLE.W           loc_302330
301D94:  CBZ             R0, loc_301DA4
301D96:  VLDR            S0, [R0,#0x10]
301D9A:  VLDR            S2, [R0,#0x14]
301D9E:  VLDR            S4, [R0,#0x18]
301DA2:  B               loc_301DCA
301DA4:  LDR             R0, [R4,#0x10]; x
301DA6:  STR             R0, [SP,#0xC0+x]
301DA8:  BLX             sinf
301DAC:  STR             R0, [SP,#0xC0+var_9C]
301DAE:  LDR             R0, [SP,#0xC0+x]; x
301DB0:  BLX             cosf
301DB4:  VMOV.F32        S4, S16
301DB8:  MOVW            R2, #0x7CC
301DBC:  VMOV            S2, R0
301DC0:  LDR             R0, [SP,#0xC0+var_9C]
301DC2:  EOR.W           R0, R0, #0x80000000
301DC6:  VMOV            S0, R0
301DCA:  VSUB.F32        S6, S24, S29
301DCE:  VSUB.F32        S8, S31, S25
301DD2:  VSUB.F32        S10, S22, S27
301DD6:  VMUL.F32        S2, S2, S6
301DDA:  VMUL.F32        S0, S0, S8
301DDE:  VMUL.F32        S4, S4, S10
301DE2:  VADD.F32        S0, S0, S2
301DE6:  VADD.F32        S0, S0, S4
301DEA:  VCMPE.F32       S0, #0.0
301DEE:  VMRS            APSR_nzcv, FPSCR
301DF2:  BLE.W           loc_302330
301DF6:  ADD             R0, SP, #0xC0+var_78; int
301DF8:  MOV.W           R1, #0xFFFFFFFF
301DFC:  ADD.W           R9, R11, #4
301E00:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
301E04:  VLDR            S0, [R11]
301E08:  MOVW            R2, #0x7CC
301E0C:  VLDR            S2, [SP,#0xC0+var_78]
301E10:  LDR             R0, [SP,#0xC0+var_7C]
301E12:  VSUB.F32        S0, S0, S2
301E16:  VLDR            D17, [R9]
301E1A:  LDR.W           R5, =(dword_7A1134 - 0x301E2E)
301E1E:  MOV.W           R9, #0
301E22:  VLDR            D16, [R0]
301E26:  VSUB.F32        D16, D17, D16
301E2A:  ADD             R5, PC; dword_7A1134
301E2C:  VMUL.F32        S0, S0, S0
301E30:  VMUL.F32        D1, D16, D16
301E34:  VADD.F32        S0, S0, S2
301E38:  VADD.F32        S0, S0, S3
301E3C:  VSQRT.F32       S0, S0
301E40:  VCMPE.F32       S0, S18
301E44:  VMRS            APSR_nzcv, FPSCR
301E48:  BGE.W           loc_302330
301E4C:  LDR.W           R0, [R10,#0x59C]
301E50:  CMP             R0, #0x10
301E52:  BHI.W           loc_301F52
301E56:  MOVS            R1, #1
301E58:  LSL.W           R0, R1, R0
301E5C:  MOV             R1, #0x1FE80
301E64:  TST             R0, R1
301E66:  BEQ.W           loc_301F52
301E6A:  BLX             rand
301E6E:  UXTH            R0, R0
301E70:  VMOV            S0, R0
301E74:  VCVT.F32.S32    S0, S0
301E78:  VMUL.F32        S0, S0, S20
301E7C:  VADD.F32        S0, S0, S0
301E80:  VCVT.S32.F32    S0, S0
301E84:  VMOV            R0, S0
301E88:  ADD.W           R1, R0, #8
301E8C:  LDR             R0, [SP,#0xC0+var_80]
301E8E:  STR             R1, [R0]
301E90:  ADD.W           R0, R10, #0x298; this
301E94:  SXTH            R1, R1; __int16
301E96:  BLX             j__ZN23CAEPedSpeechAudioEntity21WillPedChatAboutTopicEs; CAEPedSpeechAudioEntity::WillPedChatAboutTopic(short)
301E9A:  CMP             R0, #0
301E9C:  MOVW            R2, #0x7CC
301EA0:  BEQ.W           loc_302330
301EA4:  LDR             R0, [SP,#0xC0+var_84]
301EA6:  LDR             R0, [R0]
301EA8:  CMP             R0, #9; switch 10 cases
301EAA:  BHI.W           def_301EAE; jumptable 00301EAE default case
301EAE:  TBH.W           [PC,R0,LSL#1]; switch jump
301EB2:  DCW 0xA; jump table for switch statement
301EB4:  DCW 0x60
301EB6:  DCW 0x97
301EB8:  DCW 0xCA
301EBA:  DCW 0x105
301EBC:  DCW 0x12B
301EBE:  DCW 0x151
301EC0:  DCW 0x17D
301EC2:  DCW 0x199
301EC4:  DCW 0x1A0
301EC6:  LDR.W           R0, =(dword_7A1130 - 0x301ECE); jumptable 00301EAE case 0
301ECA:  ADD             R0, PC; dword_7A1130
301ECC:  LDR             R0, [R0]
301ECE:  CMP             R0, #0
301ED0:  BEQ.W           def_301EAE; jumptable 00301EAE default case
301ED4:  LDR             R1, [SP,#0xC0+var_94]
301ED6:  VMOV.F32        S2, #20.0
301EDA:  LDR             R2, [R0,#0x14]
301EDC:  LDR             R3, [SP,#0xC0+var_98]
301EDE:  LDR             R1, [R1]
301EE0:  CMP             R1, #0
301EE2:  IT NE
301EE4:  ADDNE.W         R3, R1, #0x30 ; '0'
301EE8:  ADD.W           R1, R2, #0x30 ; '0'
301EEC:  CMP             R2, #0
301EEE:  VLDR            D16, [R3]
301EF2:  IT EQ
301EF4:  ADDEQ           R1, R0, #4
301EF6:  VLDR            D17, [R1]
301EFA:  VSUB.F32        D16, D17, D16
301EFE:  VMUL.F32        D0, D16, D16
301F02:  VADD.F32        S0, S0, S1
301F06:  VSQRT.F32       S0, S0
301F0A:  VCMPE.F32       S0, S2
301F0E:  VMRS            APSR_nzcv, FPSCR
301F12:  BGE.W           def_301EAE; jumptable 00301EAE default case
301F16:  LDRSH.W         R1, [R0,#0x26]
301F1A:  LDR             R2, [SP,#0xC0+var_90]
301F1C:  LDR.W           R1, [R2,R1,LSL#2]
301F20:  LDRSB.W         R1, [R1,#0x65]
301F24:  CMP             R1, #9
301F26:  BHI.W           def_301EAE; jumptable 00301EAE default case
301F2A:  MOVS            R2, #1
301F2C:  LSL.W           R1, R2, R1; CPed *
301F30:  TST.W           R1, #0x72
301F34:  BEQ.W           loc_3022EC
301F38:  MOV             R0, R10; this
301F3A:  BLX             j__ZN23CAEPedSpeechAudioEntity25RequestPlayerConversationEP4CPed; CAEPedSpeechAudioEntity::RequestPlayerConversation(CPed *)
301F3E:  LDR.W           R5, =(dword_7A1134 - 0x301F4C)
301F42:  CMP             R0, #0
301F44:  MOV.W           R9, #0
301F48:  ADD             R5, PC; dword_7A1134
301F4A:  BEQ.W           def_301EAE; jumptable 00301EAE default case
301F4E:  B.W             loc_302B14
301F52:  BLX             rand
301F56:  UXTH            R0, R0
301F58:  VMOV            S0, R0
301F5C:  VCVT.F32.S32    S0, S0
301F60:  VMUL.F32        S0, S0, S20
301F64:  VMUL.F32        S0, S0, S18
301F68:  VCVT.S32.F32    S0, S0
301F6C:  VMOV            R1, S0
301F70:  B               loc_301E8C
301F72:  MOVS            R0, #(dword_40+2); jumptable 00301EAE case 1
301F74:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
301F78:  LDRH.W          R1, [R10,#0x24]
301F7C:  VMOV            S2, R0
301F80:  BFC.W           R1, #9, #0x17
301F84:  VMOV            S0, R1; CPed *
301F88:  VCVT.F32.U32    S0, S0
301F8C:  VADD.F32        S0, S2, S0
301F90:  VADD.F32        S0, S0, S26
301F94:  VCVT.S32.F32    S0, S0
301F98:  VMOV            R0, S0
301F9C:  CMP.W           R0, #0x1F4
301FA0:  BLE.W           loc_302200
301FA4:  MOV             R0, R10; this
301FA6:  BLX             j__ZN23CAEPedSpeechAudioEntity25RequestPlayerConversationEP4CPed; CAEPedSpeechAudioEntity::RequestPlayerConversation(CPed *)
301FAA:  LDR.W           R5, =(dword_7A1134 - 0x301FB8)
301FAE:  CMP             R0, #0
301FB0:  MOV.W           R9, #0
301FB4:  ADD             R5, PC; dword_7A1134
301FB6:  BEQ.W           def_301EAE; jumptable 00301EAE default case
301FBA:  B.W             loc_3029B2
301FBE:  ALIGN 0x10
301FC0:  DCFS 0.0
301FC4:  DCFS 0.000015259
301FC8:  DCFS -256.0
301FCC:  DCFS -128.0
301FD0:  DCFS -512.0
301FD4:  DCFS 1000.0
301FD8:  DCFS 0.1
301FDC:  DCFS 800.0
301FE0:  MOVS            R0, #(dword_40+2); jumptable 00301EAE case 2
301FE2:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
301FE6:  LDRH.W          R1, [R10,#0x24]
301FEA:  VMOV            S2, R0
301FEE:  MOV.W           R0, #0xFFFFFFFF; int
301FF2:  BFC.W           R1, #9, #0x17
301FF6:  VMOV            S0, R1
301FFA:  VCVT.F32.U32    S0, S0
301FFE:  VADD.F32        S0, S2, S0
302002:  VADD.F32        S22, S0, S26
302006:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30200A:  LDR.W           R0, [R0,#0x444]
30200E:  MOVS            R1, #0; int
302010:  LDR             R0, [R0,#4]; this
302012:  VCVT.S32.F32    S22, S22
302016:  BLX             j__ZN15CPedClothesDesc20HasVisibleNewHairCutEi; CPedClothesDesc::HasVisibleNewHairCut(int)
30201A:  CMP             R0, #1
30201C:  BNE.W           def_301EAE; jumptable 00301EAE default case
302020:  VMOV            R0, S22
302024:  CMP.W           R0, #0x1F4
302028:  BLE.W           loc_3022A2
30202C:  MOV             R0, R10; this
30202E:  BLX             j__ZN23CAEPedSpeechAudioEntity25RequestPlayerConversationEP4CPed; CAEPedSpeechAudioEntity::RequestPlayerConversation(CPed *)
302032:  LDR.W           R5, =(dword_7A1134 - 0x302040)
302036:  CMP             R0, #0
302038:  MOV.W           R9, #0
30203C:  ADD             R5, PC; dword_7A1134
30203E:  BEQ.W           def_301EAE; jumptable 00301EAE default case
302042:  B.W             loc_302A02
302046:  MOVS            R0, #(dword_14+3); jumptable 00301EAE case 3
302048:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
30204C:  MOV             R11, R0
30204E:  LDRB.W          R0, [R10,#0x24]
302052:  VMOV            S0, R0
302056:  MOVS            R0, #(dword_14+1); this
302058:  VCVT.F32.U32    S22, S0
30205C:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
302060:  LDRB.W          R1, [R10,#0x24]
302064:  VMOV            S2, R11
302068:  VMOV            S4, R0
30206C:  VADD.F32        S2, S2, S22
302070:  VMOV            S0, R1
302074:  VCVT.F32.U32    S0, S0
302078:  VADD.F32        S2, S2, S30
30207C:  VADD.F32        S0, S4, S0
302080:  VCVT.S32.F32    S2, S2
302084:  VADD.F32        S0, S0, S30
302088:  VMOV            R0, S2
30208C:  VCVT.S32.F32    S0, S0
302090:  VMOV            R1, S0; CPed *
302094:  CMP.W           R0, #0x190
302098:  BLE.W           loc_302220
30209C:  CMP             R1, #0xF9
30209E:  BGT.W           loc_302220
3020A2:  MOV             R0, R10; this
3020A4:  BLX             j__ZN23CAEPedSpeechAudioEntity25RequestPlayerConversationEP4CPed; CAEPedSpeechAudioEntity::RequestPlayerConversation(CPed *)
3020A8:  LDR.W           R5, =(dword_7A1134 - 0x3020B6)
3020AC:  CMP             R0, #0
3020AE:  MOV.W           R9, #0
3020B2:  ADD             R5, PC; dword_7A1134
3020B4:  BEQ.W           def_301EAE; jumptable 00301EAE default case
3020B8:  B.W             loc_3029C6
3020BC:  MOVS            R0, #(dword_40+2); jumptable 00301EAE case 4
3020BE:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
3020C2:  LDRH.W          R1, [R10,#0x24]
3020C6:  VMOV            S2, R0
3020CA:  BFC.W           R1, #0xA, #0x16
3020CE:  VMOV            S0, R1; CPed *
3020D2:  VCVT.F32.U32    S0, S0
3020D6:  VADD.F32        S0, S2, S0
3020DA:  VADD.F32        S0, S0, S17
3020DE:  VCVT.S32.F32    S0, S0
3020E2:  VMOV            R0, S0
3020E6:  CMP.W           R0, #0x2BC
3020EA:  BLE.W           loc_302244
3020EE:  MOV             R0, R10; this
3020F0:  BLX             j__ZN23CAEPedSpeechAudioEntity25RequestPlayerConversationEP4CPed; CAEPedSpeechAudioEntity::RequestPlayerConversation(CPed *)
3020F4:  LDR.W           R5, =(dword_7A1134 - 0x302102)
3020F8:  CMP             R0, #0
3020FA:  MOV.W           R9, #0
3020FE:  ADD             R5, PC; dword_7A1134
302100:  BEQ.W           def_301EAE; jumptable 00301EAE default case
302104:  B.W             loc_3029DA
302108:  MOVS            R0, #(off_18+1); jumptable 00301EAE case 5
30210A:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
30210E:  LDRH.W          R1, [R10,#0x24]
302112:  VMOV            S2, R0
302116:  BFC.W           R1, #9, #0x17
30211A:  VMOV            S0, R1; CPed *
30211E:  VCVT.F32.U32    S0, S0
302122:  VADD.F32        S0, S2, S0
302126:  VADD.F32        S0, S0, S26
30212A:  VCVT.S32.F32    S0, S0
30212E:  VMOV            R0, S0
302132:  CMP.W           R0, #0x2BC
302136:  BLE.W           loc_302262
30213A:  MOV             R0, R10; this
30213C:  BLX             j__ZN23CAEPedSpeechAudioEntity25RequestPlayerConversationEP4CPed; CAEPedSpeechAudioEntity::RequestPlayerConversation(CPed *)
302140:  LDR.W           R5, =(dword_7A1134 - 0x30214E)
302144:  CMP             R0, #0
302146:  MOV.W           R9, #0
30214A:  ADD             R5, PC; dword_7A1134
30214C:  BEQ.W           def_301EAE; jumptable 00301EAE default case
302150:  B.W             loc_3029EE
302154:  MOV.W           R0, #0xFFFFFFFF; jumptable 00301EAE case 6
302158:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30215C:  LDR.W           R0, [R0,#0x444]
302160:  LDR             R0, [R0,#4]; this
302162:  BLX             j__ZN15CPedClothesDesc16HasVisibleTattooEv; CPedClothesDesc::HasVisibleTattoo(void)
302166:  CMP             R0, #1
302168:  BNE.W           def_301EAE; jumptable 00301EAE default case
30216C:  BLX             rand
302170:  UXTH            R0, R0
302172:  VMOV            S0, R0
302176:  VCVT.F32.S32    S0, S0
30217A:  VMUL.F32        S0, S0, S20
30217E:  VMUL.F32        S0, S0, S19
302182:  VCVT.S32.F32    S0, S0
302186:  VMOV            R0, S0
30218A:  CMP.W           R0, #0x2BC
30218E:  BLE.W           loc_3022D0
302192:  MOV             R0, R10; this
302194:  BLX             j__ZN23CAEPedSpeechAudioEntity25RequestPlayerConversationEP4CPed; CAEPedSpeechAudioEntity::RequestPlayerConversation(CPed *)
302198:  LDR.W           R5, =(dword_7A1134 - 0x3021A6)
30219C:  CMP             R0, #0
30219E:  MOV.W           R9, #0
3021A2:  ADD             R5, PC; dword_7A1134
3021A4:  BEQ.W           def_301EAE; jumptable 00301EAE default case
3021A8:  B.W             loc_302A28
3021AC:  LDR             R0, [SP,#0xC0+var_88]; jumptable 00301EAE case 7
3021AE:  VLDR            S0, [R0]
3021B2:  VCMPE.F32       S0, S21
3021B6:  VMRS            APSR_nzcv, FPSCR
3021BA:  BGE             loc_302280
3021BC:  LDR             R0, [SP,#0xC0+var_8C]
3021BE:  MOV.W           R9, #0
3021C2:  LDR.W           R5, =(dword_7A1134 - 0x3021CC)
3021C6:  LDRB            R0, [R0]
3021C8:  ADD             R5, PC; dword_7A1134
3021CA:  SUBS            R0, #7
3021CC:  UXTB            R0, R0
3021CE:  CMP             R0, #0xC
3021D0:  BHI.W           def_301EAE; jumptable 00301EAE default case
3021D4:  MOV             R0, R10; this
3021D6:  BLX             j__ZN23CAEPedSpeechAudioEntity25RequestPlayerConversationEP4CPed; CAEPedSpeechAudioEntity::RequestPlayerConversation(CPed *)
3021DA:  CMP             R0, #0
3021DC:  BEQ.W           def_301EAE; jumptable 00301EAE default case
3021E0:  B.W             loc_302A3C
3021E4:  MOV             R0, R10; jumptable 00301EAE case 8
3021E6:  BLX             j__ZN23CAEPedSpeechAudioEntity25RequestPlayerConversationEP4CPed; CAEPedSpeechAudioEntity::RequestPlayerConversation(CPed *)
3021EA:  CMP             R0, #0
3021EC:  BEQ.W           def_301EAE; jumptable 00301EAE default case
3021F0:  B               loc_302972
3021F2:  MOV             R0, R10; jumptable 00301EAE case 9
3021F4:  BLX             j__ZN23CAEPedSpeechAudioEntity25RequestPlayerConversationEP4CPed; CAEPedSpeechAudioEntity::RequestPlayerConversation(CPed *)
3021F8:  CMP             R0, #0
3021FA:  BEQ.W           def_301EAE; jumptable 00301EAE default case
3021FE:  B               loc_302990
302200:  LDR.W           R5, =(dword_7A1134 - 0x30220E)
302204:  CMP             R0, #0x95
302206:  MOV.W           R9, #0
30220A:  ADD             R5, PC; dword_7A1134
30220C:  BGT.W           def_301EAE; jumptable 00301EAE default case
302210:  MOV             R0, R10; this
302212:  BLX             j__ZN23CAEPedSpeechAudioEntity25RequestPlayerConversationEP4CPed; CAEPedSpeechAudioEntity::RequestPlayerConversation(CPed *)
302216:  CMP             R0, #0
302218:  BEQ.W           def_301EAE; jumptable 00301EAE default case
30221C:  B.W             loc_302A84
302220:  LDR.W           R5, =(dword_7A1134 - 0x302230)
302224:  CMP.W           R1, #0x1F4
302228:  MOV.W           R9, #0
30222C:  ADD             R5, PC; dword_7A1134
30222E:  BLE             def_301EAE; jumptable 00301EAE default case
302230:  SUBS            R0, R0, R1
302232:  CMP             R0, #0xC7
302234:  BGT             def_301EAE; jumptable 00301EAE default case
302236:  MOV             R0, R10; this
302238:  BLX             j__ZN23CAEPedSpeechAudioEntity25RequestPlayerConversationEP4CPed; CAEPedSpeechAudioEntity::RequestPlayerConversation(CPed *)
30223C:  CMP             R0, #0
30223E:  BEQ             def_301EAE; jumptable 00301EAE default case
302240:  B.W             loc_302A9C
302244:  LDR.W           R5, =(dword_7A1134 - 0x302254)
302248:  CMP.W           R0, #0x12C
30224C:  MOV.W           R9, #0
302250:  ADD             R5, PC; dword_7A1134
302252:  BGE             def_301EAE; jumptable 00301EAE default case
302254:  MOV             R0, R10; this
302256:  BLX             j__ZN23CAEPedSpeechAudioEntity25RequestPlayerConversationEP4CPed; CAEPedSpeechAudioEntity::RequestPlayerConversation(CPed *)
30225A:  CMP             R0, #0
30225C:  BEQ             def_301EAE; jumptable 00301EAE default case
30225E:  B.W             loc_302AB4
302262:  LDR.W           R5, =(dword_7A1134 - 0x302272)
302266:  CMP.W           R0, #0x12C
30226A:  MOV.W           R9, #0
30226E:  ADD             R5, PC; dword_7A1134
302270:  BGE             def_301EAE; jumptable 00301EAE default case
302272:  MOV             R0, R10; this
302274:  BLX             j__ZN23CAEPedSpeechAudioEntity25RequestPlayerConversationEP4CPed; CAEPedSpeechAudioEntity::RequestPlayerConversation(CPed *)
302278:  CMP             R0, #0
30227A:  BEQ             def_301EAE; jumptable 00301EAE default case
30227C:  B.W             loc_302ACC
302280:  LDR.W           R5, =(dword_7A1134 - 0x302294)
302284:  VCMPE.F32       S0, S23
302288:  VMRS            APSR_nzcv, FPSCR
30228C:  MOV.W           R9, #0
302290:  ADD             R5, PC; dword_7A1134
302292:  BLE             def_301EAE; jumptable 00301EAE default case
302294:  MOV             R0, R10; this
302296:  BLX             j__ZN23CAEPedSpeechAudioEntity25RequestPlayerConversationEP4CPed; CAEPedSpeechAudioEntity::RequestPlayerConversation(CPed *)
30229A:  CMP             R0, #0
30229C:  BEQ             def_301EAE; jumptable 00301EAE default case
30229E:  B.W             loc_302AE4
3022A2:  LDR.W           R5, =(dword_7A1134 - 0x3022B0)
3022A6:  CMP             R0, #0x96
3022A8:  MOV.W           R9, #0
3022AC:  ADD             R5, PC; dword_7A1134
3022AE:  BLT             loc_3022C4
3022B0:  MOVS            R0, #(dword_1C+3); this
3022B2:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
3022B6:  VMOV            S0, R0
3022BA:  VCMPE.F32       S0, S28
3022BE:  VMRS            APSR_nzcv, FPSCR
3022C2:  BGE             def_301EAE; jumptable 00301EAE default case
3022C4:  MOV             R0, R10; this
3022C6:  BLX             j__ZN23CAEPedSpeechAudioEntity25RequestPlayerConversationEP4CPed; CAEPedSpeechAudioEntity::RequestPlayerConversation(CPed *)
3022CA:  CBZ             R0, def_301EAE; jumptable 00301EAE default case
3022CC:  B.W             loc_302AFC
3022D0:  LDR.W           R5, =(dword_7A1134 - 0x3022E0)
3022D4:  CMP.W           R0, #0x12C
3022D8:  MOV.W           R9, #0
3022DC:  ADD             R5, PC; dword_7A1134
3022DE:  BGE             def_301EAE; jumptable 00301EAE default case
3022E0:  MOV             R0, R10; this
3022E2:  BLX             j__ZN23CAEPedSpeechAudioEntity25RequestPlayerConversationEP4CPed; CAEPedSpeechAudioEntity::RequestPlayerConversation(CPed *)
3022E6:  CBZ             R0, def_301EAE; jumptable 00301EAE default case
3022E8:  B.W             loc_302B2C
3022EC:  LDR.W           R5, =(dword_7A1134 - 0x3022FC)
3022F0:  TST.W           R1, #0x20C
3022F4:  MOV.W           R9, #0
3022F8:  ADD             R5, PC; dword_7A1134
3022FA:  BEQ             def_301EAE; jumptable 00301EAE default case
3022FC:  ADDW            R0, R0, #0x4CC
302300:  VLDR            S2, =800.0
302304:  VLDR            S0, [R0]
302308:  VCMPE.F32       S0, S2
30230C:  VMRS            APSR_nzcv, FPSCR
302310:  BLE             def_301EAE; jumptable 00301EAE default case
302312:  MOV             R0, R10; this
302314:  BLX             j__ZN23CAEPedSpeechAudioEntity25RequestPlayerConversationEP4CPed; CAEPedSpeechAudioEntity::RequestPlayerConversation(CPed *)
302318:  CMP             R0, #0
30231A:  BNE.W           loc_302B44
30231E:  BLX             rand; jumptable 00301EAE default case
302322:  BFC.W           R0, #0xC, #0x14
302326:  MOVW            R2, #0x7CC
30232A:  CMP             R0, #3
30232C:  BEQ.W           loc_302964
302330:  ADD.W           R8, R8, #1
302334:  CMP.W           R8, #7
302338:  BLT.W           loc_301C8A
30233C:  B               def_301B44; jumptable 00301B44 default case
30233E:  LDR.W           R0, =(_ZN25CPedToPlayerConversations6m_pPedE_ptr - 0x302346); jumptable 00301B44 case 1
302342:  ADD             R0, PC; _ZN25CPedToPlayerConversations6m_pPedE_ptr
302344:  LDR             R0, [R0]; CPedToPlayerConversations::m_pPed ...
302346:  LDR             R0, [R0]; CPedToPlayerConversations::m_pPed
302348:  CMP             R0, #0
30234A:  BEQ.W           loc_3024B8
30234E:  LDR.W           R0, =(_ZN25CPedToPlayerConversations11m_StartTimeE_ptr - 0x30235A)
302352:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30235C)
302356:  ADD             R0, PC; _ZN25CPedToPlayerConversations11m_StartTimeE_ptr
302358:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30235A:  LDR             R0, [R0]; CPedToPlayerConversations::m_StartTime ...
30235C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
30235E:  LDR             R0, [R0]; CPedToPlayerConversations::m_StartTime
302360:  LDR             R1, [R1]; int
302362:  ADD.W           R0, R0, #0xFA0
302366:  CMP             R1, R0
302368:  BLS.W           loc_302528
30236C:  LDR.W           R0, =(_ZN25CPedToPlayerConversations7m_StateE_ptr - 0x302376)
302370:  MOVS            R1, #0
302372:  ADD             R0, PC; _ZN25CPedToPlayerConversations7m_StateE_ptr
302374:  LDR             R0, [R0]; this
302376:  STR             R1, [R0]; CPedToPlayerConversations::m_State
302378:  BLX             j__ZN23CAEPedSpeechAudioEntity25ReleasePlayerConversationEv; CAEPedSpeechAudioEntity::ReleasePlayerConversation(void)
30237C:  LDR.W           R0, =(_ZN25CPedToPlayerConversations6m_pPedE_ptr - 0x302384)
302380:  ADD             R0, PC; _ZN25CPedToPlayerConversations6m_pPedE_ptr
302382:  LDR             R0, [R0]; CPedToPlayerConversations::m_pPed ...
302384:  LDR             R0, [R0]; this
302386:  BLX             j__ZN4CPed15EnablePedSpeechEv; CPed::EnablePedSpeech(void)
30238A:  LDR.W           R0, =(g_ikChainMan_ptr - 0x302394)
30238E:  MOV             R1, R4; CPed *
302390:  ADD             R0, PC; g_ikChainMan_ptr
302392:  LDR             R0, [R0]; g_ikChainMan ; this
302394:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
302398:  CBZ             R0, loc_3023AA
30239A:  LDR.W           R0, =(g_ikChainMan_ptr - 0x3023A6)
30239E:  MOV             R1, R4; CPed *
3023A0:  MOVS            R2, #0xFA; int
3023A2:  ADD             R0, PC; g_ikChainMan_ptr
3023A4:  LDR             R0, [R0]; g_ikChainMan ; this
3023A6:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
3023AA:  LDR.W           R0, =(_ZN25CPedToPlayerConversations6m_pPedE_ptr - 0x3023B6)
3023AE:  LDR.W           R2, =(g_ikChainMan_ptr - 0x3023B8)
3023B2:  ADD             R0, PC; _ZN25CPedToPlayerConversations6m_pPedE_ptr
3023B4:  ADD             R2, PC; g_ikChainMan_ptr
3023B6:  LDR             R0, [R0]; CPedToPlayerConversations::m_pPed ...
3023B8:  LDR             R1, [R0]; CPed *
3023BA:  LDR             R0, [R2]; g_ikChainMan ; this
3023BC:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
3023C0:  CMP             R0, #0
3023C2:  BEQ.W           def_301B44; jumptable 00301B44 default case
3023C6:  LDR.W           R0, =(_ZN25CPedToPlayerConversations6m_pPedE_ptr - 0x3023D2)
3023CA:  LDR.W           R1, =(g_ikChainMan_ptr - 0x3023D4)
3023CE:  ADD             R0, PC; _ZN25CPedToPlayerConversations6m_pPedE_ptr
3023D0:  ADD             R1, PC; g_ikChainMan_ptr
3023D2:  LDR             R2, [R0]; CPedToPlayerConversations::m_pPed ...
3023D4:  LDR             R0, [R1]; g_ikChainMan ; this
3023D6:  LDR             R1, [R2]; CPed *
3023D8:  MOVS            R2, #0xFA; int
3023DA:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
3023DE:  LDR.W           R0, =(_ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr - 0x3023E6)
3023E2:  ADD             R0, PC; _ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr
3023E4:  LDR             R0, [R0]; CPedToPlayerConversations::m_bPositiveOpening ...
3023E6:  LDRB            R0, [R0]; CPedToPlayerConversations::m_bPositiveOpening
3023E8:  CMP             R0, #0
3023EA:  BEQ.W           def_301B44; jumptable 00301B44 default case
3023EE:  LDR.W           R0, =(_ZN25CPedToPlayerConversations6m_pPedE_ptr - 0x3023F8)
3023F2:  MOVS            R1, #0
3023F4:  ADD             R0, PC; _ZN25CPedToPlayerConversations6m_pPedE_ptr
3023F6:  LDR             R0, [R0]; CPedToPlayerConversations::m_pPed ...
3023F8:  LDR             R0, [R0]; this
3023FA:  STRD.W          R1, R1, [SP,#0xC0+var_C0]; unsigned __int8
3023FE:  STR             R1, [SP,#0xC0+var_B8]; unsigned __int8
302400:  MOVS            R1, #0x38 ; '8'; unsigned __int16
302402:  MOVS            R2, #0; unsigned int
302404:  MOV.W           R3, #0x3F800000; float
302408:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
30240C:  B               def_301B44; jumptable 00301B44 default case
30240E:  LDR.W           R0, =(_ZN25CPedToPlayerConversations6m_pPedE_ptr - 0x302416); jumptable 00301B44 case 2
302412:  ADD             R0, PC; _ZN25CPedToPlayerConversations6m_pPedE_ptr
302414:  LDR             R0, [R0]; CPedToPlayerConversations::m_pPed ...
302416:  LDR             R0, [R0]; this
302418:  CMP             R0, #0
30241A:  BEQ             loc_3024E4
30241C:  LDR.W           R1, =(_ZN25CPedToPlayerConversations11m_StartTimeE_ptr - 0x302428)
302420:  LDR.W           R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30242A)
302424:  ADD             R1, PC; _ZN25CPedToPlayerConversations11m_StartTimeE_ptr
302426:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
302428:  LDR             R1, [R1]; CPedToPlayerConversations::m_StartTime ...
30242A:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
30242C:  LDR             R1, [R1]; CPedToPlayerConversations::m_StartTime
30242E:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
302430:  ADDW            R1, R1, #0xBB8
302434:  CMP             R2, R1
302436:  BLS.W           def_301B44; jumptable 00301B44 default case
30243A:  BLX             j__ZN4CPed13GetPedTalkingEv; CPed::GetPedTalking(void)
30243E:  CMP             R0, #0
302440:  BNE.W           def_301B44; jumptable 00301B44 default case
302444:  LDR.W           R0, =(_ZN25CPedToPlayerConversations6m_pPedE_ptr - 0x302454)
302448:  MOVS            R1, #0
30244A:  MOVS            R2, #1
30244C:  MOV.W           R3, #0x3F800000; float
302450:  ADD             R0, PC; _ZN25CPedToPlayerConversations6m_pPedE_ptr
302452:  LDR             R0, [R0]; CPedToPlayerConversations::m_pPed ...
302454:  LDR             R0, [R0]; this
302456:  STRD.W          R2, R1, [SP,#0xC0+var_C0]; unsigned __int8
30245A:  MOVS            R2, #0; unsigned int
30245C:  STR             R1, [SP,#0xC0+var_B8]; unsigned __int8
30245E:  MOVS            R1, #0x85; unsigned __int16
302460:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
302464:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x302474)
302468:  LDR.W           R1, =(_ZN25CPedToPlayerConversations7m_StateE_ptr - 0x302476)
30246C:  LDR.W           R2, =(_ZN25CPedToPlayerConversations11m_StartTimeE_ptr - 0x302478)
302470:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
302472:  ADD             R1, PC; _ZN25CPedToPlayerConversations7m_StateE_ptr
302474:  ADD             R2, PC; _ZN25CPedToPlayerConversations11m_StartTimeE_ptr
302476:  B               loc_30279E
302478:  LDR.W           R0, =(_ZN25CPedToPlayerConversations11m_StartTimeE_ptr - 0x302484); jumptable 00301B44 case 3
30247C:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x302486)
302480:  ADD             R0, PC; _ZN25CPedToPlayerConversations11m_StartTimeE_ptr
302482:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
302484:  LDR             R0, [R0]; CPedToPlayerConversations::m_StartTime ...
302486:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
302488:  LDR             R0, [R0]; CPedToPlayerConversations::m_StartTime
30248A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
30248C:  ADDW            R0, R0, #0x9C4
302490:  CMP             R1, R0
302492:  BHI             loc_3024A4
302494:  LDR.W           R0, =(_ZN25CPedToPlayerConversations6m_pPedE_ptr - 0x30249C)
302498:  ADD             R0, PC; _ZN25CPedToPlayerConversations6m_pPedE_ptr
30249A:  LDR             R0, [R0]; CPedToPlayerConversations::m_pPed ...
30249C:  LDR             R0, [R0]; this
30249E:  CMP             R0, #0
3024A0:  BNE.W           def_301B44; jumptable 00301B44 default case
3024A4:  ADD             SP, SP, #0x60 ; '`'
3024A6:  VPOP            {D8-D15}
3024AA:  ADD             SP, SP, #4
3024AC:  POP.W           {R8-R11}
3024B0:  POP.W           {R4-R7,LR}
3024B4:  B.W             _ZN25CPedToPlayerConversations15EndConversationEv; CPedToPlayerConversations::EndConversation(void)
3024B8:  LDR.W           R0, =(_ZN25CPedToPlayerConversations7m_StateE_ptr - 0x3024C2)
3024BC:  MOVS            R1, #0
3024BE:  ADD             R0, PC; _ZN25CPedToPlayerConversations7m_StateE_ptr
3024C0:  LDR             R0, [R0]; this
3024C2:  STR             R1, [R0]; CPedToPlayerConversations::m_State
3024C4:  BLX             j__ZN23CAEPedSpeechAudioEntity25ReleasePlayerConversationEv; CAEPedSpeechAudioEntity::ReleasePlayerConversation(void)
3024C8:  LDR.W           R0, =(g_ikChainMan_ptr - 0x3024D2)
3024CC:  MOV             R1, R4; CPed *
3024CE:  ADD             R0, PC; g_ikChainMan_ptr
3024D0:  LDR             R0, [R0]; g_ikChainMan ; this
3024D2:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
3024D6:  CMP             R0, #0
3024D8:  BEQ.W           def_301B44; jumptable 00301B44 default case
3024DC:  LDR.W           R0, =(g_ikChainMan_ptr - 0x3024E4)
3024E0:  ADD             R0, PC; g_ikChainMan_ptr
3024E2:  B               loc_30250E
3024E4:  LDR.W           R0, =(_ZN25CPedToPlayerConversations7m_StateE_ptr - 0x3024EE)
3024E8:  MOVS            R1, #0
3024EA:  ADD             R0, PC; _ZN25CPedToPlayerConversations7m_StateE_ptr
3024EC:  LDR             R0, [R0]; this
3024EE:  STR             R1, [R0]; CPedToPlayerConversations::m_State
3024F0:  BLX             j__ZN23CAEPedSpeechAudioEntity25ReleasePlayerConversationEv; CAEPedSpeechAudioEntity::ReleasePlayerConversation(void)
3024F4:  LDR.W           R0, =(g_ikChainMan_ptr - 0x3024FE)
3024F8:  MOV             R1, R4; CPed *
3024FA:  ADD             R0, PC; g_ikChainMan_ptr
3024FC:  LDR             R0, [R0]; g_ikChainMan ; this
3024FE:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
302502:  CMP             R0, #0
302504:  BEQ.W           def_301B44; jumptable 00301B44 default case
302508:  LDR.W           R0, =(g_ikChainMan_ptr - 0x302510)
30250C:  ADD             R0, PC; g_ikChainMan_ptr
30250E:  LDR             R0, [R0]; g_ikChainMan ; this
302510:  MOV             R1, R4; CPed *
302512:  MOVS            R2, #0xFA; int
302514:  ADD             SP, SP, #0x60 ; '`'
302516:  VPOP            {D8-D15}
30251A:  ADD             SP, SP, #4
30251C:  POP.W           {R8-R11}
302520:  POP.W           {R4-R7,LR}
302524:  B.W             sub_1A0F0C
302528:  MOVS            R0, #0; this
30252A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
30252E:  BLX             j__ZN4CPad23ConversationYesJustDownEv; CPad::ConversationYesJustDown(void)
302532:  CMP             R0, #1
302534:  BNE             loc_302578
302536:  LDR.W           R0, =(_ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr - 0x30253E)
30253A:  ADD             R0, PC; _ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr
30253C:  LDR             R0, [R0]; CPedToPlayerConversations::m_bPositiveOpening ...
30253E:  LDRB            R0, [R0]; CPedToPlayerConversations::m_bPositiveOpening
302540:  CMP             R0, #0
302542:  BEQ             loc_3025B2
302544:  LDR.W           R0, =(_ZN25CPedToPlayerConversations7m_TopicE_ptr - 0x30254C)
302548:  ADD             R0, PC; _ZN25CPedToPlayerConversations7m_TopicE_ptr
30254A:  LDR             R0, [R0]; CPedToPlayerConversations::m_Topic ...
30254C:  LDR             R0, [R0]; CPedToPlayerConversations::m_Topic
30254E:  CMP             R0, #9; switch 10 cases
302550:  BHI.W           def_302554; jumptable 00302554 default case
302554:  TBH.W           [PC,R0,LSL#1]; switch jump
302558:  DCW 0xA; jump table for switch statement
30255A:  DCW 0xEA
30255C:  DCW 0xF0
30255E:  DCW 0xF6
302560:  DCW 0xFC
302562:  DCW 0x102
302564:  DCW 0x108
302566:  DCW 0x10E
302568:  DCW 0x131
30256A:  DCW 0x18C
30256C:  MOVS            R0, #0; jumptable 00302554 case 0
30256E:  MOVS            R1, #1
302570:  STRD.W          R1, R0, [SP,#0xC0+var_C0]
302574:  MOVS            R1, #0x81
302576:  B               loc_30277E
302578:  MOVS            R0, #0; this
30257A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
30257E:  BLX             j__ZN4CPad22ConversationNoJustDownEv; CPad::ConversationNoJustDown(void)
302582:  CMP             R0, #1
302584:  BNE.W           def_301B44; jumptable 00301B44 default case
302588:  LDR.W           R0, =(_ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr - 0x302590)
30258C:  ADD             R0, PC; _ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr
30258E:  LDR             R0, [R0]; CPedToPlayerConversations::m_bPositiveOpening ...
302590:  LDRB            R0, [R0]; CPedToPlayerConversations::m_bPositiveOpening
302592:  CBZ             R0, loc_3025D4
302594:  LDR.W           R0, =(_ZN25CPedToPlayerConversations7m_TopicE_ptr - 0x30259C)
302598:  ADD             R0, PC; _ZN25CPedToPlayerConversations7m_TopicE_ptr
30259A:  LDR             R0, [R0]; CPedToPlayerConversations::m_Topic ...
30259C:  LDR             R0, [R0]; CPedToPlayerConversations::m_Topic
30259E:  CMP             R0, #9
3025A0:  BEQ             loc_302602
3025A2:  CMP             R0, #8
3025A4:  BNE             loc_30261C
3025A6:  MOVS            R0, #0
3025A8:  MOVS            R1, #1
3025AA:  STRD.W          R1, R0, [SP,#0xC0+var_C0]
3025AE:  MOVS            R1, #0xEB
3025B0:  B               loc_30260C
3025B2:  LDR.W           R0, =(_ZN25CPedToPlayerConversations6m_pPedE_ptr - 0x3025BA)
3025B6:  ADD             R0, PC; _ZN25CPedToPlayerConversations6m_pPedE_ptr
3025B8:  LDR             R0, [R0]; CPedToPlayerConversations::m_pPed ...
3025BA:  LDR             R0, [R0]; CPedToPlayerConversations::m_pPed
3025BC:  LDR.W           R0, [R0,#0x59C]
3025C0:  CMP             R0, #0x16
3025C2:  IT NE
3025C4:  CMPNE           R0, #5
3025C6:  BNE             loc_3025F6
3025C8:  MOVS            R0, #0
3025CA:  MOVS            R1, #1
3025CC:  STRD.W          R1, R0, [SP,#0xC0+var_C0]
3025D0:  MOVS            R1, #0x83
3025D2:  B               loc_30277E
3025D4:  LDR.W           R0, =(_ZN25CPedToPlayerConversations6m_pPedE_ptr - 0x3025DC)
3025D8:  ADD             R0, PC; _ZN25CPedToPlayerConversations6m_pPedE_ptr
3025DA:  LDR             R0, [R0]; CPedToPlayerConversations::m_pPed ...
3025DC:  LDR             R0, [R0]; CPedToPlayerConversations::m_pPed
3025DE:  LDR.W           R0, [R0,#0x59C]
3025E2:  CMP             R0, #0x16
3025E4:  IT NE
3025E6:  CMPNE           R0, #5
3025E8:  BNE             loc_302640
3025EA:  MOVS            R0, #0
3025EC:  MOVS            R1, #1
3025EE:  STRD.W          R1, R0, [SP,#0xC0+var_C0]
3025F2:  MOVS            R1, #0x87
3025F4:  B               loc_30264A
3025F6:  MOVS            R0, #0
3025F8:  MOVS            R1, #1
3025FA:  STRD.W          R1, R0, [SP,#0xC0+var_C0]
3025FE:  MOVS            R1, #0x84
302600:  B               loc_30277E
302602:  MOVS            R0, #0
302604:  MOVS            R1, #1
302606:  STRD.W          R1, R0, [SP,#0xC0+var_C0]; unsigned __int8
30260A:  MOVS            R1, #0x6A ; 'j'; unsigned __int16
30260C:  STR             R0, [SP,#0xC0+var_B8]; unsigned __int8
30260E:  MOV             R0, R4; this
302610:  MOVS            R2, #0; unsigned int
302612:  MOV.W           R3, #0x3F800000; float
302616:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
30261A:  B               loc_3024A4
30261C:  LDR.W           R0, =(_ZN25CPedToPlayerConversations6m_pPedE_ptr - 0x302624)
302620:  ADD             R0, PC; _ZN25CPedToPlayerConversations6m_pPedE_ptr
302622:  LDR             R0, [R0]; CPedToPlayerConversations::m_pPed ...
302624:  LDR             R0, [R0]; CPedToPlayerConversations::m_pPed
302626:  LDR.W           R0, [R0,#0x59C]
30262A:  CMP             R0, #0x16
30262C:  IT NE
30262E:  CMPNE           R0, #5
302630:  BNE.W           loc_30293A
302634:  MOVS            R0, #0
302636:  MOVS            R1, #1
302638:  STRD.W          R1, R0, [SP,#0xC0+var_C0]
30263C:  MOVS            R1, #0x83
30263E:  B               loc_302944
302640:  MOVS            R0, #0
302642:  MOVS            R1, #1
302644:  STRD.W          R1, R0, [SP,#0xC0+var_C0]; unsigned __int8
302648:  MOVS            R1, #0x88; unsigned __int16
30264A:  STR             R0, [SP,#0xC0+var_B8]; unsigned __int8
30264C:  MOV             R0, R4; this
30264E:  MOVS            R2, #0; unsigned int
302650:  MOV.W           R3, #0x3F800000; float
302654:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
302658:  LDR.W           R0, =(_ZN25CPedToPlayerConversations6m_pPedE_ptr - 0x302660)
30265C:  ADD             R0, PC; _ZN25CPedToPlayerConversations6m_pPedE_ptr
30265E:  LDR             R0, [R0]; CPedToPlayerConversations::m_pPed ...
302660:  LDR             R0, [R0]; CPedToPlayerConversations::m_pPed
302662:  LDR.W           R0, [R0,#0x59C]
302666:  CMP             R0, #8
302668:  BEQ             loc_302718
30266A:  BLX             rand
30266E:  UXTH            R0, R0
302670:  VLDR            S2, =0.000015259
302674:  VMOV            S0, R0
302678:  VCVT.F32.S32    S0, S0
30267C:  VMUL.F32        S0, S0, S2
302680:  VLDR            S2, =100.0
302684:  VMUL.F32        S0, S0, S2
302688:  VCVT.S32.F32    S0, S0
30268C:  VMOV            R0, S0
302690:  CMP             R0, #0x27 ; '''
302692:  BGT             loc_302718
302694:  MOVS            R0, #dword_40; this
302696:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
30269A:  MOV             R5, R0
30269C:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
3026A0:  MOVS            R0, #dword_20; this
3026A2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3026A6:  MOV             R6, R0
3026A8:  MOV.W           R0, #0x41000000
3026AC:  STR             R0, [SP,#0xC0+var_C0]; float
3026AE:  MOV             R0, R6; this
3026B0:  MOV.W           R1, #0x7D0; int
3026B4:  MOVS            R2, #0; bool
3026B6:  MOVS            R3, #0; bool
3026B8:  MOV.W           R8, #0
3026BC:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
3026C0:  MOV             R0, R5; this
3026C2:  MOV             R1, R6; CTask *
3026C4:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
3026C8:  MOVS            R0, #dword_38; this
3026CA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3026CE:  MOV             R1, R4; CPed *
3026D0:  MOV.W           R2, #0xFFFFFFFF; int
3026D4:  MOVS            R3, #0; unsigned int
3026D6:  STRD.W          R8, R8, [SP,#0xC0+var_C0]; unsigned int
3026DA:  MOV             R6, R0
3026DC:  STR.W           R8, [SP,#0xC0+var_B8]; int
3026E0:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
3026E4:  MOV             R0, R5; this
3026E6:  MOV             R1, R6; CTask *
3026E8:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
3026EC:  ADD             R4, SP, #0xC0+var_78
3026EE:  MOVS            R1, #3; int
3026F0:  MOV             R2, R5; CTask *
3026F2:  MOVS            R3, #0; bool
3026F4:  MOV             R0, R4; this
3026F6:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
3026FA:  LDR.W           R0, =(_ZN25CPedToPlayerConversations6m_pPedE_ptr - 0x302706)
3026FE:  MOV             R1, R4; CEvent *
302700:  MOVS            R2, #0; bool
302702:  ADD             R0, PC; _ZN25CPedToPlayerConversations6m_pPedE_ptr
302704:  LDR             R0, [R0]; CPedToPlayerConversations::m_pPed ...
302706:  LDR             R0, [R0]; CPedToPlayerConversations::m_pPed
302708:  LDR.W           R0, [R0,#0x440]
30270C:  ADDS            R0, #0x68 ; 'h'; this
30270E:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
302712:  MOV             R0, R4; this
302714:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
302718:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x302728)
30271C:  LDR.W           R1, =(_ZN25CPedToPlayerConversations7m_StateE_ptr - 0x30272A)
302720:  LDR.W           R2, =(_ZN25CPedToPlayerConversations11m_StartTimeE_ptr - 0x30272C)
302724:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
302726:  ADD             R1, PC; _ZN25CPedToPlayerConversations7m_StateE_ptr
302728:  ADD             R2, PC; _ZN25CPedToPlayerConversations11m_StartTimeE_ptr
30272A:  B               loc_30279E
30272C:  MOVS            R0, #0; jumptable 00302554 case 1
30272E:  MOVS            R1, #1
302730:  STRD.W          R1, R0, [SP,#0xC0+var_C0]
302734:  MOVS            R1, #0x82
302736:  B               loc_30277E
302738:  MOVS            R0, #0; jumptable 00302554 case 2
30273A:  MOVS            R1, #1
30273C:  STRD.W          R1, R0, [SP,#0xC0+var_C0]
302740:  MOVS            R1, #0x86
302742:  B               loc_30277E
302744:  MOVS            R0, #0; jumptable 00302554 case 3
302746:  MOVS            R1, #1
302748:  STRD.W          R1, R0, [SP,#0xC0+var_C0]
30274C:  MOVS            R1, #0x89
30274E:  B               loc_30277E
302750:  MOVS            R0, #0; jumptable 00302554 case 4
302752:  MOVS            R1, #1
302754:  STRD.W          R1, R0, [SP,#0xC0+var_C0]
302758:  MOVS            R1, #0x8A
30275A:  B               loc_30277E
30275C:  MOVS            R0, #0; jumptable 00302554 case 5
30275E:  MOVS            R1, #1
302760:  STRD.W          R1, R0, [SP,#0xC0+var_C0]
302764:  MOVS            R1, #0x8B
302766:  B               loc_30277E
302768:  MOVS            R0, #0; jumptable 00302554 case 6
30276A:  MOVS            R1, #1
30276C:  STRD.W          R1, R0, [SP,#0xC0+var_C0]
302770:  MOVS            R1, #0x8C
302772:  B               loc_30277E
302774:  MOVS            R0, #0; jumptable 00302554 case 7
302776:  MOVS            R1, #1
302778:  STRD.W          R1, R0, [SP,#0xC0+var_C0]; unsigned __int8
30277C:  MOVS            R1, #0xEA; unsigned __int16
30277E:  STR             R0, [SP,#0xC0+var_B8]; unsigned __int8
302780:  MOV             R0, R4; this
302782:  MOVS            R2, #0; unsigned int
302784:  MOV.W           R3, #0x3F800000; float
302788:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
30278C:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30279C); jumptable 00302554 default case
302790:  LDR.W           R1, =(_ZN25CPedToPlayerConversations7m_StateE_ptr - 0x30279E)
302794:  LDR.W           R2, =(_ZN25CPedToPlayerConversations11m_StartTimeE_ptr - 0x3027A0)
302798:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30279A:  ADD             R1, PC; _ZN25CPedToPlayerConversations7m_StateE_ptr
30279C:  ADD             R2, PC; _ZN25CPedToPlayerConversations11m_StartTimeE_ptr
30279E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3027A0:  MOVS            R3, #3
3027A2:  LDR             R1, [R1]; CPedToPlayerConversations::m_State ...
3027A4:  LDR             R2, [R2]; CPedToPlayerConversations::m_StartTime ...
3027A6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3027A8:  STR             R3, [R1]; CPedToPlayerConversations::m_State
3027AA:  STR             R0, [R2]; CPedToPlayerConversations::m_StartTime
3027AC:  ADD             SP, SP, #0x60 ; '`'; jumptable 00301B44 default case
3027AE:  VPOP            {D8-D15}
3027B2:  ADD             SP, SP, #4
3027B4:  POP.W           {R8-R11}
3027B8:  POP             {R4-R7,PC}
3027BA:  MOV.W           R8, #0; jumptable 00302554 case 8
3027BE:  MOVS            R0, #1
3027C0:  STRD.W          R0, R8, [SP,#0xC0+var_C0]; unsigned __int8
3027C4:  MOV             R0, R4; this
3027C6:  MOVS            R1, #0xEC; unsigned __int16
3027C8:  MOVS            R2, #0; unsigned int
3027CA:  MOV.W           R3, #0x3F800000; float
3027CE:  STR.W           R8, [SP,#0xC0+var_B8]; unsigned __int8
3027D2:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
3027D6:  BLX             rand
3027DA:  UXTH            R0, R0
3027DC:  VLDR            S2, =0.000015259
3027E0:  VMOV            S0, R0
3027E4:  VCVT.F32.S32    S0, S0
3027E8:  VMUL.F32        S0, S0, S2
3027EC:  VLDR            S2, =100.0
3027F0:  VMUL.F32        S0, S0, S2
3027F4:  VCVT.S32.F32    S0, S0
3027F8:  VMOV            R0, S0
3027FC:  CMP             R0, #0x4A ; 'J'
3027FE:  BGT.W           loc_302934
302802:  MOVS            R0, #dword_40; this
302804:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
302808:  MOV             R5, R0
30280A:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
30280E:  MOVS            R0, #dword_20; this
302810:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
302814:  MOV             R6, R0
302816:  MOV.W           R0, #0x41000000
30281A:  STR             R0, [SP,#0xC0+var_C0]; float
30281C:  MOV             R0, R6; this
30281E:  MOV.W           R1, #0x7D0; int
302822:  MOVS            R2, #0; bool
302824:  MOVS            R3, #0; bool
302826:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
30282A:  MOV             R0, R5; this
30282C:  MOV             R1, R6; CTask *
30282E:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
302832:  MOVS            R0, #dword_38; this
302834:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
302838:  MOV             R1, R4; CPed *
30283A:  MOV.W           R2, #0xFFFFFFFF; int
30283E:  MOVS            R3, #0; unsigned int
302840:  STRD.W          R8, R8, [SP,#0xC0+var_C0]; unsigned int
302844:  MOV             R6, R0
302846:  STR.W           R8, [SP,#0xC0+var_B8]; int
30284A:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
30284E:  MOV             R0, R5; this
302850:  MOV             R1, R6; CTask *
302852:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
302856:  ADD             R4, SP, #0xC0+var_78
302858:  MOVS            R1, #3; int
30285A:  MOV             R2, R5; CTask *
30285C:  MOVS            R3, #0; bool
30285E:  MOV             R0, R4; this
302860:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
302864:  LDR.W           R0, =(_ZN25CPedToPlayerConversations6m_pPedE_ptr - 0x302870)
302868:  MOV             R1, R4
30286A:  MOVS            R2, #0
30286C:  ADD             R0, PC; _ZN25CPedToPlayerConversations6m_pPedE_ptr
30286E:  B               loc_302920
302870:  MOV.W           R8, #0; jumptable 00302554 case 9
302874:  MOVS            R0, #1
302876:  STRD.W          R0, R8, [SP,#0xC0+var_C0]; unsigned __int8
30287A:  MOV             R0, R4; this
30287C:  MOVS            R1, #0x6B ; 'k'; unsigned __int16
30287E:  MOVS            R2, #0; unsigned int
302880:  MOV.W           R3, #0x3F800000; float
302884:  STR.W           R8, [SP,#0xC0+var_B8]; unsigned __int8
302888:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
30288C:  BLX             rand
302890:  UXTH            R0, R0
302892:  VLDR            S2, =0.000015259
302896:  VMOV            S0, R0
30289A:  VCVT.F32.S32    S0, S0
30289E:  VMUL.F32        S0, S0, S2
3028A2:  VLDR            S2, =100.0
3028A6:  VMUL.F32        S0, S0, S2
3028AA:  VCVT.S32.F32    S0, S0
3028AE:  VMOV            R0, S0
3028B2:  CMP             R0, #0x4A ; 'J'
3028B4:  BGT             loc_302934
3028B6:  MOVS            R0, #dword_40; this
3028B8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3028BC:  MOV             R5, R0
3028BE:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
3028C2:  MOVS            R0, #dword_20; this
3028C4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3028C8:  MOV             R6, R0
3028CA:  MOV.W           R0, #0x41000000
3028CE:  STR             R0, [SP,#0xC0+var_C0]; float
3028D0:  MOV             R0, R6; this
3028D2:  MOV.W           R1, #0x7D0; int
3028D6:  MOVS            R2, #0; bool
3028D8:  MOVS            R3, #0; bool
3028DA:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
3028DE:  MOV             R0, R5; this
3028E0:  MOV             R1, R6; CTask *
3028E2:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
3028E6:  MOVS            R0, #dword_38; this
3028E8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3028EC:  MOV             R1, R4; CPed *
3028EE:  MOV.W           R2, #0xFFFFFFFF; int
3028F2:  MOVS            R3, #0; unsigned int
3028F4:  STRD.W          R8, R8, [SP,#0xC0+var_C0]; unsigned int
3028F8:  MOV             R6, R0
3028FA:  STR.W           R8, [SP,#0xC0+var_B8]; int
3028FE:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
302902:  MOV             R0, R5; this
302904:  MOV             R1, R6; CTask *
302906:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
30290A:  ADD             R4, SP, #0xC0+var_78
30290C:  MOVS            R1, #3; int
30290E:  MOV             R2, R5; CTask *
302910:  MOVS            R3, #0; bool
302912:  MOV             R0, R4; this
302914:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
302918:  LDR             R0, =(_ZN25CPedToPlayerConversations6m_pPedE_ptr - 0x302922)
30291A:  MOV             R1, R4; CEvent *
30291C:  MOVS            R2, #0; bool
30291E:  ADD             R0, PC; _ZN25CPedToPlayerConversations6m_pPedE_ptr
302920:  LDR             R0, [R0]; CPedToPlayerConversations::m_pPed ...
302922:  LDR             R0, [R0]; CPedToPlayerConversations::m_pPed
302924:  LDR.W           R0, [R0,#0x440]
302928:  ADDS            R0, #0x68 ; 'h'; this
30292A:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
30292E:  MOV             R0, R4; this
302930:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
302934:  BLX             j__ZN25CPedToPlayerConversations15EndConversationEv; CPedToPlayerConversations::EndConversation(void)
302938:  B               def_301B44; jumptable 00301B44 default case
30293A:  MOVS            R0, #0
30293C:  MOVS            R1, #1
30293E:  STRD.W          R1, R0, [SP,#0xC0+var_C0]; unsigned __int8
302942:  MOVS            R1, #0x84; unsigned __int16
302944:  STR             R0, [SP,#0xC0+var_B8]; unsigned __int8
302946:  MOV             R0, R4; this
302948:  MOVS            R2, #0; unsigned int
30294A:  MOV.W           R3, #0x3F800000; float
30294E:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
302952:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30295C)
302954:  MOVS            R3, #2
302956:  LDR             R1, =(_ZN25CPedToPlayerConversations7m_StateE_ptr - 0x302960)
302958:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30295A:  LDR             R2, =(_ZN25CPedToPlayerConversations11m_StartTimeE_ptr - 0x302964)
30295C:  ADD             R1, PC; _ZN25CPedToPlayerConversations7m_StateE_ptr
30295E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
302960:  ADD             R2, PC; _ZN25CPedToPlayerConversations11m_StartTimeE_ptr
302962:  B               loc_3027A2
302964:  MOVS            R0, #0
302966:  MOVS            R1, #0x58 ; 'X'
302968:  STRD.W          R0, R0, [SP,#0xC0+var_C0]
30296C:  STR             R0, [SP,#0xC0+var_B8]
30296E:  MOV             R0, R10
302970:  B               loc_302402
302972:  MOVS            R0, #0
302974:  MOVS            R6, #1
302976:  STRD.W          R6, R0, [SP,#0xC0+var_C0]; unsigned __int8
30297A:  MOVS            R1, #0xFB; unsigned __int16
30297C:  STR             R0, [SP,#0xC0+var_B8]; unsigned __int8
30297E:  MOV             R0, R10; this
302980:  MOVS            R2, #0; unsigned int
302982:  MOV.W           R3, #0x3F800000; float
302986:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
30298A:  LDR             R0, =(_ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr - 0x302990)
30298C:  ADD             R0, PC; _ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr
30298E:  B               loc_3029AC
302990:  MOVS            R0, #0
302992:  MOVS            R6, #1
302994:  STRD.W          R6, R0, [SP,#0xC0+var_C0]; unsigned __int8
302998:  MOVS            R1, #0xFC; unsigned __int16
30299A:  STR             R0, [SP,#0xC0+var_B8]; unsigned __int8
30299C:  MOV             R0, R10; this
30299E:  MOVS            R2, #0; unsigned int
3029A0:  MOV.W           R3, #0x3F800000; float
3029A4:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
3029A8:  LDR             R0, =(_ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr - 0x3029AE)
3029AA:  ADD             R0, PC; _ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr
3029AC:  LDR             R0, [R0]; CPedToPlayerConversations::m_bPositiveOpening ...
3029AE:  STRB            R6, [R0]; CPedToPlayerConversations::m_bPositiveOpening
3029B0:  B               loc_302B64
3029B2:  LDR             R0, =(_ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr - 0x3029BA)
3029B4:  MOVS            R1, #1
3029B6:  ADD             R0, PC; _ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr
3029B8:  LDR             R0, [R0]; CPedToPlayerConversations::m_bPositiveOpening ...
3029BA:  STRB            R1, [R0]; CPedToPlayerConversations::m_bPositiveOpening
3029BC:  MOVS            R0, #0
3029BE:  STRD.W          R1, R0, [SP,#0xC0+var_C0]
3029C2:  MOVS            R1, #0x3A ; ':'
3029C4:  B               loc_302B56
3029C6:  LDR             R0, =(_ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr - 0x3029CE)
3029C8:  MOVS            R1, #1
3029CA:  ADD             R0, PC; _ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr
3029CC:  LDR             R0, [R0]; CPedToPlayerConversations::m_bPositiveOpening ...
3029CE:  STRB            R1, [R0]; CPedToPlayerConversations::m_bPositiveOpening
3029D0:  MOVS            R0, #0
3029D2:  STRD.W          R1, R0, [SP,#0xC0+var_C0]
3029D6:  MOVS            R1, #0x3C ; '<'
3029D8:  B               loc_302B56
3029DA:  LDR             R0, =(_ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr - 0x3029E2)
3029DC:  MOVS            R1, #1
3029DE:  ADD             R0, PC; _ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr
3029E0:  LDR             R0, [R0]; CPedToPlayerConversations::m_bPositiveOpening ...
3029E2:  STRB            R1, [R0]; CPedToPlayerConversations::m_bPositiveOpening
3029E4:  MOVS            R0, #0
3029E6:  STRD.W          R1, R0, [SP,#0xC0+var_C0]
3029EA:  MOVS            R1, #0x3D ; '='
3029EC:  B               loc_302B56
3029EE:  LDR             R0, =(_ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr - 0x3029F6)
3029F0:  MOVS            R1, #1
3029F2:  ADD             R0, PC; _ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr
3029F4:  LDR             R0, [R0]; CPedToPlayerConversations::m_bPositiveOpening ...
3029F6:  STRB            R1, [R0]; CPedToPlayerConversations::m_bPositiveOpening
3029F8:  MOVS            R0, #0
3029FA:  STRD.W          R1, R0, [SP,#0xC0+var_C0]
3029FE:  MOVS            R1, #0x3E ; '>'
302A00:  B               loc_302B56
302A02:  LDR             R0, =(_ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr - 0x302A0A)
302A04:  MOVS            R1, #1
302A06:  ADD             R0, PC; _ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr
302A08:  LDR             R0, [R0]; CPedToPlayerConversations::m_bPositiveOpening ...
302A0A:  STRB            R1, [R0]; CPedToPlayerConversations::m_bPositiveOpening
302A0C:  MOVS            R0, #0
302A0E:  STRD.W          R1, R0, [SP,#0xC0+var_C0]
302A12:  MOVS            R1, #0x3B ; ';'
302A14:  B               loc_302B56
302A16:  ALIGN 4
302A18:  DCFS 0.000015259
302A1C:  DCFS 100.0
302A20:  DCD dword_7A1130 - 0x301B30
302A24:  DCD _ZN25CPedToPlayerConversations7m_StateE_ptr - 0x301B3C
302A28:  LDR             R0, =(_ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr - 0x302A30)
302A2A:  MOVS            R1, #1
302A2C:  ADD             R0, PC; _ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr
302A2E:  LDR             R0, [R0]; CPedToPlayerConversations::m_bPositiveOpening ...
302A30:  STRB            R1, [R0]; CPedToPlayerConversations::m_bPositiveOpening
302A32:  MOVS            R0, #0
302A34:  STRD.W          R1, R0, [SP,#0xC0+var_C0]
302A38:  MOVS            R1, #0x3F ; '?'
302A3A:  B               loc_302B56
302A3C:  LDR             R0, =(_ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr - 0x302A44)
302A3E:  MOVS            R1, #1
302A40:  ADD             R0, PC; _ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr
302A42:  LDR             R0, [R0]; CPedToPlayerConversations::m_bPositiveOpening ...
302A44:  STRB            R1, [R0]; CPedToPlayerConversations::m_bPositiveOpening
302A46:  MOVS            R0, #0
302A48:  STRD.W          R1, R0, [SP,#0xC0+var_C0]
302A4C:  MOVS            R1, #0x40 ; '@'
302A4E:  B               loc_302B56
302A50:  DCD _ZN25CPedToPlayerConversations30m_TimeOfLastPlayerConversationE_ptr - 0x301B60
302A54:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x301B62
302A58:  DCD _ZN14CConversations16m_aConversationsE_ptr - 0x301B9E
302A5C:  DCD _ZN9CGangWars15bGangWarsActiveE_ptr - 0x301C06
302A60:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x301C1C
302A64:  DCD dword_7A1134 - 0x301C30
302A68:  DCD _ZN25CPedToPlayerConversations7m_TopicE_ptr - 0x301C50
302A6C:  DCD _ZN25CPedToPlayerConversations7m_TopicE_ptr - 0x301C66
302A70:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x301C74
302A74:  DCD _ZN8CWeather4WindE_ptr - 0x301C7E
302A78:  DCD _ZN6CClock18ms_nGameClockHoursE_ptr - 0x301C88
302A7C:  DCD dword_7A1134 - 0x301D48
302A80:  DCD dword_7A1134 - 0x301E2E
302A84:  LDR             R0, =(_ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr - 0x302A8C)
302A86:  MOVS            R1, #0
302A88:  ADD             R0, PC; _ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr
302A8A:  LDR             R0, [R0]; CPedToPlayerConversations::m_bPositiveOpening ...
302A8C:  STRB            R1, [R0]; CPedToPlayerConversations::m_bPositiveOpening
302A8E:  MOVS            R0, #1
302A90:  STRD.W          R0, R1, [SP,#0xC0+var_C0]
302A94:  MOV             R0, R10
302A96:  STR             R1, [SP,#0xC0+var_B8]
302A98:  MOVS            R1, #0x31 ; '1'
302A9A:  B               loc_302B5A
302A9C:  LDR             R0, =(_ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr - 0x302AA4)
302A9E:  MOVS            R1, #0
302AA0:  ADD             R0, PC; _ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr
302AA2:  LDR             R0, [R0]; CPedToPlayerConversations::m_bPositiveOpening ...
302AA4:  STRB            R1, [R0]; CPedToPlayerConversations::m_bPositiveOpening
302AA6:  MOVS            R0, #1
302AA8:  STRD.W          R0, R1, [SP,#0xC0+var_C0]
302AAC:  MOV             R0, R10
302AAE:  STR             R1, [SP,#0xC0+var_B8]
302AB0:  MOVS            R1, #0x33 ; '3'
302AB2:  B               loc_302B5A
302AB4:  LDR             R0, =(_ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr - 0x302ABC)
302AB6:  MOVS            R1, #0
302AB8:  ADD             R0, PC; _ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr
302ABA:  LDR             R0, [R0]; CPedToPlayerConversations::m_bPositiveOpening ...
302ABC:  STRB            R1, [R0]; CPedToPlayerConversations::m_bPositiveOpening
302ABE:  MOVS            R0, #1
302AC0:  STRD.W          R0, R1, [SP,#0xC0+var_C0]
302AC4:  MOV             R0, R10
302AC6:  STR             R1, [SP,#0xC0+var_B8]
302AC8:  MOVS            R1, #0x34 ; '4'
302ACA:  B               loc_302B5A
302ACC:  LDR             R0, =(_ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr - 0x302AD4)
302ACE:  MOVS            R1, #0
302AD0:  ADD             R0, PC; _ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr
302AD2:  LDR             R0, [R0]; CPedToPlayerConversations::m_bPositiveOpening ...
302AD4:  STRB            R1, [R0]; CPedToPlayerConversations::m_bPositiveOpening
302AD6:  MOVS            R0, #1
302AD8:  STRD.W          R0, R1, [SP,#0xC0+var_C0]
302ADC:  MOV             R0, R10
302ADE:  STR             R1, [SP,#0xC0+var_B8]
302AE0:  MOVS            R1, #0x35 ; '5'
302AE2:  B               loc_302B5A
302AE4:  LDR             R0, =(_ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr - 0x302AEC)
302AE6:  MOVS            R1, #0
302AE8:  ADD             R0, PC; _ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr
302AEA:  LDR             R0, [R0]; CPedToPlayerConversations::m_bPositiveOpening ...
302AEC:  STRB            R1, [R0]; CPedToPlayerConversations::m_bPositiveOpening
302AEE:  MOVS            R0, #1
302AF0:  STRD.W          R0, R1, [SP,#0xC0+var_C0]
302AF4:  MOV             R0, R10
302AF6:  STR             R1, [SP,#0xC0+var_B8]
302AF8:  MOVS            R1, #0x37 ; '7'
302AFA:  B               loc_302B5A
302AFC:  LDR             R0, =(_ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr - 0x302B04)
302AFE:  MOVS            R1, #0
302B00:  ADD             R0, PC; _ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr
302B02:  LDR             R0, [R0]; CPedToPlayerConversations::m_bPositiveOpening ...
302B04:  STRB            R1, [R0]; CPedToPlayerConversations::m_bPositiveOpening
302B06:  MOVS            R0, #1
302B08:  STRD.W          R0, R1, [SP,#0xC0+var_C0]
302B0C:  MOV             R0, R10
302B0E:  STR             R1, [SP,#0xC0+var_B8]
302B10:  MOVS            R1, #0x32 ; '2'
302B12:  B               loc_302B5A
302B14:  LDR             R0, =(_ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr - 0x302B1C)
302B16:  MOVS            R1, #0
302B18:  ADD             R0, PC; _ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr
302B1A:  LDR             R0, [R0]; CPedToPlayerConversations::m_bPositiveOpening ...
302B1C:  STRB            R1, [R0]; CPedToPlayerConversations::m_bPositiveOpening
302B1E:  MOVS            R0, #1
302B20:  STRD.W          R0, R1, [SP,#0xC0+var_C0]
302B24:  MOV             R0, R10
302B26:  STR             R1, [SP,#0xC0+var_B8]
302B28:  MOVS            R1, #0x30 ; '0'
302B2A:  B               loc_302B5A
302B2C:  LDR             R0, =(_ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr - 0x302B34)
302B2E:  MOVS            R1, #0
302B30:  ADD             R0, PC; _ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr
302B32:  LDR             R0, [R0]; CPedToPlayerConversations::m_bPositiveOpening ...
302B34:  STRB            R1, [R0]; CPedToPlayerConversations::m_bPositiveOpening
302B36:  MOVS            R0, #1
302B38:  STRD.W          R0, R1, [SP,#0xC0+var_C0]
302B3C:  MOV             R0, R10
302B3E:  STR             R1, [SP,#0xC0+var_B8]
302B40:  MOVS            R1, #0x36 ; '6'
302B42:  B               loc_302B5A
302B44:  LDR             R0, =(_ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr - 0x302B4C)
302B46:  MOVS            R1, #1
302B48:  ADD             R0, PC; _ZN25CPedToPlayerConversations18m_bPositiveOpeningE_ptr
302B4A:  LDR             R0, [R0]; CPedToPlayerConversations::m_bPositiveOpening ...
302B4C:  STRB            R1, [R0]; CPedToPlayerConversations::m_bPositiveOpening
302B4E:  MOVS            R0, #0
302B50:  STRD.W          R1, R0, [SP,#0xC0+var_C0]; unsigned __int8
302B54:  MOVS            R1, #0x39 ; '9'; unsigned __int16
302B56:  STR             R0, [SP,#0xC0+var_B8]; unsigned __int8
302B58:  MOV             R0, R10; this
302B5A:  MOVS            R2, #0; unsigned int
302B5C:  MOV.W           R3, #0x3F800000; float
302B60:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
302B64:  LDR             R0, =(_ZN25CPedToPlayerConversations6m_pPedE_ptr - 0x302B6C)
302B66:  LDR             R2, =(_ZN25CPedToPlayerConversations7m_StateE_ptr - 0x302B6E)
302B68:  ADD             R0, PC; _ZN25CPedToPlayerConversations6m_pPedE_ptr
302B6A:  ADD             R2, PC; _ZN25CPedToPlayerConversations7m_StateE_ptr
302B6C:  LDR             R1, [R0]; CEntity **
302B6E:  LDR             R0, [R2]; CPedToPlayerConversations::m_State ...
302B70:  MOVS            R2, #1
302B72:  STR.W           R10, [R1]; CPedToPlayerConversations::m_pPed
302B76:  STR             R2, [R0]; CPedToPlayerConversations::m_State
302B78:  MOV             R0, R10; this
302B7A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
302B7E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x302B8C)
302B80:  MOV.W           R8, #0
302B84:  LDR             R1, =(_ZN25CPedToPlayerConversations30m_TimeOfLastPlayerConversationE_ptr - 0x302B8E)
302B86:  LDR             R2, =(_ZN25CPedToPlayerConversations11m_StartTimeE_ptr - 0x302B90)
302B88:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
302B8A:  ADD             R1, PC; _ZN25CPedToPlayerConversations30m_TimeOfLastPlayerConversationE_ptr
302B8C:  ADD             R2, PC; _ZN25CPedToPlayerConversations11m_StartTimeE_ptr
302B8E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
302B90:  LDR             R1, [R1]; CPedToPlayerConversations::m_TimeOfLastPlayerConversation ...
302B92:  LDR             R2, [R2]; CPedToPlayerConversations::m_StartTime ...
302B94:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
302B96:  STR             R0, [R1]; CPedToPlayerConversations::m_TimeOfLastPlayerConversation
302B98:  MOVS            R1, #0; __int16
302B9A:  STR             R0, [R2]; CPedToPlayerConversations::m_StartTime
302B9C:  MOV             R0, R10; this
302B9E:  BLX             j__ZN4CPed16DisablePedSpeechEs; CPed::DisablePedSpeech(short)
302BA2:  MOVW            R5, #:lower16:(elf_hash_chain+0x8538)
302BA6:  MOVS            R0, #8
302BA8:  MOV.W           R1, #0x1F4
302BAC:  MOV.W           R11, #0x3E800000
302BB0:  MOV.W           R9, #5
302BB4:  MOVT            R5, #:upper16:(elf_hash_chain+0x8538)
302BB8:  STRD.W          R5, R9, [SP,#0xC0+var_C0]; int
302BBC:  MOV             R2, R10; CPed *
302BBE:  STRD.W          R8, R8, [SP,#0xC0+var_B8]; int
302BC2:  MOV             R3, R4; int
302BC4:  STRD.W          R11, R1, [SP,#0xC0+var_B0]; float
302BC8:  ADR             R1, aPed2plConversa; "Ped2Pl_Conversation"
302BCA:  STRD.W          R0, R8, [SP,#0xC0+var_A8]; int
302BCE:  LDR             R0, =(g_ikChainMan_ptr - 0x302BD4)
302BD0:  ADD             R0, PC; g_ikChainMan_ptr
302BD2:  LDR             R6, [R0]; g_ikChainMan
302BD4:  MOV             R0, R6; int
302BD6:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
302BDA:  MOV.W           R0, #0x1F4
302BDE:  STRD.W          R5, R9, [SP,#0xC0+var_C0]; int
302BE2:  STRD.W          R8, R8, [SP,#0xC0+var_B8]; int
302BE6:  ADR             R1, aPed2plConversa_0; "Ped2Pl_ConversationP"
302BE8:  STR.W           R11, [SP,#0xC0+var_B0]; float
302BEC:  MOV             R2, R4; CPed *
302BEE:  STR             R0, [SP,#0xC0+var_AC]; int
302BF0:  MOVS            R0, #8
302BF2:  STRD.W          R0, R8, [SP,#0xC0+var_A8]; int
302BF6:  MOV             R0, R6; int
302BF8:  MOV             R3, R10; int
302BFA:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
302BFE:  B               def_301B44; jumptable 00301B44 default case
