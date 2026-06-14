; =========================================================
; Game Engine Function: _ZN7CGarage28IsPlayerEntirelyInsideGarageEv
; Address            : 0x3131DA - 0x31320E
; =========================================================

3131DA:  PUSH            {R4,R6,R7,LR}
3131DC:  ADD             R7, SP, #8
3131DE:  MOV             R4, R0
3131E0:  MOV.W           R0, #0xFFFFFFFF; int
3131E4:  MOVS            R1, #0; bool
3131E6:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3131EA:  CBZ             R0, loc_3131F8
3131EC:  MOV.W           R0, #0xFFFFFFFF; int
3131F0:  MOVS            R1, #0; bool
3131F2:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3131F6:  B               loc_313200
3131F8:  MOV.W           R0, #0xFFFFFFFF; int
3131FC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
313200:  MOV             R1, R0; CEntity *
313202:  MOV             R0, R4; this
313204:  MOVS            R2, #0; float
313206:  POP.W           {R4,R6,R7,LR}
31320A:  B.W             _ZN7CGarage24IsEntityEntirelyInside3DEP7CEntityf; CGarage::IsEntityEntirelyInside3D(CEntity *,float)
