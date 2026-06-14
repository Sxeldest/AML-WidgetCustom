; =========================================================
; Game Engine Function: _ZN15CTouchInterface16RemoveButtonFlagENS_9WidgetIDsEi
; Address            : 0x2B2560 - 0x2B2596
; =========================================================

2B2560:  PUSH            {R4,R5,R7,LR}
2B2562:  ADD             R7, SP, #8
2B2564:  MOV             R5, R0
2B2566:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B256E)
2B2568:  MOV             R4, R1
2B256A:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B256C:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B256E:  LDR.W           R0, [R0,R5,LSL#2]
2B2572:  CBZ             R0, locret_2B2594
2B2574:  LDR             R1, [R0]
2B2576:  LDR             R1, [R1,#0x24]
2B2578:  BLX             R1
2B257A:  CMP             R0, #1
2B257C:  IT NE
2B257E:  POPNE           {R4,R5,R7,PC}
2B2580:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B2586)
2B2582:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B2584:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B2586:  LDR.W           R0, [R0,R5,LSL#2]
2B258A:  LDR.W           R1, [R0,#0x90]
2B258E:  BICS            R1, R4
2B2590:  STR.W           R1, [R0,#0x90]
2B2594:  POP             {R4,R5,R7,PC}
