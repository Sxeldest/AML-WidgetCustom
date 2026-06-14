; =========================================================
; Game Engine Function: _ZN17CInformGroupEventD2Ev
; Address            : 0x370162 - 0x37018E
; =========================================================

370162:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CInformGroupEvent::~CInformGroupEvent()'
370164:  ADD             R7, SP, #8
370166:  MOV             R4, R0
370168:  LDR             R0, [R4]; this
37016A:  CBZ             R0, loc_370176
37016C:  MOV             R1, R4; CEntity **
37016E:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
370172:  MOVS            R0, #0
370174:  STR             R0, [R4]
370176:  LDR             R0, [R4,#8]
370178:  CBZ             R0, loc_370184
37017A:  LDR             R1, [R0]
37017C:  LDR             R1, [R1,#4]
37017E:  BLX             R1
370180:  MOVS            R0, #0
370182:  STR             R0, [R4,#8]
370184:  MOV.W           R0, #0xFFFFFFFF
370188:  STR             R0, [R4,#0xC]
37018A:  MOV             R0, R4
37018C:  POP             {R4,R6,R7,PC}
