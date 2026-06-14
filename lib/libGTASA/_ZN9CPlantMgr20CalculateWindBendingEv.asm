; =========================================================
; Game Engine Function: _ZN9CPlantMgr20CalculateWindBendingEv
; Address            : 0x2CDC58 - 0x2CDD64
; =========================================================

2CDC58:  PUSH            {R7,LR}
2CDC5A:  MOV             R7, SP
2CDC5C:  VPUSH           {D8}
2CDC60:  LDR             R0, =(byte_71230C - 0x2CDC66)
2CDC62:  ADD             R0, PC; byte_71230C
2CDC64:  LDRB            R0, [R0]
2CDC66:  DMB.W           ISH
2CDC6A:  TST.W           R0, #1
2CDC6E:  BNE             loc_2CDC8E
2CDC70:  LDR             R0, =(byte_71230C - 0x2CDC76)
2CDC72:  ADD             R0, PC; byte_71230C ; __guard *
2CDC74:  BLX             j___cxa_guard_acquire
2CDC78:  CBZ             R0, loc_2CDC8E
2CDC7A:  BLX             rand
2CDC7E:  LDR             R2, =(dword_712308 - 0x2CDC86)
2CDC80:  LDR             R1, =(byte_71230C - 0x2CDC88)
2CDC82:  ADD             R2, PC; dword_712308
2CDC84:  ADD             R1, PC; byte_71230C
2CDC86:  STR             R0, [R2]
2CDC88:  MOV             R0, R1; __guard *
2CDC8A:  BLX             j___cxa_guard_release
2CDC8E:  LDR             R0, =(_ZN8CWeather4WindE_ptr - 0x2CDC98)
2CDC90:  VMOV.F32        S0, #0.5
2CDC94:  ADD             R0, PC; _ZN8CWeather4WindE_ptr
2CDC96:  LDR             R0, [R0]; CWeather::Wind ...
2CDC98:  VLDR            S16, [R0]
2CDC9C:  VCMPE.F32       S16, S0
2CDCA0:  VMRS            APSR_nzcv, FPSCR
2CDCA4:  BGE             loc_2CDCEA
2CDCA6:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2CDCB0)
2CDCA8:  VLDR            S2, =0.0015332
2CDCAC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2CDCAE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2CDCB0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2CDCB2:  BFC.W           R0, #0xC, #0x14
2CDCB6:  VMOV            S0, R0
2CDCBA:  VCVT.F32.U32    S0, S0
2CDCBE:  VMUL.F32        S0, S0, S2
2CDCC2:  VMOV            R0, S0; x
2CDCC6:  BLX             sinf
2CDCCA:  VLDR            S2, =0.2
2CDCCE:  VMOV            S0, R0
2CDCD2:  VCMPE.F32       S16, S2
2CDCD6:  VMRS            APSR_nzcv, FPSCR
2CDCDA:  ITE GE
2CDCDC:  VLDRGE          S2, =0.008
2CDCE0:  VLDRLT          S2, =0.005
2CDCE4:  VMUL.F32        S0, S0, S2
2CDCE8:  B               loc_2CDD5A
2CDCEA:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2CDCF6)
2CDCEC:  VMOV.F32        S4, #1.0
2CDCF0:  LDR             R1, =(dword_712308 - 0x2CDCFC)
2CDCF2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2CDCF4:  VLDR            S2, =0.00024414
2CDCF8:  ADD             R1, PC; dword_712308
2CDCFA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2CDCFC:  LDR             R1, [R1]
2CDCFE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2CDD00:  ADD.W           R0, R1, R0,LSL#3
2CDD04:  MOV             R1, R0
2CDD06:  BFC.W           R1, #0xC, #0x14
2CDD0A:  VMOV            S0, R1
2CDD0E:  LDR             R1, =(WindTabel_ptr - 0x2CDD18)
2CDD10:  VCVT.F32.U32    S0, S0
2CDD14:  ADD             R1, PC; WindTabel_ptr
2CDD16:  UBFX.W          R2, R0, #0xC, #4
2CDD1A:  LDR             R1, [R1]; WindTabel
2CDD1C:  ADD.W           R2, R1, R2,LSL#2
2CDD20:  VLDR            S6, [R2]
2CDD24:  MOVS            R2, #1
2CDD26:  VMUL.F32        S0, S0, S2
2CDD2A:  ADD.W           R0, R2, R0,LSR#12
2CDD2E:  AND.W           R0, R0, #0xF
2CDD32:  ADD.W           R0, R1, R0,LSL#2
2CDD36:  VSUB.F32        S2, S4, S0
2CDD3A:  VMUL.F32        S2, S6, S2
2CDD3E:  VLDR            S6, [R0]
2CDD42:  VMUL.F32        S0, S6, S0
2CDD46:  VADD.F32        S2, S2, S4
2CDD4A:  VADD.F32        S0, S0, S2
2CDD4E:  VLDR            S2, =0.015
2CDD52:  VMUL.F32        S0, S0, S2
2CDD56:  VMUL.F32        S0, S16, S0
2CDD5A:  VMOV            R0, S0
2CDD5E:  VPOP            {D8}
2CDD62:  POP             {R7,PC}
