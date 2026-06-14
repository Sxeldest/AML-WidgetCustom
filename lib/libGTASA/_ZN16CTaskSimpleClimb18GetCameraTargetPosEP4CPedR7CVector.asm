; =========================================================
; Game Engine Function: _ZN16CTaskSimpleClimb18GetCameraTargetPosEP4CPedR7CVector
; Address            : 0x52F23C - 0x52F3F4
; =========================================================

52F23C:  PUSH            {R4-R7,LR}
52F23E:  ADD             R7, SP, #0xC
52F240:  PUSH.W          {R11}
52F244:  VPUSH           {D8-D10}
52F248:  SUB             SP, SP, #0x20
52F24A:  MOV             R5, R0
52F24C:  LDR             R0, [R1,#0x14]
52F24E:  MOV             R4, R2
52F250:  ADD.W           R2, R0, #0x30 ; '0'
52F254:  CMP             R0, #0
52F256:  IT EQ
52F258:  ADDEQ           R2, R1, #4
52F25A:  VLDR            D16, [R2]
52F25E:  LDR             R0, [R2,#8]
52F260:  STR             R0, [R4,#8]
52F262:  VSTR            D16, [R4]
52F266:  LDR             R0, [R5,#0x2C]
52F268:  CMP             R0, #0
52F26A:  BEQ.W           def_52F288; jumptable 0052F288 default case, cases 122-129
52F26E:  LDRSH.W         R1, [R0,#0x2C]
52F272:  SUBS            R1, #0x79 ; 'y'; switch 14 cases
52F274:  CMP             R1, #0xD
52F276:  BHI.W           def_52F288; jumptable 0052F288 default case, cases 122-129
52F27A:  LDR             R2, [R0,#0x14]
52F27C:  VLDR            S0, [R0,#0x20]
52F280:  VLDR            S2, [R2,#0x10]
52F284:  VDIV.F32        S0, S0, S2
52F288:  TBB.W           [PC,R1]; switch jump
52F28C:  DCB 7; jump table for switch statement
52F28D:  DCB 0xAE
52F28E:  DCB 0xAE
52F28F:  DCB 0xAE
52F290:  DCB 0xAE
52F291:  DCB 0xAE
52F292:  DCB 0xAE
52F293:  DCB 0xAE
52F294:  DCB 0xAE
52F295:  DCB 0xC
52F296:  DCB 0x17
52F297:  DCB 0x22
52F298:  DCB 0x2D
52F299:  DCB 7
52F29A:  LDR             R0, =(_ZN16CTaskSimpleClimb19ms_fVaultOffsetVertE_ptr - 0x52F2A2); jumptable 0052F288 cases 121,134
52F29C:  LDR             R1, =(_ZN16CTaskSimpleClimb19ms_fVaultOffsetHorzE_ptr - 0x52F2A4)
52F29E:  ADD             R0, PC; _ZN16CTaskSimpleClimb19ms_fVaultOffsetVertE_ptr
52F2A0:  ADD             R1, PC; _ZN16CTaskSimpleClimb19ms_fVaultOffsetHorzE_ptr
52F2A2:  B               loc_52F2D8
52F2A4:  VMOV.F32        S2, #1.0; jumptable 0052F288 case 130
52F2A8:  LDR             R0, =(_ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetVertE_ptr - 0x52F2B2)
52F2AA:  LDR             R1, =(_ZN16CTaskSimpleClimb21ms_fHangingOffsetVertE_ptr - 0x52F2B6)
52F2AC:  LDR             R2, =(_ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetHorzE_ptr - 0x52F2B8)
52F2AE:  ADD             R0, PC; _ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetVertE_ptr
52F2B0:  LDR             R3, =(_ZN16CTaskSimpleClimb21ms_fHangingOffsetHorzE_ptr - 0x52F2BA)
52F2B2:  ADD             R1, PC; _ZN16CTaskSimpleClimb21ms_fHangingOffsetVertE_ptr
52F2B4:  ADD             R2, PC; _ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetHorzE_ptr
52F2B6:  ADD             R3, PC; _ZN16CTaskSimpleClimb21ms_fHangingOffsetHorzE_ptr
52F2B8:  B               loc_52F2FA
52F2BA:  LDR             R0, =(_ZN16CTaskSimpleClimb21ms_fStandUpOffsetVertE_ptr - 0x52F2C8); jumptable 0052F288 case 131
52F2BC:  VMOV.F32        S2, #1.0
52F2C0:  LDR             R1, =(_ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetVertE_ptr - 0x52F2CC)
52F2C2:  LDR             R2, =(_ZN16CTaskSimpleClimb21ms_fStandUpOffsetHorzE_ptr - 0x52F2CE)
52F2C4:  ADD             R0, PC; _ZN16CTaskSimpleClimb21ms_fStandUpOffsetVertE_ptr
52F2C6:  LDR             R3, =(_ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetHorzE_ptr - 0x52F2D0)
52F2C8:  ADD             R1, PC; _ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetVertE_ptr
52F2CA:  ADD             R2, PC; _ZN16CTaskSimpleClimb21ms_fStandUpOffsetHorzE_ptr
52F2CC:  ADD             R3, PC; _ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetHorzE_ptr
52F2CE:  B               loc_52F2FA
52F2D0:  LDR             R0, =(_ZN16CTaskSimpleClimb21ms_fStandUpOffsetVertE_ptr - 0x52F2D8); jumptable 0052F288 case 132
52F2D2:  LDR             R1, =(_ZN16CTaskSimpleClimb21ms_fStandUpOffsetHorzE_ptr - 0x52F2DA)
52F2D4:  ADD             R0, PC; _ZN16CTaskSimpleClimb21ms_fStandUpOffsetVertE_ptr
52F2D6:  ADD             R1, PC; _ZN16CTaskSimpleClimb21ms_fStandUpOffsetHorzE_ptr
52F2D8:  LDR             R0, [R0]; CTaskSimpleClimb::ms_fStandUpOffsetVert
52F2DA:  LDR             R1, [R1]; CTaskSimpleClimb::ms_fStandUpOffsetHorz
52F2DC:  VLDR            S16, [R0]
52F2E0:  VLDR            S18, [R1]
52F2E4:  B               loc_52F32E
52F2E6:  LDR             R0, =(_ZN16CTaskSimpleClimb19ms_fVaultOffsetVertE_ptr - 0x52F2F4); jumptable 0052F288 case 133
52F2E8:  VMOV.F32        S2, #1.0
52F2EC:  LDR             R1, =(_ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetVertE_ptr - 0x52F2F8)
52F2EE:  LDR             R2, =(_ZN16CTaskSimpleClimb19ms_fVaultOffsetHorzE_ptr - 0x52F2FA)
52F2F0:  ADD             R0, PC; _ZN16CTaskSimpleClimb19ms_fVaultOffsetVertE_ptr
52F2F2:  LDR             R3, =(_ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetHorzE_ptr - 0x52F2FC)
52F2F4:  ADD             R1, PC; _ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetVertE_ptr
52F2F6:  ADD             R2, PC; _ZN16CTaskSimpleClimb19ms_fVaultOffsetHorzE_ptr
52F2F8:  ADD             R3, PC; _ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetHorzE_ptr
52F2FA:  VSUB.F32        S2, S2, S0
52F2FE:  LDR             R0, [R0]; CTaskSimpleClimb::ms_fStandUpOffsetVert
52F300:  LDR             R1, [R1]; CTaskSimpleClimb::ms_fHangingOffsetVert
52F302:  LDR             R2, [R2]; CTaskSimpleClimb::ms_fAtEdgeOffsetHorz
52F304:  LDR             R3, [R3]; CTaskSimpleClimb::ms_fHangingOffsetHorz
52F306:  VLDR            S4, [R0]
52F30A:  VLDR            S6, [R1]
52F30E:  VLDR            S8, [R2]
52F312:  VMUL.F32        S4, S0, S4
52F316:  VLDR            S10, [R3]
52F31A:  VMUL.F32        S6, S2, S6
52F31E:  VMUL.F32        S0, S0, S8
52F322:  VMUL.F32        S2, S2, S10
52F326:  VADD.F32        S16, S4, S6
52F32A:  VADD.F32        S18, S0, S2
52F32E:  VLDR            D16, [R5,#0x18]
52F332:  VLDR            S20, [R5,#0x14]
52F336:  LDRD.W          R0, R6, [R5,#0x20]
52F33A:  STR             R0, [SP,#0x48+var_30]
52F33C:  VSTR            D16, [SP,#0x48+var_38]
52F340:  LDRB.W          R0, [R6,#0x3A]
52F344:  AND.W           R0, R0, #7
52F348:  SUBS            R0, #2
52F34A:  UXTB            R0, R0
52F34C:  CMP             R0, #2
52F34E:  BHI             loc_52F398
52F350:  LDR             R1, [R6,#0x14]
52F352:  CBNZ            R1, loc_52F364
52F354:  MOV             R0, R6; this
52F356:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
52F35A:  LDR             R1, [R6,#0x14]; CMatrix *
52F35C:  ADDS            R0, R6, #4; this
52F35E:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
52F362:  LDR             R1, [R6,#0x14]
52F364:  ADD             R2, SP, #0x48+var_38
52F366:  MOV             R0, SP
52F368:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
52F36C:  VLDR            D16, [SP,#0x48+var_48]
52F370:  LDR             R0, [SP,#0x48+var_40]
52F372:  STR             R0, [SP,#0x48+var_30]
52F374:  VSTR            D16, [SP,#0x48+var_38]
52F378:  LDR             R0, [R5,#0x24]
52F37A:  LDR             R1, [R0,#0x14]
52F37C:  CBZ             R1, loc_52F390
52F37E:  LDRD.W          R0, R1, [R1,#0x10]; x
52F382:  EOR.W           R0, R0, #0x80000000; y
52F386:  BLX             atan2f
52F38A:  VMOV            S0, R0
52F38E:  B               loc_52F394
52F390:  VLDR            S0, [R0,#0x10]
52F394:  VADD.F32        S20, S20, S0
52F398:  VMOV            R5, S20
52F39C:  MOV             R0, R5; x
52F39E:  BLX             sinf
52F3A2:  VMOV            S20, R0
52F3A6:  MOV             R0, R5; x
52F3A8:  BLX             cosf
52F3AC:  VMOV            S0, R0
52F3B0:  VLDR            D16, [SP,#0x48+var_38]
52F3B4:  VMUL.F32        S2, S18, S20
52F3B8:  LDR             R0, [SP,#0x48+var_30]
52F3BA:  VMUL.F32        S0, S18, S0
52F3BE:  STR             R0, [R4,#8]
52F3C0:  VLDR            S4, [R4,#8]
52F3C4:  VSTR            D16, [R4]
52F3C8:  VLDR            S6, [R4]
52F3CC:  VADD.F32        S4, S16, S4
52F3D0:  VLDR            S8, [R4,#4]
52F3D4:  VSUB.F32        S2, S6, S2
52F3D8:  VADD.F32        S0, S8, S0
52F3DC:  VSTR            S2, [R4]
52F3E0:  VSTR            S0, [R4,#4]
52F3E4:  VSTR            S4, [R4,#8]
52F3E8:  ADD             SP, SP, #0x20 ; ' '; jumptable 0052F288 default case, cases 122-129
52F3EA:  VPOP            {D8-D10}
52F3EE:  POP.W           {R11}
52F3F2:  POP             {R4-R7,PC}
