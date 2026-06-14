; =========================================================
; Game Engine Function: _ZNK36CTaskComplexWalkRoundBuildingAttempt5CloneEv
; Address            : 0x50F9AC - 0x50FA38
; =========================================================

50F9AC:  PUSH            {R4-R7,LR}
50F9AE:  ADD             R7, SP, #0xC
50F9B0:  PUSH.W          {R8}
50F9B4:  MOV             R5, R0
50F9B6:  MOVS            R0, #dword_4C; this
50F9B8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50F9BC:  MOV             R4, R0
50F9BE:  LDRB.W          R8, [R5,#0x48]
50F9C2:  LDRB.W          R6, [R5,#0x49]
50F9C6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
50F9CA:  LDR             R0, =(_ZTV36CTaskComplexWalkRoundBuildingAttempt_ptr - 0x50F9D0)
50F9CC:  ADD             R0, PC; _ZTV36CTaskComplexWalkRoundBuildingAttempt_ptr
50F9CE:  LDR             R0, [R0]; `vtable for'CTaskComplexWalkRoundBuildingAttempt ...
50F9D0:  ADDS            R0, #8
50F9D2:  STR             R0, [R4]
50F9D4:  VLDR            D16, [R5,#0x14]
50F9D8:  LDR             R0, [R5,#0x1C]
50F9DA:  STR             R0, [R4,#0x1C]
50F9DC:  VSTR            D16, [R4,#0x14]
50F9E0:  VLDR            D16, [R5,#0x20]
50F9E4:  LDR             R0, [R5,#0x28]
50F9E6:  STR             R0, [R4,#0x28]
50F9E8:  VSTR            D16, [R4,#0x20]
50F9EC:  LDRD.W          R0, R1, [R5,#0x2C]
50F9F0:  MOVS            R5, #0
50F9F2:  LDRB.W          R2, [R4,#0x49]
50F9F6:  STRD.W          R0, R1, [R4,#0x2C]
50F9FA:  AND.W           R0, R6, #1
50F9FE:  AND.W           R1, R2, #0xC0
50FA02:  ORRS            R0, R1
50FA04:  STRB.W          R0, [R4,#0x49]
50FA08:  ADD.W           R0, R4, #0x2C ; ','; this
50FA0C:  STR             R5, [R4,#0x38]
50FA0E:  STRB.W          R8, [R4,#0x48]
50FA12:  STRB.W          R5, [R4,#0x4A]
50FA16:  STR             R5, [R4,#0x34]
50FA18:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
50FA1C:  MOVS            R0, #dword_64; this
50FA1E:  BLX             j__ZN11CPointRoutenwEj; CPointRoute::operator new(uint)
50FA22:  STR             R5, [R0]
50FA24:  STR             R0, [R4,#0xC]
50FA26:  MOVS            R0, #dword_64; this
50FA28:  BLX             j__ZN11CPointRoutenwEj; CPointRoute::operator new(uint)
50FA2C:  STR             R5, [R0]
50FA2E:  STR             R0, [R4,#0x10]
50FA30:  MOV             R0, R4
50FA32:  POP.W           {R8}
50FA36:  POP             {R4-R7,PC}
