; =========================================================
; Game Engine Function: _ZN8CPickups26AddToCollectedPickupsArrayEi
; Address            : 0x31EDC4 - 0x31EDF6
; =========================================================

31EDC4:  LDR             R1, =(_ZN8CPickups8aPickUpsE_ptr - 0x31EDCC)
31EDC6:  LDR             R2, =(_ZN8CPickups20CollectedPickUpIndexE_ptr - 0x31EDD0)
31EDC8:  ADD             R1, PC; _ZN8CPickups8aPickUpsE_ptr
31EDCA:  LDR             R3, =(_ZN8CPickups17aPickUpsCollectedE_ptr - 0x31EDD4)
31EDCC:  ADD             R2, PC; _ZN8CPickups20CollectedPickUpIndexE_ptr
31EDCE:  LDR             R1, [R1]; CPickups::aPickUps ...
31EDD0:  ADD             R3, PC; _ZN8CPickups17aPickUpsCollectedE_ptr
31EDD2:  LDR             R2, [R2]; CPickups::CollectedPickUpIndex ...
31EDD4:  ADD.W           R1, R1, R0,LSL#5
31EDD8:  LDR             R3, [R3]; CPickups::aPickUpsCollected ...
31EDDA:  LDRH.W          R12, [R1,#0x1A]
31EDDE:  LDRH            R1, [R2]; CPickups::CollectedPickUpIndex
31EDE0:  ORR.W           R0, R0, R12,LSL#16
31EDE4:  STR.W           R0, [R3,R1,LSL#2]
31EDE8:  ADDS            R0, R1, #1
31EDEA:  UXTH            R1, R0
31EDEC:  CMP             R1, #0x13
31EDEE:  IT HI
31EDF0:  MOVHI           R0, #0
31EDF2:  STRH            R0, [R2]; CPickups::CollectedPickUpIndex
31EDF4:  BX              LR
