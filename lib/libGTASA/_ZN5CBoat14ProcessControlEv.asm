; =========================================================
; Game Engine Function: _ZN5CBoat14ProcessControlEv
; Address            : 0x56BE50 - 0x56C584
; =========================================================

56BE50:  PUSH            {R4-R7,LR}
56BE52:  ADD             R7, SP, #0xC
56BE54:  PUSH.W          {R8,R9,R11}
56BE58:  VPUSH           {D8}
56BE5C:  SUB             SP, SP, #0x30
56BE5E:  MOV             R4, R0
56BE60:  ADD.W           R0, R4, #0x13C
56BE64:  NOP
56BE66:  NOP
56BE68:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x56BE70)
56BE6C:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
56BE6E:  LDR             R1, [R0]; CTimer::ms_fTimeStep ...
56BE70:  ADDW            R0, R4, #0x75C
56BE74:  VLDR            S0, [R1]
56BE78:  MOVS            R1, #0
56BE7A:  VLDR            S2, [R0]
56BE7E:  VCMPE.F32       S2, #0.0
56BE82:  VMRS            APSR_nzcv, FPSCR
56BE86:  BLE             loc_56BEA6
56BE88:  VCMPE.F32       S2, S0
56BE8C:  VMRS            APSR_nzcv, FPSCR
56BE90:  BLE             loc_56BEA2
56BE92:  VSUB.F32        S2, S2, S0
56BE96:  ADDS            R1, #1
56BE98:  CMP             R1, #0x20 ; ' '
56BE9A:  VSTM            R0!, {S2}
56BE9E:  BCC             loc_56BE7A
56BEA0:  B               loc_56BEAA
56BEA2:  MOVS            R2, #0
56BEA4:  STR             R2, [R0]
56BEA6:  STRH.W          R1, [R4,#0x658]
56BEAA:  MOV             R0, R4; this
56BEAC:  BLX             j__ZN8CVehicle23ProcessDelayedExplosionEv; CVehicle::ProcessDelayedExplosion(void)
56BEB0:  LDRB.W          R0, [R4,#0x47]
56BEB4:  LSLS            R0, R0, #0x1A
56BEB6:  BPL             loc_56BEF6
56BEB8:  VLDR            S0, =0.008
56BEBC:  VLDR            S4, [R4,#0x90]
56BEC0:  VLDR            S8, =100.0
56BEC4:  VMUL.F32        S6, S4, S0
56BEC8:  VLDR            S2, [R4,#0xA4]
56BECC:  VMUL.F32        S6, S6, S8
56BED0:  VLDR            S8, =125.0
56BED4:  VDIV.F32        S6, S6, S8
56BED8:  VCMPE.F32       S2, S6
56BEDC:  VMRS            APSR_nzcv, FPSCR
56BEE0:  BLE             loc_56BEF6
56BEE2:  VLDR            S6, =-0.001
56BEE6:  VMUL.F32        S4, S4, S6
56BEEA:  VMUL.F32        S0, S4, S0
56BEEE:  VADD.F32        S0, S2, S0
56BEF2:  VSTR            S0, [R4,#0xA4]
56BEF6:  MOV.W           R0, #0xFFFFFFFF; int
56BEFA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
56BEFE:  LDR.W           R0, [R0,#0x444]
56BF02:  LDR             R0, [R0]
56BF04:  LDR             R0, [R0,#0x2C]
56BF06:  CMP             R0, #1
56BF08:  BLT             loc_56BF64
56BF0A:  LDRH            R0, [R4,#0x26]
56BF0C:  CMP.W           R0, #0x1AE
56BF10:  BNE             loc_56BF64
56BF12:  MOV.W           R0, #0xFFFFFFFF; int
56BF16:  MOVS            R1, #0; bool
56BF18:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
56BF1C:  CBZ             R0, loc_56BF64
56BF1E:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
56BF22:  CMP             R0, #4
56BF24:  BNE             loc_56BF64
56BF26:  LDRSB.W         R0, [R4,#0x3BE]
56BF2A:  CMP             R0, #0x15
56BF2C:  BHI             loc_56BF64
56BF2E:  MOVS            R1, #1
56BF30:  LSL.W           R0, R1, R0
56BF34:  MOVS            R1, #0x20003C
56BF3A:  TST             R0, R1
56BF3C:  BEQ             loc_56BF64
56BF3E:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x56BF4A)
56BF42:  LDR.W           R1, [R4,#0x614]
56BF46:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
56BF48:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
56BF4A:  LDR             R5, [R0]; CTimer::m_snTimeInMilliseconds
56BF4C:  CMP             R5, R1
56BF4E:  BLS             loc_56BF64
56BF50:  BLX             rand
56BF54:  BFC.W           R0, #0xC, #0x14
56BF58:  MOVW            R1, #0x1194
56BF5C:  ADD             R0, R5
56BF5E:  ADD             R0, R1
56BF60:  STR.W           R0, [R4,#0x614]
56BF64:  MOV             R0, R4; this
56BF66:  BLX             j__ZN8CVehicle16UpdateClumpAlphaEv; CVehicle::UpdateClumpAlpha(void)
56BF6A:  MOV             R0, R4; this
56BF6C:  BLX             j__ZN8CVehicle15ProcessCarAlarmEv; CVehicle::ProcessCarAlarm(void)
56BF70:  LDRB.W          R0, [R4,#0x3A]
56BF74:  LSRS            R0, R0, #3
56BF76:  CMP             R0, #5; switch 6 cases
56BF78:  BHI.W           def_56BF7C; jumptable 0056BF7C default case, case 1
56BF7C:  TBB.W           [PC,R0]; switch jump
56BF80:  DCB 0x4C; jump table for switch statement
56BF81:  DCB 0x9B
56BF82:  DCB 0x6C
56BF83:  DCB 0x89
56BF84:  DCB 3
56BF85:  DCB 3
56BF86:  MOV.W           R8, #0; jumptable 0056BF7C cases 4,5
56BF8A:  LDR             R0, [R4,#0x44]
56BF8C:  LDR             R6, [R4,#0x14]
56BF8E:  MOV.W           R2, #0x3F000000
56BF92:  STR.W           R8, [R4,#0x498]
56BF96:  ORR.W           R0, R0, #0x100
56BF9A:  LDRB.W          R1, [R4,#0x5C0]
56BF9E:  ADD.W           R5, R6, #0x30 ; '0'
56BFA2:  STR.W           R8, [R4,#0x4A0]
56BFA6:  STR.W           R2, [R4,#0x4A4]
56BFAA:  ORR.W           R1, R1, #3
56BFAE:  LDR.W           R2, [R4,#0x42C]
56BFB2:  STRB.W          R1, [R4,#0x5C0]
56BFB6:  STR             R0, [R4,#0x44]
56BFB8:  BIC.W           R0, R2, #0x20 ; ' '
56BFBC:  STR.W           R0, [R4,#0x42C]
56BFC0:  MOVS            R0, #0; int
56BFC2:  BLX             j__Z37FindPlayerCentreOfWorld_NoSniperShifti; FindPlayerCentreOfWorld_NoSniperShift(int)
56BFC6:  CMP             R6, #0
56BFC8:  VLDR            S0, [R0]
56BFCC:  IT EQ
56BFCE:  ADDEQ           R5, R4, #4
56BFD0:  VLDR            D16, [R0,#4]
56BFD4:  VLDR            S2, [R5]
56BFD8:  VLDR            D17, [R5,#4]
56BFDC:  VSUB.F32        S0, S2, S0
56BFE0:  VSUB.F32        D16, D17, D16
56BFE4:  VMUL.F32        D1, D16, D16
56BFE8:  VMUL.F32        S0, S0, S0
56BFEC:  VADD.F32        S0, S0, S2
56BFF0:  VADD.F32        S0, S0, S3
56BFF4:  VLDR            S2, =150.0
56BFF8:  VSQRT.F32       S0, S0
56BFFC:  VCMPE.F32       S0, S2
56C000:  VMRS            APSR_nzcv, FPSCR
56C004:  BLE             def_56BF7C; jumptable 0056BF7C default case, case 1
56C006:  VMOV.I32        Q8, #0
56C00A:  ADD.W           R0, R4, #0x48 ; 'H'
56C00E:  STRD.W          R8, R8, [R4,#0x58]
56C012:  VST1.32         {D16-D17}, [R0]
56C016:  B               loc_56C578
56C018:  MOVW            R0, #0x3FF6; jumptable 0056BF7C case 0
56C01C:  LDRB.W          R1, [R4,#0x5C0]
56C020:  MOVT            R0, #0xC61C
56C024:  STR.W           R0, [R4,#0x610]
56C028:  AND.W           R1, R1, #0xFB
56C02C:  LDR.W           R0, [R4,#0x464]
56C030:  STRB.W          R1, [R4,#0x5C0]
56C034:  CBZ             R0, loc_56C042
56C036:  LDR             R2, [R4]
56C038:  LDRB.W          R1, [R0,#0x59C]
56C03C:  MOV             R0, R4
56C03E:  LDR             R2, [R2,#0x64]
56C040:  BLX             R2
56C042:  LDRH            R0, [R4,#0x26]
56C044:  CMP.W           R0, #0x1AE
56C048:  ITT EQ
56C04A:  MOVEQ           R0, R4; this
56C04C:  BLXEQ           j__ZN8CVehicle18DoFixedMachineGunsEv; CVehicle::DoFixedMachineGuns(void)
56C050:  MOV             R0, R4; this
56C052:  BLX             j__ZN8CVehicle18DoDriveByShootingsEv; CVehicle::DoDriveByShootings(void)
56C056:  B               def_56BF7C; jumptable 0056BF7C default case, case 1
56C058:  LDRB.W          R0, [R4,#0x5C0]; jumptable 0056BF7C case 2
56C05C:  MOV             R1, #0xC61C3FF6; CVehicle *
56C064:  AND.W           R0, R0, #0xFB
56C068:  STR.W           R1, [R4,#0x610]
56C06C:  STRB.W          R0, [R4,#0x5C0]
56C070:  MOV             R0, R4; this
56C072:  BLX             j__ZN6CCarAI11UpdateCarAIEP8CVehicle; CCarAI::UpdateCarAI(CVehicle *)
56C076:  MOV             R0, R4; this
56C078:  BLX             j__ZN9CPhysical14ProcessControlEv; CPhysical::ProcessControl(void)
56C07C:  LDRB.W          R0, [R4,#0x5C0]
56C080:  LDR             R1, [R4,#0x44]
56C082:  ORR.W           R0, R0, #3
56C086:  STRB.W          R0, [R4,#0x5C0]
56C08A:  ORR.W           R0, R1, #0x100
56C08E:  STR             R0, [R4,#0x44]
56C090:  B               loc_56C578
56C092:  LDRB.W          R0, [R4,#0x5C0]; jumptable 0056BF7C case 3
56C096:  MOV             R1, #0xC61C3FF6; CVehicle *
56C09E:  AND.W           R0, R0, #0xFB
56C0A2:  STR.W           R1, [R4,#0x610]
56C0A6:  STRB.W          R0, [R4,#0x5C0]
56C0AA:  MOV             R0, R4; this
56C0AC:  BLX             j__ZN6CCarAI11UpdateCarAIEP8CVehicle; CCarAI::UpdateCarAI(CVehicle *)
56C0B0:  MOV             R0, R4; this
56C0B2:  BLX             j__ZN8CCarCtrl21SteerAICarWithPhysicsEP8CVehicle; CCarCtrl::SteerAICarWithPhysics(CVehicle *)
56C0B6:  LDRB.W          R0, [R4,#0x3A]; jumptable 0056BF7C default case, case 1
56C0BA:  LSRS            R1, R0, #3
56C0BC:  CMP             R1, #8
56C0BE:  BHI.W           loc_56C228
56C0C2:  MOVS            R2, #1
56C0C4:  LSL.W           R1, R2, R1
56C0C8:  MOVW            R2, #0x109
56C0CC:  TST             R1, R2
56C0CE:  BEQ.W           loc_56C228
56C0D2:  LDR.W           R1, =(_ZN6CPlane20PLANE_ROC_PROP_SPEEDE_ptr - 0x56C0DC)
56C0D6:  LDRH            R2, [R4,#0x26]
56C0D8:  ADD             R1, PC; _ZN6CPlane20PLANE_ROC_PROP_SPEEDE_ptr
56C0DA:  CMP.W           R2, #0x1CC
56C0DE:  LDR             R1, [R1]; CPlane::PLANE_ROC_PROP_SPEED ...
56C0E0:  VLDR            S0, [R1]
56C0E4:  BNE             loc_56C0FC
56C0E6:  LDR.W           R1, =(_ZN6CPlane20PLANE_STD_PROP_SPEEDE_ptr - 0x56C0F2)
56C0EA:  ADD.W           R2, R4, #0x4A0
56C0EE:  ADD             R1, PC; _ZN6CPlane20PLANE_STD_PROP_SPEEDE_ptr
56C0F0:  VLDR            S2, [R2]
56C0F4:  LDR             R1, [R1]; CPlane::PLANE_STD_PROP_SPEED ...
56C0F6:  VLDR            S4, [R1]
56C0FA:  B               loc_56C11A
56C0FC:  ADD.W           R1, R4, #0x4A0
56C100:  VLDR            S4, =0.0
56C104:  VLDR            S2, [R1]
56C108:  VCMP.F32        S2, #0.0
56C10C:  VMRS            APSR_nzcv, FPSCR
56C110:  ITT NE
56C112:  VMOVNE.F32      S6, #5.0
56C116:  VMULNE.F32      S0, S0, S6
56C11A:  VCMPE.F32       S2, #0.0
56C11E:  VMRS            APSR_nzcv, FPSCR
56C122:  BLE             loc_56C14A
56C124:  LDR.W           R1, =(_ZN6CPlane20PLANE_STD_PROP_SPEEDE_ptr - 0x56C130)
56C128:  LDR.W           R2, =(_ZN6CPlane20PLANE_MAX_PROP_SPEEDE_ptr - 0x56C132)
56C12C:  ADD             R1, PC; _ZN6CPlane20PLANE_STD_PROP_SPEEDE_ptr
56C12E:  ADD             R2, PC; _ZN6CPlane20PLANE_MAX_PROP_SPEEDE_ptr
56C130:  LDR             R1, [R1]; CPlane::PLANE_STD_PROP_SPEED ...
56C132:  LDR             R2, [R2]; CPlane::PLANE_MAX_PROP_SPEED ...
56C134:  VLDR            S4, [R1]
56C138:  VLDR            S6, [R2]
56C13C:  VSUB.F32        S6, S6, S4
56C140:  VMUL.F32        S2, S2, S6
56C144:  VADD.F32        S4, S4, S2
56C148:  B               loc_56C170
56C14A:  BGE             loc_56C170
56C14C:  LDR.W           R1, =(_ZN6CPlane20PLANE_MIN_PROP_SPEEDE_ptr - 0x56C158)
56C150:  LDR.W           R2, =(_ZN6CPlane20PLANE_STD_PROP_SPEEDE_ptr - 0x56C15A)
56C154:  ADD             R1, PC; _ZN6CPlane20PLANE_MIN_PROP_SPEEDE_ptr
56C156:  ADD             R2, PC; _ZN6CPlane20PLANE_STD_PROP_SPEEDE_ptr
56C158:  LDR             R1, [R1]; CPlane::PLANE_MIN_PROP_SPEED ...
56C15A:  LDR             R2, [R2]; CPlane::PLANE_STD_PROP_SPEED ...
56C15C:  VLDR            S4, [R1]
56C160:  VLDR            S6, [R2]
56C164:  VSUB.F32        S4, S6, S4
56C168:  VMUL.F32        S2, S2, S4
56C16C:  VADD.F32        S4, S6, S2
56C170:  ADD.W           R1, R4, #0x5B8
56C174:  LDR.W           R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x56C180)
56C178:  VLDR            S2, [R1]
56C17C:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
56C17E:  VSUB.F32        S4, S4, S2
56C182:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
56C184:  VMUL.F32        S0, S0, S4
56C188:  VLDR            S4, [R2]
56C18C:  VMUL.F32        S0, S4, S0
56C190:  VADD.F32        S0, S2, S0
56C194:  VSTR            S0, [R1]
56C198:  LDR.W           R1, [R4,#0x388]
56C19C:  VLDR            S0, [R4,#0xDC]
56C1A0:  VLDR            S2, [R1,#0xC8]
56C1A4:  VMUL.F32        S0, S0, S2
56C1A8:  VMOV.F32        S2, #25.0
56C1AC:  VSTR            S0, [SP,#0x50+var_24]
56C1B0:  VCMPE.F32       S0, S2
56C1B4:  VMRS            APSR_nzcv, FPSCR
56C1B8:  BLE             loc_56C2B2
56C1BA:  AND.W           R0, R0, #0xF8
56C1BE:  CMP             R0, #0x28 ; '('
56C1C0:  BEQ             loc_56C2B2
56C1C2:  ADDW            R5, R4, #0x4CC
56C1C6:  VLDR            S0, =250.0
56C1CA:  VLDR            S16, [R5]
56C1CE:  VCMPE.F32       S16, S0
56C1D2:  VMRS            APSR_nzcv, FPSCR
56C1D6:  BLT             loc_56C2B2
56C1D8:  ADD             R1, SP, #0x50+var_24; float *
56C1DA:  MOV             R0, R4; this
56C1DC:  BLX             j__ZN8CVehicle19ReduceVehicleDamageERf; CVehicle::ReduceVehicleDamage(float &)
56C1E0:  MOV.W           R0, #0xFFFFFFFF; int
56C1E4:  MOVS            R1, #0; bool
56C1E6:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
56C1EA:  CMP             R4, R0
56C1EC:  BEQ             loc_56C260
56C1EE:  VLDR            S0, =60.0
56C1F2:  VLDR            S2, [SP,#0x50+var_24]
56C1F6:  VCMPE.F32       S2, S0
56C1FA:  VMRS            APSR_nzcv, FPSCR
56C1FE:  BLE             loc_56C21A
56C200:  LDR.W           R0, [R4,#0x464]; this
56C204:  CBZ             R0, loc_56C21A
56C206:  MOVS            R1, #0
56C208:  MOVS            R2, #0; unsigned int
56C20A:  STRD.W          R1, R1, [SP,#0x50+var_50]; unsigned __int8
56C20E:  MOV.W           R3, #0x3F800000; float
56C212:  STR             R1, [SP,#0x50+var_48]; unsigned __int8
56C214:  MOVS            R1, #0x44 ; 'D'; unsigned __int16
56C216:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
56C21A:  VMOV.F32        S0, #4.0
56C21E:  LDRB.W          R0, [R4,#0x42D]
56C222:  VMOV.F32        S2, #12.0
56C226:  B               loc_56C26C
56C228:  ADD.W           R1, R4, #0x5B8
56C22C:  VLDR            S0, [R1]
56C230:  VCMPE.F32       S0, #0.0
56C234:  VMRS            APSR_nzcv, FPSCR
56C238:  BLE             loc_56C198
56C23A:  VLDR            S2, =0.95
56C23E:  VMUL.F32        S0, S0, S2
56C242:  B               loc_56C194
56C244:  DCFS 0.008
56C248:  DCFS 100.0
56C24C:  DCFS 125.0
56C250:  DCFS -0.001
56C254:  DCFS 150.0
56C258:  DCFS 0.0
56C25C:  DCFS 250.0
56C260:  VMOV.F32        S0, #2.0
56C264:  LDRB.W          R0, [R4,#0x42D]
56C268:  VMOV.F32        S2, #6.0
56C26C:  LSLS            R0, R0, #0x18
56C26E:  VCMPE.F32       S16, #0.0
56C272:  IT MI
56C274:  VMOVMI.F32      S0, S2
56C278:  VMOV.F32        S2, #-25.0
56C27C:  VLDR            S4, [SP,#0x50+var_24]
56C280:  VMRS            APSR_nzcv, FPSCR
56C284:  VADD.F32        S2, S4, S2
56C288:  VDIV.F32        S0, S2, S0
56C28C:  VLDR            S2, [R5]
56C290:  VSUB.F32        S0, S2, S0
56C294:  VSTR            S0, [R5]
56C298:  BLE             loc_56C2B2
56C29A:  VCMPE.F32       S0, #0.0
56C29E:  VMRS            APSR_nzcv, FPSCR
56C2A2:  ITTTT LE
56C2A4:  MOVLE.W         R0, #0x3F800000
56C2A8:  STRLE           R0, [R5]
56C2AA:  LDRLE.W         R0, [R4,#0xE0]
56C2AE:  STRLE.W         R0, [R4,#0x620]
56C2B2:  ADDW            R0, R4, #0x4CC
56C2B6:  VLDR            S2, =460.0
56C2BA:  VLDR            S0, [R0]
56C2BE:  VCMPE.F32       S0, S2
56C2C2:  VMRS            APSR_nzcv, FPSCR
56C2C6:  BGT             loc_56C2D4
56C2C8:  LDRB.W          R0, [R4,#0x3A]
56C2CC:  AND.W           R0, R0, #0xF8
56C2D0:  CMP             R0, #0x28 ; '('
56C2D2:  BNE             loc_56C2EE
56C2D4:  LDR.W           R0, [R4,#0x58C]; this
56C2D8:  MOVS            R5, #0
56C2DA:  STR.W           R5, [R4,#0x61C]
56C2DE:  CMP             R0, #0
56C2E0:  BEQ.W           loc_56C434
56C2E4:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
56C2E8:  STR.W           R5, [R4,#0x58C]
56C2EC:  B               loc_56C434
56C2EE:  LDR             R0, =(TheCamera_ptr - 0x56C2F6)
56C2F0:  LDR             R1, [R4,#0x14]
56C2F2:  ADD             R0, PC; TheCamera_ptr
56C2F4:  CMP             R1, #0
56C2F6:  LDR             R2, [R0]; TheCamera
56C2F8:  ADD.W           R0, R1, #0x30 ; '0'
56C2FC:  LDR             R3, [R2,#(dword_951FBC - 0x951FA8)]
56C2FE:  IT EQ
56C300:  ADDEQ           R0, R4, #4
56C302:  VLDR            S2, [R0]
56C306:  ADD.W           R1, R3, #0x30 ; '0'
56C30A:  CMP             R3, #0
56C30C:  IT EQ
56C30E:  ADDEQ           R1, R2, #4
56C310:  VLDR            S4, [R1]
56C314:  VSUB.F32        S2, S2, S4
56C318:  VABS.F32        S4, S2
56C31C:  VLDR            S2, =200.0
56C320:  VCMPE.F32       S4, S2
56C324:  VMRS            APSR_nzcv, FPSCR
56C328:  BGE.W           loc_56C434
56C32C:  VLDR            S4, [R1,#4]
56C330:  VLDR            S6, [R0,#4]
56C334:  VSUB.F32        S4, S6, S4
56C338:  VABS.F32        S4, S4
56C33C:  VCMPE.F32       S4, S2
56C340:  VMRS            APSR_nzcv, FPSCR
56C344:  BGE             loc_56C434
56C346:  LDRSH.W         R0, [R4,#0x26]
56C34A:  MOVW            R1, #0x1C5
56C34E:  CMP             R0, R1
56C350:  BEQ             loc_56C366
56C352:  CMP.W           R0, #0x1C4
56C356:  BNE             loc_56C374
56C358:  VLDR            S2, =1.8
56C35C:  VLDR            S4, =-2.4
56C360:  VLDR            S6, =0.4
56C364:  B               loc_56C380
56C366:  VMOV.F32        S2, #1.5
56C36A:  VMOV.F32        S4, #-1.0
56C36E:  VMOV.F32        S6, #2.0
56C372:  B               loc_56C380
56C374:  VMOV.F32        S4, #-0.5
56C378:  VLDR            S2, =2.2
56C37C:  VMOV.F32        S6, #-1.5
56C380:  VLDR            S8, =250.0
56C384:  VSTR            S4, [SP,#0x50+var_2C]
56C388:  VCMPE.F32       S0, S8
56C38C:  VSTR            S6, [SP,#0x50+var_30]
56C390:  VMRS            APSR_nzcv, FPSCR
56C394:  VSTR            S2, [SP,#0x50+var_28]
56C398:  BGE             loc_56C434
56C39A:  LDR.W           R0, [R4,#0x58C]
56C39E:  CBNZ            R0, loc_56C3E4
56C3A0:  LDR             R0, [R4,#0x18]
56C3A2:  CBZ             R0, loc_56C3E4
56C3A4:  LDR             R2, =(g_fxMan_ptr - 0x56C3AE)
56C3A6:  MOVS            R1, #0
56C3A8:  LDR             R0, [R0,#4]
56C3AA:  ADD             R2, PC; g_fxMan_ptr
56C3AC:  STR             R1, [SP,#0x50+var_50]; int
56C3AE:  ADD.W           R3, R0, #0x10; int
56C3B2:  ADR             R1, aFireCar_1; "fire_car"
56C3B4:  LDR             R0, [R2]; g_fxMan ; int
56C3B6:  ADD             R2, SP, #0x50+var_30; int
56C3B8:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
56C3BC:  CMP             R0, #0
56C3BE:  STR.W           R0, [R4,#0x58C]
56C3C2:  BEQ             loc_56C3E4
56C3C4:  BLX             j__ZN10FxSystem_c4PlayEv; FxSystem_c::Play(void)
56C3C8:  ADD             R5, SP, #0x50+var_44
56C3CA:  MOV             R1, R4; CVehicle *
56C3CC:  MOV             R0, R5; this
56C3CE:  BLX             j__ZN19CEventVehicleOnFireC2EP8CVehicle; CEventVehicleOnFire::CEventVehicleOnFire(CVehicle *)
56C3D2:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
56C3D6:  MOV             R1, R5; CEvent *
56C3D8:  MOVS            R2, #0; bool
56C3DA:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
56C3DE:  MOV             R0, R5; this
56C3E0:  BLX             j__ZN19CEventVehicleOnFireD2Ev; CEventVehicleOnFire::~CEventVehicleOnFire()
56C3E4:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x56C3EE)
56C3E6:  VLDR            S0, =50.0
56C3EA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
56C3EC:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
56C3EE:  VLDR            S2, [R0]
56C3F2:  ADDW            R0, R4, #0x61C
56C3F6:  VDIV.F32        S0, S2, S0
56C3FA:  VLDR            S2, =1000.0
56C3FE:  VMUL.F32        S0, S0, S2
56C402:  VCVT.U32.F32    S0, S0
56C406:  VCVT.F32.U32    S0, S0
56C40A:  VLDR            S2, [R0]
56C40E:  VADD.F32        S0, S2, S0
56C412:  VLDR            S2, =5000.0
56C416:  VCMPE.F32       S0, S2
56C41A:  VSTR            S0, [R0]
56C41E:  VMRS            APSR_nzcv, FPSCR
56C422:  BLE             loc_56C434
56C424:  LDR             R0, [R4]
56C426:  MOVS            R2, #0
56C428:  LDR.W           R1, [R4,#0x620]
56C42C:  LDR.W           R3, [R0,#0xA8]
56C430:  MOV             R0, R4
56C432:  BLX             R3
56C434:  LDR             R0, [R4,#0x1C]
56C436:  VLDR            S0, [R4,#0xDC]
56C43A:  AND.W           R5, R0, #0x1000
56C43E:  VCMPE.F32       S0, #0.0
56C442:  VMRS            APSR_nzcv, FPSCR
56C446:  BLE             loc_56C460
56C448:  VLDR            S0, =0.1
56C44C:  VLDR            S2, [R4,#0xEC]
56C450:  VCMPE.F32       S2, S0
56C454:  VMRS            APSR_nzcv, FPSCR
56C458:  ITE GT
56C45A:  MOVGT           R6, #1
56C45C:  MOVLE           R6, #0
56C45E:  B               loc_56C462
56C460:  MOVS            R6, #0
56C462:  MOV             R0, R4; this
56C464:  BLX             j__ZN9CPhysical14ProcessControlEv; CPhysical::ProcessControl(void)
56C468:  LDR.W           R1, [R4,#0x60C]; int
56C46C:  CMP             R5, #0
56C46E:  STR             R6, [SP,#0x50+var_50]; int
56C470:  IT NE
56C472:  MOVNE           R5, #1
56C474:  ADDW            R2, R4, #0x654; int
56C478:  MOV             R0, R4; CVehicle *
56C47A:  MOV             R3, R5; int
56C47C:  BLX             j__ZN8CVehicle18ProcessBoatControlEP17tBoatHandlingDataRfbb; CVehicle::ProcessBoatControl(tBoatHandlingData *,float &,bool,bool)
56C480:  LDRH            R0, [R4,#0x26]
56C482:  CMP.W           R0, #0x1CC
56C486:  BNE             loc_56C4E4
56C488:  LDR             R0, =(_ZN6CPlane20PLANE_MIN_PROP_SPEEDE_ptr - 0x56C492)
56C48A:  ADD.W           R1, R4, #0x5B8
56C48E:  ADD             R0, PC; _ZN6CPlane20PLANE_MIN_PROP_SPEEDE_ptr
56C490:  VLDR            S0, [R1]
56C494:  LDR             R0, [R0]; CPlane::PLANE_MIN_PROP_SPEED ...
56C496:  VLDR            S2, [R0]
56C49A:  VCMPE.F32       S0, S2
56C49E:  VMRS            APSR_nzcv, FPSCR
56C4A2:  BGT             loc_56C4D6
56C4A4:  VLDR            S0, [R4,#0x48]
56C4A8:  VLDR            S2, [R4,#0x4C]
56C4AC:  VMUL.F32        S0, S0, S0
56C4B0:  VLDR            S4, [R4,#0x50]
56C4B4:  VMUL.F32        S2, S2, S2
56C4B8:  VLDR            D16, =0.05
56C4BC:  VMUL.F32        S4, S4, S4
56C4C0:  VADD.F32        S0, S0, S2
56C4C4:  VADD.F32        S0, S0, S4
56C4C8:  VCVT.F64.F32    D17, S0
56C4CC:  VCMPE.F64       D17, D16
56C4D0:  VMRS            APSR_nzcv, FPSCR
56C4D4:  BLE             loc_56C506
56C4D6:  MOVW            R2, #0x3FF6
56C4DA:  MOV             R0, R4
56C4DC:  MOVT            R2, #0xC61C
56C4E0:  MOVS            R1, #3
56C4E2:  B               loc_56C4FC
56C4E4:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x56C4EA)
56C4E6:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
56C4E8:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
56C4EA:  LDRB.W          R0, [R0,#(byte_79681E - 0x7967F4)]
56C4EE:  CBZ             R0, loc_56C506
56C4F0:  MOVW            R2, #0x3FF6
56C4F4:  MOV             R0, R4; int
56C4F6:  MOVT            R2, #0xC61C; int
56C4FA:  MOVS            R1, #5; int
56C4FC:  STRD.W          R2, R2, [SP,#0x50+var_50]; float
56C500:  MOV             R3, R2; int
56C502:  BLX             j__ZN8CVehicle13FlyingControlE12eFlightModelffff; CVehicle::FlyingControl(eFlightModel,float,float,float,float)
56C506:  LDRB.W          R0, [R4,#0x5C0]
56C50A:  LSLS            R0, R0, #0x1D
56C50C:  BPL             loc_56C578
56C50E:  ADD.W           R6, R4, #0x610
56C512:  LDR             R5, [R4,#0x14]
56C514:  MOVS            R0, #0
56C516:  VLDR            S16, [R6]
56C51A:  CMP             R5, #0
56C51C:  STRD.W          R0, R0, [R4,#0x48]
56C520:  BEQ             loc_56C534
56C522:  LDRD.W          R0, R1, [R5,#0x10]; x
56C526:  EOR.W           R0, R0, #0x80000000; y
56C52A:  BLX             atan2f
56C52E:  VMOV            S0, R0
56C532:  B               loc_56C538
56C534:  VLDR            S0, [R4,#0x10]
56C538:  VLDR            S2, =-10000.0
56C53C:  VCMP.F32        S16, S2
56C540:  VMRS            APSR_nzcv, FPSCR
56C544:  BNE             loc_56C54C
56C546:  VSTR            S0, [R6]
56C54A:  B               loc_56C578
56C54C:  VSUB.F32        S0, S16, S0
56C550:  ADD.W           R0, R5, #0x30 ; '0'
56C554:  CMP             R5, #0
56C556:  IT EQ
56C558:  ADDEQ           R0, R4, #4
56C55A:  LDM.W           R0, {R6,R8,R9}
56C55E:  MOV             R0, R5; this
56C560:  VMOV            R1, S0; x
56C564:  BLX             j__ZN7CMatrix7RotateZEf; CMatrix::RotateZ(float)
56C568:  LDR             R0, [R4,#0x14]
56C56A:  STR             R6, [R0,#0x30]
56C56C:  LDR             R0, [R4,#0x14]
56C56E:  STR.W           R8, [R0,#0x34]
56C572:  LDR             R0, [R4,#0x14]
56C574:  STR.W           R9, [R0,#0x38]
56C578:  ADD             SP, SP, #0x30 ; '0'
56C57A:  VPOP            {D8}
56C57E:  POP.W           {R8,R9,R11}
56C582:  POP             {R4-R7,PC}
