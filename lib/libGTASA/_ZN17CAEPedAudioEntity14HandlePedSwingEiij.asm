; =========================================================
; Game Engine Function: _ZN17CAEPedAudioEntity14HandlePedSwingEiij
; Address            : 0x398CB0 - 0x398E64
; =========================================================

398CB0:  PUSH            {R4-R7,LR}
398CB2:  ADD             R7, SP, #0xC
398CB4:  PUSH.W          {R8-R10}
398CB8:  SUB             SP, SP, #0x30
398CBA:  MOV             R4, R0
398CBC:  LDR             R0, =(AEAudioHardware_ptr - 0x398CC8)
398CBE:  LDR.W           R5, [R4,#0x94]
398CC2:  MOV             R10, R2
398CC4:  ADD             R0, PC; AEAudioHardware_ptr
398CC6:  MOV             R9, R1
398CC8:  MOVS            R1, #0x8F; unsigned __int16
398CCA:  MOVS            R2, #5; __int16
398CCC:  LDR             R0, [R0]; AEAudioHardware ; this
398CCE:  MOV             R8, R3
398CD0:  LDRSB.W         R6, [R5,#0x71C]
398CD4:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
398CD8:  CMP             R0, #0
398CDA:  BEQ.W           loc_398D60
398CDE:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x398CF0)
398CE0:  VMOV.F32        S4, #1.0
398CE4:  VLDR            S2, =0.0
398CE8:  MOV.W           R2, #0xFFFFFFFF
398CEC:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
398CEE:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
398CF0:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
398CF2:  LDRSB.W         R0, [R0,R9]
398CF6:  VMOV            S0, R0
398CFA:  RSB.W           R0, R6, R6,LSL#3
398CFE:  VCVT.F32.S32    S0, S0
398D02:  ADD.W           R1, R5, R0,LSL#2
398D06:  MOV.W           R0, #0xFFFFFFFF
398D0A:  LDR.W           R1, [R1,#0x5A4]
398D0E:  CMP             R1, #0x2D ; '-'; switch 46 cases
398D10:  BHI             def_398D12; jumptable 00398D12 default case, cases 19-21,35,36
398D12:  TBB.W           [PC,R1]; switch jump
398D16:  DCB 0x17; jump table for switch statement
398D17:  DCB 0x17
398D18:  DCB 0xA5
398D19:  DCB 0x99
398D1A:  DCB 0x9D
398D1B:  DCB 0xA1
398D1C:  DCB 0xA1
398D1D:  DCB 0x99
398D1E:  DCB 0x9D
398D1F:  DCB 0x17
398D20:  DCB 0x97
398D21:  DCB 0x97
398D22:  DCB 0x97
398D23:  DCB 0x97
398D24:  DCB 0x17
398D25:  DCB 0xA5
398D26:  DCB 0x17
398D27:  DCB 0x17
398D28:  DCB 0x17
398D29:  DCB 0x1C
398D2A:  DCB 0x1C
398D2B:  DCB 0x1C
398D2C:  DCB 0x17
398D2D:  DCB 0x17
398D2E:  DCB 0x17
398D2F:  DCB 0x17
398D30:  DCB 0x17
398D31:  DCB 0x17
398D32:  DCB 0x17
398D33:  DCB 0x17
398D34:  DCB 0x17
398D35:  DCB 0x17
398D36:  DCB 0x17
398D37:  DCB 0x17
398D38:  DCB 0x17
398D39:  DCB 0x1C
398D3A:  DCB 0x1C
398D3B:  DCB 0x17
398D3C:  DCB 0x17
398D3D:  DCB 0x17
398D3E:  DCB 0x17
398D3F:  DCB 0x17
398D40:  DCB 0x17
398D41:  DCB 0x17
398D42:  DCB 0x17
398D43:  DCB 0x17
398D44:  VMOV.F32        S2, #-6.0; jumptable 00398D12 cases 0,1,9,14,16-18,22-34,37-45
398D48:  VLDR            S4, =0.84
398D4C:  MOVS            R2, #0x57 ; 'W'
398D4E:  SUB.W           R1, R10, #0x40 ; '@'; jumptable 00398D12 default case, cases 19-21,35,36
398D52:  VLDR            S6, =0.84
398D56:  CMP             R1, #3
398D58:  BCS             loc_398D76
398D5A:  VMOV.F32        S2, #-6.0
398D5E:  B               loc_398D82
398D60:  LDR             R0, =(AudioEngine_ptr - 0x398D66)
398D62:  ADD             R0, PC; AudioEngine_ptr
398D64:  LDR             R0, [R0]; AudioEngine ; this
398D66:  BLX             j__ZN12CAudioEngine19IsLoadingTuneActiveEv; CAudioEngine::IsLoadingTuneActive(void)
398D6A:  CMP             R0, #0
398D6C:  BEQ             loc_398E26
398D6E:  ADD             SP, SP, #0x30 ; '0'
398D70:  POP.W           {R8-R10}
398D74:  POP             {R4-R7,PC}
398D76:  SUB.W           R1, R10, #0x43 ; 'C'
398D7A:  CMP             R1, #1
398D7C:  BHI             loc_398E3E
398D7E:  VMOV.F32        S2, #-2.0
398D82:  MOVS            R2, #0x57 ; 'W'
398D84:  VMOV.F32        S4, S6
398D88:  LDR.W           R0, [R4,#0x94]
398D8C:  VADD.F32        S0, S2, S0
398D90:  MOVW            R12, #0xD70A
398D94:  MOV.W           R10, #0
398D98:  MOVT            R12, #0x3D23
398D9C:  MOVS            R5, #0x80
398D9E:  LDR             R1, [R0,#0x14]
398DA0:  MOV.W           R6, #0x3F800000
398DA4:  ADD.W           R3, R1, #0x30 ; '0'
398DA8:  CMP             R1, #0
398DAA:  IT EQ
398DAC:  ADDEQ           R3, R0, #4
398DAE:  LDM             R3, {R0,R1,R3}
398DB0:  STRD.W          R6, R10, [SP,#0x48+var_30]
398DB4:  STRD.W          R5, R12, [SP,#0x48+var_28]
398DB8:  STR.W           R10, [SP,#0x48+var_20]
398DBC:  VSTR            S4, [SP,#0x48+var_34]
398DC0:  STR             R6, [SP,#0x48+var_38]
398DC2:  ADD.W           R6, R4, #8
398DC6:  VSTR            S0, [SP,#0x48+var_3C]
398DCA:  STMEA.W         SP, {R0,R1,R3}
398DCE:  MOV             R0, R6
398DD0:  MOVS            R1, #5
398DD2:  MOV             R3, R4
398DD4:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
398DD8:  LDR.W           R1, [R4,#0x94]; CEntity *
398DDC:  MOV             R0, R6; this
398DDE:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
398DE2:  CMP.W           R8, #0
398DE6:  BEQ             loc_398E10
398DE8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x398DF6)
398DEA:  MOVS            R1, #4; unsigned __int16
398DEC:  STRD.W          R10, R10, [R4,#0x24]
398DF0:  MOVS            R2, #1; unsigned __int16
398DF2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
398DF4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
398DF6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
398DF8:  ADD             R0, R8
398DFA:  VMOV            S0, R0
398DFE:  MOV             R0, R6; this
398E00:  VCVT.F32.U32    S0, S0
398E04:  STR.W           R9, [R4,#0x14]
398E08:  VSTR            S0, [R4,#0x18]
398E0C:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
398E10:  LDR             R0, =(AESoundManager_ptr - 0x398E18)
398E12:  MOV             R1, R6; CAESound *
398E14:  ADD             R0, PC; AESoundManager_ptr
398E16:  LDR             R0, [R0]; AESoundManager ; this
398E18:  ADD             SP, SP, #0x30 ; '0'
398E1A:  POP.W           {R8-R10}
398E1E:  POP.W           {R4-R7,LR}
398E22:  B.W             sub_19F824
398E26:  LDR             R0, =(AEAudioHardware_ptr - 0x398E30)
398E28:  MOVS            R1, #0x8F; unsigned __int16
398E2A:  MOVS            R2, #5; __int16
398E2C:  ADD             R0, PC; AEAudioHardware_ptr
398E2E:  LDR             R0, [R0]; AEAudioHardware ; this
398E30:  ADD             SP, SP, #0x30 ; '0'
398E32:  POP.W           {R8-R10}
398E36:  POP.W           {R4-R7,LR}
398E3A:  B.W             sub_18B078
398E3E:  CMP             R2, R0
398E40:  BLE             loc_398D6E
398E42:  B               loc_398D88
398E44:  VMOV.F32        S2, #-6.0; jumptable 00398D12 cases 10-13
398E48:  VLDR            S4, =0.84; jumptable 00398D12 cases 3,7
398E4C:  MOVS            R2, #0x56 ; 'V'
398E4E:  B               def_398D12; jumptable 00398D12 default case, cases 19-21,35,36
398E50:  VMOV.F32        S2, #-3.0; jumptable 00398D12 cases 4,8
398E54:  MOVS            R2, #0x58 ; 'X'
398E56:  B               def_398D12; jumptable 00398D12 default case, cases 19-21,35,36
398E58:  VLDR            S4, =0.67; jumptable 00398D12 cases 5,6
398E5C:  MOVS            R2, #0x56 ; 'V'
398E5E:  B               def_398D12; jumptable 00398D12 default case, cases 19-21,35,36
398E60:  MOVS            R2, #0x2F ; '/'; jumptable 00398D12 cases 2,15
398E62:  B               def_398D12; jumptable 00398D12 default case, cases 19-21,35,36
