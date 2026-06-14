; =========================================================
; Game Engine Function: _ZN7CCamera4FadeEfs
; Address            : 0x3DB5E0 - 0x3DB65E
; =========================================================

3DB5E0:  PUSH            {R4,R6,R7,LR}
3DB5E2:  ADD             R7, SP, #8
3DB5E4:  LDR             R3, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3DB5F4)
3DB5E6:  MOV.W           R12, #1
3DB5EA:  STRH.W          R2, [R0,#0xBB8]
3DB5EE:  CMP             R2, #1
3DB5F0:  ADD             R3, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3DB5F2:  STRB.W          R12, [R0,#0x4F]
3DB5F6:  STR.W           R1, [R0,#0xB8C]
3DB5FA:  LDR             R3, [R3]; CTimer::m_snTimeInMilliseconds ...
3DB5FC:  LDRB.W          R4, [R0,#0x23]
3DB600:  LDR.W           LR, [R3]; CTimer::m_snTimeInMilliseconds
3DB604:  STR.W           LR, [R0,#0xBC8]
3DB608:  ITT NE
3DB60A:  CMPNE           R4, #0
3DB60C:  POPNE           {R4,R6,R7,PC}
3DB60E:  VMOV            S2, R1
3DB612:  VLDR            S0, =0.3
3DB616:  ADD.W           R1, R0, #0xB90
3DB61A:  CMP             R2, #0
3DB61C:  VMUL.F32        S4, S2, S0
3DB620:  STRH.W          R2, [R0,#0xBC2]
3DB624:  STRB.W          R12, [R0,#0x50]
3DB628:  VMAX.F32        D16, D2, D0
3DB62C:  VMIN.F32        D0, D16, D1
3DB630:  BEQ             loc_3DB638
3DB632:  VLDR            S2, =0.0
3DB636:  B               loc_3DB64C
3DB638:  VLDR            S4, =-0.1
3DB63C:  VSUB.F32        S2, S2, S0
3DB640:  VLDR            S6, =0.0
3DB644:  VADD.F32        S0, S0, S4
3DB648:  VMAX.F32        D0, D0, D3
3DB64C:  VSTR            S0, [R1]
3DB650:  STR.W           LR, [R0,#0xBCC]
3DB654:  ADDW            R0, R0, #0xB94
3DB658:  VSTR            S2, [R0]
3DB65C:  POP             {R4,R6,R7,PC}
