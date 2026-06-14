; =========================================================
; Game Engine Function: _Z21NVEventEGLMakeCurrentv
; Address            : 0x268DD0 - 0x268E0E
; =========================================================

268DD0:  PUSH            {R7,LR}
268DD2:  MOV             R7, SP
268DD4:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
268DD8:  CBZ             R0, loc_268DFC
268DDA:  LDR             R1, =(dword_6D81DC - 0x268DE0)
268DDC:  ADD             R1, PC; dword_6D81DC
268DDE:  LDR             R1, [R1]
268DE0:  CBZ             R1, loc_268DFC
268DE2:  LDR             R2, =(dword_6D9A2C - 0x268DE8)
268DE4:  ADD             R2, PC; dword_6D9A2C
268DE6:  LDR             R2, [R2]
268DE8:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
268DEC:  CMP             R0, #0
268DEE:  IT NE
268DF0:  POPNE           {R7,PC}
268DF2:  LDR             R1, =(aNvevent - 0x268DFA); "NVEvent"
268DF4:  LDR             R2, =(aErrorMakecurre - 0x268DFC); "Error: MakeCurrent failed"
268DF6:  ADD             R1, PC; "NVEvent"
268DF8:  ADD             R2, PC; "Error: MakeCurrent failed"
268DFA:  B               loc_268E04
268DFC:  LDR             R1, =(aNvevent - 0x268E04); "NVEvent"
268DFE:  LDR             R2, =(aErrorNoValidJn - 0x268E06); "Error: No valid JNI env in MakeCurrent"
268E00:  ADD             R1, PC; "NVEvent"
268E02:  ADD             R2, PC; "Error: No valid JNI env in MakeCurrent"
268E04:  MOVS            R0, #3; prio
268E06:  POP.W           {R7,LR}
268E0A:  B.W             sub_199CB8
