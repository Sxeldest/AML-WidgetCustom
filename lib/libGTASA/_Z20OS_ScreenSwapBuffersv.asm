; =========================================================
; Game Engine Function: _Z20OS_ScreenSwapBuffersv
; Address            : 0x268EE4 - 0x268F2E
; =========================================================

268EE4:  PUSH            {R7,LR}
268EE6:  MOV             R7, SP
268EE8:  LDR             R0, =(AND_bufferSwaps_ptr - 0x268EEE)
268EEA:  ADD             R0, PC; AND_bufferSwaps_ptr
268EEC:  LDR             R0, [R0]; AND_bufferSwaps
268EEE:  LDR             R1, [R0]
268EF0:  ADDS            R1, #1
268EF2:  STR             R1, [R0]
268EF4:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
268EF8:  CBZ             R0, loc_268F18
268EFA:  LDR             R1, =(dword_6D81DC - 0x268F00)
268EFC:  ADD             R1, PC; dword_6D81DC
268EFE:  LDR             R1, [R1]
268F00:  CBZ             R1, loc_268F18
268F02:  LDR             R2, =(dword_6D9A34 - 0x268F08)
268F04:  ADD             R2, PC; dword_6D9A34
268F06:  LDR             R2, [R2]
268F08:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
268F0C:  CBNZ            R0, loc_268F26
268F0E:  LDR             R1, =(aNvevent - 0x268F16); "NVEvent"
268F10:  LDR             R2, =(aErrorSwapbuffe - 0x268F18); "Error: SwapBuffers failed"
268F12:  ADD             R1, PC; "NVEvent"
268F14:  ADD             R2, PC; "Error: SwapBuffers failed"
268F16:  B               loc_268F20
268F18:  LDR             R1, =(aNvevent - 0x268F20); "NVEvent"
268F1A:  LDR             R2, =(aErrorNoValidJn_1 - 0x268F22); "Error: No valid JNI env in SwapBuffers"
268F1C:  ADD             R1, PC; "NVEvent"
268F1E:  ADD             R2, PC; "Error: No valid JNI env in SwapBuffers"
268F20:  MOVS            R0, #3; prio
268F22:  BLX             __android_log_print
268F26:  MOVS            R0, #0; int
268F28:  POP.W           {R7,LR}
268F2C:  B               _Z15LIB_InputUpdatei; LIB_InputUpdate(int)
