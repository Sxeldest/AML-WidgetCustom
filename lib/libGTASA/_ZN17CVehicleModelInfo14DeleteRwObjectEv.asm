; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo14DeleteRwObjectEv
; Address            : 0x387DE4 - 0x387E6C
; =========================================================

387DE4:  PUSH            {R4-R7,LR}
387DE6:  ADD             R7, SP, #0xC
387DE8:  PUSH.W          {R8,R9,R11}
387DEC:  MOV             R8, R0
387DEE:  LDR.W           R9, [R8,#0x74]
387DF2:  CMP.W           R9, #0
387DF6:  BEQ             loc_387E5E
387DF8:  LDRSB.W         R0, [R9,#0x324]
387DFC:  CMP             R0, #1
387DFE:  BLT             loc_387E2C
387E00:  MOVS            R4, #0
387E02:  ADD.W           R6, R9, R4,LSL#2
387E06:  LDR.W           R0, [R6,#0x2F4]
387E0A:  LDR             R5, [R0,#4]
387E0C:  BLX             j__Z15RpAtomicDestroyP8RpAtomic; RpAtomicDestroy(RpAtomic *)
387E10:  LDR.W           R0, [R6,#0x30C]
387E14:  CMP             R0, #0
387E16:  IT NE
387E18:  BLXNE           j__Z15RpAtomicDestroyP8RpAtomic; RpAtomicDestroy(RpAtomic *)
387E1C:  MOV             R0, R5
387E1E:  BLX             j__Z14RwFrameDestroyP7RwFrame; RwFrameDestroy(RwFrame *)
387E22:  LDRSB.W         R0, [R9,#0x324]
387E26:  ADDS            R4, #1
387E28:  CMP             R4, R0
387E2A:  BLT             loc_387E02
387E2C:  LDR             R0, =(_ZN17CVehicleModelInfo17CVehicleStructure11m_pInfoPoolE_ptr - 0x387E3A)
387E2E:  MOV             R3, #0x791064E3
387E36:  ADD             R0, PC; _ZN17CVehicleModelInfo17CVehicleStructure11m_pInfoPoolE_ptr
387E38:  LDR             R0, [R0]; CVehicleModelInfo::CVehicleStructure::m_pInfoPool ...
387E3A:  LDR             R0, [R0]; CVehicleModelInfo::CVehicleStructure::m_pInfoPool
387E3C:  LDRD.W          R1, R2, [R0]
387E40:  SUB.W           R1, R9, R1
387E44:  ASRS            R1, R1, #2
387E46:  MULS            R1, R3
387E48:  LDRB            R3, [R2,R1]
387E4A:  ORR.W           R3, R3, #0x80
387E4E:  STRB            R3, [R2,R1]
387E50:  LDR             R2, [R0,#0xC]
387E52:  CMP             R1, R2
387E54:  IT LT
387E56:  STRLT           R1, [R0,#0xC]
387E58:  MOVS            R0, #0
387E5A:  STR.W           R0, [R8,#0x74]
387E5E:  MOV             R0, R8; this
387E60:  POP.W           {R8,R9,R11}
387E64:  POP.W           {R4-R7,LR}
387E68:  B.W             j_j__ZN15CClumpModelInfo14DeleteRwObjectEv; j_CClumpModelInfo::DeleteRwObject(void)
