; =========================================================
; Game Engine Function: _ZN29CTaskComplexReactToGunAimedAt18CreateFirstSubTaskEP4CPed
; Address            : 0x547240 - 0x5472A0
; =========================================================

547240:  PUSH            {R4,R5,R7,LR}
547242:  ADD             R7, SP, #8
547244:  LDR.W           R0, [R1,#0x590]
547248:  MOVS            R4, #0
54724A:  CBZ             R0, loc_547254
54724C:  LDRB.W          R0, [R1,#0x485]
547250:  LSLS            R0, R0, #0x1F
547252:  BNE             loc_547258
547254:  MOVS            R5, #0
547256:  B               loc_547282
547258:  BLX             rand
54725C:  UXTH            R0, R0
54725E:  VLDR            S2, =0.000015259
547262:  VMOV            S0, R0
547266:  VCVT.F32.S32    S0, S0
54726A:  VMUL.F32        S0, S0, S2
54726E:  VLDR            S2, =1000.0
547272:  VMUL.F32        S0, S0, S2
547276:  VCVT.S32.F32    S0, S0
54727A:  VMOV            R0, S0
54727E:  ADD.W           R5, R0, #0x3E8
547282:  MOVS            R0, #off_18; this
547284:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
547288:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
54728C:  LDR             R1, =(_ZTV16CTaskSimplePause_ptr - 0x547294)
54728E:  STRH            R4, [R0,#0x10]
547290:  ADD             R1, PC; _ZTV16CTaskSimplePause_ptr
547292:  STR             R5, [R0,#0x14]
547294:  STRD.W          R4, R4, [R0,#8]
547298:  LDR             R1, [R1]; `vtable for'CTaskSimplePause ...
54729A:  ADDS            R1, #8
54729C:  STR             R1, [R0]
54729E:  POP             {R4,R5,R7,PC}
