; =========================================================
; Game Engine Function: _Z21NVEventEGLSwapBuffersv
; Address            : 0x268F4C - 0x268F8A
; =========================================================

268F4C:  PUSH            {R7,LR}
268F4E:  MOV             R7, SP
268F50:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
268F54:  CBZ             R0, loc_268F78
268F56:  LDR             R1, =(dword_6D81DC - 0x268F5C)
268F58:  ADD             R1, PC; dword_6D81DC
268F5A:  LDR             R1, [R1]
268F5C:  CBZ             R1, loc_268F78
268F5E:  LDR             R2, =(dword_6D9A34 - 0x268F64)
268F60:  ADD             R2, PC; dword_6D9A34
268F62:  LDR             R2, [R2]
268F64:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
268F68:  CMP             R0, #0
268F6A:  IT NE
268F6C:  POPNE           {R7,PC}
268F6E:  LDR             R1, =(aNvevent - 0x268F76); "NVEvent"
268F70:  LDR             R2, =(aErrorSwapbuffe - 0x268F78); "Error: SwapBuffers failed"
268F72:  ADD             R1, PC; "NVEvent"
268F74:  ADD             R2, PC; "Error: SwapBuffers failed"
268F76:  B               loc_268F80
268F78:  LDR             R1, =(aNvevent - 0x268F80); "NVEvent"
268F7A:  LDR             R2, =(aErrorNoValidJn_1 - 0x268F82); "Error: No valid JNI env in SwapBuffers"
268F7C:  ADD             R1, PC; "NVEvent"
268F7E:  ADD             R2, PC; "Error: No valid JNI env in SwapBuffers"
268F80:  MOVS            R0, #3; prio
268F82:  POP.W           {R7,LR}
268F86:  B.W             sub_199CB8
