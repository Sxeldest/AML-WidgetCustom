; =========================================================
; Game Engine Function: _ZN15CEventSoundLoudD2Ev
; Address            : 0x378EF4 - 0x378F16
; =========================================================

378EF4:  PUSH            {R4,R6,R7,LR}
378EF6:  ADD             R7, SP, #8
378EF8:  MOV             R4, R0
378EFA:  LDR             R0, =(_ZTV15CEventSoundLoud_ptr - 0x378F02)
378EFC:  MOV             R1, R4
378EFE:  ADD             R0, PC; _ZTV15CEventSoundLoud_ptr
378F00:  LDR             R2, [R0]; `vtable for'CEventSoundLoud ...
378F02:  LDR.W           R0, [R1,#0x10]!; CEntity **
378F06:  ADDS            R2, #8
378F08:  STR             R2, [R4]
378F0A:  CMP             R0, #0
378F0C:  IT NE
378F0E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
378F12:  MOV             R0, R4
378F14:  POP             {R4,R6,R7,PC}
