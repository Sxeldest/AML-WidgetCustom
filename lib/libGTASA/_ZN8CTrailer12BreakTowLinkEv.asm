; =========================================================
; Game Engine Function: _ZN8CTrailer12BreakTowLinkEv
; Address            : 0x57C020 - 0x57C082
; =========================================================

57C020:  PUSH            {R4,R5,R7,LR}
57C022:  ADD             R7, SP, #8
57C024:  MOV             R4, R0
57C026:  LDR.W           R0, [R4,#0x4D0]
57C02A:  CBZ             R0, loc_57C064
57C02C:  ADD.W           R0, R0, #0x13C; this
57C030:  MOVS            R1, #0x72 ; 'r'; int
57C032:  MOVS            R2, #0; float
57C034:  ADD.W           R5, R4, #0x4D0
57C038:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
57C03C:  LDR             R0, [R5]
57C03E:  CBZ             R0, loc_57C064
57C040:  LDR.W           R2, [R0,#0x4D4]
57C044:  CBZ             R2, loc_57C05A
57C046:  ADDW            R1, R0, #0x4D4; CEntity **
57C04A:  MOV             R0, R2; this
57C04C:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
57C050:  LDR             R0, [R5]
57C052:  MOVS            R1, #0
57C054:  STR.W           R1, [R0,#0x4D4]
57C058:  LDR             R0, [R5]; this
57C05A:  MOV             R1, R5; CEntity **
57C05C:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
57C060:  MOVS            R0, #0
57C062:  STR             R0, [R5]
57C064:  LDRB.W          R0, [R4,#0x3A]
57C068:  AND.W           R1, R0, #0xF0
57C06C:  CMP             R1, #0x50 ; 'P'
57C06E:  ITT NE
57C070:  MOVNE           R0, #0
57C072:  POPNE           {R4,R5,R7,PC}
57C074:  MOVS            R1, #4
57C076:  BFI.W           R0, R1, #3, #0x1D
57C07A:  STRB.W          R0, [R4,#0x3A]
57C07E:  MOVS            R0, #1
57C080:  POP             {R4,R5,R7,PC}
