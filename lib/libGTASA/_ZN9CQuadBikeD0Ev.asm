; =========================================================
; Game Engine Function: _ZN9CQuadBikeD0Ev
; Address            : 0x57A244 - 0x57A26A
; =========================================================

57A244:  PUSH            {R4,R6,R7,LR}
57A246:  ADD             R7, SP, #8
57A248:  MOV             R4, R0
57A24A:  LDR             R0, =(_ZTV9CQuadBike_ptr - 0x57A250)
57A24C:  ADD             R0, PC; _ZTV9CQuadBike_ptr
57A24E:  LDR             R0, [R0]; `vtable for'CQuadBike ...
57A250:  ADDS            R0, #8
57A252:  STR             R0, [R4]
57A254:  ADD.W           R0, R4, #0x9A0; this
57A258:  BLX             j__ZN13CRideAnimDataD2Ev; CRideAnimData::~CRideAnimData()
57A25C:  MOV             R0, R4; this
57A25E:  BLX             j__ZN11CAutomobileD2Ev; CAutomobile::~CAutomobile()
57A262:  POP.W           {R4,R6,R7,LR}
57A266:  B.W             sub_199F80
