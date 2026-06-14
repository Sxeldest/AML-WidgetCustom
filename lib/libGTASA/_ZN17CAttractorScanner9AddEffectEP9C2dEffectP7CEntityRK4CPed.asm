; =========================================================
; Game Engine Function: _ZN17CAttractorScanner9AddEffectEP9C2dEffectP7CEntityRK4CPed
; Address            : 0x4BB478 - 0x4BB5FE
; =========================================================

4BB478:  PUSH            {R4-R7,LR}
4BB47A:  ADD             R7, SP, #0xC
4BB47C:  PUSH.W          {R8,R9,R11}
4BB480:  VPUSH           {D8}
4BB484:  SUB             SP, SP, #0x68; CPed *
4BB486:  MOV             R6, R0
4BB488:  LDR             R0, =(_ZN8CWeather4RainE_ptr - 0x4BB492)
4BB48A:  MOV             R5, R1
4BB48C:  MOV             R8, R3
4BB48E:  ADD             R0, PC; _ZN8CWeather4RainE_ptr
4BB490:  LDRB.W          R4, [R5,#0x34]
4BB494:  MOV             R9, R2
4BB496:  LDR             R0, [R0]; CWeather::Rain ...
4BB498:  CMP             R4, #4
4BB49A:  VLDR            S0, [R0]
4BB49E:  BNE             loc_4BB4AE
4BB4A0:  VLDR            S2, =0.2
4BB4A4:  VCMPE.F32       S0, S2
4BB4A8:  VMRS            APSR_nzcv, FPSCR
4BB4AC:  BGE             loc_4BB4C4
4BB4AE:  CMP             R4, #4
4BB4B0:  BEQ.W           loc_4BB5F2
4BB4B4:  VLDR            S2, =0.2
4BB4B8:  VCMPE.F32       S0, S2
4BB4BC:  VMRS            APSR_nzcv, FPSCR
4BB4C0:  BGE.W           loc_4BB5F2
4BB4C4:  CMP.W           R9, #0
4BB4C8:  BEQ             loc_4BB4EC
4BB4CA:  LDR.W           R1, [R9,#0x14]
4BB4CE:  CBZ             R1, loc_4BB4FA
4BB4D0:  VLDR            D16, [R5]
4BB4D4:  ADD             R2, SP, #0x88+var_30
4BB4D6:  LDR             R0, [R5,#8]
4BB4D8:  STR             R0, [SP,#0x88+var_28]
4BB4DA:  MOV             R0, SP
4BB4DC:  VSTR            D16, [SP,#0x88+var_30]
4BB4E0:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
4BB4E4:  VLDR            D16, [SP,#0x88+var_88]
4BB4E8:  LDR             R0, [SP,#0x88+var_80]
4BB4EA:  B               loc_4BB4F2
4BB4EC:  LDR             R0, [R5,#8]
4BB4EE:  VLDR            D16, [R5]
4BB4F2:  STR             R0, [SP,#0x88+var_38]
4BB4F4:  VSTR            D16, [SP,#0x88+var_40]
4BB4F8:  B               loc_4BB506
4BB4FA:  ADD.W           R1, R9, #4
4BB4FE:  ADD             R0, SP, #0x88+var_40
4BB500:  MOV             R2, R5
4BB502:  BLX             j__Z14TransformPointR5RwV3dRK16CSimpleTransformRKS_; TransformPoint(RwV3d &,CSimpleTransform const&,RwV3d const&)
4BB506:  LDR.W           R0, [R8,#0x14]
4BB50A:  ADD.W           R6, R6, R4,LSL#2
4BB50E:  VLDR            S0, [SP,#0x88+var_40]
4BB512:  ADD.W           R1, R0, #0x30 ; '0'
4BB516:  CMP             R0, #0
4BB518:  IT EQ
4BB51A:  ADDEQ.W         R1, R8, #4
4BB51E:  VLDR            D16, [SP,#0x88+var_40+4]
4BB522:  VLDR            S2, [R1]
4BB526:  VLDR            D17, [R1,#4]
4BB52A:  VSUB.F32        S0, S2, S0
4BB52E:  VSUB.F32        D16, D17, D16
4BB532:  VMUL.F32        D1, D16, D16
4BB536:  VMUL.F32        S0, S0, S0
4BB53A:  VADD.F32        S0, S0, S2
4BB53E:  VADD.F32        S16, S0, S3
4BB542:  VLDR            S0, [R6,#0x68]
4BB546:  VCMPE.F32       S16, S0
4BB54A:  VMRS            APSR_nzcv, FPSCR
4BB54E:  BGE             loc_4BB5F2
4BB550:  LDRB.W          R0, [R5,#0x34]
4BB554:  CMP             R0, #7
4BB556:  BNE             loc_4BB584
4BB558:  MOV             R0, R5
4BB55A:  BLX             j__ZN18CScripted2dEffects8GetIndexEPK9C2dEffect; CScripted2dEffects::GetIndex(C2dEffect const*)
4BB55E:  LDR             R1, =(_ZN18CScripted2dEffects8ms_radiiE_ptr - 0x4BB564)
4BB560:  ADD             R1, PC; _ZN18CScripted2dEffects8ms_radiiE_ptr
4BB562:  LDR             R1, [R1]; CScripted2dEffects::ms_radii ...
4BB564:  ADD.W           R0, R1, R0,LSL#2
4BB568:  VLDR            S0, [R0]
4BB56C:  VCMPE.F32       S0, #0.0
4BB570:  VMRS            APSR_nzcv, FPSCR
4BB574:  ITTT GE
4BB576:  VMULGE.F32      S0, S0, S0
4BB57A:  VCMPEGE.F32     S16, S0
4BB57E:  VMRSGE          APSR_nzcv, FPSCR
4BB582:  BGE             loc_4BB5F2
4BB584:  BLX             j__Z22GetPedAttractorManagerv; GetPedAttractorManager(void)
4BB588:  MOV             R1, R5
4BB58A:  MOV             R2, R9
4BB58C:  BLX             j__ZNK20CPedAttractorManager12HasEmptySlotEPK9C2dEffectPK7CEntity; CPedAttractorManager::HasEmptySlot(C2dEffect const*,CEntity const*)
4BB590:  CMP             R0, #1
4BB592:  BNE             loc_4BB5F2
4BB594:  MOVS            R0, #0
4BB596:  CMP.W           R9, #0
4BB59A:  STRD.W          R0, R0, [SP,#0x88+var_48]
4BB59E:  BEQ             loc_4BB5C4
4BB5A0:  LDR.W           R1, [R9,#0x14]
4BB5A4:  CBNZ            R1, loc_4BB5BC
4BB5A6:  MOV             R0, R9; this
4BB5A8:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
4BB5AC:  LDR.W           R1, [R9,#0x14]; CMatrix *
4BB5B0:  ADD.W           R0, R9, #4; this
4BB5B4:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
4BB5B8:  LDR.W           R1, [R9,#0x14]
4BB5BC:  MOV             R0, SP
4BB5BE:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
4BB5C2:  B               loc_4BB5CE
4BB5C4:  MOV             R0, SP; this
4BB5C6:  MOV.W           R1, #0x3F800000; float
4BB5CA:  BLX             j__ZN7CMatrix8SetScaleEf; CMatrix::SetScale(float)
4BB5CE:  MOV             R1, SP; C2dEffect *
4BB5D0:  MOV             R0, R5; this
4BB5D2:  MOVS            R2, #0; CMatrix *
4BB5D4:  MOV             R3, R8; int
4BB5D6:  BLX             j__ZN20CPedAttractorManager14IsApproachableEP9C2dEffectRK7CMatrixiP4CPed; CPedAttractorManager::IsApproachable(C2dEffect *,CMatrix const&,int,CPed *)
4BB5DA:  CMP             R0, #1
4BB5DC:  ITTTT EQ
4BB5DE:  ADDEQ.W         R0, R6, #0x68 ; 'h'
4BB5E2:  STREQ           R5, [R6,#0x40]
4BB5E4:  STREQ.W         R9, [R6,#0x18]
4BB5E8:  VSTREQ          S16, [R0]
4BB5EC:  MOV             R0, SP; this
4BB5EE:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
4BB5F2:  ADD             SP, SP, #0x68 ; 'h'
4BB5F4:  VPOP            {D8}
4BB5F8:  POP.W           {R8,R9,R11}
4BB5FC:  POP             {R4-R7,PC}
