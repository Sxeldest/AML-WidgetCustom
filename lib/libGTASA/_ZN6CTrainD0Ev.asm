; =========================================================
; Game Engine Function: _ZN6CTrainD0Ev
; Address            : 0x57C72C - 0x57C752
; =========================================================

57C72C:  PUSH            {R4,R6,R7,LR}
57C72E:  ADD             R7, SP, #8
57C730:  MOV             R4, R0
57C732:  LDR             R0, =(_ZTV6CTrain_ptr - 0x57C738)
57C734:  ADD             R0, PC; _ZTV6CTrain_ptr
57C736:  LDR             R0, [R0]; `vtable for'CTrain ...
57C738:  ADDS            R0, #8
57C73A:  STR             R0, [R4]
57C73C:  ADD.W           R0, R4, #0x13C; this
57C740:  BLX             j__ZN21CAEVehicleAudioEntity9TerminateEv; CAEVehicleAudioEntity::Terminate(void)
57C744:  MOV             R0, R4; this
57C746:  BLX             j__ZN8CVehicleD2Ev; CVehicle::~CVehicle()
57C74A:  POP.W           {R4,R6,R7,LR}
57C74E:  B.W             sub_199F80
