; =========================================================
; Game Engine Function: _ZNK34CTaskComplexCarDriveMissionKillPed5CloneEv
; Address            : 0x3846DC - 0x38470E
; =========================================================

3846DC:  PUSH            {R4,R6,R7,LR}
3846DE:  ADD             R7, SP, #8
3846E0:  SUB             SP, SP, #8
3846E2:  MOV             R4, R0
3846E4:  MOVS            R0, #word_2C; this
3846E6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3846EA:  MOVS            R3, #0
3846EC:  LDR             R1, [R4,#0xC]; CVehicle *
3846EE:  LDR             R2, [R4,#0x24]; CEntity *
3846F0:  MOVT            R3, #0x4220
3846F4:  MOVS            R4, #3
3846F6:  STRD.W          R4, R3, [SP,#0x10+var_10]; int
3846FA:  MOVS            R3, #0x36 ; '6'; int
3846FC:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
384700:  LDR             R1, =(_ZTV34CTaskComplexCarDriveMissionKillPed_ptr - 0x384706)
384702:  ADD             R1, PC; _ZTV34CTaskComplexCarDriveMissionKillPed_ptr
384704:  LDR             R1, [R1]; `vtable for'CTaskComplexCarDriveMissionKillPed ...
384706:  ADDS            R1, #8
384708:  STR             R1, [R0]
38470A:  ADD             SP, SP, #8
38470C:  POP             {R4,R6,R7,PC}
