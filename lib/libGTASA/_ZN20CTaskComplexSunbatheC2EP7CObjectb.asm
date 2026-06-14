; =========================================================
; Game Engine Function: _ZN20CTaskComplexSunbatheC2EP7CObjectb
; Address            : 0x4ED0F0 - 0x4ED166
; =========================================================

4ED0F0:  PUSH            {R4-R7,LR}
4ED0F2:  ADD             R7, SP, #0xC
4ED0F4:  PUSH.W          {R11}
4ED0F8:  MOV             R6, R2
4ED0FA:  MOV             R5, R1
4ED0FC:  MOV             R4, R0
4ED0FE:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4ED102:  LDR             R0, =(_ZTV20CTaskComplexSunbathe_ptr - 0x4ED10E)
4ED104:  MOVS            R1, #0
4ED106:  STRB            R6, [R4,#0xC]
4ED108:  MOV             R6, R4
4ED10A:  ADD             R0, PC; _ZTV20CTaskComplexSunbathe_ptr
4ED10C:  STRH            R1, [R4,#0x1C]
4ED10E:  STR.W           R1, [R4,#0xD]
4ED112:  CMP             R5, #0
4ED114:  LDR             R0, [R0]; `vtable for'CTaskComplexSunbathe ...
4ED116:  STRD.W          R1, R1, [R4,#0x14]
4ED11A:  ADD.W           R0, R0, #8
4ED11E:  STR             R0, [R4]
4ED120:  STR.W           R5, [R6,#0x34]!
4ED124:  BEQ             loc_4ED136
4ED126:  MOV             R0, R5; this
4ED128:  MOV             R1, R6; CEntity **
4ED12A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4ED12E:  LDR             R0, [R6]
4ED130:  MOVS            R1, #byte_5; char *
4ED132:  STRB.W          R1, [R0,#0x140]
4ED136:  LDR             R5, =(aBeach - 0x4ED13C); "beach"
4ED138:  ADD             R5, PC; "beach"
4ED13A:  MOV             R0, R5; this
4ED13C:  BLX             j__ZN12CAnimManager17GetAnimationBlockEPKc; CAnimManager::GetAnimationBlock(char const*)
4ED140:  STR             R0, [R4,#0x24]
4ED142:  MOV             R0, R5; this
4ED144:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
4ED148:  LDR             R5, =(aSunbathe - 0x4ED150); "sunbathe"
4ED14A:  STR             R0, [R4,#0x2C]
4ED14C:  ADD             R5, PC; "sunbathe"
4ED14E:  MOV             R0, R5; this
4ED150:  BLX             j__ZN12CAnimManager17GetAnimationBlockEPKc; CAnimManager::GetAnimationBlock(char const*)
4ED154:  STR             R0, [R4,#0x28]
4ED156:  MOV             R0, R5; this
4ED158:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
4ED15C:  STR             R0, [R4,#0x30]
4ED15E:  MOV             R0, R4
4ED160:  POP.W           {R11}
4ED164:  POP             {R4-R7,PC}
