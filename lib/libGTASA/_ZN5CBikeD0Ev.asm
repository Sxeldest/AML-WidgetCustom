; =========================================================
; Game Engine Function: _ZN5CBikeD0Ev
; Address            : 0x56070C - 0x560742
; =========================================================

56070C:  PUSH            {R4,R6,R7,LR}
56070E:  ADD             R7, SP, #8
560710:  MOV             R4, R0
560712:  LDR             R0, =(_ZTV5CBike_ptr - 0x560718)
560714:  ADD             R0, PC; _ZTV5CBike_ptr
560716:  LDR             R0, [R0]; `vtable for'CBike ...
560718:  ADDS            R0, #8
56071A:  STR             R0, [R4]
56071C:  ADD.W           R0, R4, #0x13C; this
560720:  BLX             j__ZN21CAEVehicleAudioEntity9TerminateEv; CAEVehicleAudioEntity::Terminate(void)
560724:  ADDW            R0, R4, #0x654; this
560728:  BLX             j__ZN13CRideAnimDataD2Ev; CRideAnimData::~CRideAnimData()
56072C:  ADD.W           R0, R4, #0x5E0; this
560730:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
560734:  MOV             R0, R4; this
560736:  BLX             j__ZN8CVehicleD2Ev; CVehicle::~CVehicle()
56073A:  POP.W           {R4,R6,R7,LR}
56073E:  B.W             sub_199F80
