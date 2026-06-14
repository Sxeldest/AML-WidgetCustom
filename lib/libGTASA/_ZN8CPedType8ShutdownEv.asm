; =========================================================
; Game Engine Function: _ZN8CPedType8ShutdownEv
; Address            : 0x4C3320 - 0x4C3334
; =========================================================

4C3320:  LDR             R0, =(_ZN8CPedType13ms_apPedTypesE_ptr - 0x4C3326)
4C3322:  ADD             R0, PC; _ZN8CPedType13ms_apPedTypesE_ptr
4C3324:  LDR             R0, [R0]; CPedType::ms_apPedTypes ...
4C3326:  LDR             R0, [R0]; CPedType::ms_apPedTypes
4C3328:  CMP             R0, #0
4C332A:  ITT NE
4C332C:  SUBNE           R0, #8; void *
4C332E:  BNE.W           sub_18E920
4C3332:  BX              LR
