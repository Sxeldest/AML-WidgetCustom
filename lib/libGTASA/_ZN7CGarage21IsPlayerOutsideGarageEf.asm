; =========================================================
; Game Engine Function: _ZN7CGarage21IsPlayerOutsideGarageEf
; Address            : 0x311EF0 - 0x311F24
; =========================================================

311EF0:  PUSH            {R4,R5,R7,LR}
311EF2:  ADD             R7, SP, #8
311EF4:  MOV             R4, R1
311EF6:  MOV             R5, R0
311EF8:  MOV.W           R0, #0xFFFFFFFF; int
311EFC:  MOVS            R1, #0; bool
311EFE:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
311F02:  CBZ             R0, loc_311F10
311F04:  MOV.W           R0, #0xFFFFFFFF; int
311F08:  MOVS            R1, #0; bool
311F0A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
311F0E:  B               loc_311F18
311F10:  MOV.W           R0, #0xFFFFFFFF; int
311F14:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
311F18:  MOV             R1, R0; CEntity *
311F1A:  MOV             R0, R5; this
311F1C:  MOV             R2, R4; float
311F1E:  POP.W           {R4,R5,R7,LR}
311F22:  B               _ZN7CGarage23IsEntityEntirelyOutsideEP7CEntityf; CGarage::IsEntityEntirelyOutside(CEntity *,float)
