; =========================================================
; Game Engine Function: _ZN16CEventFireNearbyC2ERK7CVector
; Address            : 0x377530 - 0x37755C
; =========================================================

377530:  LDR             R2, =(_ZTV16CEventFireNearby_ptr - 0x37753E)
377532:  MOVS            R3, #0
377534:  STR             R3, [R0,#4]
377536:  MOVW            R3, #0x100
37753A:  ADD             R2, PC; _ZTV16CEventFireNearby_ptr
37753C:  MOVT            R3, #0xC8
377540:  STR             R3, [R0,#8]
377542:  MOVW            R3, #0xFFFF
377546:  LDR             R2, [R2]; `vtable for'CEventFireNearby ...
377548:  STRH            R3, [R0,#0xC]
37754A:  ADDS            R2, #8
37754C:  STR             R2, [R0]
37754E:  VLDR            D16, [R1]
377552:  LDR             R1, [R1,#8]
377554:  STR             R1, [R0,#0x18]
377556:  VSTR            D16, [R0,#0x10]
37755A:  BX              LR
