; =========================================================
; Game Engine Function: _ZN15CAEAudioUtility19FindVehicleOfPlayerEv
; Address            : 0x393554 - 0x393592
; =========================================================

393554:  PUSH            {R4,R6,R7,LR}
393556:  ADD             R7, SP, #8
393558:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x393560)
39355A:  MOVS            R1, #1; bool
39355C:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
39355E:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
393560:  LDR             R0, [R0]; int
393562:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
393566:  MOV             R4, R0
393568:  MOV.W           R0, #0xFFFFFFFF; int
39356C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
393570:  CBNZ            R4, loc_39358E
393572:  CMP             R0, #0
393574:  ITTT NE
393576:  LDRNE.W         R0, [R0,#0x100]
39357A:  MOVNE           R4, #0
39357C:  CMPNE           R0, #0
39357E:  BEQ             loc_39358E
393580:  LDRB.W          R1, [R0,#0x3A]
393584:  AND.W           R1, R1, #7
393588:  CMP             R1, #2
39358A:  IT EQ
39358C:  MOVEQ           R4, R0
39358E:  MOV             R0, R4
393590:  POP             {R4,R6,R7,PC}
