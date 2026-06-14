; =========================================================
; Game Engine Function: _ZN7CMatrix7RotateYEf
; Address            : 0x44F3CE - 0x44F49E
; =========================================================

44F3CE:  PUSH            {R4-R7,LR}
44F3D0:  ADD             R7, SP, #0xC
44F3D2:  PUSH.W          {R11}
44F3D6:  VPUSH           {D8-D9}
44F3DA:  MOV             R5, R1
44F3DC:  MOV             R4, R0
44F3DE:  MOV             R0, R5; x
44F3E0:  BLX             cosf
44F3E4:  MOV             R6, R0
44F3E6:  MOV             R0, R5; x
44F3E8:  BLX             sinf
44F3EC:  VLDR            S0, [R4]
44F3F0:  VMOV            S8, R0
44F3F4:  VLDR            S2, [R4,#8]
44F3F8:  VMOV            S10, R6
44F3FC:  VLDR            S4, [R4,#0x10]
44F400:  VMUL.F32        S1, S0, S8
44F404:  VLDR            S6, [R4,#0x18]
44F408:  VMUL.F32        S5, S8, S2
44F40C:  VLDR            S3, [R4,#0x28]
44F410:  VMUL.F32        S0, S10, S0
44F414:  VLDR            S7, [R4,#0x20]
44F418:  VMUL.F32        S2, S10, S2
44F41C:  VLDR            S13, [R4,#0x38]
44F420:  VMUL.F32        S12, S8, S6
44F424:  VLDR            S15, [R4,#0x30]
44F428:  VMUL.F32        S14, S10, S4
44F42C:  VMUL.F32        S9, S8, S3
44F430:  VMUL.F32        S11, S10, S7
44F434:  VMUL.F32        S4, S4, S8
44F438:  VMUL.F32        S6, S10, S6
44F43C:  VMUL.F32        S7, S7, S8
44F440:  VMUL.F32        S16, S8, S13
44F444:  VMUL.F32        S3, S10, S3
44F448:  VMUL.F32        S18, S10, S15
44F44C:  VMUL.F32        S8, S15, S8
44F450:  VMUL.F32        S10, S10, S13
44F454:  VADD.F32        S0, S0, S5
44F458:  VSUB.F32        S2, S2, S1
44F45C:  VADD.F32        S12, S14, S12
44F460:  VSUB.F32        S4, S6, S4
44F464:  VADD.F32        S6, S11, S9
44F468:  VSUB.F32        S14, S3, S7
44F46C:  VADD.F32        S1, S18, S16
44F470:  VSUB.F32        S8, S10, S8
44F474:  VSTR            S0, [R4]
44F478:  VSTR            S2, [R4,#8]
44F47C:  VSTR            S12, [R4,#0x10]
44F480:  VSTR            S4, [R4,#0x18]
44F484:  VSTR            S6, [R4,#0x20]
44F488:  VSTR            S14, [R4,#0x28]
44F48C:  VSTR            S1, [R4,#0x30]
44F490:  VSTR            S8, [R4,#0x38]
44F494:  VPOP            {D8-D9}
44F498:  POP.W           {R11}
44F49C:  POP             {R4-R7,PC}
