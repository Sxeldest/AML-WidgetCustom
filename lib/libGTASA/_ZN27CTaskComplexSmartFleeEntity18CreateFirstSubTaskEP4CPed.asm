; =========================================================
; Game Engine Function: _ZN27CTaskComplexSmartFleeEntity18CreateFirstSubTaskEP4CPed
; Address            : 0x513E04 - 0x513F2C
; =========================================================

513E04:  PUSH            {R4-R7,LR}
513E06:  ADD             R7, SP, #0xC
513E08:  PUSH.W          {R8,R9,R11}
513E0C:  SUB             SP, SP, #0x20
513E0E:  MOV             R4, R0
513E10:  MOV             R5, R1
513E12:  LDR             R0, [R4,#0xC]
513E14:  CBZ             R0, loc_513E62
513E16:  LDR             R0, =(g_InterestingEvents_ptr - 0x513E20)
513E18:  MOVS            R1, #0xD
513E1A:  MOV             R2, R5
513E1C:  ADD             R0, PC; g_InterestingEvents_ptr
513E1E:  LDR             R0, [R0]; g_InterestingEvents
513E20:  BLX             j__ZN18CInterestingEvents3AddENS_5ETypeEP7CEntity; CInterestingEvents::Add(CInterestingEvents::EType,CEntity *)
513E24:  LDRB.W          R0, [R5,#0x485]
513E28:  LSLS            R0, R0, #0x1F
513E2A:  BNE             loc_513EA0
513E2C:  LDR             R0, =(g_ikChainMan_ptr - 0x513E34)
513E2E:  MOV             R1, R5; CPed *
513E30:  ADD             R0, PC; g_ikChainMan_ptr
513E32:  LDR             R0, [R0]; g_ikChainMan ; this
513E34:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
513E38:  CBNZ            R0, loc_513EA0
513E3A:  LDR             R3, [R4,#0xC]; int
513E3C:  LDRB.W          R0, [R3,#0x3A]
513E40:  AND.W           R0, R0, #7
513E44:  CMP             R0, #3
513E46:  BNE             loc_513E66
513E48:  LDR.W           R12, =(g_ikChainMan_ptr - 0x513E5A)
513E4C:  MOVS            R1, #0
513E4E:  MOV.W           LR, #3
513E52:  MOV.W           R8, #0x1F4
513E56:  ADD             R12, PC; g_ikChainMan_ptr
513E58:  MOV.W           R9, #0x3E800000
513E5C:  MOVS            R2, #1
513E5E:  MOVS            R6, #5
513E60:  B               loc_513E80
513E62:  MOVS            R0, #0
513E64:  B               loc_513F24
513E66:  LDR.W           R12, =(g_ikChainMan_ptr - 0x513E78)
513E6A:  MOVS            R1, #0
513E6C:  MOV.W           LR, #3
513E70:  MOV.W           R8, #0x1F4
513E74:  ADD             R12, PC; g_ikChainMan_ptr
513E76:  MOV.W           R9, #0x3E800000
513E7A:  MOVS            R2, #1
513E7C:  MOV.W           R6, #0xFFFFFFFF
513E80:  MOVW            R0, #0xBB8
513E84:  STRD.W          R0, R6, [SP,#0x38+var_38]; int
513E88:  ADD             R0, SP, #0x38+var_30
513E8A:  STM.W           R0, {R1,R2,R9}
513E8E:  MOV             R2, R5; CPed *
513E90:  LDR.W           R0, [R12]; g_ikChainMan ; int
513E94:  STRD.W          R8, LR, [SP,#0x38+var_24]; int
513E98:  STR             R1, [SP,#0x38+var_1C]; int
513E9A:  ADR             R1, aTasksmartfleee; "TaskSmartFleeEntity"
513E9C:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
513EA0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x513EAC)
513EA2:  MOV.W           R8, #1
513EA6:  LDR             R2, [R4,#0x28]
513EA8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
513EAA:  LDR             R1, [R4,#0xC]; unsigned int
513EAC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
513EAE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
513EB0:  STRB.W          R8, [R4,#0x3C]
513EB4:  STRD.W          R0, R2, [R4,#0x34]
513EB8:  LDR             R0, [R1,#0x14]
513EBA:  ADD.W           R2, R0, #0x30 ; '0'
513EBE:  CMP             R0, #0
513EC0:  IT EQ
513EC2:  ADDEQ           R2, R1, #4
513EC4:  VLDR            D16, [R2]
513EC8:  LDR             R0, [R2,#8]
513ECA:  STR             R0, [R4,#0x18]
513ECC:  MOVS            R0, #dword_44; this
513ECE:  VSTR            D16, [R4,#0x10]
513ED2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
513ED6:  LDRD.W          R6, R5, [R4,#0x1C]
513EDA:  LDRB.W          R9, [R4,#0x24]
513EDE:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
513EE2:  LDR             R1, =(_ZTV26CTaskComplexSmartFleePoint_ptr - 0x513EEA)
513EE4:  MOVS            R2, #0
513EE6:  ADD             R1, PC; _ZTV26CTaskComplexSmartFleePoint_ptr
513EE8:  LDR             R1, [R1]; `vtable for'CTaskComplexSmartFleePoint ...
513EEA:  ADDS            R1, #8
513EEC:  STR             R1, [R0]
513EEE:  LDR             R1, [R4,#0x18]
513EF0:  VLDR            D16, [R4,#0x10]
513EF4:  STR             R1, [R0,#0x20]
513EF6:  MOVS            R1, #7
513EF8:  STRD.W          R6, R5, [R0,#0x28]
513EFC:  STRD.W          R1, R2, [R0,#0x30]
513F00:  ADDS            R1, R6, #1
513F02:  STR             R2, [R0,#0x38]
513F04:  STRB.W          R9, [R0,#0x24]
513F08:  STRH            R2, [R0,#0x3C]
513F0A:  STRH.W          R2, [R0,#0x40]
513F0E:  VSTR            D16, [R0,#0x18]
513F12:  BEQ             loc_513F24
513F14:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x513F1A)
513F16:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
513F18:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
513F1A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
513F1C:  STRD.W          R1, R6, [R0,#0x34]
513F20:  STRB.W          R8, [R0,#0x3C]
513F24:  ADD             SP, SP, #0x20 ; ' '
513F26:  POP.W           {R8,R9,R11}
513F2A:  POP             {R4-R7,PC}
