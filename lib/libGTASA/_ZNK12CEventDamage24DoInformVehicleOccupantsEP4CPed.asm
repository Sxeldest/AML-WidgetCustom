; =========================================================
; Game Engine Function: _ZNK12CEventDamage24DoInformVehicleOccupantsEP4CPed
; Address            : 0x372734 - 0x372756
; =========================================================

372734:  PUSH            {R4,R6,R7,LR}
372736:  ADD             R7, SP, #8
372738:  MOV             R4, R0
37273A:  LDR             R0, [R4]
37273C:  LDR             R1, [R0,#0x2C]
37273E:  MOV             R0, R4
372740:  BLX             R1
372742:  MOV             R1, R0
372744:  MOVS            R0, #0
372746:  CMP             R1, #0
372748:  IT EQ
37274A:  POPEQ           {R4,R6,R7,PC}
37274C:  LDR             R1, [R4,#0x18]
37274E:  CMP             R1, #0x35 ; '5'
372750:  IT NE
372752:  MOVNE           R0, #1
372754:  POP             {R4,R6,R7,PC}
