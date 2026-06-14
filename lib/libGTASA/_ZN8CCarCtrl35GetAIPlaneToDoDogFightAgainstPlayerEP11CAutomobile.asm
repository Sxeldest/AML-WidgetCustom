; =========================================================
; Game Engine Function: _ZN8CCarCtrl35GetAIPlaneToDoDogFightAgainstPlayerEP11CAutomobile
; Address            : 0x2F7708 - 0x2F773A
; =========================================================

2F7708:  PUSH            {R4,R6,R7,LR}
2F770A:  ADD             R7, SP, #8
2F770C:  MOV             R4, R0
2F770E:  MOV.W           R0, #0xFFFFFFFF; int
2F7712:  MOVS            R1, #0; bool
2F7714:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2F7718:  CBZ             R0, loc_2F7726
2F771A:  MOV.W           R0, #0xFFFFFFFF; int
2F771E:  MOVS            R1, #0; bool
2F7720:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2F7724:  B               loc_2F772E
2F7726:  MOV.W           R0, #0xFFFFFFFF; int
2F772A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2F772E:  STR.W           R0, [R4,#0x420]
2F7732:  MOV             R0, R4; this
2F7734:  POP.W           {R4,R6,R7,LR}
2F7738:  B               _ZN8CCarCtrl22GetAIPlaneToDoDogFightEP11CAutomobile; CCarCtrl::GetAIPlaneToDoDogFight(CAutomobile *)
