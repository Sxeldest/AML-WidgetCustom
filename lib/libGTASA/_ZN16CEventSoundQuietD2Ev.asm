; =========================================================
; Game Engine Function: _ZN16CEventSoundQuietD2Ev
; Address            : 0x379020 - 0x379042
; =========================================================

379020:  PUSH            {R4,R6,R7,LR}
379022:  ADD             R7, SP, #8
379024:  MOV             R4, R0
379026:  LDR             R0, =(_ZTV16CEventSoundQuiet_ptr - 0x37902E)
379028:  MOV             R1, R4
37902A:  ADD             R0, PC; _ZTV16CEventSoundQuiet_ptr
37902C:  LDR             R2, [R0]; `vtable for'CEventSoundQuiet ...
37902E:  LDR.W           R0, [R1,#0x10]!; CEntity **
379032:  ADDS            R2, #8
379034:  STR             R2, [R4]
379036:  CMP             R0, #0
379038:  IT NE
37903A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37903E:  MOV             R0, R4
379040:  POP             {R4,R6,R7,PC}
