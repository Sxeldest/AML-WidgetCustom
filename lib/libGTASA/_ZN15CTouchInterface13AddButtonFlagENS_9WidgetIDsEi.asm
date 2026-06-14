; =========================================================
; Game Engine Function: _ZN15CTouchInterface13AddButtonFlagENS_9WidgetIDsEi
; Address            : 0x2B2520 - 0x2B2556
; =========================================================

2B2520:  PUSH            {R4,R5,R7,LR}
2B2522:  ADD             R7, SP, #8
2B2524:  MOV             R5, R0
2B2526:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B252E)
2B2528:  MOV             R4, R1
2B252A:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B252C:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B252E:  LDR.W           R0, [R0,R5,LSL#2]
2B2532:  CBZ             R0, locret_2B2554
2B2534:  LDR             R1, [R0]
2B2536:  LDR             R1, [R1,#0x24]
2B2538:  BLX             R1
2B253A:  CMP             R0, #1
2B253C:  IT NE
2B253E:  POPNE           {R4,R5,R7,PC}
2B2540:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B2546)
2B2542:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B2544:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B2546:  LDR.W           R0, [R0,R5,LSL#2]
2B254A:  LDR.W           R1, [R0,#0x90]
2B254E:  ORRS            R1, R4
2B2550:  STR.W           R1, [R0,#0x90]
2B2554:  POP             {R4,R5,R7,PC}
