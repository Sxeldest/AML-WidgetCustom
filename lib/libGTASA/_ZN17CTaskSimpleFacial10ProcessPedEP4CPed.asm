; =========================================================
; Game Engine Function: _ZN17CTaskSimpleFacial10ProcessPedEP4CPed
; Address            : 0x540D14 - 0x540E46
; =========================================================

540D14:  PUSH            {R4-R7,LR}
540D16:  ADD             R7, SP, #0xC
540D18:  PUSH.W          {R8,R9,R11}
540D1C:  MOV             R9, R0
540D1E:  MOV             R4, R1
540D20:  LDR.W           R0, [R9,#0x14]
540D24:  CMP             R0, #8
540D26:  BHI             loc_540D32
540D28:  LDR             R1, =(unk_61E9B0 - 0x540D2E)
540D2A:  ADD             R1, PC; unk_61E9B0
540D2C:  LDR.W           R5, [R1,R0,LSL#2]
540D30:  B               loc_540D36
540D32:  MOV.W           R5, #0xFFFFFFFF
540D36:  LDR             R0, [R4,#0x18]
540D38:  MOV             R1, R5
540D3A:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
540D3E:  MOV             R8, R0
540D40:  LDR             R0, [R4,#0x18]
540D42:  MOVS            R1, #0xA0
540D44:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
540D48:  CBZ             R0, loc_540DA4
540D4A:  CMP             R5, #0xA0
540D4C:  BNE             loc_540DCC
540D4E:  BLX             rand
540D52:  UXTH            R0, R0
540D54:  VLDR            S2, =0.000015259
540D58:  VMOV            S0, R0
540D5C:  VCVT.F32.S32    S0, S0
540D60:  VMUL.F32        S0, S0, S2
540D64:  VLDR            S2, =100.0
540D68:  VMUL.F32        S0, S0, S2
540D6C:  VCVT.S32.F32    S0, S0
540D70:  VMOV            R0, S0
540D74:  CMP             R0, #0x27 ; '''
540D76:  BGT             loc_540E2E
540D78:  BLX             rand
540D7C:  VMOV            S0, R0
540D80:  VLDR            S2, =4.6566e-10
540D84:  VMOV.F32        S4, #2.5
540D88:  MOVS            R6, #0
540D8A:  VCVT.F32.S32    S0, S0
540D8E:  VMUL.F32        S0, S0, S2
540D92:  VMOV.F32        S2, #0.5
540D96:  VMUL.F32        S0, S0, S4
540D9A:  VADD.F32        S0, S0, S2
540D9E:  VSTR            S0, [R8,#0x24]
540DA2:  B               loc_540E3E
540DA4:  LDRB.W          R0, [R9,#0x10]
540DA8:  CBZ             R0, loc_540DEA
540DAA:  CMP.W           R8, #0
540DAE:  BEQ             loc_540E3C
540DB0:  LDRB.W          R0, [R9,#0x11]
540DB4:  CBZ             R0, loc_540E18
540DB6:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x540DBE)
540DB8:  MOVS            R1, #0
540DBA:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
540DBC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
540DBE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
540DC0:  STRB.W          R1, [R9,#0x11]
540DC4:  STR.W           R0, [R9,#8]
540DC8:  MOV             R1, R0
540DCA:  B               loc_540E24
540DCC:  CMP.W           R8, #0
540DD0:  BEQ             loc_540E3C
540DD2:  LDRH.W          R0, [R8,#0x2E]
540DD6:  MOVS            R1, #0xC0800000
540DDC:  STR.W           R1, [R8,#0x1C]
540DE0:  ORR.W           R0, R0, #4
540DE4:  STRH.W          R0, [R8,#0x2E]
540DE8:  B               loc_540E3C
540DEA:  MOVS            R6, #1
540DEC:  CMP.W           R8, #0
540DF0:  BNE             loc_540E3E
540DF2:  LDR             R0, [R4,#0x18]; int
540DF4:  MOVS            R1, #0; int
540DF6:  MOV             R2, R5; unsigned int
540DF8:  MOV.W           R3, #0x40800000
540DFC:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
540E00:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x540E0A)
540E02:  LDR.W           R1, [R9,#0x18]
540E06:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
540E08:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
540E0A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
540E0C:  STRD.W          R0, R1, [R9,#8]
540E10:  STRB.W          R6, [R9,#0x10]
540E14:  MOVS            R6, #0
540E16:  B               loc_540E3E
540E18:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x540E22)
540E1A:  LDR.W           R1, [R9,#8]
540E1E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
540E20:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
540E22:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
540E24:  LDR.W           R2, [R9,#0xC]
540E28:  ADD             R1, R2
540E2A:  CMP             R1, R0
540E2C:  BLS             loc_540E32
540E2E:  MOVS            R6, #0
540E30:  B               loc_540E3E
540E32:  MOVS            R0, #0xC0800000
540E38:  STR.W           R0, [R8,#0x1C]
540E3C:  MOVS            R6, #1
540E3E:  MOV             R0, R6
540E40:  POP.W           {R8,R9,R11}
540E44:  POP             {R4-R7,PC}
