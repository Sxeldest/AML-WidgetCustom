; =========================================================
; Game Engine Function: _ZN36CTaskComplexWalkRoundBuildingAttemptC2EiP7CEntityRK7CVectorS4_S4_b
; Address            : 0x50CD94 - 0x50CE2E
; =========================================================

50CD94:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexWalkRoundBuildingAttempt::CTaskComplexWalkRoundBuildingAttempt(int, CEntity *, CVector const&, CVector const&, CVector const&, bool)'
50CD96:  ADD             R7, SP, #0xC
50CD98:  PUSH.W          {R8,R9,R11}
50CD9C:  MOV             R6, R3
50CD9E:  MOV             R8, R2
50CDA0:  MOV             R9, R1
50CDA2:  MOV             R4, R0
50CDA4:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
50CDA8:  LDR             R0, =(_ZTV36CTaskComplexWalkRoundBuildingAttempt_ptr - 0x50CDB2)
50CDAA:  MOV             R5, R4
50CDAC:  LDR             R1, [R7,#arg_0]
50CDAE:  ADD             R0, PC; _ZTV36CTaskComplexWalkRoundBuildingAttempt_ptr
50CDB0:  LDR             R2, [R7,#arg_4]
50CDB2:  LDR             R0, [R0]; `vtable for'CTaskComplexWalkRoundBuildingAttempt ...
50CDB4:  ADDS            R0, #8
50CDB6:  STR             R0, [R4]
50CDB8:  VLDR            D16, [R1]
50CDBC:  LDR             R0, [R1,#8]
50CDBE:  STR             R0, [R4,#0x28]
50CDC0:  VSTR            D16, [R4,#0x20]
50CDC4:  VLDR            D16, [R2]
50CDC8:  LDR             R0, [R2,#8]
50CDCA:  STR             R0, [R4,#0x34]
50CDCC:  VSTR            D16, [R4,#0x2C]
50CDD0:  STR.W           R8, [R5,#0x38]!
50CDD4:  LDRB.W          R1, [R4,#0x49]
50CDD8:  LDR             R0, [R6,#8]
50CDDA:  LDR             R2, [R7,#arg_8]
50CDDC:  VLDR            D16, [R6]
50CDE0:  MOVS            R6, #0
50CDE2:  STR             R0, [R4,#0x44]
50CDE4:  AND.W           R0, R1, #0xC0
50CDE8:  ORRS            R0, R2
50CDEA:  STRB.W          R9, [R4,#0x48]
50CDEE:  ORR.W           R0, R0, #4
50CDF2:  STRB.W          R6, [R4,#0x4A]
50CDF6:  STR             R6, [R4,#0x34]
50CDF8:  STRB.W          R0, [R4,#0x49]
50CDFC:  ADD.W           R0, R4, #0x2C ; ','; this
50CE00:  VSTR            D16, [R4,#0x3C]
50CE04:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
50CE08:  MOVS            R0, #dword_64; this
50CE0A:  BLX             j__ZN11CPointRoutenwEj; CPointRoute::operator new(uint)
50CE0E:  STR             R6, [R0]
50CE10:  STR             R0, [R4,#0xC]
50CE12:  MOVS            R0, #dword_64; this
50CE14:  BLX             j__ZN11CPointRoutenwEj; CPointRoute::operator new(uint)
50CE18:  STR             R6, [R0]
50CE1A:  LDR             R1, [R5]
50CE1C:  STR             R0, [R4,#0x10]
50CE1E:  MOV             R0, R1; this
50CE20:  MOV             R1, R5; CEntity **
50CE22:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50CE26:  MOV             R0, R4
50CE28:  POP.W           {R8,R9,R11}
50CE2C:  POP             {R4-R7,PC}
