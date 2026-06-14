; =========================================================
; Game Engine Function: _Z14NVEventEGLInitv
; Address            : 0x269144 - 0x26917C
; =========================================================

269144:  PUSH            {R7,LR}
269146:  MOV             R7, SP
269148:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26914C:  CBZ             R0, loc_26916A
26914E:  LDR             R1, =(dword_6D81DC - 0x269154)
269150:  ADD             R1, PC; dword_6D81DC
269152:  LDR             R1, [R1]
269154:  CBZ             R1, loc_26916A
269156:  LDR             R2, =(dword_6D9A28 - 0x26915E)
269158:  MOVS            R3, #2
26915A:  ADD             R2, PC; dword_6D9A28
26915C:  LDR             R2, [R2]
26915E:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
269162:  CMP             R0, #0
269164:  IT NE
269166:  MOVNE           R0, #1
269168:  POP             {R7,PC}
26916A:  LDR             R1, =(aNvevent - 0x269174); "NVEvent"
26916C:  MOVS            R0, #3; prio
26916E:  LDR             R2, =(aErrorNoValidJn - 0x269176); "Error: No valid JNI env in MakeCurrent"
269170:  ADD             R1, PC; "NVEvent"
269172:  ADD             R2, PC; "Error: No valid JNI env in MakeCurrent"
269174:  BLX             __android_log_print
269178:  MOVS            R0, #0
26917A:  POP             {R7,PC}
