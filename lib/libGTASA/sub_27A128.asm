; =========================================================
; Game Engine Function: sub_27A128
; Address            : 0x27A128 - 0x27A1DC
; =========================================================

27A128:  PUSH            {R4-R7,LR}
27A12A:  ADD             R7, SP, #0xC
27A12C:  PUSH.W          {R8-R11}
27A130:  SUB             SP, SP, #4
27A132:  MOV             R5, R0
27A134:  LDRD.W          R8, R4, [R5]
27A138:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
27A13C:  MOV             R9, R5
27A13E:  LDRB.W          R0, [R9,#8]!
27A142:  CBZ             R0, loc_27A1B6
27A144:  LDR             R0, =(dword_6DF164 - 0x27A14A)
27A146:  ADD             R0, PC; dword_6DF164
27A148:  LDR             R0, [R0]; key
27A14A:  BLX             pthread_getspecific
27A14E:  MOV             R6, R0
27A150:  ADR             R1, aJavaLangThread; "java/lang/Thread"
27A152:  LDR             R0, [R6]
27A154:  LDR             R2, [R0,#0x18]
27A156:  MOV             R0, R6
27A158:  BLX             R2
27A15A:  STR             R4, [SP,#0x20+var_20]
27A15C:  MOV             R4, R0
27A15E:  LDR             R0, [R6]
27A160:  ADR             R2, aCurrentthread; "currentThread"
27A162:  ADR             R3, aLjavaLangThrea; "()Ljava/lang/Thread;"
27A164:  MOV             R1, R4
27A166:  LDR.W           R12, [R0,#0x1C4]
27A16A:  MOV             R0, R6
27A16C:  BLX             R12
27A16E:  MOV             R10, R0
27A170:  LDR             R0, [R6]
27A172:  LDR             R3, =(aLjavaLangStrin_3 - 0x27A180); "(Ljava/lang/String;)V"
27A174:  ADR             R2, aSetname; "setName"
27A176:  MOV             R1, R4
27A178:  LDR.W           R12, [R0,#0x84]
27A17C:  ADD             R3, PC; "(Ljava/lang/String;)V"
27A17E:  MOV             R0, R6
27A180:  BLX             R12
27A182:  MOV             R11, R0
27A184:  MOV             R0, R6
27A186:  MOV             R1, R4
27A188:  MOV             R2, R10
27A18A:  BLX             j__ZN7_JNIEnv22CallStaticObjectMethodEP7_jclassP10_jmethodIDz; _JNIEnv::CallStaticObjectMethod(_jclass *,_jmethodID *,...)
27A18E:  MOV             R10, R0
27A190:  LDR             R0, [R6]
27A192:  MOV             R1, R9
27A194:  LDR.W           R2, [R0,#0x29C]
27A198:  MOV             R0, R6
27A19A:  BLX             R2
27A19C:  MOV             R4, R0
27A19E:  MOV             R0, R6
27A1A0:  MOV             R1, R10
27A1A2:  MOV             R2, R11
27A1A4:  MOV             R3, R4
27A1A6:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
27A1AA:  LDR             R0, [R6]
27A1AC:  MOV             R1, R4
27A1AE:  LDR             R4, [SP,#0x20+var_20]
27A1B0:  LDR             R2, [R0,#0x5C]
27A1B2:  MOV             R0, R6
27A1B4:  BLX             R2
27A1B6:  MOV             R0, R5; p
27A1B8:  BLX             free
27A1BC:  MOV             R0, R8
27A1BE:  BLX             R4
27A1C0:  MOV             R4, R0
27A1C2:  LDR             R0, =(dword_6DF160 - 0x27A1C8)
27A1C4:  ADD             R0, PC; dword_6DF160
27A1C6:  LDR             R0, [R0]
27A1C8:  CMP             R0, #0
27A1CA:  ITTT NE
27A1CC:  LDRNE           R1, [R0]
27A1CE:  LDRNE           R1, [R1,#0x14]
27A1D0:  BLXNE           R1
27A1D2:  MOV             R0, R4
27A1D4:  ADD             SP, SP, #4
27A1D6:  POP.W           {R8-R11}
27A1DA:  POP             {R4-R7,PC}
