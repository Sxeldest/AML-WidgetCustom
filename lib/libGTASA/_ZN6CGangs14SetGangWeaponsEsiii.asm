; =========================================================
; Game Engine Function: _ZN6CGangs14SetGangWeaponsEsiii
; Address            : 0x49EEDC - 0x49EF16
; =========================================================

49EEDC:  CMP             R1, #0
49EEDE:  BLT             loc_49EEF2
49EEE0:  LDR.W           R12, =(_ZN6CGangs4GangE_ptr - 0x49EEE8)
49EEE4:  ADD             R12, PC; _ZN6CGangs4GangE_ptr
49EEE6:  LDR.W           R12, [R12]; CGangs::Gang ...
49EEEA:  ADD.W           R12, R12, R0,LSL#4
49EEEE:  STR.W           R1, [R12,#4]
49EEF2:  CMP             R2, #0
49EEF4:  BLT             loc_49EF02
49EEF6:  LDR             R1, =(_ZN6CGangs4GangE_ptr - 0x49EEFC)
49EEF8:  ADD             R1, PC; _ZN6CGangs4GangE_ptr
49EEFA:  LDR             R1, [R1]; CGangs::Gang ...
49EEFC:  ADD.W           R1, R1, R0,LSL#4
49EF00:  STR             R2, [R1,#8]
49EF02:  CMP             R3, #0
49EF04:  IT LT
49EF06:  BXLT            LR
49EF08:  LDR             R1, =(_ZN6CGangs4GangE_ptr - 0x49EF0E)
49EF0A:  ADD             R1, PC; _ZN6CGangs4GangE_ptr
49EF0C:  LDR             R1, [R1]; CGangs::Gang ...
49EF0E:  ADD.W           R0, R1, R0,LSL#4
49EF12:  STR             R3, [R0,#0xC]
49EF14:  BX              LR
