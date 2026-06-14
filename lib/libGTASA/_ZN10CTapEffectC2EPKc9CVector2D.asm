; =========================================================
; Game Engine Function: _ZN10CTapEffectC2EPKc9CVector2D
; Address            : 0x2AC230 - 0x2AC2D8
; =========================================================

2AC230:  PUSH            {R4-R7,LR}
2AC232:  ADD             R7, SP, #0xC
2AC234:  PUSH.W          {R8,R9,R11}
2AC238:  MOV             R4, R0
2AC23A:  ADD.W           R0, R4, #8; this
2AC23E:  MOV             R6, R3
2AC240:  MOV             R9, R2
2AC242:  MOV             R8, R1
2AC244:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
2AC248:  LDR             R3, =(_ZN10CTapEffect12m_pChainTailE_ptr - 0x2AC258)
2AC24A:  ADR             R2, dword_2AC2E0
2AC24C:  VLD1.64         {D16-D17}, [R2@128]
2AC250:  MOV.W           LR, #0
2AC254:  ADD             R3, PC; _ZN10CTapEffect12m_pChainTailE_ptr
2AC256:  VMOV            S4, R6
2AC25A:  LDR             R1, =(RsGlobal_ptr - 0x2AC26E)
2AC25C:  VMOV            S6, R9
2AC260:  LDR             R2, [R3]; char *
2AC262:  ADD.W           R3, R4, #0x1C
2AC266:  LDR.W           R12, =(_ZN10CTapEffect12m_pChainHeadE_ptr - 0x2AC274)
2AC26A:  ADD             R1, PC; RsGlobal_ptr
2AC26C:  VST1.32         {D16-D17}, [R3]
2AC270:  ADD             R12, PC; _ZN10CTapEffect12m_pChainHeadE_ptr
2AC272:  LDR             R3, [R2]; CTapEffect::m_pChainTail
2AC274:  STRD.W          R3, LR, [R4]
2AC278:  ADDS            R5, R3, #4
2AC27A:  CMP             R3, #0
2AC27C:  IT EQ
2AC27E:  LDREQ.W         R5, [R12]; CTapEffect::m_pChainHead ...
2AC282:  LDR             R1, [R1]; RsGlobal
2AC284:  CMP.W           R8, #0
2AC288:  STR             R4, [R5]; CTapEffect::m_pChainHead
2AC28A:  VLDR            S0, [R1,#4]
2AC28E:  VLDR            S2, [R1,#8]
2AC292:  MOV             R1, #0x43480000
2AC29A:  VCVT.F32.S32    S2, S2
2AC29E:  VCVT.F32.S32    S0, S0
2AC2A2:  STR             R4, [R2]; CTapEffect::m_pChainTail
2AC2A4:  STRD.W          LR, R1, [R4,#0x14]
2AC2A8:  VDIV.F32        S2, S4, S2
2AC2AC:  VDIV.F32        S0, S6, S0
2AC2B0:  VLDR            S4, =448.0
2AC2B4:  VLDR            S6, =640.0
2AC2B8:  VMUL.F32        S2, S2, S4
2AC2BC:  VMUL.F32        S0, S0, S6
2AC2C0:  VSTR            S0, [R4,#0xC]
2AC2C4:  VSTR            S2, [R4,#0x10]
2AC2C8:  ITT NE
2AC2CA:  MOVNE           R1, R8; CSprite2d *
2AC2CC:  BLXNE           j__ZN7CWidget16SetTextureStaticER9CSprite2dPc; CWidget::SetTextureStatic(CSprite2d &,char *)
2AC2D0:  MOV             R0, R4
2AC2D2:  POP.W           {R8,R9,R11}
2AC2D6:  POP             {R4-R7,PC}
