; =========================================================
; Game Engine Function: _ZN8CPickups23GetNewUniquePickupIndexEi
; Address            : 0x31F164 - 0x31F188
; =========================================================

31F164:  LDR             R1, =(_ZN8CPickups8aPickUpsE_ptr - 0x31F16C)
31F166:  MOVS            R3, #1
31F168:  ADD             R1, PC; _ZN8CPickups8aPickUpsE_ptr
31F16A:  LDR             R1, [R1]; CPickups::aPickUps ...
31F16C:  ADD.W           R12, R1, R0,LSL#5
31F170:  MOVW            R1, #0xFFFE
31F174:  LDRH.W          R2, [R12,#0x1A]
31F178:  CMP             R2, R1
31F17A:  IT CC
31F17C:  ADDCC           R3, R2, #1
31F17E:  ORR.W           R0, R0, R3,LSL#16
31F182:  STRH.W          R3, [R12,#0x1A]
31F186:  BX              LR
