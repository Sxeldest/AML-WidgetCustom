; =========================================================
; Game Engine Function: _ZN23CTaskComplexAvoidEntity7SetUpIKEP4CPed
; Address            : 0x522AC0 - 0x522C6E
; =========================================================

522AC0:  PUSH            {R4-R7,LR}
522AC2:  ADD             R7, SP, #0xC
522AC4:  PUSH.W          {R11}
522AC8:  SUB             SP, SP, #0x38
522ACA:  MOV             R4, R0
522ACC:  MOVS            R0, #0; this
522ACE:  MOV             R5, R1
522AD0:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
522AD4:  MOV             R6, R0
522AD6:  MOV.W           R0, #0xFFFFFFFF; int
522ADA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
522ADE:  CMP             R0, R5
522AE0:  ITT EQ
522AE2:  LDRHEQ.W        R0, [R6,#0x110]
522AE6:  CMPEQ           R0, #0
522AE8:  BEQ             loc_522B1A
522AEA:  MOV             R0, R5; this
522AEC:  BLX             j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
522AF0:  CMP             R0, #1
522AF2:  ITT EQ
522AF4:  LDRBEQ.W        R0, [R4,#0x50]
522AF8:  MOVSEQ.W        R0, R0,LSL#31
522AFC:  BNE             loc_522B1A
522AFE:  LDR             R0, =(g_ikChainMan_ptr - 0x522B06)
522B00:  MOV             R1, R5; CPed *
522B02:  ADD             R0, PC; g_ikChainMan_ptr
522B04:  LDR             R0, [R0]; g_ikChainMan ; this
522B06:  BLX             j__ZN16IKChainManager_c15GetLookAtEntityEP4CPed; IKChainManager_c::GetLookAtEntity(CPed *)
522B0A:  CBNZ            R0, loc_522B1A
522B0C:  LDR.W           R0, [R5,#0x440]
522B10:  MOVS            R1, #5; int
522B12:  ADDS            R0, #4; this
522B14:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
522B18:  CBZ             R0, loc_522B22
522B1A:  ADD             SP, SP, #0x38 ; '8'
522B1C:  POP.W           {R11}
522B20:  POP             {R4-R7,PC}
522B22:  LDR             R0, [R4,#4]
522B24:  CBZ             R0, loc_522B44
522B26:  LDR             R1, [R0]
522B28:  LDR             R1, [R1,#0x14]
522B2A:  BLX             R1
522B2C:  MOVW            R1, #0x395
522B30:  CMP             R0, R1
522B32:  BEQ             loc_522B1A
522B34:  LDR             R0, [R4,#4]
522B36:  LDR             R1, [R0]
522B38:  LDR             R1, [R1,#0x14]
522B3A:  BLX             R1
522B3C:  MOVW            R1, #0x3AB
522B40:  CMP             R0, R1
522B42:  BEQ             loc_522B1A
522B44:  LDR             R0, [R5,#0x14]
522B46:  ADDS            R6, R5, #4
522B48:  VLDR            S0, [R4,#0x20]
522B4C:  CMP             R0, #0
522B4E:  MOV             R1, R6
522B50:  VLDR            S2, [R4,#0x24]
522B54:  VLDR            S4, [R4,#0x28]
522B58:  IT NE
522B5A:  ADDNE.W         R1, R0, #0x30 ; '0'
522B5E:  VLDR            S6, [R1]
522B62:  VLDR            S8, [R1,#4]
522B66:  VSUB.F32        S0, S0, S6
522B6A:  VLDR            S10, [R1,#8]
522B6E:  VSUB.F32        S2, S2, S8
522B72:  VSUB.F32        S4, S4, S10
522B76:  VMUL.F32        S8, S0, S0
522B7A:  VMUL.F32        S6, S2, S2
522B7E:  VSTR            S2, [SP,#0x48+var_18]
522B82:  VMUL.F32        S10, S4, S4
522B86:  VSTR            S0, [SP,#0x48+var_1C]
522B8A:  VSTR            S4, [SP,#0x48+var_14]
522B8E:  VADD.F32        S6, S8, S6
522B92:  VMOV.F32        S8, #9.0
522B96:  VADD.F32        S6, S6, S10
522B9A:  VCMPE.F32       S6, S8
522B9E:  VMRS            APSR_nzcv, FPSCR
522BA2:  BLE             loc_522B1A
522BA4:  ADD             R0, SP, #0x48+var_1C; this
522BA6:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
522BAA:  LDR             R0, [R5,#0x14]
522BAC:  VLDR            S0, [SP,#0x48+var_1C]
522BB0:  VLDR            S2, [SP,#0x48+var_18]
522BB4:  VLDR            S6, [R0,#0x10]
522BB8:  VLDR            S8, [R0,#0x14]
522BBC:  VMUL.F32        S6, S0, S6
522BC0:  VLDR            S4, [SP,#0x48+var_14]
522BC4:  VMUL.F32        S8, S2, S8
522BC8:  VLDR            S10, [R0,#0x18]
522BCC:  LDR             R1, =(dword_9FEFB0 - 0x522BD6)
522BCE:  VMUL.F32        S10, S4, S10
522BD2:  ADD             R1, PC; dword_9FEFB0
522BD4:  VADD.F32        S6, S6, S8
522BD8:  VLDR            S8, [R1]
522BDC:  VADD.F32        S6, S6, S10
522BE0:  VCMPE.F32       S6, S8
522BE4:  VMRS            APSR_nzcv, FPSCR
522BE8:  BGE             loc_522B1A
522BEA:  VADD.F32        S4, S4, S4
522BEE:  CMP             R0, #0
522BF0:  IT NE
522BF2:  ADDNE.W         R6, R0, #0x30 ; '0'
522BF6:  VADD.F32        S2, S2, S2
522BFA:  VLDR            S6, [R6,#8]
522BFE:  VADD.F32        S0, S0, S0
522C02:  VLDR            S8, [R4,#0x24]
522C06:  MOVS            R2, #0
522C08:  VLDR            S10, =0.61
522C0C:  MOVS            R3, #3
522C0E:  LDR             R0, =(g_ikChainMan_ptr - 0x522C2E)
522C10:  ADR             R1, aTaskavoidentit; "TaskAvoidEntity"
522C12:  VADD.F32        S4, S4, S6
522C16:  VLDR            S6, [R4,#0x20]
522C1A:  VADD.F32        S2, S2, S8
522C1E:  STR             R2, [SP,#0x48+var_2C]; int
522C20:  VADD.F32        S0, S0, S6
522C24:  STR             R3, [SP,#0x48+var_30]; int
522C26:  MOV.W           R3, #0x1F4
522C2A:  ADD             R0, PC; g_ikChainMan_ptr
522C2C:  STR             R3, [SP,#0x48+var_34]; int
522C2E:  MOV.W           R3, #0x3E800000
522C32:  LDR             R0, [R0]; g_ikChainMan ; int
522C34:  VADD.F32        S4, S4, S10
522C38:  VSTR            S2, [SP,#0x48+var_24]
522C3C:  VSTR            S0, [SP,#0x48+var_28]
522C40:  VSTR            S4, [SP,#0x48+var_20]
522C44:  STRD.W          R2, R3, [SP,#0x48+var_3C]; int
522C48:  ADD             R2, SP, #0x48+var_28
522C4A:  STR             R2, [SP,#0x48+var_40]; int
522C4C:  MOV.W           R2, #0xFFFFFFFF
522C50:  STR             R2, [SP,#0x48+var_44]; int
522C52:  MOVW            R2, #0x1388
522C56:  STR             R2, [SP,#0x48+var_48]; int
522C58:  MOV             R2, R5; CPed *
522C5A:  MOVS            R3, #0; int
522C5C:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
522C60:  LDRB.W          R0, [R4,#0x50]
522C64:  ORR.W           R0, R0, #1
522C68:  STRB.W          R0, [R4,#0x50]
522C6C:  B               loc_522B1A
