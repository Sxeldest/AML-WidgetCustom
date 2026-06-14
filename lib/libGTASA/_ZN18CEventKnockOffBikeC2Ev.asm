; =========================================================
; Game Engine Function: _ZN18CEventKnockOffBikeC2Ev
; Address            : 0x3753B4 - 0x3753E6
; =========================================================

3753B4:  LDR             R1, =(_ZTV18CEventKnockOffBike_ptr - 0x3753C2)
3753B6:  MOVS            R2, #0
3753B8:  STRB            R2, [R0,#8]
3753BA:  VMOV.I32        Q8, #0
3753BE:  ADD             R1, PC; _ZTV18CEventKnockOffBike_ptr
3753C0:  STR             R2, [R0,#4]
3753C2:  STRB.W          R2, [R0,#0x34]
3753C6:  ADD.W           R3, R0, #0x24 ; '$'
3753CA:  STR             R2, [R0,#0x38]
3753CC:  STRH            R2, [R0,#0x36]
3753CE:  LDRB.W          R2, [R0,#0x35]
3753D2:  LDR             R1, [R1]; `vtable for'CEventKnockOffBike ...
3753D4:  VST1.32         {D16-D17}, [R3]
3753D8:  AND.W           R2, R2, #0xFE
3753DC:  ADDS            R1, #8
3753DE:  STRB.W          R2, [R0,#0x35]
3753E2:  STR             R1, [R0]
3753E4:  BX              LR
