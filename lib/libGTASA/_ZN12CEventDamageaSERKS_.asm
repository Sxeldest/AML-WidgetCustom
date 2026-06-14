; =========================================================
; Game Engine Function: _ZN12CEventDamageaSERKS_
; Address            : 0x372600 - 0x37260E
; =========================================================

372600:  PUSH            {R4,R6,R7,LR}
372602:  ADD             R7, SP, #8
372604:  MOV             R4, R0
372606:  BLX             j__ZN12CEventDamage4FromERKS_; CEventDamage::From(CEventDamage const&)
37260A:  MOV             R0, R4
37260C:  POP             {R4,R6,R7,PC}
