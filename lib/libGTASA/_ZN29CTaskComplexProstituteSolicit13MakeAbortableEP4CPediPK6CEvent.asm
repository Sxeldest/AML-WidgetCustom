; =========================================================
; Game Engine Function: _ZN29CTaskComplexProstituteSolicit13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x51B48C - 0x51B4A8
; =========================================================

51B48C:  PUSH            {R4,R5,R7,LR}
51B48E:  ADD             R7, SP, #8
51B490:  MOV             R5, R0
51B492:  LDR             R0, [R5,#8]
51B494:  LDR             R4, [R0]
51B496:  LDR             R4, [R4,#0x1C]
51B498:  BLX             R4
51B49A:  CMP             R0, #1
51B49C:  ITTT EQ
51B49E:  LDRHEQ          R1, [R5,#0x2C]
51B4A0:  BICEQ.W         R1, R1, #0x100
51B4A4:  STRHEQ          R1, [R5,#0x2C]
51B4A6:  POP             {R4,R5,R7,PC}
