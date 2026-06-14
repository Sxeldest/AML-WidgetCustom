; =========================================================
; Game Engine Function: _ZN25CTaskSimpleAchieveHeading7SetUpIKEP4CPed
; Address            : 0x51D0E8 - 0x51D206
; =========================================================

51D0E8:  PUSH            {R4-R7,LR}
51D0EA:  ADD             R7, SP, #0xC
51D0EC:  PUSH.W          {R8,R9,R11}
51D0F0:  SUB             SP, SP, #0x30
51D0F2:  MOV             R4, R0
51D0F4:  MOVS            R0, #0; this
51D0F6:  MOV             R5, R1
51D0F8:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
51D0FC:  MOV             R6, R0
51D0FE:  MOV.W           R0, #0xFFFFFFFF; int
51D102:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
51D106:  CMP             R0, R5
51D108:  ITT EQ
51D10A:  LDRHEQ.W        R0, [R6,#0x110]
51D10E:  CMPEQ           R0, #0
51D110:  BEQ             loc_51D1FE
51D112:  MOV             R0, R5; this
51D114:  BLX             j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
51D118:  CMP             R0, #1
51D11A:  ITT EQ
51D11C:  LDRBEQ          R0, [R4,#0x14]
51D11E:  MOVSEQ.W        R0, R0,LSL#31
51D122:  BNE             loc_51D1FE
51D124:  LDR             R0, =(g_ikChainMan_ptr - 0x51D12C)
51D126:  MOV             R1, R5; CPed *
51D128:  ADD             R0, PC; g_ikChainMan_ptr
51D12A:  LDR             R0, [R0]; g_ikChainMan ; this
51D12C:  BLX             j__ZN16IKChainManager_c15GetLookAtEntityEP4CPed; IKChainManager_c::GetLookAtEntity(CPed *)
51D130:  CMP             R0, #0
51D132:  BNE             loc_51D1FE
51D134:  LDR.W           R0, [R5,#0x440]
51D138:  MOVS            R1, #5; int
51D13A:  ADDS            R0, #4; this
51D13C:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
51D140:  CMP             R0, #0
51D142:  BNE             loc_51D1FE
51D144:  LDR             R0, [R4,#4]
51D146:  CBZ             R0, loc_51D166
51D148:  LDR             R1, [R0]
51D14A:  LDR             R1, [R1,#0x14]
51D14C:  BLX             R1
51D14E:  MOVW            R1, #0x395
51D152:  CMP             R0, R1
51D154:  BEQ             loc_51D1FE
51D156:  LDR             R0, [R4,#4]
51D158:  LDR             R1, [R0]
51D15A:  LDR             R1, [R1,#0x14]
51D15C:  BLX             R1
51D15E:  MOVW            R1, #0x3AB
51D162:  CMP             R0, R1
51D164:  BEQ             loc_51D1FE
51D166:  LDR             R6, [R4,#8]
51D168:  LDR.W           R9, [R5,#0x14]
51D16C:  MOV             R0, R6; x
51D16E:  BLX             sinf
51D172:  MOV             R8, R0
51D174:  MOV             R0, R6; x
51D176:  BLX             cosf
51D17A:  VMOV            S0, R0
51D17E:  ADD.W           R0, R9, #0x30 ; '0'
51D182:  VMOV            S4, R8
51D186:  CMP.W           R9, #0
51D18A:  VADD.F32        S0, S0, S0
51D18E:  IT EQ
51D190:  ADDEQ           R0, R5, #4
51D192:  VADD.F32        S4, S4, S4
51D196:  VLDR            S6, [R0]
51D19A:  VLDR            S8, [R0,#4]
51D19E:  MOVS            R1, #0
51D1A0:  VLDR            S10, [R0,#8]
51D1A4:  MOV.W           R12, #3
51D1A8:  VLDR            S2, =0.61
51D1AC:  MOV.W           LR, #0x1F4
51D1B0:  LDR             R0, =(g_ikChainMan_ptr - 0x51D1C6)
51D1B2:  MOV.W           R8, #0x3E800000
51D1B6:  VADD.F32        S2, S10, S2
51D1BA:  MOV.W           R3, #0xFFFFFFFF
51D1BE:  VADD.F32        S0, S8, S0
51D1C2:  ADD             R0, PC; g_ikChainMan_ptr
51D1C4:  VADD.F32        S4, S6, S4
51D1C8:  MOVW            R6, #0x1388
51D1CC:  LDR             R0, [R0]; g_ikChainMan ; int
51D1CE:  ADD             R2, SP, #0x48+var_24
51D1D0:  VSTR            S2, [SP,#0x48+var_1C]
51D1D4:  VSTR            S0, [SP,#0x48+var_20]
51D1D8:  VSTR            S4, [SP,#0x48+var_24]
51D1DC:  STRD.W          R6, R3, [SP,#0x48+var_48]; int
51D1E0:  MOVS            R3, #0; int
51D1E2:  STRD.W          R2, R1, [SP,#0x48+var_40]; int
51D1E6:  MOV             R2, R5; CPed *
51D1E8:  STRD.W          R8, LR, [SP,#0x48+var_38]; float
51D1EC:  STRD.W          R12, R1, [SP,#0x48+var_30]; int
51D1F0:  ADR             R1, aTaskachvheadin; "TaskAchvHeading"
51D1F2:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
51D1F6:  LDRB            R0, [R4,#0x14]
51D1F8:  ORR.W           R0, R0, #1
51D1FC:  STRB            R0, [R4,#0x14]
51D1FE:  ADD             SP, SP, #0x30 ; '0'
51D200:  POP.W           {R8,R9,R11}
51D204:  POP             {R4-R7,PC}
