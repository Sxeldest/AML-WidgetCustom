; =========================================================
; Game Engine Function: _ZN15CTouchInterface14SetWidgetInfo2ENS_9WidgetIDsEiiiiPcS1_
; Address            : 0x2B23E4 - 0x2B242C
; =========================================================

2B23E4:  PUSH            {R4-R7,LR}
2B23E6:  ADD             R7, SP, #0xC
2B23E8:  PUSH.W          {R8}
2B23EC:  MOV             R4, R0
2B23EE:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B23F8)
2B23F0:  MOV             R8, R3
2B23F2:  MOV             R5, R2
2B23F4:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B23F6:  MOV             R6, R1
2B23F8:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B23FA:  LDR.W           R0, [R0,R4,LSL#2]; this
2B23FE:  CBZ             R0, loc_2B2426
2B2400:  MOVS            R1, #1; bool
2B2402:  BLX             j__ZN7CWidget10SetEnabledEb; CWidget::SetEnabled(bool)
2B2406:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B2410)
2B2408:  MOV             R2, R5
2B240A:  MOV             R3, R8
2B240C:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B240E:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B2410:  LDR.W           R0, [R0,R4,LSL#2]
2B2414:  LDR             R1, [R0]
2B2416:  LDR.W           R12, [R1,#0x80]
2B241A:  MOV             R1, R6
2B241C:  POP.W           {R8}
2B2420:  POP.W           {R4-R7,LR}
2B2424:  BX              R12
2B2426:  POP.W           {R8}
2B242A:  POP             {R4-R7,PC}
