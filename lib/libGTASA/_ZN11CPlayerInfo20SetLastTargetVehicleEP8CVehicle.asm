; =========================================================
; Game Engine Function: _ZN11CPlayerInfo20SetLastTargetVehicleEP8CVehicle
; Address            : 0x409060 - 0x40908A
; =========================================================

409060:  PUSH            {R4,R5,R7,LR}
409062:  ADD             R7, SP, #8
409064:  MOV             R4, R0
409066:  MOV             R5, R1
409068:  LDR.W           R0, [R4,#0xD8]!; this
40906C:  CMP             R0, #0
40906E:  ITT NE
409070:  MOVNE           R1, R4; CEntity **
409072:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
409076:  CMP             R5, #0
409078:  STR             R5, [R4]
40907A:  IT EQ
40907C:  POPEQ           {R4,R5,R7,PC}
40907E:  MOV             R0, R5; this
409080:  MOV             R1, R4; CEntity **
409082:  POP.W           {R4,R5,R7,LR}
409086:  B.W             j_j__ZN7CEntity17RegisterReferenceEPPS_; j_CEntity::RegisterReference(CEntity**)
