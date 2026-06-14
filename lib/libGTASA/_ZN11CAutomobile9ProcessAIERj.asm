; =========================================================
; Game Engine Function: _ZN11CAutomobile9ProcessAIERj
; Address            : 0x557A60 - 0x5588AE
; =========================================================

557A60:  PUSH            {R4-R7,LR}
557A62:  ADD             R7, SP, #0xC
557A64:  PUSH.W          {R8-R11}
557A68:  SUB             SP, SP, #4
557A6A:  VPUSH           {D8-D12}
557A6E:  SUB             SP, SP, #0x60
557A70:  MOV             R10, R1
557A72:  MOV             R4, R0
557A74:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
557A78:  MOV             R9, R0
557A7A:  LDRSB.W         R0, [R4,#0x428]
557A7E:  LDRH.W          R1, [R4,#0x3DF]
557A82:  CMP             R0, #0
557A84:  BIC.W           R1, R1, #3
557A88:  STRH.W          R1, [R4,#0x3DF]
557A8C:  BLT             loc_557A9E
557A8E:  LDR.W           R1, =(_ZN17CVehicleRecording9bUseCarAIE_ptr - 0x557A96)
557A92:  ADD             R1, PC; _ZN17CVehicleRecording9bUseCarAIE_ptr
557A94:  LDR             R1, [R1]; CVehicleRecording::bUseCarAI ...
557A96:  LDRB            R0, [R1,R0]
557A98:  CMP             R0, #0
557A9A:  BEQ.W           loc_558818
557A9E:  MOV.W           R0, #0xFFFFFFFF; int
557AA2:  MOVS            R1, #0; bool
557AA4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
557AA8:  CMP             R0, #0
557AAA:  BEQ.W           loc_557BEA
557AAE:  MOV.W           R0, #0xFFFFFFFF; int
557AB2:  MOVS            R1, #0; bool
557AB4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
557AB8:  CMP             R4, R0
557ABA:  BEQ.W           loc_557BEA
557ABE:  MOV.W           R0, #0xFFFFFFFF; int
557AC2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
557AC6:  LDR.W           R0, [R0,#0x444]
557ACA:  LDR             R0, [R0]
557ACC:  LDR             R0, [R0,#0x2C]
557ACE:  CMP             R0, #4
557AD0:  BLT.W           loc_557BEA
557AD4:  LDRB.W          R0, [R4,#0x3BE]
557AD8:  SUBS            R0, #2
557ADA:  UXTB            R0, R0
557ADC:  CMP             R0, #3
557ADE:  BHI.W           loc_557BEA
557AE2:  MOV.W           R0, #0xFFFFFFFF; int
557AE6:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
557AEA:  VLDR            S0, [R0]
557AEE:  VLDR            S2, [R0,#4]
557AF2:  VMUL.F32        S0, S0, S0
557AF6:  VLDR            S4, [R0,#8]
557AFA:  VMUL.F32        S2, S2, S2
557AFE:  VLDR            S16, =0.3
557B02:  VMUL.F32        S4, S4, S4
557B06:  VADD.F32        S0, S0, S2
557B0A:  VADD.F32        S0, S0, S4
557B0E:  VSQRT.F32       S0, S0
557B12:  VCMPE.F32       S0, S16
557B16:  VMRS            APSR_nzcv, FPSCR
557B1A:  BLE             loc_557BEA
557B1C:  LDR.W           R0, [R10]
557B20:  ORR.W           R0, R0, #1
557B24:  STR.W           R0, [R10]
557B28:  MOV.W           R0, #0xFFFFFFFF; int
557B2C:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
557B30:  VLDR            S0, [R0]
557B34:  VLDR            S2, [R0,#4]
557B38:  VMUL.F32        S0, S0, S0
557B3C:  VLDR            S4, [R0,#8]
557B40:  VMUL.F32        S2, S2, S2
557B44:  VMUL.F32        S4, S4, S4
557B48:  VADD.F32        S0, S0, S2
557B4C:  VLDR            S2, =0.4
557B50:  VADD.F32        S0, S0, S4
557B54:  VSQRT.F32       S0, S0
557B58:  VCMPE.F32       S0, S2
557B5C:  VMRS            APSR_nzcv, FPSCR
557B60:  BLE             loc_557B90
557B62:  VLDR            S0, [R4,#0x48]
557B66:  VLDR            S2, [R4,#0x4C]
557B6A:  VMUL.F32        S0, S0, S0
557B6E:  VLDR            S4, [R4,#0x50]
557B72:  VMUL.F32        S2, S2, S2
557B76:  VMUL.F32        S4, S4, S4
557B7A:  VADD.F32        S0, S0, S2
557B7E:  VADD.F32        S0, S0, S4
557B82:  VSQRT.F32       S0, S0
557B86:  VCMPE.F32       S0, S16
557B8A:  VMRS            APSR_nzcv, FPSCR
557B8E:  BLT             loc_557BE0
557B90:  ADD             R0, SP, #0xA8+var_80; int
557B92:  MOV.W           R1, #0xFFFFFFFF
557B96:  LDR             R5, [R4,#0x14]
557B98:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
557B9C:  ADD.W           R0, R5, #0x30 ; '0'
557BA0:  CMP             R5, #0
557BA2:  VLDR            S0, [SP,#0xA8+var_80]
557BA6:  IT EQ
557BA8:  ADDEQ           R0, R4, #4
557BAA:  VLDR            S2, [R0]
557BAE:  VLDR            D16, [SP,#0xA8+var_7C]
557BB2:  VSUB.F32        S0, S2, S0
557BB6:  VLDR            D17, [R0,#4]
557BBA:  VSUB.F32        D16, D17, D16
557BBE:  VMUL.F32        D1, D16, D16
557BC2:  VMUL.F32        S0, S0, S0
557BC6:  VADD.F32        S0, S0, S2
557BCA:  VADD.F32        S0, S0, S3
557BCE:  VLDR            S2, =50.0
557BD2:  VSQRT.F32       S0, S0
557BD6:  VCMPE.F32       S0, S2
557BDA:  VMRS            APSR_nzcv, FPSCR
557BDE:  BLE             loc_557C0C
557BE0:  LDR.W           R0, [R10]
557BE4:  ORR.W           R0, R0, #2
557BE8:  B               loc_557C08
557BEA:  LDRH            R0, [R4,#0x26]
557BEC:  MOVW            R1, #0x1B9
557BF0:  CMP             R0, R1
557BF2:  BNE             loc_557C0C
557BF4:  LDRB.W          R0, [R4,#0x3A]
557BF8:  AND.W           R0, R0, #0xF8
557BFC:  CMP             R0, #0x40 ; '@'
557BFE:  BEQ             loc_557C0C
557C00:  LDR.W           R0, [R10]
557C04:  ORR.W           R0, R0, #1
557C08:  STR.W           R0, [R10]
557C0C:  LDR.W           R0, [R10]
557C10:  LSLS            R0, R0, #0x1F
557C12:  BNE             loc_557C78
557C14:  LDR.W           R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x557C1C)
557C18:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
557C1A:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
557C1C:  LDRB.W          R0, [R0,#(byte_796817 - 0x7967F4)]
557C20:  CBNZ            R0, loc_557C78
557C22:  MOV             R5, R4
557C24:  LDRB.W          R0, [R5,#0x3A]!
557C28:  AND.W           R1, R0, #0xF8
557C2C:  CMP             R1, #0x18
557C2E:  BNE             loc_557CA4
557C30:  LDR.W           R1, [R4,#0x390]
557C34:  TST.W           R1, #0x10000
557C38:  BEQ.W           loc_55828E
557C3C:  LDRB.W          R2, [R4,#0x3BE]
557C40:  CMP             R2, #0
557C42:  ITT NE
557C44:  LDRNE.W         R2, [R9,#0x2C]
557C48:  CMPNE           R2, #0
557C4A:  BEQ.W           loc_558274
557C4E:  LDRSB.W         R3, [R2,#6]
557C52:  CMP             R3, #1
557C54:  BLT.W           loc_558274
557C58:  LDR             R2, [R2,#0x10]
557C5A:  VMOV.F32        S4, #0.5
557C5E:  ORR.W           R1, R1, #8
557C62:  VLDR            S0, [R2,#4]
557C66:  VLDR            S2, [R2,#0x24]
557C6A:  VADD.F32        S0, S0, S2
557C6E:  VMUL.F32        S0, S0, S4
557C72:  VSTR            S0, [R4,#0xAC]
557C76:  B               loc_55828A
557C78:  MOV             R5, R4
557C7A:  VLDR            S0, =0.3
557C7E:  LDRB.W          R0, [R5,#0x3A]!
557C82:  ADDW            R1, R5, #0x852
557C86:  VLDR            S2, [R1]
557C8A:  ADDW            R1, R5, #0x872
557C8E:  VMUL.F32        S0, S2, S0
557C92:  VLDR            S2, [R1]
557C96:  ADD.W           R1, R5, #0x76 ; 'v'
557C9A:  VSUB.F32        S0, S0, S2
557C9E:  VSTR            S0, [R1]
557CA2:  B               loc_557CB6
557CA4:  LDR.W           R1, [R4,#0x388]
557CA8:  VLDR            D16, [R1,#0x14]
557CAC:  LDR             R1, [R1,#0x1C]
557CAE:  STR.W           R1, [R4,#0xB0]
557CB2:  VSTR            D16, [R4,#0xA8]
557CB6:  LSRS            R0, R0, #3
557CB8:  AND.W           R0, R0, #0x1F
557CBC:  CMP             R0, #9
557CBE:  BHI.W           loc_557F5C
557CC2:  MOVS            R1, #1
557CC4:  LSL.W           R0, R1, R0
557CC8:  MOVW            R1, #0x331
557CCC:  TST             R0, R1
557CCE:  BEQ.W           loc_557F5C
557CD2:  LDR.W           R0, [R4,#0x430]
557CD6:  AND.W           R0, R0, #0xC
557CDA:  TEQ.W           R0, #8
557CDE:  BNE             loc_557DB8
557CE0:  LDRB.W          R0, [R4,#0x4A8]
557CE4:  CMP             R0, #2
557CE6:  BEQ             loc_557DB8
557CE8:  LDRB.W          R0, [R4,#0x3BE]
557CEC:  CMP             R0, #1
557CEE:  BNE             loc_557DB8
557CF0:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x557CFA)
557CF4:  LDRH            R1, [R4,#0x24]
557CF6:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
557CF8:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
557CFA:  LDR             R0, [R0]; CTimer::m_FrameCounter
557CFC:  ADD             R0, R1
557CFE:  LSLS            R0, R0, #0x1C
557D00:  BNE             loc_557DB8
557D02:  LDRSH.W         R0, [R4,#0x26]
557D06:  CMP.W           R0, #0x1A4
557D0A:  IT NE
557D0C:  CMPNE.W         R0, #0x1B6
557D10:  BEQ             loc_557DB8
557D12:  VMOV.F32        S0, #10.0
557D16:  LDR             R1, [R4,#0x14]
557D18:  VMOV.F32        S8, #3.0
557D1C:  MOVS            R2, #1
557D1E:  ADD.W           R0, R1, #0x30 ; '0'
557D22:  CMP             R1, #0
557D24:  VLDR            S2, [R1,#0x10]
557D28:  ADD             R3, SP, #0xA8+var_84
557D2A:  VLDR            S4, [R1,#0x14]
557D2E:  VLDR            S6, [R1,#0x18]
557D32:  VLDR            S10, [R1]
557D36:  VMUL.F32        S4, S4, S0
557D3A:  VLDR            S12, [R1,#4]
557D3E:  VMUL.F32        S2, S2, S0
557D42:  VLDR            S14, [R1,#8]
557D46:  VMUL.F32        S0, S6, S0
557D4A:  IT EQ
557D4C:  ADDEQ           R0, R4, #4
557D4E:  VLDR            S6, [R0]
557D52:  VMUL.F32        S12, S12, S8
557D56:  VLDR            S1, [R0,#4]
557D5A:  VMUL.F32        S10, S10, S8
557D5E:  VLDR            S3, [R0,#8]
557D62:  MOVS            R1, #0
557D64:  STR             R1, [SP,#0xA8+var_84]
557D66:  VADD.F32        S4, S4, S1
557D6A:  VADD.F32        S2, S2, S6
557D6E:  VMUL.F32        S6, S14, S8
557D72:  VADD.F32        S0, S0, S3
557D76:  VADD.F32        S4, S4, S12
557D7A:  VADD.F32        S2, S2, S10
557D7E:  VADD.F32        S0, S0, S6
557D82:  VSTR            S4, [SP,#0xA8+var_50]
557D86:  VSTR            S2, [SP,#0xA8+var_54]
557D8A:  VSTR            S0, [SP,#0xA8+var_4C]
557D8E:  STRD.W          R2, R2, [SP,#0xA8+var_A8]
557D92:  STRD.W          R2, R1, [SP,#0xA8+var_A0]
557D96:  ADD             R2, SP, #0xA8+var_80
557D98:  STRD.W          R1, R1, [SP,#0xA8+var_98]
557D9C:  STRD.W          R1, R1, [SP,#0xA8+var_90]
557DA0:  ADD             R1, SP, #0xA8+var_54
557DA2:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
557DA6:  CMP             R0, #1
557DA8:  BNE             loc_557DB0
557DAA:  LDR             R0, [SP,#0xA8+var_84]
557DAC:  CMP             R0, R4
557DAE:  BNE             loc_557DB8
557DB0:  ADD             R1, SP, #0xA8+var_54; CVehicle *
557DB2:  MOV             R0, R4; this
557DB4:  BLX             j__ZN6CCarAI19GetCarToParkAtCoorsEP8CVehicleP7CVector; CCarAI::GetCarToParkAtCoors(CVehicle *,CVector *)
557DB8:  LDRB            R0, [R5]
557DBA:  MOVS            R6, #0
557DBC:  LSRS            R1, R0, #3; int
557DBE:  CMP             R1, #0xC; switch 13 cases
557DC0:  BHI.W           def_557DC8; jumptable 00557DC8 default case, cases 1,6,7,11
557DC4:  ADDW            R8, R4, #0x42C
557DC8:  TBH.W           [PC,R1,LSL#1]; switch jump
557DCC:  DCW 0x201; jump table for switch statement
557DCE:  DCW 0x527
557DD0:  DCW 0xD0
557DD2:  DCW 0x1A
557DD4:  DCW 0x126
557DD6:  DCW 0x192
557DD8:  DCW 0x527
557DDA:  DCW 0x527
557DDC:  DCW 0x1AD
557DDE:  DCW 0x217
557DE0:  DCW 0x23C
557DE2:  DCW 0x527
557DE4:  DCW 0x1A
557DE6:  ALIGN 4
557DE8:  DCFS 0.3
557DEC:  DCFS 0.4
557DF0:  DCFS 50.0
557DF4:  DCFS -0.005
557DF8:  DCFS 0.1
557DFC:  DCFS 0.01
557E00:  MOV             R0, R4; jumptable 00557DC8 cases 3,12
557E02:  BLX             j__ZN6CCarAI11UpdateCarAIEP8CVehicle; CCarAI::UpdateCarAI(CVehicle *)
557E06:  MOV             R0, R4; this
557E08:  BLX             j__ZN8CCarCtrl21SteerAICarWithPhysicsEP8CVehicle; CCarCtrl::SteerAICarWithPhysics(CVehicle *)
557E0C:  MOV             R0, R4; this
557E0E:  BLX             j__ZN8CCarCtrl15ReconsiderRouteEP8CVehicle; CCarCtrl::ReconsiderRoute(CVehicle *)
557E12:  LDRB.W          R0, [R4,#0x3DF]
557E16:  LSLS            R0, R0, #0x1E
557E18:  BEQ             loc_557E2C
557E1A:  MOV             R0, R4; this
557E1C:  BLX             j__ZNK11CAutomobile27HasCarStoppedBecauseOfLightEv; CAutomobile::HasCarStoppedBecauseOfLight(void)
557E20:  CBNZ            R0, loc_557E2C
557E22:  LDR             R0, [R4]
557E24:  LDR.W           R1, [R0,#0xDC]
557E28:  MOV             R0, R4
557E2A:  BLX             R1
557E2C:  LDR.W           R0, [R8]
557E30:  TST.W           R0, #0x80000
557E34:  BEQ             loc_557E50
557E36:  LDR.W           R1, [R8,#4]
557E3A:  MOVS            R3, #0
557E3C:  MOV.W           R2, #0x3F800000
557E40:  STR.W           R3, [R4,#0x4A0]
557E44:  STR.W           R2, [R4,#0x4A4]
557E48:  ORR.W           R0, R0, #0x20 ; ' '
557E4C:  STRD.W          R0, R1, [R8]
557E50:  VMOV.F32        S16, #1.0
557E54:  ADD.W           R0, R4, #0x7E8
557E58:  VLDR            S0, [R0]
557E5C:  VCMPE.F32       S0, S16
557E60:  VMRS            APSR_nzcv, FPSCR
557E64:  BGE             loc_557E7A
557E66:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x557E72)
557E6A:  LDRB.W          R1, [R4,#0x75B]; unsigned int
557E6E:  ADD             R0, PC; g_surfaceInfos_ptr
557E70:  LDR             R0, [R0]; g_surfaceInfos ; this
557E72:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
557E76:  CMP             R0, #4
557E78:  BEQ             loc_557EF0
557E7A:  ADDW            R0, R4, #0x7EC
557E7E:  VLDR            S0, [R0]
557E82:  VCMPE.F32       S0, S16
557E86:  VMRS            APSR_nzcv, FPSCR
557E8A:  BGE             loc_557EA0
557E8C:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x557E98)
557E90:  LDRB.W          R1, [R4,#0x787]; unsigned int
557E94:  ADD             R0, PC; g_surfaceInfos_ptr
557E96:  LDR             R0, [R0]; g_surfaceInfos ; this
557E98:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
557E9C:  CMP             R0, #4
557E9E:  BEQ             loc_557EF0
557EA0:  ADD.W           R0, R4, #0x7F0
557EA4:  VLDR            S0, [R0]
557EA8:  VCMPE.F32       S0, S16
557EAC:  VMRS            APSR_nzcv, FPSCR
557EB0:  BGE             loc_557EC6
557EB2:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x557EBE)
557EB6:  LDRB.W          R1, [R4,#0x7B3]; unsigned int
557EBA:  ADD             R0, PC; g_surfaceInfos_ptr
557EBC:  LDR             R0, [R0]; g_surfaceInfos ; this
557EBE:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
557EC2:  CMP             R0, #4
557EC4:  BEQ             loc_557EF0
557EC6:  ADDW            R0, R4, #0x7F4
557ECA:  VLDR            S0, [R0]
557ECE:  VCMPE.F32       S0, S16
557ED2:  VMRS            APSR_nzcv, FPSCR
557ED6:  BGE.W           loc_558818
557EDA:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x557EE6)
557EDE:  LDRB.W          R1, [R4,#0x7DF]; unsigned int
557EE2:  ADD             R0, PC; g_surfaceInfos_ptr
557EE4:  LDR             R0, [R0]; g_surfaceInfos ; this
557EE6:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
557EEA:  CMP             R0, #4
557EEC:  BNE.W           loc_558818
557EF0:  LDRSH.W         R0, [R4,#0x26]
557EF4:  MOVS            R6, #0
557EF6:  CMP.W           R0, #0x1A8
557EFA:  BEQ.W           def_557DC8; jumptable 00557DC8 default case, cases 1,6,7,11
557EFE:  MOVW            R1, #0x1B9
557F02:  CMP             R0, R1
557F04:  ITT NE
557F06:  MOVWNE          R1, #0x1EF
557F0A:  CMPNE           R0, R1
557F0C:  BEQ.W           def_557DC8; jumptable 00557DC8 default case, cases 1,6,7,11
557F10:  LDR.W           R0, =(_ZN8CWeather8WetRoadsE_ptr - 0x557F1C)
557F14:  LDRB.W          R1, [R4,#0x87C]
557F18:  ADD             R0, PC; _ZN8CWeather8WetRoadsE_ptr
557F1A:  ORR.W           R1, R1, #0x40 ; '@'
557F1E:  STRB.W          R1, [R4,#0x87C]
557F22:  LDR             R0, [R0]; CWeather::WetRoads ...
557F24:  VLDR            S0, [R0]
557F28:  VCMPE.F32       S0, #0.0
557F2C:  VMRS            APSR_nzcv, FPSCR
557F30:  BLE.W           loc_5583E2
557F34:  VSUB.F32        S0, S16, S0
557F38:  VLDR            S2, =-0.005
557F3C:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x557F48)
557F40:  VLDR            S8, [R4,#0x90]
557F44:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
557F46:  VLDR            S4, [R4,#0x4C]
557F4A:  VLDR            S6, [R4,#0x50]
557F4E:  VMUL.F32        S0, S0, S2
557F52:  VLDR            S2, [R4,#0x48]
557F56:  VMUL.F32        S0, S0, S8
557F5A:  B               loc_558400
557F5C:  LDRB.W          R0, [R4,#0x42C]
557F60:  LSLS            R0, R0, #0x1F
557F62:  ITT NE
557F64:  MOVNE           R0, R4; this
557F66:  BLXNE           j__ZN11CAutomobile13ScanForCrimesEv; CAutomobile::ScanForCrimes(void)
557F6A:  B               loc_557CD2
557F6C:  MOV             R0, R4; jumptable 00557DC8 case 2
557F6E:  BLX             j__ZN6CCarAI11UpdateCarAIEP8CVehicle; CCarAI::UpdateCarAI(CVehicle *)
557F72:  MOV             R0, R4; this
557F74:  BLX             j__ZN9CPhysical14ProcessControlEv; CPhysical::ProcessControl(void)
557F78:  MOV             R0, R4; this
557F7A:  BLX             j__ZN8CCarCtrl16UpdateCarOnRailsEP8CVehicle; CCarCtrl::UpdateCarOnRails(CVehicle *)
557F7E:  VLDR            S0, =50.0
557F82:  MOVS            R3, #4
557F84:  VLDR            S2, [R4,#0x3CC]
557F88:  LDR.W           R0, [R4,#0x388]
557F8C:  VDIV.F32        S0, S2, S0
557F90:  LDRB.W          R2, [R4,#0x975]
557F94:  STRB.W          R3, [R4,#0x974]
557F98:  ADDS            R0, #0x2C ; ','; this
557F9A:  STRB.W          R3, [R4,#0x975]
557F9E:  STRB.W          R2, [R4,#0x976]
557FA2:  ADD.W           R2, R4, #0x4C0; unsigned __int8 *
557FA6:  VMOV            R1, S0; float
557FAA:  BLX             j__ZN13cTransmission25CalculateGearForSimpleCarEfRh; cTransmission::CalculateGearForSimpleCar(float,uchar &)
557FAE:  LDR             R0, [R4,#0x14]
557FB0:  MOV             R1, #0x3EB33333
557FB8:  ADD.W           R3, R4, #0x48 ; 'H'; int
557FBC:  ADD.W           R2, R0, #0x10; int
557FC0:  STR             R1, [SP,#0xA8+var_A8]; float
557FC2:  MOV             R0, R4; int
557FC4:  MOVS            R1, #0; int
557FC6:  BLX             j__ZN8CVehicle20ProcessWheelRotationE11tWheelStateRK7CVectorS3_f; CVehicle::ProcessWheelRotation(tWheelState,CVector const&,CVector const&,float)
557FCA:  ADDW            R1, R4, #0x83C
557FCE:  VDUP.32         Q9, R0
557FD2:  VLD1.32         {D16-D17}, [R1]
557FD6:  VADD.F32        Q8, Q9, Q8
557FDA:  LDRB.W          R0, [R4,#0x3DF]
557FDE:  LSLS            R0, R0, #0x1E
557FE0:  VST1.32         {D16-D17}, [R1]
557FE4:  BEQ             loc_557FF8
557FE6:  MOV             R0, R4; this
557FE8:  BLX             j__ZNK11CAutomobile27HasCarStoppedBecauseOfLightEv; CAutomobile::HasCarStoppedBecauseOfLight(void)
557FEC:  CBNZ            R0, loc_557FF8
557FEE:  LDR             R0, [R4]
557FF0:  LDR.W           R1, [R0,#0xDC]
557FF4:  MOV             R0, R4
557FF6:  BLX             R1
557FF8:  LDR.W           R0, [R4,#0x524]
557FFC:  MOVS            R6, #1
557FFE:  CMP             R0, #0
558000:  ITT NE
558002:  SUBNE           R0, #1
558004:  STRNE.W         R0, [R4,#0x524]
558008:  LDR.W           R0, [R8]
55800C:  BIC.W           R0, R0, #0x21000000
558010:  STR.W           R0, [R8]
558014:  B.W             def_557DC8; jumptable 00557DC8 default case, cases 1,6,7,11
558018:  LDR.W           R1, [R4,#0x8FC]; jumptable 00557DC8 case 4
55801C:  CMP             R1, #0
55801E:  ITTT NE
558020:  LDRNE.W         R1, [R8,#4]
558024:  ORRNE.W         R1, R1, #2
558028:  STRNE.W         R1, [R8,#4]
55802C:  LDR.W           R1, [R4,#0x900]
558030:  CMP             R1, #0
558032:  ITTT NE
558034:  LDRNE.W         R1, [R8,#4]
558038:  ORRNE.W         R1, R1, #2
55803C:  STRNE.W         R1, [R8,#4]
558040:  LDR.W           R1, [R4,#0x904]
558044:  CMP             R1, #0
558046:  ITTT NE
558048:  LDRNE.W         R1, [R8,#4]
55804C:  ORRNE.W         R1, R1, #2
558050:  STRNE.W         R1, [R8,#4]
558054:  LDR.W           R1, [R4,#0x908]
558058:  CMP             R1, #0
55805A:  ITTT NE
55805C:  LDRNE.W         R1, [R8,#4]
558060:  ORRNE.W         R1, R1, #2
558064:  STRNE.W         R1, [R8,#4]
558068:  LDR.W           R1, [R4,#0x5A4]
55806C:  CMP             R1, #3
55806E:  BEQ             loc_5580A2
558070:  CMP             R1, #4
558072:  BNE             loc_5580AA
558074:  VLDR            S0, [R4,#0x48]
558078:  VLDR            S2, [R4,#0x4C]
55807C:  VMUL.F32        S0, S0, S0
558080:  VLDR            S4, [R4,#0x50]
558084:  VMUL.F32        S2, S2, S2
558088:  VMUL.F32        S4, S4, S4
55808C:  VADD.F32        S0, S0, S2
558090:  VLDR            S2, =0.1
558094:  VADD.F32        S0, S0, S4
558098:  VCMPE.F32       S0, S2
55809C:  VMRS            APSR_nzcv, FPSCR
5580A0:  BGE             loc_5580AA
5580A2:  MOV.W           R1, #0x3F800000
5580A6:  STR.W           R1, [R4,#0x4A4]
5580AA:  LDRD.W          R2, R1, [R8]
5580AE:  TST.W           R1, #2
5580B2:  BNE.W           loc_5582B8
5580B6:  VLDR            S0, [R4,#0x48]
5580BA:  ADR.W           R3, dword_5588C4
5580BE:  VLDR            S2, [R4,#0x4C]
5580C2:  VMUL.F32        S0, S0, S0
5580C6:  VLDR            S4, [R4,#0x50]
5580CA:  VMUL.F32        S2, S2, S2
5580CE:  VMUL.F32        S4, S4, S4
5580D2:  VADD.F32        S0, S0, S2
5580D6:  VLDR            S2, =0.01
5580DA:  VADD.F32        S0, S0, S4
5580DE:  VCMPE.F32       S0, S2
5580E2:  VMRS            APSR_nzcv, FPSCR
5580E6:  IT LT
5580E8:  ADDLT           R3, #4
5580EA:  VLDR            S0, [R3]
5580EE:  B               loc_5582BC
5580F0:  LDR.W           R1, [R8]; jumptable 00557DC8 case 5
5580F4:  MOV             R2, #0x3D4CCCCD
5580FC:  MOVS            R6, #0
5580FE:  ORR.W           R1, R1, #0x20 ; ' '
558102:  STR.W           R1, [R8]
558106:  LDRH.W          R1, [R4,#0x460]
55810A:  STR.W           R6, [R4,#0x4A0]
55810E:  CMP             R1, #0
558110:  STR.W           R2, [R4,#0x4A4]
558114:  STR.W           R6, [R4,#0x498]
558118:  ITT NE
55811A:  MOVWNE          R2, #0xFFFF
55811E:  CMPNE           R1, R2
558120:  BEQ.W           loc_558384
558124:  B               loc_55837A
558126:  LDR.W           R0, =(_ZN8CVehicle24bDisableRemoteDetonationE_ptr - 0x55812E); jumptable 00557DC8 case 8
55812A:  ADD             R0, PC; _ZN8CVehicle24bDisableRemoteDetonationE_ptr
55812C:  LDR             R0, [R0]; CVehicle::bDisableRemoteDetonation ...
55812E:  LDRB            R0, [R0]; CVehicle::bDisableRemoteDetonation
558130:  CBNZ            R0, loc_55815A
558132:  MOVS            R0, #0; this
558134:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
558138:  BLX             j__ZN4CPad14CarGunJustDownEv; CPad::CarGunJustDown(void)
55813C:  CBZ             R0, loc_55815A
55813E:  LDR             R0, [R4]
558140:  LDR.W           R6, [R0,#0xA8]
558144:  MOV.W           R0, #0xFFFFFFFF; int
558148:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
55814C:  MOV             R1, R0
55814E:  MOV             R0, R4
558150:  MOVS            R2, #0
558152:  BLX             R6
558154:  MOVS            R0, #(stderr+1); this
558156:  BLX             j__ZN7CRemote33TakeRemoteControlledCarFromPlayerEb; CRemote::TakeRemoteControlledCarFromPlayer(bool)
55815A:  LDRH            R0, [R4,#0x26]
55815C:  MOVW            R1, #0x1B9
558160:  CMP             R0, R1
558162:  BNE             loc_5581AA
558164:  LDR.W           R0, =(_ZN8CVehicle33bDisableRemoteDetonationOnContactE_ptr - 0x55816C)
558168:  ADD             R0, PC; _ZN8CVehicle33bDisableRemoteDetonationOnContactE_ptr
55816A:  LDR             R0, [R0]; CVehicle::bDisableRemoteDetonationOnContact ...
55816C:  LDRB            R0, [R0]; CVehicle::bDisableRemoteDetonationOnContact
55816E:  CBNZ            R0, loc_5581AA
558170:  ADD             R0, SP, #0xA8+var_80; int
558172:  MOV.W           R1, #0xFFFFFFFF
558176:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
55817A:  MOV             R0, R4; this
55817C:  BLX             j__ZNK11CAutomobile22RcbanditCheckHitWheelsEv; CAutomobile::RcbanditCheckHitWheels(void)
558180:  CMP             R0, #0
558182:  ITT EQ
558184:  LDRBEQ.W        R0, [R4,#0x45]
558188:  MOVSEQ.W        R0, R0,LSL#31
55818C:  BEQ             loc_5581AA
55818E:  MOVS            R0, #(stderr+1); this
558190:  BLX             j__ZN7CRemote33TakeRemoteControlledCarFromPlayerEb; CRemote::TakeRemoteControlledCarFromPlayer(bool)
558194:  LDR             R0, [R4]
558196:  LDR.W           R6, [R0,#0xA8]
55819A:  MOV.W           R0, #0xFFFFFFFF; int
55819E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
5581A2:  MOV             R1, R0
5581A4:  MOV             R0, R4
5581A6:  MOVS            R2, #0
5581A8:  BLX             R6
5581AA:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x5581BA)
5581AE:  MOV.W           R2, #0x194
5581B2:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x5581BC)
5581B6:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
5581B8:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
5581BA:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
5581BC:  LDR             R1, [R1]; CWorld::Players ...
5581BE:  LDR             R0, [R0]; CWorld::PlayerInFocus
5581C0:  SMLABB.W        R0, R0, R2, R1
5581C4:  LDR.W           R0, [R0,#0xB0]
5581C8:  CMP             R0, R4
5581CA:  BEQ.W           loc_5583B8
5581CE:  LDR.W           R0, [R4,#0x464]; jumptable 00557DC8 case 0
5581D2:  CMP             R0, #0
5581D4:  BEQ.W           loc_558818
5581D8:  LDR.W           R1, [R0,#0x44C]
5581DC:  ADDW            R11, R4, #0x464
5581E0:  MOVS            R6, #0
5581E2:  SUBS            R1, #0x3A ; ':'
5581E4:  CMP             R1, #5
5581E6:  BHI.W           loc_5583C4
5581EA:  MOVS            R2, #1
5581EC:  LSL.W           R1, R2, R1
5581F0:  TST.W           R1, #0x29
5581F4:  BNE.W           def_557DC8; jumptable 00557DC8 default case, cases 1,6,7,11
5581F8:  B               loc_5583C4
5581FA:  VLDR            S0, [R4,#0x48]; jumptable 00557DC8 case 9
5581FE:  VLDR            S2, [R4,#0x4C]
558202:  VMUL.F32        S0, S0, S0
558206:  VLDR            S4, [R4,#0x50]
55820A:  VMUL.F32        S2, S2, S2
55820E:  VMUL.F32        S4, S4, S4
558212:  VADD.F32        S0, S0, S2
558216:  VLDR            S2, =0.01
55821A:  VADD.F32        S0, S0, S4
55821E:  VCMPE.F32       S0, S2
558222:  VMRS            APSR_nzcv, FPSCR
558226:  BGE             loc_5582EC
558228:  LDR.W           R0, [R8]
55822C:  MOV.W           R1, #0x3F800000
558230:  ORR.W           R0, R0, #0x20 ; ' '
558234:  STR.W           R0, [R8]
558238:  MOVS            R0, #0
55823A:  STR.W           R0, [R4,#0x4A0]
55823E:  STR.W           R1, [R4,#0x4A4]
558242:  B               loc_55835C
558244:  LDR.W           R0, [R8]; jumptable 00557DC8 case 10
558248:  MOVS            R6, #0
55824A:  BIC.W           R0, R0, #0x20 ; ' '
55824E:  STR.W           R0, [R8]
558252:  LDR.W           R0, [R4,#0x4D0]
558256:  STR.W           R6, [R4,#0x4A0]
55825A:  CMP             R0, #0
55825C:  STR.W           R6, [R4,#0x4A4]
558260:  STR.W           R6, [R4,#0x498]
558264:  BNE.W           def_557DC8; jumptable 00557DC8 default case, cases 1,6,7,11
558268:  LDR             R0, [R4]
55826A:  LDR.W           R1, [R0,#0xFC]
55826E:  MOV             R0, R4
558270:  BLX             R1
558272:  B               loc_558818
558274:  LDR.W           R2, [R4,#0x388]
558278:  BIC.W           R1, R1, #8
55827C:  VLDR            D16, [R2,#0x14]
558280:  LDR             R2, [R2,#0x1C]
558282:  STR.W           R2, [R4,#0xB0]
558286:  VSTR            D16, [R4,#0xA8]
55828A:  STR.W           R1, [R4,#0x390]
55828E:  LSRS            R0, R0, #3
558290:  LSLS            R1, R1, #0x1D
558292:  BPL.W           loc_557CB8
558296:  LDR.W           R1, [R4,#0x388]
55829A:  VLDR            S0, [R9,#8]
55829E:  VLDR            S4, =0.4
5582A2:  VLDR            S2, [R1,#0x1C]
5582A6:  VSUB.F32        S0, S0, S2
5582AA:  VMUL.F32        S0, S0, S4
5582AE:  VADD.F32        S0, S2, S0
5582B2:  VSTR            S0, [R4,#0xB0]
5582B6:  B               loc_557CB8
5582B8:  VMOV.F32        S0, #0.5
5582BC:  ADDW            R12, R4, #0x4A4
5582C0:  BIC.W           R6, R2, #0x20 ; ' '
5582C4:  VSTR            S0, [R12]
5582C8:  STRD.W          R6, R1, [R8]
5582CC:  MOVS            R6, #0
5582CE:  STR.W           R6, [R4,#0x4A0]
5582D2:  STR.W           R6, [R4,#0x498]
5582D6:  LDRH.W          R5, [R4,#0x460]
5582DA:  CMP             R5, #0
5582DC:  ITT NE
5582DE:  MOVWNE          R3, #0xFFFF
5582E2:  CMPNE           R5, R3
5582E4:  BNE             loc_55838A
5582E6:  STR.W           R6, [R4,#0x524]
5582EA:  B               loc_558396
5582EC:  LDR.W           R0, [R4,#0x464]; this
5582F0:  CBZ             R0, loc_55834A
5582F2:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5582F6:  CMP             R0, #1
5582F8:  BNE             loc_55834A
5582FA:  LDR.W           R0, [R4,#0x464]
5582FE:  LDR.W           R1, [R0,#0x44C]
558302:  CMP             R1, #0x3F ; '?'
558304:  BEQ             loc_558228
558306:  LDR.W           R0, [R0,#0x440]
55830A:  MOVW            R1, #0x337; int
55830E:  ADDS            R0, #4; this
558310:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
558314:  CMP             R0, #0
558316:  BNE.W           loc_558228
55831A:  LDR.W           R0, [R4,#0x464]
55831E:  MOVW            R1, #0x339; int
558322:  LDR.W           R0, [R0,#0x440]
558326:  ADDS            R0, #4; this
558328:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
55832C:  CMP             R0, #0
55832E:  BNE.W           loc_558228
558332:  LDR.W           R0, [R4,#0x464]
558336:  MOVW            R1, #0x329; int
55833A:  LDR.W           R0, [R0,#0x440]
55833E:  ADDS            R0, #4; this
558340:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
558344:  CMP             R0, #0
558346:  BNE.W           loc_558228
55834A:  MOVS            R0, #0
55834C:  STR.W           R0, [R4,#0x4A4]
558350:  LDR.W           R0, [R8]
558354:  BIC.W           R0, R0, #0x20 ; ' '
558358:  STR.W           R0, [R8]
55835C:  ADD.W           R0, R4, #0x4A0
558360:  MOVS            R6, #0
558362:  STR.W           R6, [R4,#0x498]
558366:  STR             R6, [R0]
558368:  LDRH.W          R0, [R4,#0x460]
55836C:  CMP             R0, #0
55836E:  ITT NE
558370:  MOVWNE          R1, #0xFFFF
558374:  CMPNE           R0, R1
558376:  BEQ             loc_558384
558378:  LDRB            R0, [R5]
55837A:  AND.W           R0, R0, #0xF8
55837E:  CMP             R0, #0x28 ; '('
558380:  BNE.W           loc_558818
558384:  STR.W           R6, [R4,#0x524]
558388:  B               def_557DC8; jumptable 00557DC8 default case, cases 1,6,7,11
55838A:  AND.W           R0, R0, #0xF8
55838E:  CMP             R0, #0x28 ; '('
558390:  IT EQ
558392:  STREQ.W         R6, [R4,#0x524]
558396:  LSLS            R0, R2, #0xC
558398:  MOV.W           R6, #0
55839C:  BPL.W           def_557DC8; jumptable 00557DC8 default case, cases 1,6,7,11
5583A0:  ADD.W           R0, R4, #0x4A0
5583A4:  STR             R6, [R0]
5583A6:  ORR.W           R0, R2, #0x20 ; ' '
5583AA:  STRD.W          R0, R1, [R8]
5583AE:  MOV.W           R0, #0x3F800000
5583B2:  STR.W           R0, [R12]
5583B6:  B               def_557DC8; jumptable 00557DC8 default case, cases 1,6,7,11
5583B8:  LDR.W           R0, [R4,#0x464]; this
5583BC:  CBZ             R0, loc_55842A
5583BE:  ADDW            R11, R4, #0x464
5583C2:  MOVS            R6, #1
5583C4:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
5583C8:  MOV             R8, R0
5583CA:  MOV             R0, R4; this
5583CC:  BLX             j__ZN7CEntity15PruneReferencesEv; CEntity::PruneReferences(void)
5583D0:  CMP             R6, #1
5583D2:  BEQ             loc_558434
5583D4:  LDR.W           R0, [R11]
5583D8:  LDR.W           R0, [R0,#0x59C]
5583DC:  CMP             R0, #1
5583DE:  BLS             loc_55843E
5583E0:  B               loc_558448
5583E2:  VLDR            S0, =-0.005
5583E6:  VLDR            S8, [R4,#0x90]
5583EA:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5583FA)
5583EE:  VMUL.F32        S0, S8, S0
5583F2:  VLDR            S2, [R4,#0x48]
5583F6:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5583F8:  VLDR            S4, [R4,#0x4C]
5583FC:  VLDR            S6, [R4,#0x50]
558400:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
558402:  VLDR            S8, [R0]
558406:  MOV             R0, R4
558408:  VMUL.F32        S0, S0, S8
55840C:  VMUL.F32        S2, S2, S0
558410:  VMUL.F32        S4, S0, S4
558414:  VMUL.F32        S0, S0, S6
558418:  VMOV            R1, S2
55841C:  VMOV            R2, S4
558420:  VMOV            R3, S0
558424:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
558428:  B               loc_558818
55842A:  MOV             R0, R4; this
55842C:  BLX             j__ZN7CEntity15PruneReferencesEv; CEntity::PruneReferences(void)
558430:  MOV.W           R8, #0
558434:  MOV             R0, R4; this
558436:  BLX             j__ZN6CWorld38FindPlayerSlotWithRemoteVehiclePointerEPv; CWorld::FindPlayerSlotWithRemoteVehiclePointer(void *)
55843A:  CMP             R0, #0
55843C:  BLT             loc_558448
55843E:  LDR             R1, [R4]
558440:  LDR             R2, [R1,#0x64]
558442:  UXTB            R1, R0
558444:  MOV             R0, R4
558446:  BLX             R2
558448:  LDRB            R0, [R5]
55844A:  CMP             R0, #7
55844C:  BHI             loc_55847A
55844E:  LDR.W           R1, [R4,#0x5A4]
558452:  CMP             R1, #3
558454:  BEQ             loc_55847A
558456:  LDRH            R0, [R4,#0x26]
558458:  CMP             R1, #4
55845A:  BNE             loc_558464
55845C:  MOVW            R1, #0x21B
558460:  CMP             R0, R1
558462:  BNE             loc_55847A
558464:  SXTH            R0, R0
558466:  CMP.W           R0, #0x1B0
55846A:  BEQ             loc_55847A
55846C:  MOVW            R1, #0x259
558470:  CMP             R0, R1
558472:  ITT NE
558474:  MOVNE           R0, R4; this
558476:  BLXNE           j__ZN8CVehicle18DoDriveByShootingsEv; CVehicle::DoDriveByShootings(void)
55847A:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x55848A)
55847E:  MOV.W           R2, #0x194
558482:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x55848C)
558486:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
558488:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
55848A:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
55848C:  LDR             R1, [R1]; CWorld::Players ...
55848E:  LDR             R0, [R0]; CWorld::PlayerInFocus
558490:  SMLABB.W        R0, R0, R2, R1
558494:  LDR.W           R0, [R0,#0x100]
558498:  CMP.W           R0, #0x1F4
55849C:  BLS             loc_5584A8
55849E:  LDR.W           R1, [R4,#0x5A4]
5584A2:  SUBS            R1, #3
5584A4:  CMP             R1, #2
5584A6:  BCS             loc_5584BA
5584A8:  LDR.W           R0, [R4,#0x388]
5584AC:  LDR             R0, [R0,#0x1C]
5584AE:  STR.W           R0, [R4,#0xB0]
5584B2:  CMP.W           R8, #0
5584B6:  BNE             loc_55857A
5584B8:  B               loc_558810
5584BA:  SUB.W           R0, R0, #0x1F4
5584BE:  CMP.W           R0, #0x3E8
5584C2:  IT CS
5584C4:  MOVCS.W         R0, #0x3E8
5584C8:  CMP.W           R8, #0
5584CC:  VMOV            S0, R0
5584D0:  VCVT.F32.U32    S0, S0
5584D4:  BEQ             loc_558548
5584D6:  LDR             R0, [R4,#0x14]
5584D8:  VLDR            S4, =-0.4
5584DC:  VLDR            S2, [R0,#0x28]
5584E0:  VCMPE.F32       S2, S4
5584E4:  VMRS            APSR_nzcv, FPSCR
5584E8:  BLE             loc_558548
5584EA:  VLDR            S2, =500.0
5584EE:  LDR.W           R1, =(CAR_BALANCE_MULT_ptr - 0x5584FE)
5584F2:  VDIV.F32        S0, S0, S2
5584F6:  LDR.W           R2, [R4,#0x388]
5584FA:  ADD             R1, PC; CAR_BALANCE_MULT_ptr
5584FC:  LDR             R1, [R1]; CAR_BALANCE_MULT
5584FE:  VLDR            S2, [R0,#8]
558502:  MOV             R0, R8; this
558504:  VNEG.F32        S16, S0
558508:  VLDR            S18, [R2,#0x1C]
55850C:  VCMPE.F32       S2, #0.0
558510:  VLDR            S20, [R1]
558514:  VMRS            APSR_nzcv, FPSCR
558518:  IT GT
55851A:  VMOVGT.F32      S16, S0
55851E:  BLX             j__ZN4CPad20GetSteeringLeftRightEv; CPad::GetSteeringLeftRight(void)
558522:  VMOV            S0, R0
558526:  VLDR            S2, =0.0078125
55852A:  VMUL.F32        S4, S16, S20
55852E:  VCVT.F32.S32    S0, S0
558532:  VMUL.F32        S0, S0, S2
558536:  VLDR            S2, [R9,#0x14]
55853A:  VMUL.F32        S0, S4, S0
55853E:  VMUL.F32        S0, S2, S0
558542:  VADD.F32        S0, S18, S0
558546:  B               loc_55856E
558548:  LDR             R0, =(CAR_BALANCE_MULT_ptr - 0x558552)
55854A:  VMOV.F32        S0, #-0.5
55854E:  ADD             R0, PC; CAR_BALANCE_MULT_ptr
558550:  LDR             R0, [R0]; CAR_BALANCE_MULT
558552:  VLDR            S2, [R0]
558556:  LDR.W           R0, [R4,#0x388]
55855A:  VMUL.F32        S0, S2, S0
55855E:  VLDR            S2, [R9,#0x14]
558562:  VMUL.F32        S0, S0, S2
558566:  VLDR            S2, [R0,#0x1C]
55856A:  VADD.F32        S0, S2, S0
55856E:  VSTR            S0, [R4,#0xB0]
558572:  CMP.W           R8, #0
558576:  BEQ.W           loc_558810
55857A:  LDRB.W          R0, [R4,#0x974]
55857E:  CMP             R0, #0
558580:  BNE.W           loc_558810
558584:  LDR.W           R0, [R4,#0x5A4]
558588:  SUBS            R1, R0, #3
55858A:  CMP             R1, #2
55858C:  BCC.W           loc_558810
558590:  CMP             R0, #1
558592:  BNE             loc_5585AC
558594:  VLDR            S18, =0.0025
558598:  B               loc_5585BE
55859A:  ALIGN 4
55859C:  DCFS 0.01
5585A0:  DCFS 0.4
5585A4:  DCFS -0.005
5585A8:  DCFS -0.4
5585AC:  MOVS            R0, #0xE
5585AE:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
5585B2:  VLDR            S0, =0.0007
5585B6:  VMOV            S2, R0
5585BA:  VMUL.F32        S18, S2, S0
5585BE:  VLDR            S0, =3000.0
5585C2:  MOV             R0, R8; this
5585C4:  VLDR            S22, [R4,#0x94]
5585C8:  VDIV.F32        S24, S0, S22
5585CC:  BLX             j__ZN4CPad20GetSteeringLeftRightEv; CPad::GetSteeringLeftRight(void)
5585D0:  VMOV            S0, R0
5585D4:  MOV             R0, R8; this
5585D6:  VCVT.F32.S32    S16, S0
5585DA:  BLX             j__ZN4CPad17GetSteeringUpDownEv; CPad::GetSteeringUpDown(void)
5585DE:  VMOV            S0, R0; this
5585E2:  VLDR            S2, =0.0078125
5585E6:  VMOV.F32        S4, #1.0
5585EA:  VCVT.F32.S32    S0, S0
5585EE:  VMUL.F32        S20, S16, S2
5585F2:  VMUL.F32        S16, S0, S2
5585F6:  VMIN.F32        D0, D12, D2
5585FA:  VMUL.F32        S22, S22, S0
5585FE:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
558602:  CMP             R0, #2
558604:  BNE             loc_558658
558606:  VABS.F32        S2, S20
55860A:  VLDR            S0, =0.05
55860E:  VCMPE.F32       S2, S0
558612:  VMRS            APSR_nzcv, FPSCR
558616:  ITTT LT
558618:  VABSLT.F32      S2, S16
55861C:  VCMPELT.F32     S2, S0
558620:  VMRSLT          APSR_nzcv, FPSCR
558624:  BGE             loc_558658
558626:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x558634)
558628:  VMOV.F32        S6, #-1.5
55862C:  VLDR            S0, =0.02
558630:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
558632:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
558634:  VLDR            S4, [R0,#0x10]
558638:  VLDR            S2, [R0,#0xC]
55863C:  VMUL.F32        S4, S4, S0
558640:  VMUL.F32        S0, S2, S0
558644:  VMOV.F32        S2, #1.5
558648:  VMAX.F32        D16, D2, D3
55864C:  VMAX.F32        D17, D0, D3
558650:  VMIN.F32        D8, D16, D1
558654:  VMIN.F32        D10, D17, D1
558658:  MOV             R0, R8; this
55865A:  VMUL.F32        S18, S18, S22
55865E:  BLX             j__ZN4CPad12GetHandBrakeEv; CPad::GetHandBrake(void)
558662:  CMP             R0, #0
558664:  BEQ             loc_558732
558666:  LDR             R0, [R4,#0x14]
558668:  VCMPE.F32       S20, #0.0
55866C:  VLDR            S0, [R4,#0x54]
558670:  VLDR            S2, [R4,#0x58]
558674:  VLDR            S6, [R0,#0x20]
558678:  VLDR            S8, [R0,#0x24]
55867C:  VMUL.F32        S0, S0, S6
558680:  VMRS            APSR_nzcv, FPSCR
558684:  VMUL.F32        S2, S2, S8
558688:  VLDR            S4, [R4,#0x5C]
55868C:  VLDR            S10, [R0,#0x28]
558690:  VMUL.F32        S4, S4, S10
558694:  VADD.F32        S0, S0, S2
558698:  VADD.F32        S0, S0, S4
55869C:  ITTT LT
55869E:  VLDRLT          S2, =0.02
5586A2:  VCMPELT.F32     S0, S2
5586A6:  VMRSLT          APSR_nzcv, FPSCR
5586AA:  BLT             loc_5586C4
5586AC:  VCMPE.F32       S20, #0.0
5586B0:  VMRS            APSR_nzcv, FPSCR
5586B4:  ITTT GT
5586B6:  VLDRGT          S2, =-0.02
5586BA:  VCMPEGT.F32     S0, S2
5586BE:  VMRSGT          APSR_nzcv, FPSCR
5586C2:  BLE             loc_55873C
5586C4:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5586CE)
5586C6:  VLDR            S2, [R0]
5586CA:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5586CC:  VLDR            S4, [R0,#4]
5586D0:  VLDR            S6, [R0,#8]
5586D4:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
5586D6:  VLDR            S8, [R0,#0x10]
5586DA:  VLDR            S10, [R0,#0x14]
5586DE:  VLDR            S0, [R1]
5586E2:  VLDR            S12, [R0,#0x18]
5586E6:  VMUL.F32        S0, S20, S0
5586EA:  VMUL.F32        S0, S18, S0
5586EE:  VMUL.F32        S2, S2, S0
5586F2:  MOV             R0, R4
5586F4:  VMUL.F32        S4, S0, S4
5586F8:  VMUL.F32        S0, S0, S6
5586FC:  VMOV            R1, S2
558700:  VLDR            S2, [R4,#0xAC]
558704:  VMOV            R2, S4
558708:  VLDR            S4, [R4,#0xB0]
55870C:  VMOV            R3, S0
558710:  VLDR            S0, [R4,#0xA8]
558714:  VADD.F32        S4, S4, S12
558718:  VADD.F32        S0, S0, S8
55871C:  VADD.F32        S2, S2, S10
558720:  VSTR            S0, [SP,#0xA8+var_A8]
558724:  VSTR            S2, [SP,#0xA8+var_A4]
558728:  VSTR            S4, [SP,#0xA8+var_A0]
55872C:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
558730:  B               loc_55873C
558732:  MOV             R0, R8; this
558734:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
558738:  CMP             R0, #0
55873A:  BEQ             loc_55882A
55873C:  MOV             R0, R8; this
55873E:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
558742:  CMP             R0, #0
558744:  BNE             loc_558810
558746:  LDR             R0, [R4,#0x14]
558748:  VCMPE.F32       S16, #0.0
55874C:  VLDR            S0, [R4,#0x54]
558750:  VLDR            S2, [R4,#0x58]
558754:  VLDR            S6, [R0]
558758:  VLDR            S8, [R0,#4]
55875C:  VMUL.F32        S0, S0, S6
558760:  VMRS            APSR_nzcv, FPSCR
558764:  VMUL.F32        S2, S2, S8
558768:  VLDR            S4, [R4,#0x5C]
55876C:  VLDR            S10, [R0,#8]
558770:  VMUL.F32        S4, S4, S10
558774:  VADD.F32        S0, S0, S2
558778:  VADD.F32        S0, S0, S4
55877C:  ITTT LT
55877E:  VLDRLT          S2, =0.02
558782:  VCMPELT.F32     S0, S2
558786:  VMRSLT          APSR_nzcv, FPSCR
55878A:  BLT             loc_5587A4
55878C:  VCMPE.F32       S16, #0.0
558790:  VMRS            APSR_nzcv, FPSCR
558794:  ITTT GT
558796:  VLDRGT          S2, =-0.02
55879A:  VCMPEGT.F32     S0, S2
55879E:  VMRSGT          APSR_nzcv, FPSCR
5587A2:  BLE             loc_558810
5587A4:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5587AE)
5587A6:  VLDR            S8, [R0,#0x20]
5587AA:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5587AC:  VLDR            S10, [R0,#0x24]
5587B0:  VLDR            S12, [R0,#0x28]
5587B4:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
5587B6:  VLDR            S2, [R0,#0x10]
5587BA:  VLDR            S4, [R0,#0x14]
5587BE:  VLDR            S0, [R1]
5587C2:  VLDR            S6, [R0,#0x18]
5587C6:  MOV             R0, R4
5587C8:  VMUL.F32        S0, S16, S0
5587CC:  VMUL.F32        S0, S18, S0
5587D0:  VMUL.F32        S8, S8, S0
5587D4:  VMUL.F32        S10, S0, S10
5587D8:  VMUL.F32        S0, S0, S12
5587DC:  VMOV            R1, S8
5587E0:  VLDR            S8, [R4,#0xAC]
5587E4:  VMOV            R2, S10
5587E8:  VLDR            S10, [R4,#0xB0]
5587EC:  VMOV            R3, S0
5587F0:  VLDR            S0, [R4,#0xA8]
5587F4:  VADD.F32        S6, S10, S6
5587F8:  VADD.F32        S0, S0, S2
5587FC:  VADD.F32        S4, S8, S4
558800:  VSTR            S0, [SP,#0xA8+var_A8]
558804:  VSTR            S4, [SP,#0xA8+var_A4]
558808:  VSTR            S6, [SP,#0xA8+var_A0]
55880C:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
558810:  MOV             R0, R4; this
558812:  MOV             R1, R10; unsigned int *
558814:  BLX             j__ZN11CAutomobile22DoSoftGroundResistanceERj; CAutomobile::DoSoftGroundResistance(uint &)
558818:  MOVS            R6, #0
55881A:  MOV             R0, R6; jumptable 00557DC8 default case, cases 1,6,7,11
55881C:  ADD             SP, SP, #0x60 ; '`'
55881E:  VPOP            {D8-D12}
558822:  ADD             SP, SP, #4
558824:  POP.W           {R8-R11}
558828:  POP             {R4-R7,PC}
55882A:  LDR             R0, [R4,#0x14]
55882C:  VCMPE.F32       S20, #0.0
558830:  VLDR            S0, [R4,#0x54]
558834:  VLDR            S2, [R4,#0x58]
558838:  VLDR            S6, [R0,#0x10]
55883C:  VLDR            S8, [R0,#0x14]
558840:  VMUL.F32        S0, S0, S6
558844:  VMRS            APSR_nzcv, FPSCR
558848:  VMUL.F32        S2, S2, S8
55884C:  VLDR            S4, [R4,#0x5C]
558850:  VLDR            S10, [R0,#0x18]
558854:  VMUL.F32        S4, S4, S10
558858:  VADD.F32        S0, S0, S2
55885C:  VADD.F32        S0, S0, S4
558860:  ITTT LT
558862:  VLDRLT          S2, =0.02
558866:  VCMPELT.F32     S0, S2
55886A:  VMRSLT          APSR_nzcv, FPSCR
55886E:  BLT             loc_55888A
558870:  VCMPE.F32       S20, #0.0
558874:  VMRS            APSR_nzcv, FPSCR
558878:  ITTT GT
55887A:  VLDRGT          S2, =-0.02
55887E:  VCMPEGT.F32     S0, S2
558882:  VMRSGT          APSR_nzcv, FPSCR
558886:  BLE.W           loc_55873C
55888A:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x558894)
55888C:  VLDR            S2, [R0]
558890:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
558892:  VLDR            S4, [R0,#4]
558896:  VLDR            S6, [R0,#8]
55889A:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
55889C:  VLDR            S8, [R0,#0x20]
5588A0:  VLDR            S10, [R0,#0x24]
5588A4:  VLDR            S0, [R1]
5588A8:  VLDR            S12, [R0,#0x28]
5588AC:  B               loc_5586E6
