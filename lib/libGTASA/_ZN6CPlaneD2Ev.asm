; =========================================================
; Game Engine Function: _ZN6CPlaneD2Ev
; Address            : 0x575B9C - 0x575C70
; =========================================================

575B9C:  PUSH            {R4-R7,LR}; Alternative name is 'CPlane::~CPlane()'
575B9E:  ADD             R7, SP, #0xC
575BA0:  PUSH.W          {R11}
575BA4:  MOV             R4, R0
575BA6:  LDR             R0, =(_ZTV6CPlane_ptr - 0x575BB0)
575BA8:  LDR.W           R1, [R4,#0x9E8]
575BAC:  ADD             R0, PC; _ZTV6CPlane_ptr
575BAE:  CMP             R1, #0
575BB0:  LDR             R0, [R0]; `vtable for'CPlane ...
575BB2:  ADD.W           R0, R0, #8
575BB6:  STR             R0, [R4]
575BB8:  BEQ             loc_575C0A
575BBA:  MOV             R0, R4; this
575BBC:  BLX             j__ZN8CVehicle15GetPlaneNumGunsEv; CVehicle::GetPlaneNumGuns(void)
575BC0:  MOV             R1, R0
575BC2:  LDR.W           R0, [R4,#0x9E8]
575BC6:  CMP             R1, #1
575BC8:  BLT             loc_575BFC
575BCA:  LDR             R1, =(g_fxMan_ptr - 0x575BD2)
575BCC:  MOVS            R6, #0
575BCE:  ADD             R1, PC; g_fxMan_ptr
575BD0:  LDR             R5, [R1]; g_fxMan
575BD2:  LDR.W           R0, [R0,R6,LSL#2]; this
575BD6:  CBZ             R0, loc_575BEA
575BD8:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
575BDC:  LDR.W           R0, [R4,#0x9E8]
575BE0:  LDR.W           R1, [R0,R6,LSL#2]; FxSystem_c *
575BE4:  MOV             R0, R5; this
575BE6:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
575BEA:  MOV             R0, R4; this
575BEC:  BLX             j__ZN8CVehicle15GetPlaneNumGunsEv; CVehicle::GetPlaneNumGuns(void)
575BF0:  MOV             R1, R0
575BF2:  LDR.W           R0, [R4,#0x9E8]; void *
575BF6:  ADDS            R6, #1
575BF8:  CMP             R6, R1
575BFA:  BLT             loc_575BD2
575BFC:  CMP             R0, #0
575BFE:  IT NE
575C00:  BLXNE           _ZdaPv; operator delete[](void *)
575C04:  MOVS            R0, #0
575C06:  STR.W           R0, [R4,#0x9E8]
575C0A:  LDR.W           R0, [R4,#0x9FC]; this
575C0E:  CBZ             R0, loc_575C1A
575C10:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
575C14:  MOVS            R0, #0
575C16:  STR.W           R0, [R4,#0x9FC]
575C1A:  LDR.W           R0, [R4,#0xA00]; this
575C1E:  CBZ             R0, loc_575C2A
575C20:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
575C24:  MOVS            R0, #0
575C26:  STR.W           R0, [R4,#0xA00]
575C2A:  LDR.W           R0, [R4,#0xA04]; this
575C2E:  CBZ             R0, loc_575C3A
575C30:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
575C34:  MOVS            R0, #0
575C36:  STR.W           R0, [R4,#0xA04]
575C3A:  LDR.W           R0, [R4,#0xA08]; this
575C3E:  CBZ             R0, loc_575C4A
575C40:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
575C44:  MOVS            R0, #0
575C46:  STR.W           R0, [R4,#0xA08]
575C4A:  LDR.W           R0, [R4,#0xA0C]; this
575C4E:  CBZ             R0, loc_575C5A
575C50:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
575C54:  MOVS            R0, #0
575C56:  STR.W           R0, [R4,#0xA0C]
575C5A:  ADD.W           R0, R4, #0x13C; this
575C5E:  BLX             j__ZN21CAEVehicleAudioEntity9TerminateEv; CAEVehicleAudioEntity::Terminate(void)
575C62:  MOV             R0, R4; this
575C64:  POP.W           {R11}
575C68:  POP.W           {R4-R7,LR}
575C6C:  B.W             sub_19E4D4
