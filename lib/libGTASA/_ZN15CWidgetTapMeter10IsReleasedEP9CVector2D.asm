; =========================================================
; Game Engine Function: _ZN15CWidgetTapMeter10IsReleasedEP9CVector2D
; Address            : 0x2C7C64 - 0x2C7CD2
; =========================================================

2C7C64:  PUSH            {R4,R6,R7,LR}
2C7C66:  ADD             R7, SP, #8
2C7C68:  MOV             R4, R0
2C7C6A:  MOVS            R0, #0x2B ; '+'
2C7C6C:  MOVS            R1, #0
2C7C6E:  MOVS            R2, #1
2C7C70:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
2C7C74:  CBNZ            R0, loc_2C7C86
2C7C76:  LDR             R0, =(_ZN7CWidget17m_pReleasedWidgetE_ptr - 0x2C7C7E)
2C7C78:  LDR             R1, [R4,#0x78]
2C7C7A:  ADD             R0, PC; _ZN7CWidget17m_pReleasedWidgetE_ptr
2C7C7C:  LDR             R0, [R0]; CWidget::m_pReleasedWidget ...
2C7C7E:  LDR.W           R0, [R0,R1,LSL#2]
2C7C82:  CMP             R4, R0
2C7C84:  BNE             loc_2C7CAC
2C7C86:  LDR.W           R0, [R4,#0x90]
2C7C8A:  CBNZ            R0, loc_2C7CAC
2C7C8C:  VLDR            S0, [R4,#0x98]
2C7C90:  VLDR            S2, [R4,#0xA4]
2C7C94:  VCMPE.F32       S0, S2
2C7C98:  VMRS            APSR_nzcv, FPSCR
2C7C9C:  BLT             loc_2C7CAC
2C7C9E:  VLDR            S2, [R4,#0xA8]
2C7CA2:  VCMPE.F32       S0, S2
2C7CA6:  VMRS            APSR_nzcv, FPSCR
2C7CAA:  BLE             loc_2C7CB0
2C7CAC:  MOVS            R0, #0
2C7CAE:  POP             {R4,R6,R7,PC}
2C7CB0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2C7CBA)
2C7CB2:  VLDR            S2, =1000.0
2C7CB6:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2C7CB8:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
2C7CBA:  MOVS            R0, #1
2C7CBC:  STR.W           R0, [R4,#0x90]
2C7CC0:  VLDR            S0, [R1]
2C7CC4:  VCVT.F32.U32    S0, S0
2C7CC8:  VDIV.F32        S0, S0, S2
2C7CCC:  VSTR            S0, [R4,#0x94]
2C7CD0:  POP             {R4,R6,R7,PC}
