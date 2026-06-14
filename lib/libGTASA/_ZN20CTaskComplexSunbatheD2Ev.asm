; =========================================================
; Game Engine Function: _ZN20CTaskComplexSunbatheD2Ev
; Address            : 0x4ED174 - 0x4ED1C0
; =========================================================

4ED174:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskComplexSunbathe::~CTaskComplexSunbathe()'
4ED176:  ADD             R7, SP, #8
4ED178:  MOV             R4, R0
4ED17A:  LDR             R0, =(_ZTV20CTaskComplexSunbathe_ptr - 0x4ED182)
4ED17C:  MOV             R5, R4
4ED17E:  ADD             R0, PC; _ZTV20CTaskComplexSunbathe_ptr
4ED180:  LDR             R1, [R0]; `vtable for'CTaskComplexSunbathe ...
4ED182:  LDR.W           R0, [R5,#0x34]!; this
4ED186:  ADDS            R1, #8
4ED188:  STR             R1, [R4]
4ED18A:  CBZ             R0, loc_4ED19A
4ED18C:  MOV             R1, R5; CEntity **
4ED18E:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4ED192:  LDR             R0, [R5]
4ED194:  MOVS            R1, #3; int
4ED196:  STRB.W          R1, [R0,#0x140]
4ED19A:  LDRB            R0, [R4,#0xE]
4ED19C:  CBZ             R0, loc_4ED1A8
4ED19E:  LDR             R0, [R4,#0x2C]; this
4ED1A0:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
4ED1A4:  MOVS            R0, #0
4ED1A6:  STRB            R0, [R4,#0xE]
4ED1A8:  LDRB            R0, [R4,#0xF]
4ED1AA:  CBZ             R0, loc_4ED1B6
4ED1AC:  LDR             R0, [R4,#0x30]; this
4ED1AE:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
4ED1B2:  MOVS            R0, #0
4ED1B4:  STRB            R0, [R4,#0xF]
4ED1B6:  MOV             R0, R4; this
4ED1B8:  POP.W           {R4,R5,R7,LR}
4ED1BC:  B.W             sub_18EDE8
