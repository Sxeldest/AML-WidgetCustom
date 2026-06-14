; =========================================================
; Game Engine Function: _ZN5CBike9BlowUpCarEP7CEntityh
; Address            : 0x566A98 - 0x566B8A
; =========================================================

566A98:  PUSH            {R4-R7,LR}
566A9A:  ADD             R7, SP, #0xC
566A9C:  PUSH.W          {R8-R11}
566AA0:  SUB             SP, SP, #0x1C
566AA2:  MOV             R4, R0
566AA4:  MOV             R10, R2
566AA6:  LDRB.W          R0, [R4,#0x42E]
566AAA:  MOV             R8, R1
566AAC:  LSLS            R0, R0, #0x1A
566AAE:  BMI             loc_566AB8
566AB0:  ADD             SP, SP, #0x1C
566AB2:  POP.W           {R8-R11}
566AB6:  POP             {R4-R7,PC}; int
566AB8:  VLDR            S0, =0.13
566ABC:  MOVS            R2, #5
566ABE:  VLDR            S2, [R4,#0x50]
566AC2:  ADDW            R11, R4, #0x42C
566AC6:  LDRB.W          R1, [R4,#0x3A]
566ACA:  VADD.F32        S0, S2, S0
566ACE:  LDR             R3, [R4,#0x44]
566AD0:  LDR             R0, [R4,#0x18]
566AD2:  BFI.W           R1, R2, #3, #0x1D
566AD6:  STRB.W          R1, [R4,#0x3A]
566ADA:  ORR.W           R1, R3, #0x20000000
566ADE:  STR             R1, [R4,#0x44]
566AE0:  MOV.W           R1, #0x4000
566AE4:  VSTR            S0, [R4,#0x50]
566AE8:  BLX             j__ZN18CVisibilityPlugins25SetClumpForAllAtomicsFlagEP7RpClumpi; CVisibilityPlugins::SetClumpForAllAtomicsFlag(RpClump *,int)
566AEC:  LDR             R0, =(TheCamera_ptr - 0x566AFA)
566AEE:  ADDS            R5, R4, #4
566AF0:  LDR             R1, [R4,#0x14]
566AF2:  MOV.W           R9, #0
566AF6:  ADD             R0, PC; TheCamera_ptr
566AF8:  MOV             R6, R5
566AFA:  CMP             R1, #0
566AFC:  STRH.W          R9, [R4,#0x4EE]
566B00:  STR.W           R9, [R4,#0x4CC]
566B04:  IT NE
566B06:  ADDNE.W         R6, R1, #0x30 ; '0'
566B0A:  LDRD.W          R2, R3, [R6]; float
566B0E:  MOVW            R1, #0xCCCD
566B12:  LDR             R0, [R0]; TheCamera ; this
566B14:  MOVT            R1, #0x3ECC; float
566B18:  VLDR            S0, [R6,#8]
566B1C:  VSTR            S0, [SP,#0x38+var_38]
566B20:  BLX             j__ZN7CCamera8CamShakeEffff; CCamera::CamShake(float,float,float,float)
566B24:  MOV             R0, R4; this
566B26:  BLX             j__ZN8CVehicle17KillPedsInVehicleEv; CVehicle::KillPedsInVehicle(void)
566B2A:  LDRB.W          R0, [R4,#0x4B2]
566B2E:  LDRD.W          R1, R2, [R11]
566B32:  AND.W           R0, R0, #0xE7
566B36:  STRB.W          R0, [R4,#0x4B2]
566B3A:  BIC.W           R0, R1, #0x50 ; 'P'
566B3E:  STRD.W          R0, R2, [R11]
566B42:  MOV             R0, R4; this
566B44:  MOVS            R1, #0; unsigned __int8
566B46:  BLX             j__ZN8CVehicle22ChangeLawEnforcerStateEh; CVehicle::ChangeLawEnforcerState(uchar)
566B4A:  LDR             R0, [R4,#0x14]
566B4C:  MOVS            R2, #0xBF800000
566B52:  MOVS            R6, #1
566B54:  CMP             R0, #0
566B56:  IT NE
566B58:  ADDNE.W         R5, R0, #0x30 ; '0'
566B5C:  LDRD.W          R3, R0, [R5]; int
566B60:  LDR             R1, [R5,#8]
566B62:  STMEA.W         SP, {R0,R1,R9}
566B66:  MOV             R0, R4; int
566B68:  MOV             R1, R8; int
566B6A:  STRD.W          R6, R2, [SP,#0x38+var_2C]; int
566B6E:  MOVS            R2, #4; int
566B70:  STR.W           R10, [SP,#0x38+var_24]; int
566B74:  BLX             j__ZN10CExplosion12AddExplosionEP7CEntityS1_14eExplosionType7CVectorjhfh; CExplosion::AddExplosion(CEntity *,CEntity *,eExplosionType,CVector,uint,uchar,float,uchar)
566B78:  MOV             R0, R4; this
566B7A:  MOVS            R1, #0; CVehicle *
566B7C:  ADD             SP, SP, #0x1C
566B7E:  POP.W           {R8-R11}
566B82:  POP.W           {R4-R7,LR}
566B86:  B.W             sub_18CC38
