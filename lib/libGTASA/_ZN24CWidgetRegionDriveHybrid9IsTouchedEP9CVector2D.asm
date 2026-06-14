; =========================================================
; Game Engine Function: _ZN24CWidgetRegionDriveHybrid9IsTouchedEP9CVector2D
; Address            : 0x2C02F4 - 0x2C0392
; =========================================================

2C02F4:  PUSH            {R4,R5,R7,LR}
2C02F6:  ADD             R7, SP, #8
2C02F8:  MOV             R5, R1
2C02FA:  MOV             R4, R0
2C02FC:  MOV.W           R0, #0xFFFFFFFF; int
2C0300:  MOVS            R1, #0; bool
2C0302:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2C0306:  CBNZ            R0, loc_2C0320
2C0308:  MOVS            R0, #0; this
2C030A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
2C030E:  LDRB.W          R0, [R0,#0x145]
2C0312:  CBNZ            R0, loc_2C0320
2C0314:  MOVS            R0, #0; this
2C0316:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
2C031A:  LDRB.W          R0, [R0,#0x147]
2C031E:  CBZ             R0, loc_2C0384
2C0320:  MOV             R0, R4
2C0322:  MOV             R1, R5
2C0324:  BLX             j__ZN7CWidget9IsTouchedEP9CVector2D; CWidget::IsTouched(CVector2D *)
2C0328:  CMP             R0, #1
2C032A:  BNE             loc_2C0378
2C032C:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2C0332)
2C032E:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2C0330:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2C0332:  LDR             R4, [R0,#(dword_6F37A0 - 0x6F3794)]
2C0334:  CBZ             R4, loc_2C034E
2C0336:  MOV             R0, R4; this
2C0338:  BLX             j__ZN7CWidget10GetEnabledEv; CWidget::GetEnabled(void)
2C033C:  CMP             R0, #1
2C033E:  BNE             loc_2C034E
2C0340:  LDR             R0, [R4]
2C0342:  MOVS            R1, #0
2C0344:  MOVS            R5, #0
2C0346:  LDR             R2, [R0,#0x50]
2C0348:  MOV             R0, R4
2C034A:  BLX             R2
2C034C:  CBNZ            R0, loc_2C0374
2C034E:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2C0354)
2C0350:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2C0352:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2C0354:  LDR             R4, [R0,#(dword_6F37A4 - 0x6F3794)]
2C0356:  CBZ             R4, loc_2C037E
2C0358:  MOV             R0, R4; this
2C035A:  BLX             j__ZN7CWidget10GetEnabledEv; CWidget::GetEnabled(void)
2C035E:  CMP             R0, #1
2C0360:  BNE             loc_2C037E
2C0362:  LDR             R0, [R4]
2C0364:  MOVS            R1, #0
2C0366:  MOVS            R5, #0
2C0368:  LDR             R2, [R0,#0x50]
2C036A:  MOV             R0, R4
2C036C:  BLX             R2
2C036E:  CMP             R0, #0
2C0370:  IT EQ
2C0372:  MOVEQ           R5, #1
2C0374:  MOV             R0, R5
2C0376:  POP             {R4,R5,R7,PC}
2C0378:  MOVS            R5, #0
2C037A:  MOV             R0, R5
2C037C:  POP             {R4,R5,R7,PC}
2C037E:  MOVS            R5, #1
2C0380:  MOV             R0, R5
2C0382:  POP             {R4,R5,R7,PC}
2C0384:  MOV             R0, R4; this
2C0386:  MOVS            R1, #0; bool
2C0388:  MOVS            R5, #0
2C038A:  BLX             j__ZN7CWidget10SetEnabledEb; CWidget::SetEnabled(bool)
2C038E:  MOV             R0, R5
2C0390:  POP             {R4,R5,R7,PC}
