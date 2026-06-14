; =========================================================
; Game Engine Function: _ZN18CTaskSimpleChokingC2EP4CPedh
; Address            : 0x4DF650 - 0x4DF6C4
; =========================================================

4DF650:  PUSH            {R4-R7,LR}
4DF652:  ADD             R7, SP, #0xC
4DF654:  PUSH.W          {R11}
4DF658:  MOV             R6, R2
4DF65A:  MOV             R5, R1
4DF65C:  MOV             R4, R0
4DF65E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4DF662:  LDR             R0, =(_ZTV18CTaskSimpleChoking_ptr - 0x4DF66E)
4DF664:  MOVS            R1, #0
4DF666:  STR             R1, [R4,#0xC]
4DF668:  CMP             R5, #0
4DF66A:  ADD             R0, PC; _ZTV18CTaskSimpleChoking_ptr
4DF66C:  STRB            R6, [R4,#0x18]
4DF66E:  STRB            R1, [R4,#0x19]
4DF670:  MOV             R1, R4
4DF672:  LDR             R0, [R0]; `vtable for'CTaskSimpleChoking ...
4DF674:  ADD.W           R0, R0, #8
4DF678:  STR             R0, [R4]
4DF67A:  STR.W           R5, [R1,#8]!; CEntity **
4DF67E:  ITT NE
4DF680:  MOVNE           R0, R5; this
4DF682:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4DF686:  BLX             rand
4DF68A:  UXTH            R0, R0
4DF68C:  VLDR            S2, =0.000015259
4DF690:  VMOV            S0, R0
4DF694:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4DF69E)
4DF696:  VCVT.F32.S32    S0, S0
4DF69A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4DF69C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4DF69E:  VMUL.F32        S0, S0, S2
4DF6A2:  VLDR            S2, =1000.0
4DF6A6:  VMUL.F32        S0, S0, S2
4DF6AA:  VCVT.S32.F32    S0, S0
4DF6AE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4DF6B0:  VMOV            R1, S0
4DF6B4:  ADD.W           R1, R1, #0x3E8
4DF6B8:  STRD.W          R1, R0, [R4,#0x10]
4DF6BC:  MOV             R0, R4
4DF6BE:  POP.W           {R11}
4DF6C2:  POP             {R4-R7,PC}
