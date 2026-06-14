; =========================================================
; Game Engine Function: _ZN8CPedList9AddMemberEP4CPed
; Address            : 0x548436 - 0x54844C
; =========================================================

548436:  LDR             R2, [R0]
548438:  CMP             R2, #0x1D
54843A:  IT GT
54843C:  BXGT            LR
54843E:  ADD.W           R2, R0, R2,LSL#2
548442:  STR             R1, [R2,#4]
548444:  LDR             R1, [R0]
548446:  ADDS            R1, #1
548448:  STR             R1, [R0]
54844A:  BX              LR
