; =========================================================
; Game Engine Function: _ZN15CTouchInterface15SetWidgetValue3ENS_9WidgetIDsEfff
; Address            : 0x2B2310 - 0x2B2378
; =========================================================

2B2310:  PUSH            {R4-R7,LR}
2B2312:  ADD             R7, SP, #0xC
2B2314:  PUSH.W          {R8}
2B2318:  MOV             R4, R0
2B231A:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B2324)
2B231C:  MOV             R8, R3
2B231E:  MOV             R5, R2
2B2320:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B2322:  MOV             R6, R1
2B2324:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B2326:  LDR.W           R0, [R0,R4,LSL#2]
2B232A:  CBZ             R0, loc_2B234C
2B232C:  MOVS            R0, #0; this
2B232E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
2B2332:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B233C)
2B2334:  LDRH.W          R2, [R0,#0x110]
2B2338:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B233A:  CMP             R2, #0
2B233C:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
2B233E:  LDR.W           R0, [R1,R4,LSL#2]; this
2B2342:  BEQ             loc_2B2352
2B2344:  LDRB.W          R1, [R0,#0x80]
2B2348:  LSLS            R1, R1, #0x1D
2B234A:  BMI             loc_2B2352
2B234C:  POP.W           {R8}
2B2350:  POP             {R4-R7,PC}
2B2352:  MOVS            R1, #1; bool
2B2354:  BLX             j__ZN7CWidget10SetEnabledEb; CWidget::SetEnabled(bool)
2B2358:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B2362)
2B235A:  MOV             R2, R5
2B235C:  MOV             R3, R8
2B235E:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B2360:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B2362:  LDR.W           R0, [R0,R4,LSL#2]
2B2366:  LDR             R1, [R0]
2B2368:  LDR.W           R12, [R1,#0x78]
2B236C:  MOV             R1, R6
2B236E:  POP.W           {R8}
2B2372:  POP.W           {R4-R7,LR}
2B2376:  BX              R12
