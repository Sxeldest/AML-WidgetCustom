; =========================================================
; Game Engine Function: _Z23NVEventEGLUnmakeCurrentv
; Address            : 0x268E8C - 0x268ECA
; =========================================================

268E8C:  PUSH            {R7,LR}
268E8E:  MOV             R7, SP
268E90:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
268E94:  CBZ             R0, loc_268EB8
268E96:  LDR             R1, =(dword_6D81DC - 0x268E9C)
268E98:  ADD             R1, PC; dword_6D81DC
268E9A:  LDR             R1, [R1]
268E9C:  CBZ             R1, loc_268EB8
268E9E:  LDR             R2, =(dword_6D9A30 - 0x268EA4)
268EA0:  ADD             R2, PC; dword_6D9A30
268EA2:  LDR             R2, [R2]
268EA4:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
268EA8:  CMP             R0, #0
268EAA:  IT NE
268EAC:  POPNE           {R7,PC}
268EAE:  LDR             R1, =(aNvevent - 0x268EB6); "NVEvent"
268EB0:  LDR             R2, =(aErrorUnmakecur - 0x268EB8); "Error: UnMakeCurrent failed"
268EB2:  ADD             R1, PC; "NVEvent"
268EB4:  ADD             R2, PC; "Error: UnMakeCurrent failed"
268EB6:  B               loc_268EC0
268EB8:  LDR             R1, =(aNvevent - 0x268EC0); "NVEvent"
268EBA:  LDR             R2, =(aErrorNoValidJn_0 - 0x268EC2); "Error: No valid JNI env in UnMakeCurren"...
268EBC:  ADD             R1, PC; "NVEvent"
268EBE:  ADD             R2, PC; "Error: No valid JNI env in UnMakeCurren"...
268EC0:  MOVS            R0, #3; prio
268EC2:  POP.W           {R7,LR}
268EC6:  B.W             sub_199CB8
