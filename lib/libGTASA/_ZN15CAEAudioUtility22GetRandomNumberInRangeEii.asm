; =========================================================
; Game Engine Function: _ZN15CAEAudioUtility22GetRandomNumberInRangeEii
; Address            : 0x393324 - 0x393360
; =========================================================

393324:  PUSH            {R4,R5,R7,LR}
393326:  ADD             R7, SP, #8
393328:  MOV             R4, R1
39332A:  MOV             R5, R0
39332C:  BLX             rand
393330:  UXTH            R0, R0
393332:  VLDR            S2, =0.000015259
393336:  VMOV            S0, R0
39333A:  RSB.W           R0, R5, #1
39333E:  ADD             R0, R4
393340:  VCVT.F32.S32    S0, S0
393344:  VMOV            S4, R0
393348:  VCVT.F32.S32    S4, S4
39334C:  VMUL.F32        S0, S0, S2
393350:  VMUL.F32        S0, S0, S4
393354:  VCVT.S32.F32    S0, S0
393358:  VMOV            R0, S0
39335C:  ADD             R0, R5
39335E:  POP             {R4,R5,R7,PC}
