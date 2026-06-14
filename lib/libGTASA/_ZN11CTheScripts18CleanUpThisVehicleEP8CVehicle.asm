; =========================================================
; Game Engine Function: _ZN11CTheScripts18CleanUpThisVehicleEP8CVehicle
; Address            : 0x34DEFC - 0x34DF44
; =========================================================

34DEFC:  PUSH            {R4,R6,R7,LR}
34DEFE:  ADD             R7, SP, #8
34DF00:  MOV             R4, R0
34DF02:  CMP             R4, #0
34DF04:  IT EQ
34DF06:  POPEQ           {R4,R6,R7,PC}
34DF08:  LDRB.W          R0, [R4,#0x4A8]
34DF0C:  CMP             R0, #2
34DF0E:  BNE             locret_34DF42
34DF10:  LDR.W           R0, [R4,#0x42C]
34DF14:  LDR             R1, [R4,#0x44]; CVehicle *
34DF16:  BIC.W           R0, R0, #8
34DF1A:  STR.W           R0, [R4,#0x42C]
34DF1E:  MOVW            R0, #0x2004
34DF22:  BIC.W           R0, R1, R0
34DF26:  STR             R0, [R4,#0x44]
34DF28:  MOV             R0, R4; this
34DF2A:  BLX             j__ZN8CCarCtrl32RemoveFromInterestingVehicleListEP8CVehicle; CCarCtrl::RemoveFromInterestingVehicleList(CVehicle *)
34DF2E:  MOV             R0, R4; this
34DF30:  BLX             j__ZN17CVehicleRecording23StopPlaybackRecordedCarEP8CVehicle; CVehicleRecording::StopPlaybackRecordedCar(CVehicle *)
34DF34:  MOV             R0, R4; this
34DF36:  MOVS            R1, #1; int
34DF38:  MOVS            R2, #0; bool
34DF3A:  POP.W           {R4,R6,R7,LR}
34DF3E:  B.W             sub_18E1C4
34DF42:  POP             {R4,R6,R7,PC}
