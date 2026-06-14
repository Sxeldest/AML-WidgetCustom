; =========================================================
; Game Engine Function: _ZN15CTouchInterface17GetWidgetPositionENS_9WidgetIDsERfS1_S1_S1_
; Address            : 0x2B25A0 - 0x2B25EA
; =========================================================

2B25A0:  LDR.W           R12, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B25A8)
2B25A4:  ADD             R12, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B25A6:  LDR.W           R12, [R12]; CTouchInterface::m_pWidgets ...
2B25AA:  LDR.W           R12, [R12,R0,LSL#2]
2B25AE:  CMP.W           R12, #0
2B25B2:  ITT EQ
2B25B4:  MOVEQ           R0, #0
2B25B6:  BXEQ            LR
2B25B8:  PUSH            {R4,R5,R7,LR}
2B25BA:  ADD             R7, SP, #0x10+var_8
2B25BC:  LDR             R4, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B25C6)
2B25BE:  LDR.W           LR, [R7,#8]
2B25C2:  ADD             R4, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B25C4:  LDR             R5, [R4]; CTouchInterface::m_pWidgets ...
2B25C6:  LDR.W           R4, [R12,#0xC]
2B25CA:  STR             R4, [R1]
2B25CC:  LDR.W           R1, [R5,R0,LSL#2]
2B25D0:  LDR             R1, [R1,#0x10]
2B25D2:  STR             R1, [R2]
2B25D4:  LDR.W           R1, [R5,R0,LSL#2]
2B25D8:  LDR             R1, [R1,#0x14]
2B25DA:  STR             R1, [R3]
2B25DC:  LDR.W           R0, [R5,R0,LSL#2]
2B25E0:  LDR             R0, [R0,#0x18]
2B25E2:  STR.W           R0, [LR]
2B25E6:  MOVS            R0, #1
2B25E8:  POP             {R4,R5,R7,PC}
