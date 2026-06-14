; =========================================================
; Game Engine Function: _ZN35CTaskComplexFollowNodeRouteShooting14ControlSubTaskEP4CPed
; Address            : 0x526910 - 0x526A60
; =========================================================

526910:  PUSH            {R4-R7,LR}
526912:  ADD             R7, SP, #0xC
526914:  PUSH.W          {R8}
526918:  SUB             SP, SP, #0x10
52691A:  MOV             R5, R0
52691C:  MOV             R4, R1
52691E:  LDR             R0, [R5,#0x60]
526920:  CMP             R0, #0
526922:  BEQ.W           loc_526A2C
526926:  LDR.W           R0, [R4,#0x440]
52692A:  MOVS            R1, #0; int
52692C:  ADDS            R0, #4; this
52692E:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
526932:  MOV             R6, R0
526934:  CBZ             R6, loc_52696A
526936:  LDR             R0, [R6]
526938:  LDR             R1, [R0,#0x14]
52693A:  MOV             R0, R6
52693C:  BLX             R1
52693E:  MOVW            R1, #0x3F9
526942:  CMP             R0, R1
526944:  BNE             loc_526A2C
526946:  LDRB.W          R0, [R5,#0x6C]
52694A:  CMP             R0, #0
52694C:  BEQ             loc_526A20
52694E:  LDRB.W          R0, [R5,#0x6D]
526952:  CMP             R0, #0
526954:  BEQ             loc_526A0E
526956:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52695E)
526958:  MOVS            R1, #0
52695A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52695C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
52695E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
526960:  STRB.W          R1, [R5,#0x6D]
526964:  STR             R0, [R5,#0x64]
526966:  MOV             R1, R0
526968:  B               loc_526A18
52696A:  LDRB.W          R0, [R5,#0x6C]
52696E:  CMP             R0, #0
526970:  BEQ             loc_526A2C
526972:  LDRB.W          R0, [R5,#0x6D]
526976:  CBZ             R0, loc_52698C
526978:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x526980)
52697A:  MOVS            R1, #0
52697C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52697E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
526980:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
526982:  STRB.W          R1, [R5,#0x6D]
526986:  STR             R0, [R5,#0x64]
526988:  MOV             R1, R0
52698A:  B               loc_526996
52698C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x526994)
52698E:  LDR             R1, [R5,#0x64]
526990:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
526992:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
526994:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
526996:  LDR             R2, [R5,#0x68]
526998:  ADD             R1, R2
52699A:  CMP             R1, R0
52699C:  BHI             loc_526A2C
52699E:  LDRSB.W         R0, [R4,#0x71C]
5269A2:  RSB.W           R0, R0, R0,LSL#3
5269A6:  ADD.W           R0, R4, R0,LSL#2
5269AA:  LDR.W           R6, [R0,#0x5A4]
5269AE:  MOV             R0, R4; this
5269B0:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
5269B4:  MOV             R1, R0
5269B6:  MOV             R0, R6
5269B8:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
5269BC:  LDRB            R0, [R0,#0x18]
5269BE:  LSLS            R0, R0, #0x1E
5269C0:  BPL             loc_526A2C
5269C2:  LDR             R1, =(_ZN35CTaskComplexFollowNodeRouteShooting13ms_iShootTimeE_ptr - 0x5269CA)
5269C4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5269CC)
5269C6:  ADD             R1, PC; _ZN35CTaskComplexFollowNodeRouteShooting13ms_iShootTimeE_ptr
5269C8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5269CA:  LDR             R1, [R1]; CTaskComplexFollowNodeRouteShooting::ms_iShootTime ...
5269CC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5269CE:  LDR             R1, [R1]; unsigned int
5269D0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5269D2:  STRD.W          R0, R1, [R5,#0x64]
5269D6:  MOVS            R0, #1
5269D8:  STRB.W          R0, [R5,#0x6C]
5269DC:  MOVS            R0, #off_3C; this
5269DE:  LDR.W           R8, [R4,#0x440]
5269E2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5269E6:  LDR             R1, [R5,#0x60]
5269E8:  MOV             R6, R0
5269EA:  MOVS            R0, #0
5269EC:  MOVS            R2, #3
5269EE:  STRD.W          R0, R2, [SP,#0x20+var_20]
5269F2:  MOVS            R3, #0
5269F4:  STRD.W          R2, R0, [SP,#0x20+var_18]
5269F8:  MOV             R0, R6
5269FA:  MOVS            R2, #0
5269FC:  BLX             j__ZN17CTaskSimpleUseGunC2EP7CEntity7CVectorash; CTaskSimpleUseGun::CTaskSimpleUseGun(CEntity *,CVector,signed char,short,uchar)
526A00:  ADD.W           R0, R8, #4; this
526A04:  MOV             R1, R6; CTask *
526A06:  MOVS            R2, #0; int
526A08:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
526A0C:  B               loc_526A2C
526A0E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x526A16)
526A10:  LDR             R1, [R5,#0x64]
526A12:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
526A14:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
526A16:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
526A18:  LDR             R2, [R5,#0x68]
526A1A:  ADD             R1, R2
526A1C:  CMP             R1, R0
526A1E:  BLS             loc_526A3E
526A20:  LDR             R2, [R5,#0x60]; CEntity *
526A22:  MOV             R0, R6; this
526A24:  MOV             R1, R4; CPed *
526A26:  MOVS            R3, #3; signed __int8
526A28:  BLX             j__ZN17CTaskSimpleUseGun10ControlGunEP4CPedP7CEntitya; CTaskSimpleUseGun::ControlGun(CPed *,CEntity *,signed char)
526A2C:  MOV             R0, R5; this
526A2E:  MOV             R1, R4; CPed *
526A30:  ADD             SP, SP, #0x10
526A32:  POP.W           {R8}
526A36:  POP.W           {R4-R7,LR}
526A3A:  B.W             _ZN27CTaskComplexFollowNodeRoute14ControlSubTaskEP4CPed; CTaskComplexFollowNodeRoute::ControlSubTask(CPed *)
526A3E:  LDRB            R1, [R6,#0x10]
526A40:  CMP             R1, #3
526A42:  BNE             loc_526A2C
526A44:  LDR             R1, =(_ZN35CTaskComplexFollowNodeRouteShooting20ms_iShootRecoverTimeE_ptr - 0x526A4E)
526A46:  MOVS            R3, #6
526A48:  LDR             R2, [R5,#0x60]
526A4A:  ADD             R1, PC; _ZN35CTaskComplexFollowNodeRouteShooting20ms_iShootRecoverTimeE_ptr
526A4C:  LDR             R1, [R1]; CTaskComplexFollowNodeRouteShooting::ms_iShootRecoverTime ...
526A4E:  LDR             R1, [R1]; CTaskComplexFollowNodeRouteShooting::ms_iShootRecoverTime
526A50:  STRD.W          R0, R1, [R5,#0x64]
526A54:  MOVS            R0, #1
526A56:  STRB.W          R0, [R5,#0x6C]
526A5A:  MOV             R0, R6
526A5C:  MOV             R1, R4
526A5E:  B               loc_526A28
