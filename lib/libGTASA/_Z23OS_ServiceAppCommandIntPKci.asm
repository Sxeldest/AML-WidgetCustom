; =========================================================
; Game Engine Function: _Z23OS_ServiceAppCommandIntPKci
; Address            : 0x27AFE4 - 0x27B03A
; =========================================================

27AFE4:  PUSH            {R4-R7,LR}
27AFE6:  ADD             R7, SP, #0xC
27AFE8:  PUSH.W          {R11}
27AFEC:  SUB             SP, SP, #8
27AFEE:  MOV             R4, R1
27AFF0:  MOV             R5, R0
27AFF2:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
27AFF6:  MOV             R6, R0
27AFF8:  MOV             R1, R5
27AFFA:  LDR             R0, [R6]
27AFFC:  LDR.W           R2, [R0,#0x29C]
27B000:  MOV             R0, R6
27B002:  BLX             R2
27B004:  MOV             R5, R0
27B006:  LDR             R0, =(s_ServiceAppCommandInt_ptr - 0x27B010)
27B008:  LDR             R1, =(dword_6D81DC - 0x27B014)
27B00A:  MOV             R3, R5
27B00C:  ADD             R0, PC; s_ServiceAppCommandInt_ptr
27B00E:  STR             R4, [SP,#0x18+var_18]
27B010:  ADD             R1, PC; dword_6D81DC
27B012:  LDR             R0, [R0]; s_ServiceAppCommandInt
27B014:  LDR             R1, [R1]
27B016:  LDR             R2, [R0]
27B018:  MOV             R0, R6
27B01A:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
27B01E:  MOV             R4, R0
27B020:  LDR             R0, [R6]
27B022:  MOV             R1, R5
27B024:  LDR             R2, [R0,#0x5C]
27B026:  MOV             R0, R6
27B028:  BLX             R2
27B02A:  CMP             R4, #0
27B02C:  IT NE
27B02E:  MOVNE           R4, #1
27B030:  MOV             R0, R4
27B032:  ADD             SP, SP, #8
27B034:  POP.W           {R11}
27B038:  POP             {R4-R7,PC}
