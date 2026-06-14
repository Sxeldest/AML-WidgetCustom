; =========================================================
; Game Engine Function: _ZN15CEventSoundLoudD0Ev
; Address            : 0x378F1C - 0x378F66
; =========================================================

378F1C:  PUSH            {R4,R6,R7,LR}
378F1E:  ADD             R7, SP, #8
378F20:  MOV             R4, R0
378F22:  LDR             R0, =(_ZTV15CEventSoundLoud_ptr - 0x378F2A)
378F24:  MOV             R1, R4
378F26:  ADD             R0, PC; _ZTV15CEventSoundLoud_ptr
378F28:  LDR             R2, [R0]; `vtable for'CEventSoundLoud ...
378F2A:  LDR.W           R0, [R1,#0x10]!; CEntity **
378F2E:  ADDS            R2, #8
378F30:  STR             R2, [R4]
378F32:  CMP             R0, #0
378F34:  IT NE
378F36:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
378F3A:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x378F48)
378F3C:  MOV             R3, #0xF0F0F0F1
378F44:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
378F46:  LDR             R0, [R0]; CPools::ms_pEventPool ...
378F48:  LDR             R0, [R0]; CPools::ms_pEventPool
378F4A:  LDRD.W          R1, R2, [R0]
378F4E:  SUBS            R1, R4, R1
378F50:  ASRS            R1, R1, #2
378F52:  MULS            R1, R3
378F54:  LDRB            R3, [R2,R1]
378F56:  ORR.W           R3, R3, #0x80
378F5A:  STRB            R3, [R2,R1]
378F5C:  LDR             R2, [R0,#0xC]
378F5E:  CMP             R1, R2
378F60:  IT LT
378F62:  STRLT           R1, [R0,#0xC]
378F64:  POP             {R4,R6,R7,PC}
