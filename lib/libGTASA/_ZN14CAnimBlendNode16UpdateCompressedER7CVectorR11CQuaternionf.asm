; =========================================================
; Game Engine Function: _ZN14CAnimBlendNode16UpdateCompressedER7CVectorR11CQuaternionf
; Address            : 0x38B188 - 0x38B3A0
; =========================================================

38B188:  PUSH            {R4-R7,LR}
38B18A:  ADD             R7, SP, #0xC
38B18C:  PUSH.W          {R8-R10}
38B190:  VPUSH           {D8}
38B194:  SUB             SP, SP, #0x48; float
38B196:  MOV             R4, SP
38B198:  BFC.W           R4, #0, #4
38B19C:  MOV             SP, R4
38B19E:  VMOV.I32        Q8, #0
38B1A2:  MOV             R8, R2
38B1A4:  MOV             R4, R1
38B1A6:  MOVS            R6, #0
38B1A8:  STRD.W          R6, R6, [R4]
38B1AC:  MOV             R5, R0
38B1AE:  STR             R6, [R4,#8]
38B1B0:  VMOV            S16, R3
38B1B4:  VST1.32         {D16-D17}, [R8]
38B1B8:  LDR             R0, [R5,#0x14]
38B1BA:  LDRB.W          R1, [R0,#0x2E]
38B1BE:  LSLS            R1, R1, #0x1F
38B1C0:  BEQ             loc_38B1EA
38B1C2:  VLDR            S0, [R0,#0x28]
38B1C6:  VLDR            S2, [R5,#0xC]
38B1CA:  VSUB.F32        S0, S2, S0
38B1CE:  VCMPE.F32       S0, #0.0
38B1D2:  VSTR            S0, [R5,#0xC]
38B1D6:  VMRS            APSR_nzcv, FPSCR
38B1DA:  BLE             loc_38B1E0
38B1DC:  MOVS            R6, #0
38B1DE:  B               loc_38B1EA
38B1E0:  MOV             R0, R5; this
38B1E2:  BLX             j__ZN14CAnimBlendNode22NextKeyFrameCompressedEv; CAnimBlendNode::NextKeyFrameCompressed(void)
38B1E6:  MOV             R6, R0
38B1E8:  LDR             R0, [R5,#0x14]
38B1EA:  VLDR            S0, [R0,#0x18]
38B1EE:  LDRB.W          R0, [R0,#0x2E]
38B1F2:  VMUL.F32        S16, S0, S16
38B1F6:  LSLS            R0, R0, #0x1B
38B1F8:  IT MI
38B1FA:  VMOVMI.F32      S16, S0
38B1FE:  VCMPE.F32       S16, #0.0
38B202:  VMRS            APSR_nzcv, FPSCR
38B206:  BLE.W           loc_38B380
38B20A:  LDR             R0, [R5,#0x10]
38B20C:  LDRSH.W         R3, [R5,#0xA]
38B210:  LDRSH.W         R1, [R5,#8]
38B214:  LDRH.W          R9, [R0,#4]
38B218:  ADD.W           R2, R3, R3,LSL#2
38B21C:  LDR             R0, [R0,#8]
38B21E:  ANDS.W          LR, R9, #2
38B222:  MOV.W           R2, R2,LSL#1
38B226:  IT NE
38B228:  LSLNE           R2, R3, #4
38B22A:  ADD.W           R3, R1, R1,LSL#2
38B22E:  ADD.W           R12, R0, R2
38B232:  MOV.W           R3, R3,LSL#1
38B236:  IT NE
38B238:  LSLNE           R3, R1, #4
38B23A:  ADD             R3, R0
38B23C:  LDRH            R1, [R3,#8]
38B23E:  CMP             R1, #0
38B240:  BEQ.W           loc_38B392
38B244:  SXTH            R0, R1
38B246:  VLDR            S2, =0.016667
38B24A:  VMOV            S0, R0
38B24E:  VCVT.F32.S32    S0, S0
38B252:  VMUL.F32        S0, S0, S2
38B256:  VLDR            S2, [R5,#0xC]
38B25A:  VSUB.F32        S2, S0, S2
38B25E:  VDIV.F32        S0, S2, S0
38B262:  CMP.W           LR, #0
38B266:  BEQ             loc_38B30E
38B268:  LDRSH.W         R9, [R12,#0xA]
38B26C:  LDRSH.W         R1, [R12,#0xC]
38B270:  LDRSH.W         LR, [R12,#0xE]
38B274:  LDRSH.W         R2, [R3,#0xA]
38B278:  VMOV            S6, R9
38B27C:  LDRSH.W         R0, [R3,#0xC]
38B280:  VMOV            S2, R1
38B284:  LDRSH.W         R10, [R3,#0xE]
38B288:  VMOV            S10, LR
38B28C:  VMOV            S8, R2
38B290:  VLDR            S12, =0.00097656
38B294:  VMOV            S4, R0
38B298:  VMOV            S14, R10
38B29C:  VCVT.F32.S32    S2, S2
38B2A0:  VCVT.F32.S32    S4, S4
38B2A4:  VCVT.F32.S32    S6, S6
38B2A8:  VCVT.F32.S32    S8, S8
38B2AC:  VCVT.F32.S32    S10, S10
38B2B0:  VCVT.F32.S32    S14, S14
38B2B4:  VMUL.F32        S2, S2, S12
38B2B8:  VMUL.F32        S4, S4, S12
38B2BC:  VMUL.F32        S6, S6, S12
38B2C0:  VMUL.F32        S8, S8, S12
38B2C4:  VMUL.F32        S10, S10, S12
38B2C8:  VMUL.F32        S12, S14, S12
38B2CC:  VSUB.F32        S4, S4, S2
38B2D0:  VSUB.F32        S8, S8, S6
38B2D4:  VSUB.F32        S12, S12, S10
38B2D8:  VMUL.F32        S4, S0, S4
38B2DC:  VMUL.F32        S8, S0, S8
38B2E0:  VMUL.F32        S12, S0, S12
38B2E4:  VADD.F32        S2, S2, S4
38B2E8:  VADD.F32        S4, S6, S8
38B2EC:  VADD.F32        S6, S10, S12
38B2F0:  VMUL.F32        S2, S16, S2
38B2F4:  VMUL.F32        S4, S16, S4
38B2F8:  VMUL.F32        S6, S16, S6
38B2FC:  VSTR            S4, [R4]
38B300:  VSTR            S2, [R4,#4]
38B304:  VSTR            S6, [R4,#8]
38B308:  LDR             R0, [R5,#0x10]
38B30A:  LDRH.W          R9, [R0,#4]
38B30E:  MOVS.W          R0, R9,LSL#31
38B312:  BEQ             loc_38B380
38B314:  LDR.W           R0, [R12]
38B318:  LDR.W           R1, [R12,#4]
38B31C:  ADD.W           R12, SP, #0x68+var_58
38B320:  LDR             R2, [R3]
38B322:  LDR             R3, [R3,#4]
38B324:  STM.W           R12, {R0-R3}
38B328:  ADD             R0, SP, #0x68+var_58
38B32A:  ADD             R1, SP, #0x68+var_38; CQuaternion *
38B32C:  VLD1.16         {D16}, [R0@64]
38B330:  ADD             R0, SP, #0x68+var_50
38B332:  ADD             R2, SP, #0x68+var_48; CQuaternion *
38B334:  VLD1.16         {D17}, [R0@64]
38B338:  VMOVL.S16       Q9, D16
38B33C:  MOV.W           R0, #0x39800000
38B340:  VMOVL.S16       Q8, D17
38B344:  VDUP.32         Q10, R0
38B348:  VCVT.F32.S32    Q9, Q9
38B34C:  MOV             R0, R8; this
38B34E:  VCVT.F32.S32    Q8, Q8
38B352:  VMUL.F32        Q9, Q9, Q10
38B356:  VMUL.F32        Q8, Q8, Q10
38B35A:  VST1.64         {D18-D19}, [R1@128]
38B35E:  VST1.64         {D16-D17}, [R2@128]
38B362:  LDR             R3, [R5]; float
38B364:  VLDR            S2, [R5,#4]
38B368:  VSTR            S2, [SP,#0x68+var_68]
38B36C:  VSTR            S0, [SP,#0x68+var_64]
38B370:  BLX             j__ZN11CQuaternion5SlerpERKS_S1_fff; CQuaternion::Slerp(CQuaternion const&,CQuaternion const&,float,float,float)
38B374:  VLD1.32         {D16-D17}, [R8]
38B378:  VMUL.F32        Q8, Q8, D8[0]
38B37C:  VST1.32         {D16-D17}, [R8]
38B380:  SUB.W           R4, R7, #-var_20
38B384:  MOV             R0, R6
38B386:  MOV             SP, R4
38B388:  VPOP            {D8}
38B38C:  POP.W           {R8-R10}
38B390:  POP             {R4-R7,PC}
38B392:  VLDR            S0, =0.0
38B396:  CMP.W           LR, #0
38B39A:  BNE.W           loc_38B268
38B39E:  B               loc_38B30E
