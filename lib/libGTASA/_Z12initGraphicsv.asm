; =========================================================
; Game Engine Function: _Z12initGraphicsv
; Address            : 0x2690B4 - 0x269126
; =========================================================

2690B4:  PUSH            {R4,R5,R7,LR}
2690B6:  ADD             R7, SP, #8
2690B8:  LDR             R0, =(AndroidEGLContext_ptr - 0x2690BE)
2690BA:  ADD             R0, PC; AndroidEGLContext_ptr
2690BC:  LDR             R0, [R0]; AndroidEGLContext
2690BE:  LDR             R0, [R0]
2690C0:  CBNZ            R0, loc_2690EA
2690C2:  MOVS            R0, #8; unsigned int
2690C4:  BLX             _Znwj; operator new(uint)
2690C8:  MOV             R4, R0
2690CA:  ADDS            R5, R4, #4
2690CC:  MOV             R0, R5; attr
2690CE:  BLX             pthread_mutexattr_init
2690D2:  MOV             R0, R5
2690D4:  MOVS            R1, #1
2690D6:  BLX             pthread_mutexattr_settype
2690DA:  MOV             R0, R4; mutex
2690DC:  MOV             R1, R5; mutexattr
2690DE:  BLX             pthread_mutex_init
2690E2:  LDR             R0, =(AndroidEGLContext_ptr - 0x2690E8)
2690E4:  ADD             R0, PC; AndroidEGLContext_ptr
2690E6:  LDR             R0, [R0]; AndroidEGLContext
2690E8:  STR             R4, [R0]
2690EA:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
2690EE:  CBZ             R0, loc_269114
2690F0:  LDR             R1, =(dword_6D81DC - 0x2690F6)
2690F2:  ADD             R1, PC; dword_6D81DC
2690F4:  LDR             R1, [R1]
2690F6:  CBZ             R1, loc_269114
2690F8:  LDR             R2, =(dword_6D9A28 - 0x269100)
2690FA:  MOVS            R3, #2
2690FC:  ADD             R2, PC; dword_6D9A28
2690FE:  LDR             R2, [R2]
269100:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
269104:  CBZ             R0, loc_269110
269106:  LDR             R0, =(IsInitGraphics_ptr - 0x26910E)
269108:  MOVS            R1, #1
26910A:  ADD             R0, PC; IsInitGraphics_ptr
26910C:  LDR             R0, [R0]; IsInitGraphics
26910E:  STRB            R1, [R0]
269110:  MOVS            R0, #1
269112:  POP             {R4,R5,R7,PC}
269114:  LDR             R1, =(aNvevent - 0x26911E); "NVEvent"
269116:  MOVS            R0, #3; prio
269118:  LDR             R2, =(aErrorNoValidJn - 0x269120); "Error: No valid JNI env in MakeCurrent"
26911A:  ADD             R1, PC; "NVEvent"
26911C:  ADD             R2, PC; "Error: No valid JNI env in MakeCurrent"
26911E:  BLX             __android_log_print
269122:  MOVS            R0, #1
269124:  POP             {R4,R5,R7,PC}
