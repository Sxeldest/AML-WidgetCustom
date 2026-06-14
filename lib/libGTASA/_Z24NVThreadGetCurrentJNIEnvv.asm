; =========================================================
; Game Engine Function: _Z24NVThreadGetCurrentJNIEnvv
; Address            : 0x268B74 - 0x268BF4
; =========================================================

268B74:  PUSH            {R4,R6,R7,LR}
268B76:  ADD             R7, SP, #8
268B78:  SUB             SP, SP, #8
268B7A:  LDR             R0, =(dword_6DF164 - 0x268B84)
268B7C:  MOVS            R1, #0
268B7E:  STR             R1, [SP,#0x10+pointer]
268B80:  ADD             R0, PC; dword_6DF164
268B82:  LDR             R0, [R0]; key
268B84:  CBZ             R0, loc_268B94
268B86:  BLX             pthread_getspecific
268B8A:  CMP             R0, #0
268B8C:  STR             R0, [SP,#0x10+pointer]
268B8E:  BEQ             loc_268B9E
268B90:  ADD             SP, SP, #8
268B92:  POP             {R4,R6,R7,PC}
268B94:  LDR             R0, =(dword_6DF164 - 0x268B9C)
268B96:  MOVS            R1, #0; destr_function
268B98:  ADD             R0, PC; dword_6DF164 ; key
268B9A:  BLX             pthread_key_create
268B9E:  LDR             R0, =(dword_6DF160 - 0x268BA4)
268BA0:  ADD             R0, PC; dword_6DF160
268BA2:  LDR             R0, [R0]
268BA4:  CBZ             R0, loc_268BDA
268BA6:  LDR             R1, [R0]
268BA8:  MOVS            R2, #0
268BAA:  LDR             R3, [R1,#0x10]
268BAC:  ADD             R1, SP, #0x10+pointer
268BAE:  BLX             R3
268BB0:  LDR             R1, =(aOswrapper - 0x268BBC); "OSWrapper"
268BB2:  MOV             R4, R0
268BB4:  LDR             R0, [SP,#0x10+pointer]
268BB6:  ADR             R2, aAttachcurrentt; "AttachCurrentThread: %d, 0x%p"
268BB8:  ADD             R1, PC; "OSWrapper"
268BBA:  STR             R0, [SP,#0x10+var_10]
268BBC:  MOVS            R0, #3; prio
268BBE:  MOV             R3, R4
268BC0:  BLX             __android_log_print
268BC4:  CBNZ            R4, loc_268BE2
268BC6:  LDR             R1, [SP,#0x10+pointer]; pointer
268BC8:  CBZ             R1, loc_268BE2
268BCA:  LDR             R0, =(dword_6DF164 - 0x268BD0)
268BCC:  ADD             R0, PC; dword_6DF164
268BCE:  LDR             R0, [R0]; key
268BD0:  BLX             pthread_setspecific
268BD4:  LDR             R0, [SP,#0x10+pointer]
268BD6:  ADD             SP, SP, #8
268BD8:  POP             {R4,R6,R7,PC}
268BDA:  LDR             R1, =(aOswrapper - 0x268BE2); "OSWrapper"
268BDC:  ADR             R2, aErrorCouldNotF; "Error - could not find JVM!"
268BDE:  ADD             R1, PC; "OSWrapper"
268BE0:  B               loc_268BE8
268BE2:  LDR             R1, =(aOswrapper - 0x268BEA); "OSWrapper"
268BE4:  ADR             R2, aErrorCouldNotA; "Error - could not attach thread to JVM!"
268BE6:  ADD             R1, PC; "OSWrapper"
268BE8:  MOVS            R0, #3; prio
268BEA:  BLX             __android_log_print
268BEE:  MOVS            R0, #0
268BF0:  ADD             SP, SP, #8
268BF2:  POP             {R4,R6,R7,PC}
