; =========================================================
; Game Engine Function: _Z45GetNearestDistanceOfPedSphereToCameraNearClipP4CPed
; Address            : 0x3E24FC - 0x3E25AE
; =========================================================

3E24FC:  PUSH            {R4,R6,R7,LR}
3E24FE:  ADD             R7, SP, #8
3E2500:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3E250A)
3E2502:  LDRSH.W         R2, [R0,#0x26]
3E2506:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3E2508:  LDR             R3, [R1]; CModelInfo::ms_modelInfoPtrs ...
3E250A:  LDR             R1, [R0,#0x18]
3E250C:  LDR.W           R4, [R3,R2,LSL#2]
3E2510:  MOV             R0, R4
3E2512:  BLX             j__ZN13CPedModelInfo30AnimatePedColModelSkinnedWorldEP7RpClump; CPedModelInfo::AnimatePedColModelSkinnedWorld(RpClump *)
3E2516:  LDR             R0, =(TheCamera_ptr - 0x3E251C)
3E2518:  ADD             R0, PC; TheCamera_ptr
3E251A:  LDR             R0, [R0]; TheCamera
3E251C:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
3E2520:  ADD.W           R1, R1, R1,LSL#5
3E2524:  ADD.W           R0, R0, R1,LSL#4
3E2528:  LDR             R1, [R4,#0x4C]
3E252A:  VLDR            S0, [R0,#0x2D8]
3E252E:  VLDR            S6, [R0,#0x2E4]
3E2532:  VLDR            S2, [R0,#0x2DC]
3E2536:  VLDR            S8, [R0,#0x2E8]
3E253A:  VMUL.F32        S6, S0, S6
3E253E:  VLDR            S4, [R0,#0x2E0]
3E2542:  VMUL.F32        S8, S2, S8
3E2546:  VLDR            S10, [R0,#0x2EC]
3E254A:  LDR             R0, =(Scene_ptr - 0x3E2556)
3E254C:  VMUL.F32        S10, S4, S10
3E2550:  LDR             R1, [R1,#0x2C]
3E2552:  ADD             R0, PC; Scene_ptr
3E2554:  LDR             R0, [R0]; Scene
3E2556:  VADD.F32        S6, S6, S8
3E255A:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
3E255C:  VADD.F32        S8, S6, S10
3E2560:  VLDR            S10, [R0,#0x80]
3E2564:  LDR             R0, [R1,#8]
3E2566:  MOVS            R1, #0
3E2568:  VLDR            S6, =1000000.0
3E256C:  ADDS            R2, R0, R1
3E256E:  ADDS            R1, #0x14
3E2570:  CMP             R1, #0xF0
3E2572:  VLDR            S12, [R2]
3E2576:  VLDR            S14, [R2,#4]
3E257A:  VMUL.F32        S12, S12, S0
3E257E:  VLDR            S1, [R2,#8]
3E2582:  VMUL.F32        S14, S14, S2
3E2586:  VLDR            S3, [R2,#0xC]
3E258A:  VMUL.F32        S1, S1, S4
3E258E:  VADD.F32        S12, S12, S14
3E2592:  VADD.F32        S12, S12, S1
3E2596:  VSUB.F32        S12, S12, S8
3E259A:  VSUB.F32        S12, S12, S3
3E259E:  VSUB.F32        S12, S12, S10
3E25A2:  VMIN.F32        D3, D6, D3
3E25A6:  BNE             loc_3E256C
3E25A8:  VMOV            R0, S6
3E25AC:  POP             {R4,R6,R7,PC}
