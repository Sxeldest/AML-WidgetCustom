; =========================================================
; Game Engine Function: _ZN4CPed16SetGunFlashAlphaEb
; Address            : 0x4A5504 - 0x4A55B2
; =========================================================

4A5504:  PUSH            {R4-R7,LR}
4A5506:  ADD             R7, SP, #0xC
4A5508:  PUSH.W          {R8-R10}
4A550C:  MOV             R4, R1
4A550E:  MOV             R1, R0
4A5510:  ADD.W           R6, R1, #0x510
4A5514:  LDR.W           R0, [R1,#0x504]
4A5518:  ADDW            R5, R1, #0x514
4A551C:  CMP             R4, #0
4A551E:  MOV             R1, R6
4A5520:  IT NE
4A5522:  MOVNE           R1, R5
4A5524:  CBZ             R0, loc_4A55A2
4A5526:  LDRSH.W         R10, [R1]
4A552A:  MOV.W           R9, #0xFFFFFFFF
4A552E:  LDRSH.W         R1, [R6]
4A5532:  CMP.W           R1, #0xFFFFFFFF
4A5536:  ITT LE
4A5538:  LDRSHLE.W       R1, [R5]
4A553C:  CMPLE           R1, R9
4A553E:  BLE             loc_4A55A2
4A5540:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
4A5544:  MOV             R8, R0
4A5546:  CMP.W           R8, #0
4A554A:  BEQ             loc_4A558C
4A554C:  LDR             R0, =(_ZN4CPed21m_sGunFlashBlendStartE_ptr - 0x4A5556)
4A554E:  MOV.W           R1, #0x15E
4A5552:  ADD             R0, PC; _ZN4CPed21m_sGunFlashBlendStartE_ptr
4A5554:  LDR             R2, [R0]; CPed::m_sGunFlashBlendStart ...
4A5556:  SMULBB.W        R0, R10, R1
4A555A:  LDRH            R1, [R2]; CPed::m_sGunFlashBlendStart
4A555C:  BLX             __aeabi_idiv
4A5560:  VMOV            S2, R0
4A5564:  VLDR            S0, =255.0
4A5568:  CMP.W           R10, #1
4A556C:  MOV             R0, R8
4A556E:  VCVT.F32.S32    S2, S2
4A5572:  VMIN.F32        D0, D1, D0
4A5576:  VCVT.S32.F32    S0, S0
4A557A:  VMOV            R1, S0
4A557E:  IT LT
4A5580:  MOVLT           R1, #0
4A5582:  BLX             j__ZN8CVehicle23SetComponentAtomicAlphaEP8RpAtomici; CVehicle::SetComponentAtomicAlpha(RpAtomic *,int)
4A5586:  MOVS            R0, #4
4A5588:  STRB.W          R0, [R8,#2]
4A558C:  CBZ             R4, loc_4A559E
4A558E:  LDRH            R0, [R5]
4A5590:  CMP             R0, #0
4A5592:  IT EQ
4A5594:  STRHEQ.W        R9, [R5]
4A5598:  POP.W           {R8-R10}
4A559C:  POP             {R4-R7,PC}
4A559E:  LDRH            R0, [R6]
4A55A0:  CBZ             R0, loc_4A55A8
4A55A2:  POP.W           {R8-R10}
4A55A6:  POP             {R4-R7,PC}
4A55A8:  STRH.W          R9, [R6]
4A55AC:  POP.W           {R8-R10}
4A55B0:  POP             {R4-R7,PC}
