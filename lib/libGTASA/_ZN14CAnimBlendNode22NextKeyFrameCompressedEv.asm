; =========================================================
; Game Engine Function: _ZN14CAnimBlendNode22NextKeyFrameCompressedEv
; Address            : 0x38B3AC - 0x38B466
; =========================================================

38B3AC:  PUSH            {R4-R7,LR}
38B3AE:  ADD             R7, SP, #0xC
38B3B0:  PUSH.W          {R8}
38B3B4:  LDR             R2, [R0,#0x10]
38B3B6:  LDRH.W          R12, [R2,#6]
38B3BA:  SXTH.W          R3, R12
38B3BE:  CMP             R3, #2
38B3C0:  BGE             loc_38B3C8
38B3C2:  MOV.W           R8, #0
38B3C6:  B               loc_38B450
38B3C8:  VLDR            S0, [R0,#0xC]
38B3CC:  MOV.W           R8, #0
38B3D0:  LDRH            R4, [R0,#8]
38B3D2:  VCMPE.F32       S0, #0.0
38B3D6:  STRH            R4, [R0,#0xA]
38B3D8:  VMRS            APSR_nzcv, FPSCR
38B3DC:  BGT             loc_38B438
38B3DE:  VLDR            S2, =0.016667
38B3E2:  MOV             R1, R4
38B3E4:  ADDS            R4, R1, #1
38B3E6:  STRH            R4, [R0,#8]
38B3E8:  SXTH            R4, R4
38B3EA:  CMP             R3, R4
38B3EC:  BGT             loc_38B400
38B3EE:  LDR             R5, [R0,#0x14]
38B3F0:  LDRB.W          R5, [R5,#0x2E]
38B3F4:  LSLS            R5, R5, #0x1E
38B3F6:  BPL             loc_38B45A
38B3F8:  MOVS            R4, #0
38B3FA:  MOV.W           R8, #1
38B3FE:  STRH            R4, [R0,#8]
38B400:  ADD.W           R6, R4, R4,LSL#2
38B404:  LDRH            R5, [R2,#4]
38B406:  LDR             R1, [R2,#8]
38B408:  LSLS            R6, R6, #1
38B40A:  TST.W           R5, #2
38B40E:  IT NE
38B410:  LSLNE           R6, R4, #4
38B412:  ADD             R1, R6
38B414:  LDRSH.W         R1, [R1,#8]
38B418:  VMOV            S4, R1
38B41C:  MOV             R1, R4
38B41E:  VCVT.F32.S32    S4, S4
38B422:  VMUL.F32        S4, S4, S2
38B426:  VADD.F32        S0, S0, S4
38B42A:  VCMPE.F32       S0, #0.0
38B42E:  VSTR            S0, [R0,#0xC]
38B432:  VMRS            APSR_nzcv, FPSCR
38B436:  BLE             loc_38B3E4
38B438:  SUBS            R2, R4, #1
38B43A:  MOVW            R1, #0xFFFF
38B43E:  ADD             R1, R4
38B440:  SXTH            R3, R2
38B442:  CMP             R3, #0
38B444:  IT LT
38B446:  ADDLT.W         R1, R2, R12
38B44A:  STRH            R1, [R0,#0xA]
38B44C:  BLX             j__ZN14CAnimBlendNode20CalcDeltasCompressedEv; CAnimBlendNode::CalcDeltasCompressed(void)
38B450:  AND.W           R0, R8, #1
38B454:  POP.W           {R8}
38B458:  POP             {R4-R7,PC}
38B45A:  MOV.W           R8, #0
38B45E:  STR.W           R8, [R0,#0xC]
38B462:  STRH            R1, [R0,#8]
38B464:  B               loc_38B450
