; =========================================================
; Game Engine Function: _ZN31CTaskComplexCarSlowBeDraggedOut24PrepareVehicleForPedExitEP4CPed
; Address            : 0x505180 - 0x5051B8
; =========================================================

505180:  PUSH            {R4,R6,R7,LR}
505182:  ADD             R7, SP, #8
505184:  MOV             R4, R0
505186:  LDR             R0, [R4,#0x10]
505188:  CMP             R0, #0xA
50518A:  IT NE
50518C:  POPNE           {R4,R6,R7,PC}
50518E:  LDR             R1, [R4,#0xC]
505190:  LDR.W           R0, [R1,#0x464]; this
505194:  CBZ             R0, loc_5051A6
505196:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
50519A:  LDR             R1, [R4,#0xC]
50519C:  MOVS            R2, #0x20 ; ' '
50519E:  CMP             R0, #0
5051A0:  IT NE
5051A2:  MOVNE           R2, #0x48 ; 'H'
5051A4:  B               loc_5051A8
5051A6:  MOVS            R2, #0x20 ; ' '
5051A8:  LDRB.W          R0, [R1,#0x3A]
5051AC:  AND.W           R0, R0, #7
5051B0:  ORRS            R0, R2
5051B2:  STRB.W          R0, [R1,#0x3A]
5051B6:  POP             {R4,R6,R7,PC}
