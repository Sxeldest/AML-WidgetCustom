; =========================================================
; Game Engine Function: _ZN5CBikeD2Ev
; Address            : 0x5606D4 - 0x560706
; =========================================================

5606D4:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CBike::~CBike()'
5606D6:  ADD             R7, SP, #8
5606D8:  MOV             R4, R0
5606DA:  LDR             R0, =(_ZTV5CBike_ptr - 0x5606E0)
5606DC:  ADD             R0, PC; _ZTV5CBike_ptr
5606DE:  LDR             R0, [R0]; `vtable for'CBike ...
5606E0:  ADDS            R0, #8
5606E2:  STR             R0, [R4]
5606E4:  ADD.W           R0, R4, #0x13C; this
5606E8:  BLX             j__ZN21CAEVehicleAudioEntity9TerminateEv; CAEVehicleAudioEntity::Terminate(void)
5606EC:  ADDW            R0, R4, #0x654; this
5606F0:  BLX             j__ZN13CRideAnimDataD2Ev; CRideAnimData::~CRideAnimData()
5606F4:  ADD.W           R0, R4, #0x5E0; this
5606F8:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5606FC:  MOV             R0, R4; this
5606FE:  POP.W           {R4,R6,R7,LR}
560702:  B.W             sub_195C7C
