; =========================================================
; Game Engine Function: _ZN23CEventCreatePartnerTaskD0Ev
; Address            : 0x4B8D00 - 0x4B8D2C
; =========================================================

4B8D00:  PUSH            {R4,R6,R7,LR}
4B8D02:  ADD             R7, SP, #8
4B8D04:  MOV             R4, R0
4B8D06:  LDR             R0, =(_ZTV23CEventCreatePartnerTask_ptr - 0x4B8D0E)
4B8D08:  MOV             R1, R4
4B8D0A:  ADD             R0, PC; _ZTV23CEventCreatePartnerTask_ptr
4B8D0C:  LDR             R2, [R0]; `vtable for'CEventCreatePartnerTask ...
4B8D0E:  LDR.W           R0, [R1,#0x10]!; CEntity **
4B8D12:  ADDS            R2, #8
4B8D14:  STR             R2, [R4]
4B8D16:  CMP             R0, #0
4B8D18:  IT NE
4B8D1A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4B8D1E:  MOV             R0, R4; this
4B8D20:  BLX             j__ZN6CEventD2Ev_3; CEvent::~CEvent()
4B8D24:  POP.W           {R4,R6,R7,LR}
4B8D28:  B.W             sub_197900
