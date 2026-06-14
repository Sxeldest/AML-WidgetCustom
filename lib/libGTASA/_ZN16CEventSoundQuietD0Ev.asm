; =========================================================
; Game Engine Function: _ZN16CEventSoundQuietD0Ev
; Address            : 0x379048 - 0x379092
; =========================================================

379048:  PUSH            {R4,R6,R7,LR}
37904A:  ADD             R7, SP, #8
37904C:  MOV             R4, R0
37904E:  LDR             R0, =(_ZTV16CEventSoundQuiet_ptr - 0x379056)
379050:  MOV             R1, R4
379052:  ADD             R0, PC; _ZTV16CEventSoundQuiet_ptr
379054:  LDR             R2, [R0]; `vtable for'CEventSoundQuiet ...
379056:  LDR.W           R0, [R1,#0x10]!; CEntity **
37905A:  ADDS            R2, #8
37905C:  STR             R2, [R4]
37905E:  CMP             R0, #0
379060:  IT NE
379062:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
379066:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x379074)
379068:  MOV             R3, #0xF0F0F0F1
379070:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
379072:  LDR             R0, [R0]; CPools::ms_pEventPool ...
379074:  LDR             R0, [R0]; CPools::ms_pEventPool
379076:  LDRD.W          R1, R2, [R0]
37907A:  SUBS            R1, R4, R1
37907C:  ASRS            R1, R1, #2
37907E:  MULS            R1, R3
379080:  LDRB            R3, [R2,R1]
379082:  ORR.W           R3, R3, #0x80
379086:  STRB            R3, [R2,R1]
379088:  LDR             R2, [R0,#0xC]
37908A:  CMP             R1, R2
37908C:  IT LT
37908E:  STRLT           R1, [R0,#0xC]
379090:  POP             {R4,R6,R7,PC}
