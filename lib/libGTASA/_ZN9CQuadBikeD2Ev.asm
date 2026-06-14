; =========================================================
; Game Engine Function: _ZN9CQuadBikeD2Ev
; Address            : 0x57A21C - 0x57A23E
; =========================================================

57A21C:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CQuadBike::~CQuadBike()'
57A21E:  ADD             R7, SP, #8
57A220:  MOV             R4, R0
57A222:  LDR             R0, =(_ZTV9CQuadBike_ptr - 0x57A228)
57A224:  ADD             R0, PC; _ZTV9CQuadBike_ptr
57A226:  LDR             R0, [R0]; `vtable for'CQuadBike ...
57A228:  ADDS            R0, #8
57A22A:  STR             R0, [R4]
57A22C:  ADD.W           R0, R4, #0x9A0; this
57A230:  BLX             j__ZN13CRideAnimDataD2Ev; CRideAnimData::~CRideAnimData()
57A234:  MOV             R0, R4; this
57A236:  POP.W           {R4,R6,R7,LR}
57A23A:  B.W             sub_19E4D4
