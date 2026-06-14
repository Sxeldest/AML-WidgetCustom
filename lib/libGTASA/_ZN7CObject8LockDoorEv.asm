; =========================================================
; Game Engine Function: _ZN7CObject8LockDoorEv
; Address            : 0x454358 - 0x454370
; =========================================================

454358:  LDR             R1, [R0,#0x44]
45435A:  LDR.W           R2, [R0,#0x144]
45435E:  ORR.W           R1, R1, #0xC
454362:  STR             R1, [R0,#0x44]
454364:  BIC.W           R1, R2, #0x8000
454368:  STR.W           R1, [R0,#0x144]
45436C:  B.W             _ZN7CObject14ResetDoorAngleEv; CObject::ResetDoorAngle(void)
