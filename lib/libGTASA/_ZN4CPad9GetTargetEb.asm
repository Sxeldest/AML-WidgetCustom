; =========================================================
; Game Engine Function: _ZN4CPad9GetTargetEb
; Address            : 0x3FB6B4 - 0x3FB72A
; =========================================================

3FB6B4:  PUSH            {R4-R7,LR}
3FB6B6:  ADD             R7, SP, #0xC
3FB6B8:  PUSH.W          {R11}
3FB6BC:  MOV             R4, R0
3FB6BE:  MOVS            R5, #0
3FB6C0:  LDRH.W          R0, [R4,#0x110]
3FB6C4:  CBNZ            R0, loc_3FB722
3FB6C6:  CBZ             R1, loc_3FB722
3FB6C8:  MOV.W           R0, #0xFFFFFFFF; int
3FB6CC:  MOVS            R1, #0; bool
3FB6CE:  MOVS            R5, #0
3FB6D0:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3FB6D4:  CBZ             R0, loc_3FB722
3FB6D6:  MOV.W           R0, #0xFFFFFFFF; int
3FB6DA:  MOVS            R1, #0; bool
3FB6DC:  MOVS            R5, #0
3FB6DE:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3FB6E2:  LDR.W           R0, [R0,#0x5A4]
3FB6E6:  CMP             R0, #4
3FB6E8:  BNE             loc_3FB722
3FB6EA:  MOV.W           R0, #0xFFFFFFFF; int
3FB6EE:  MOVS            R1, #0; bool
3FB6F0:  LDRB.W          R6, [R4,#0x146]
3FB6F4:  MOVS            R5, #0
3FB6F6:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3FB6FA:  CBZ             R6, loc_3FB706
3FB6FC:  LDR.W           R0, [R0,#0x9F4]
3FB700:  CBZ             R0, loc_3FB71C
3FB702:  MOVS            R5, #1
3FB704:  B               loc_3FB722
3FB706:  STR.W           R5, [R0,#0x9F0]
3FB70A:  MOV.W           R0, #0xFFFFFFFF; int
3FB70E:  MOVS            R1, #0; bool
3FB710:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3FB714:  STR.W           R5, [R0,#0x9F4]
3FB718:  MOVS            R5, #1
3FB71A:  B               loc_3FB71E
3FB71C:  MOVS            R5, #0
3FB71E:  STRB.W          R5, [R4,#0x146]
3FB722:  MOV             R0, R5
3FB724:  POP.W           {R11}
3FB728:  POP             {R4-R7,PC}
