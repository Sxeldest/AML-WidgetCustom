; =========================================================
; Game Engine Function: _ZN10CTapEffect6UpdateEv
; Address            : 0x2AC348 - 0x2AC43C
; =========================================================

2AC348:  PUSH            {R4,R6,R7,LR}
2AC34A:  ADD             R7, SP, #8
2AC34C:  MOV             R4, R0
2AC34E:  LDR             R0, =(_ZN7CWidget14m_fElapsedTimeE_ptr - 0x2AC35C)
2AC350:  VLDR            S6, [R4,#0x18]
2AC354:  VMOV.F32        S8, #25.0
2AC358:  ADD             R0, PC; _ZN7CWidget14m_fElapsedTimeE_ptr
2AC35A:  VLDR            D16, =-250.0
2AC35E:  VCVT.F64.F32    D18, S6
2AC362:  CMP             R4, #0
2AC364:  LDR             R0, [R0]; CWidget::m_fElapsedTime ...
2AC366:  VLDR            D17, [R0]
2AC36A:  VLDR            S0, [R4,#0x14]
2AC36E:  VMUL.F64        D16, D17, D16
2AC372:  LDR             R0, =(RsGlobal_ptr - 0x2AC378)
2AC374:  ADD             R0, PC; RsGlobal_ptr
2AC376:  LDR             R0, [R0]; RsGlobal
2AC378:  VMUL.F64        D17, D17, D18
2AC37C:  VCVT.F64.F32    D19, S0
2AC380:  VADD.F64        D16, D18, D16
2AC384:  VADD.F64        D17, D17, D19
2AC388:  VCVT.F32.F64    S6, D16
2AC38C:  VCVT.F32.F64    S0, D17
2AC390:  VMAX.F32        D3, D3, D4
2AC394:  VLDR            S2, [R4,#0xC]
2AC398:  VLDR            S4, [R4,#0x10]
2AC39C:  VSTR            S0, [R4,#0x14]
2AC3A0:  VLDR            S10, =640.0
2AC3A4:  VLDR            S12, =448.0
2AC3A8:  VSTR            S6, [R4,#0x18]
2AC3AC:  VLDR            S6, [R0,#4]
2AC3B0:  VLDR            S8, [R0,#8]
2AC3B4:  VCVT.F32.S32    S6, S6
2AC3B8:  VCVT.F32.S32    S8, S8
2AC3BC:  VDIV.F32        S6, S6, S10
2AC3C0:  VDIV.F32        S8, S8, S12
2AC3C4:  VMUL.F32        S10, S6, S0
2AC3C8:  VMUL.F32        S2, S2, S6
2AC3CC:  VMUL.F32        S4, S4, S8
2AC3D0:  VSUB.F32        S6, S2, S10
2AC3D4:  VADD.F32        S8, S10, S4
2AC3D8:  VADD.F32        S2, S2, S10
2AC3DC:  VSUB.F32        S4, S4, S10
2AC3E0:  VSTR            S6, [R4,#0x1C]
2AC3E4:  VSTR            S2, [R4,#0x24]
2AC3E8:  VSTR            S8, [R4,#0x20]
2AC3EC:  VSTR            S4, [R4,#0x28]
2AC3F0:  IT EQ
2AC3F2:  POPEQ           {R4,R6,R7,PC}
2AC3F4:  VLDR            S2, =60.0
2AC3F8:  VCMPE.F32       S0, S2
2AC3FC:  VMRS            APSR_nzcv, FPSCR
2AC400:  BLE             locret_2AC43A
2AC402:  LDR             R0, =(_ZN10CTapEffect12m_pChainHeadE_ptr - 0x2AC40C)
2AC404:  LDRD.W          R1, R2, [R4]
2AC408:  ADD             R0, PC; _ZN10CTapEffect12m_pChainHeadE_ptr
2AC40A:  LDR.W           R12, =(_ZN10CTapEffect12m_pChainTailE_ptr - 0x2AC41A)
2AC40E:  ADDS            R3, R1, #4
2AC410:  CMP             R1, #0
2AC412:  IT EQ
2AC414:  LDREQ           R3, [R0]; CTapEffect::m_pChainHead ...
2AC416:  ADD             R12, PC; _ZN10CTapEffect12m_pChainTailE_ptr
2AC418:  STR             R2, [R3]; CTapEffect::m_pChainHead
2AC41A:  LDRD.W          R0, R1, [R4]
2AC41E:  CMP             R1, #0
2AC420:  IT EQ
2AC422:  LDREQ.W         R1, [R12]; CTapEffect::m_pChainTail ...
2AC426:  STR             R0, [R1]; CTapEffect::m_pChainTail
2AC428:  ADD.W           R0, R4, #8; this
2AC42C:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2AC430:  MOV             R0, R4; void *
2AC432:  POP.W           {R4,R6,R7,LR}
2AC436:  B.W             j__ZdlPv; operator delete(void *)
2AC43A:  POP             {R4,R6,R7,PC}
