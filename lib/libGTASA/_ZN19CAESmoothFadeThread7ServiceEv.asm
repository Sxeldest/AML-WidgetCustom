; =========================================================
; Game Engine Function: _ZN19CAESmoothFadeThread7ServiceEv
; Address            : 0x3A7570 - 0x3A76FA
; =========================================================

3A7570:  PUSH            {R4-R7,LR}
3A7572:  ADD             R7, SP, #0xC
3A7574:  PUSH.W          {R8-R11}
3A7578:  SUB             SP, SP, #4
3A757A:  VPUSH           {D8-D12}
3A757E:  SUB             SP, SP, #8
3A7580:  MOV             R4, R0
3A7582:  BLX             j__ZN15CAEAudioUtility28GetCurrentTimeInMillisecondsEv; CAEAudioUtility::GetCurrentTimeInMilliseconds(void)
3A7586:  STR.W           R0, [R4,#0x80C]
3A758A:  VMOV.F32        S16, #20.0
3A758E:  LDR             R0, =(g_numSoundChannelsUsed_ptr - 0x3A75A0)
3A7590:  VMOV.F32        S18, #-1.0
3A7594:  VMOV.F32        S20, #1.0
3A7598:  VLDR            S22, =0.01
3A759C:  ADD             R0, PC; g_numSoundChannelsUsed_ptr
3A759E:  MOVS            R5, #0
3A75A0:  MOV.W           R11, #0
3A75A4:  LDR.W           R9, [R0]; g_numSoundChannelsUsed
3A75A8:  LDR             R0, =(g_numSoundChannelsUsed_ptr - 0x3A75B2)
3A75AA:  STR.W           R9, [SP,#0x50+var_4C]
3A75AE:  ADD             R0, PC; g_numSoundChannelsUsed_ptr
3A75B0:  LDR             R0, [R0]; g_numSoundChannelsUsed
3A75B2:  STR             R0, [SP,#0x50+var_50]
3A75B4:  B               loc_3A762C
3A75B6:  MOV             R0, R6; this
3A75B8:  BLX             j__ZN9OALSource9GetVolumeEv; OALSource::GetVolume(void)
3A75BC:  LDRB.W          R1, [R8,#0x18]
3A75C0:  MOVS            R5, #0
3A75C2:  LDR.W           R9, [SP,#0x50+var_4C]
3A75C6:  CBNZ            R1, loc_3A75EC
3A75C8:  VMOV            S0, R0
3A75CC:  VLDR            S2, [R8,#0x14]
3A75D0:  VCMP.F32        S0, S2
3A75D4:  VMRS            APSR_nzcv, FPSCR
3A75D8:  BEQ             loc_3A75EC
3A75DA:  VSUB.F32        S0, S0, S2
3A75DE:  VABS.F32        S0, S0
3A75E2:  VCMPE.F32       S0, S22
3A75E6:  VMRS            APSR_nzcv, FPSCR
3A75EA:  BGE             loc_3A7622
3A75EC:  LDR.W           R0, [R8,#4]; this
3A75F0:  LDR.W           R1, [R8,#0xC]; float
3A75F4:  BLX             j__ZN9OALSource9SetVolumeEf; OALSource::SetVolume(float)
3A75F8:  LDRB.W          R0, [R8,#0x18]
3A75FC:  CBZ             R0, loc_3A7622
3A75FE:  LDR.W           R6, [R8,#4]
3A7602:  LDR             R0, [R6,#0xC]
3A7604:  CMP             R0, #2
3A7606:  ITT EQ
3A7608:  MOVEQ           R0, R6; this
3A760A:  BLXEQ           j__ZN9OALSource14UnqueueBuffersEv; OALSource::UnqueueBuffers(void)
3A760E:  LDR             R0, [R6,#8]
3A7610:  BLX             j_alSourceStop
3A7614:  MOVW            R0, #0x1014
3A7618:  STR             R0, [R6,#0x28]
3A761A:  MOVS            R0, #1
3A761C:  STR             R5, [R6,#0x20]
3A761E:  STRB.W          R0, [R6,#0x2C]
3A7622:  LDR             R1, [SP,#0x50+var_50]
3A7624:  LDR             R0, [R1]
3A7626:  SUBS            R0, #1
3A7628:  STR             R0, [R1]
3A762A:  B               loc_3A76CE
3A762C:  ADD.W           R8, R4, R11
3A7630:  LDR.W           R0, [R8,#0x1C]
3A7634:  CMP             R0, #2
3A7636:  BEQ             loc_3A76C4
3A7638:  CMP             R0, #1
3A763A:  BNE             loc_3A76E2
3A763C:  LDR.W           R6, [R8,#4]
3A7640:  CMP             R6, #0
3A7642:  BEQ             loc_3A76E2
3A7644:  LDR.W           R0, [R4,#0x80C]
3A7648:  LDR.W           R1, [R8,#0x20]
3A764C:  CMP             R0, R1
3A764E:  BCC             loc_3A76E2
3A7650:  LDRH.W          R9, [R8,#0x1A]
3A7654:  SUB.W           R10, R0, R1
3A7658:  CMP             R10, R9
3A765A:  BCS             loc_3A75B6
3A765C:  VLDR            S0, [R8,#0x10]
3A7660:  MOVS            R0, #0x41200000; x
3A7666:  VLDR            S24, [R8,#8]
3A766A:  VDIV.F32        S0, S0, S16
3A766E:  VMOV            R1, S0; y
3A7672:  BLX             powf
3A7676:  VMOV            S0, R9
3A767A:  VMOV            S2, R10
3A767E:  VCVT.F32.U32    S0, S0
3A7682:  VCVT.F32.U32    S2, S2
3A7686:  VDIV.F32        S0, S2, S0
3A768A:  VMOV            S2, R0
3A768E:  VADD.F32        S2, S2, S18
3A7692:  VMUL.F32        S0, S0, S2
3A7696:  VADD.F32        S0, S0, S20
3A769A:  VMOV            R0, S0; x
3A769E:  BLX             log10f
3A76A2:  VMOV            S0, R0
3A76A6:  MOV             R0, R6; this
3A76A8:  VMUL.F32        S0, S0, S16
3A76AC:  VADD.F32        S0, S24, S0
3A76B0:  VMOV            R1, S0; float
3A76B4:  VSTR            S0, [R8,#0x14]
3A76B8:  BLX             j__ZN9OALSource9SetVolumeEf; OALSource::SetVolume(float)
3A76BC:  MOVS            R5, #0
3A76BE:  LDR.W           R9, [SP,#0x50+var_4C]
3A76C2:  B               loc_3A76E2
3A76C4:  LDR.W           R0, [R9]
3A76C8:  SUBS            R0, #1
3A76CA:  STR.W           R0, [R9]
3A76CE:  LDR.W           R0, [R8,#4]; this
3A76D2:  CMP             R0, #0
3A76D4:  IT NE
3A76D6:  BLXNE           j__ZN7OALBase7ReleaseEv; OALBase::Release(void)
3A76DA:  STR.W           R5, [R8,#4]
3A76DE:  STR.W           R5, [R8,#0x1C]
3A76E2:  ADD.W           R11, R11, #0x20 ; ' '
3A76E6:  CMP.W           R11, #0x800
3A76EA:  BNE             loc_3A762C
3A76EC:  ADD             SP, SP, #8
3A76EE:  VPOP            {D8-D12}
3A76F2:  ADD             SP, SP, #4
3A76F4:  POP.W           {R8-R11}
3A76F8:  POP             {R4-R7,PC}
