; =========================================================
; Game Engine Function: _Z14NVEventAppMainiPPc
; Address            : 0x269B08 - 0x26A00C
; =========================================================

269B08:  PUSH            {R4-R7,LR}
269B0A:  ADD             R7, SP, #0xC
269B0C:  PUSH.W          {R8-R11}
269B10:  SUB             SP, SP, #4
269B12:  VPUSH           {D8-D12}
269B16:  SUB             SP, SP, #0x10
269B18:  MOV             R11, R1
269B1A:  MOV             R9, R0
269B1C:  BLX             j__Z21OS_ApplicationPreinitv; OS_ApplicationPreinit(void)
269B20:  BLX             j__Z22AND_KeyboardInitializev; AND_KeyboardInitialize(void)
269B24:  LDR.W           R0, =(lastGamepadAxis_ptr - 0x269B32)
269B28:  VMOV.I32        Q8, #0
269B2C:  MOVS            R4, #0
269B2E:  ADD             R0, PC; lastGamepadAxis_ptr
269B30:  LDR             R0, [R0]; lastGamepadAxis
269B32:  ADD.W           R1, R0, #0x50 ; 'P'
269B36:  VST1.32         {D16-D17}, [R1]
269B3A:  ADD.W           R1, R0, #0x40 ; '@'
269B3E:  VST1.32         {D16-D17}, [R1]
269B42:  ADD.W           R1, R0, #0x30 ; '0'
269B46:  VST1.32         {D16-D17}, [R1]
269B4A:  ADD.W           R1, R0, #0x20 ; ' '
269B4E:  VST1.32         {D16-D17}, [R1]
269B52:  MOVS            R1, #0; tz
269B54:  VST1.32         {D16-D17}, [R0]!
269B58:  VST1.32         {D16-D17}, [R0]
269B5C:  ADD             R0, SP, #0x58+tv; tv
269B5E:  BLX             gettimeofday
269B62:  VLDR            S2, [SP,#0x58+tv.tv_usec]
269B66:  VLDR            S0, [SP,#0x58+tv]
269B6A:  VCVT.F64.S32    D16, S2
269B6E:  LDR.W           R0, =(base_time_ptr - 0x269B7A)
269B72:  LDR.W           R1, =(ANDThread_Initted_ptr - 0x269B7C)
269B76:  ADD             R0, PC; base_time_ptr
269B78:  ADD             R1, PC; ANDThread_Initted_ptr
269B7A:  LDR             R0, [R0]; base_time
269B7C:  LDR             R1, [R1]; ANDThread_Initted
269B7E:  VLDR            D8, =1000000.0
269B82:  VCVT.F64.S32    D17, S0
269B86:  VDIV.F64        D16, D16, D8
269B8A:  VADD.F64        D16, D16, D17
269B8E:  VSTR            D16, [R0]
269B92:  LDRB            R0, [R1]
269B94:  CBNZ            R0, loc_269BCC
269B96:  LDR.W           R0, =(ANDThreadStorageKey_ptr - 0x269BA2)
269B9A:  LDR.W           R1, =(_ZN13ANDThreadData7DestroyEPv_ptr - 0x269BA4)
269B9E:  ADD             R0, PC; ANDThreadStorageKey_ptr
269BA0:  ADD             R1, PC; _ZN13ANDThreadData7DestroyEPv_ptr
269BA2:  LDR             R6, [R0]; ANDThreadStorageKey
269BA4:  LDR             R1, [R1]; ANDThreadData::Destroy(void *) ; destr_function
269BA6:  MOV             R0, R6; key
269BA8:  BLX             pthread_key_create
269BAC:  MOVS            R0, #0xC; byte_count
269BAE:  BLX             malloc
269BB2:  MOV             R1, R0; pointer
269BB4:  STRD.W          R4, R4, [R1]
269BB8:  LDR             R0, [R6]; key
269BBA:  STR             R4, [R1,#8]
269BBC:  BLX             pthread_setspecific
269BC0:  LDR.W           R0, =(ANDThread_Initted_ptr - 0x269BCA)
269BC4:  MOVS            R1, #1
269BC6:  ADD             R0, PC; ANDThread_Initted_ptr
269BC8:  LDR             R0, [R0]; ANDThread_Initted
269BCA:  STRB            R1, [R0]
269BCC:  MOVS            R0, #8; unsigned int
269BCE:  BLX             _Znwj; operator new(uint)
269BD2:  MOV             R6, R0
269BD4:  ADDS            R4, R6, #4
269BD6:  MOV             R0, R4; attr
269BD8:  BLX             pthread_mutexattr_init
269BDC:  MOV             R0, R4
269BDE:  MOVS            R1, #1
269BE0:  BLX             pthread_mutexattr_settype
269BE4:  MOV             R0, R6; mutex
269BE6:  MOV             R1, R4; mutexattr
269BE8:  BLX             pthread_mutex_init
269BEC:  LDR.W           R0, =(DoInitGraphics_ptr - 0x269BF8)
269BF0:  LDR.W           R1, =(fileMutex_ptr - 0x269BFA)
269BF4:  ADD             R0, PC; DoInitGraphics_ptr
269BF6:  ADD             R1, PC; fileMutex_ptr
269BF8:  LDR             R0, [R0]; DoInitGraphics
269BFA:  LDR             R1, [R1]; fileMutex
269BFC:  LDRB            R0, [R0]
269BFE:  STR             R6, [R1]
269C00:  CMP             R0, #0
269C02:  IT NE
269C04:  BLXNE           j__Z12initGraphicsv; initGraphics(void)
269C08:  LDR.W           R0, =(IsInitGraphics_ptr - 0x269C18)
269C0C:  MOV.W           R8, #0
269C10:  LDR.W           R6, =(dword_6D7070 - 0x269C1A)
269C14:  ADD             R0, PC; IsInitGraphics_ptr
269C16:  ADD             R6, PC; dword_6D7070
269C18:  LDR             R4, [R0]; IsInitGraphics
269C1A:  LDR.W           R0, =(IsAndroidPaused_ptr - 0x269C22)
269C1E:  ADD             R0, PC; IsAndroidPaused_ptr
269C20:  LDR.W           R10, [R0]; IsAndroidPaused
269C24:  LDR.W           R0, =(IsAndroidPaused_ptr - 0x269C2C)
269C28:  ADD             R0, PC; IsAndroidPaused_ptr
269C2A:  LDR             R5, [R0]; IsAndroidPaused
269C2C:  B               loc_269C3C
269C2E:  LDR             R0, [R6]
269C30:  ADDS            R0, #1
269C32:  STR             R0, [R6]
269C34:  MOVS            R0, #0; bool
269C36:  BLX             j__Z13ProcessEventsb; ProcessEvents(bool)
269C3A:  MOV             R8, R0
269C3C:  LDRB            R0, [R4]
269C3E:  CBZ             R0, loc_269C48
269C40:  LDR             R0, [R5]
269C42:  CMP             R0, #0
269C44:  BNE             loc_269C2E
269C46:  B               loc_269C5A
269C48:  LDR.W           R0, [R10]
269C4C:  CMP             R0, #0
269C4E:  ITT EQ
269C50:  EOREQ.W         R0, R8, #1
269C54:  MOVSEQ.W        R0, R0,LSL#31
269C58:  BNE             loc_269C2E
269C5A:  LDR.W           R0, =(AndroidEGLContext_ptr - 0x269C62)
269C5E:  ADD             R0, PC; AndroidEGLContext_ptr
269C60:  LDR             R0, [R0]; AndroidEGLContext
269C62:  LDR             R0, [R0]; mutex
269C64:  BLX             pthread_mutex_lock
269C68:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
269C6C:  CBZ             R0, loc_269C9E
269C6E:  LDR.W           R1, =(dword_6D81DC - 0x269C76)
269C72:  ADD             R1, PC; dword_6D81DC
269C74:  LDR             R1, [R1]
269C76:  CBZ             R1, loc_269C9E
269C78:  LDR.W           R2, =(dword_6D9A2C - 0x269C80)
269C7C:  ADD             R2, PC; dword_6D9A2C
269C7E:  LDR             R2, [R2]
269C80:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
269C84:  CMP             R0, #0
269C86:  MOV             R6, R11
269C88:  BNE             loc_269CB2
269C8A:  LDR.W           R1, =(aNvevent - 0x269C98); "NVEvent"
269C8E:  MOVS            R0, #3; prio
269C90:  LDR.W           R2, =(aErrorMakecurre - 0x269C9A); "Error: MakeCurrent failed"
269C94:  ADD             R1, PC; "NVEvent"
269C96:  ADD             R2, PC; "Error: MakeCurrent failed"
269C98:  BLX             __android_log_print
269C9C:  B               loc_269CB2
269C9E:  LDR.W           R1, =(aNvevent - 0x269CAC); "NVEvent"
269CA2:  MOVS            R0, #3; prio
269CA4:  LDR.W           R2, =(aErrorNoValidJn - 0x269CAE); "Error: No valid JNI env in MakeCurrent"
269CA8:  ADD             R1, PC; "NVEvent"
269CAA:  ADD             R2, PC; "Error: No valid JNI env in MakeCurrent"
269CAC:  BLX             __android_log_print
269CB0:  MOV             R6, R11
269CB2:  BLX             j__Z20AND_SystemInitializev; AND_SystemInitialize(void)
269CB6:  LDR.W           R0, =(s_GetDeviceType_ptr - 0x269CC2)
269CBA:  LDR.W           R4, =(dword_6D81DC - 0x269CC4)
269CBE:  ADD             R0, PC; s_GetDeviceType_ptr
269CC0:  ADD             R4, PC; dword_6D81DC
269CC2:  LDR             R5, [R0]; s_GetDeviceType
269CC4:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
269CC8:  LDR             R1, [R4]
269CCA:  LDR             R2, [R5]
269CCC:  BLX             j__ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallIntMethod(_jobject *,_jmethodID *,...)
269CD0:  LDR.W           R1, =(isLowMemoryDevice_ptr - 0x269CE0)
269CD4:  ASRS            R2, R0, #6
269CD6:  CMP             R2, #0xFA
269CD8:  MOV.W           R2, #0
269CDC:  ADD             R1, PC; isLowMemoryDevice_ptr
269CDE:  IT LT
269CE0:  MOVLT           R2, #1
269CE2:  ORN.W           R0, R2, R0,LSR#1
269CE6:  MOV.W           R10, #0
269CEA:  LDR             R1, [R1]; isLowMemoryDevice
269CEC:  AND.W           R0, R0, #1
269CF0:  STRB            R0, [R1]
269CF2:  MOVS            R0, #8; unsigned int
269CF4:  BLX             _Znwj; operator new(uint)
269CF8:  MOV             R4, R0
269CFA:  ADDS            R5, R4, #4
269CFC:  MOV             R0, R5; attr
269CFE:  BLX             pthread_mutexattr_init
269D02:  MOV             R0, R5
269D04:  MOVS            R1, #1
269D06:  MOV.W           R11, #1
269D0A:  BLX             pthread_mutexattr_settype
269D0E:  MOV             R0, R4; mutex
269D10:  MOV             R1, R5; mutexattr
269D12:  BLX             pthread_mutex_init
269D16:  LDR             R0, =(billingMutex_ptr - 0x269D1C)
269D18:  ADD             R0, PC; billingMutex_ptr
269D1A:  LDR             R0, [R0]; billingMutex
269D1C:  STR             R4, [R0]
269D1E:  MOVS            R0, #8; unsigned int
269D20:  BLX             _Znwj; operator new(uint)
269D24:  MOV             R4, R0
269D26:  ADDS            R5, R4, #4
269D28:  MOV             R0, R5; attr
269D2A:  BLX             pthread_mutexattr_init
269D2E:  MOV             R0, R5
269D30:  MOVS            R1, #1
269D32:  BLX             pthread_mutexattr_settype
269D36:  MOV             R0, R4; mutex
269D38:  MOV             R1, R5; mutexattr
269D3A:  BLX             pthread_mutex_init
269D3E:  LDR             R0, =(gameServiceMutex_ptr - 0x269D46)
269D40:  LDR             R1, =(off_6D7128 - 0x269D48)
269D42:  ADD             R0, PC; gameServiceMutex_ptr
269D44:  ADD             R1, PC; off_6D7128
269D46:  LDR             R0, [R0]; gameServiceMutex
269D48:  STR.W           R10, [R1]
269D4C:  MOV             R1, R6; char **
269D4E:  STR             R4, [R0]
269D50:  MOV             R0, R9; int
269D52:  BLX             j__Z24OS_ApplicationInitializeiPPKc; OS_ApplicationInitialize(int,char const**)
269D56:  CMP             R0, #1
269D58:  BNE.W           loc_269FFC
269D5C:  LDR             R0, =(AND_AppInitialized_ptr - 0x269D64)
269D5E:  LDR             R1, =(s_IsWifiAvailable_ptr - 0x269D68)
269D60:  ADD             R0, PC; AND_AppInitialized_ptr
269D62:  LDR             R4, =(dword_6D81DC - 0x269D70)
269D64:  ADD             R1, PC; s_IsWifiAvailable_ptr
269D66:  STR.W           R10, [SP,#0x58+var_54]
269D6A:  LDR             R0, [R0]; AND_AppInitialized
269D6C:  ADD             R4, PC; dword_6D81DC
269D6E:  LDR             R5, [R1]; s_IsWifiAvailable
269D70:  STRB.W          R11, [R0]
269D74:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
269D78:  LDR             R2, [R5]
269D7A:  LDR             R1, [R4]
269D7C:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
269D80:  CBZ             R0, loc_269D86
269D82:  MOVS            R0, #2
269D84:  B               loc_269DA0
269D86:  LDR             R0, =(s_IsNetworkAvailable_ptr - 0x269D8E)
269D88:  LDR             R4, =(dword_6D81DC - 0x269D90)
269D8A:  ADD             R0, PC; s_IsNetworkAvailable_ptr
269D8C:  ADD             R4, PC; dword_6D81DC
269D8E:  LDR             R5, [R0]; s_IsNetworkAvailable
269D90:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
269D94:  LDR             R1, [R4]
269D96:  LDR             R2, [R5]
269D98:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
269D9C:  CBZ             R0, loc_269DA2
269D9E:  MOVS            R0, #1
269DA0:  STR             R0, [SP,#0x58+var_54]
269DA2:  ADD             R1, SP, #0x58+var_54
269DA4:  MOVS            R0, #0x19
269DA6:  BLX             j__Z19OS_ApplicationEvent11OSEventTypePv; OS_ApplicationEvent(OSEventType,void *)
269DAA:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
269DAE:  CBZ             R0, loc_269DCE
269DB0:  LDR             R1, =(dword_6D81DC - 0x269DB6)
269DB2:  ADD             R1, PC; dword_6D81DC
269DB4:  LDR             R1, [R1]
269DB6:  CBZ             R1, loc_269DCE
269DB8:  LDR             R2, =(dword_6D9A30 - 0x269DBE)
269DBA:  ADD             R2, PC; dword_6D9A30
269DBC:  LDR             R2, [R2]
269DBE:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
269DC2:  CBNZ            R0, loc_269DDC
269DC4:  LDR             R1, =(aNvevent - 0x269DCC); "NVEvent"
269DC6:  LDR             R2, =(aErrorUnmakecur - 0x269DCE); "Error: UnMakeCurrent failed"
269DC8:  ADD             R1, PC; "NVEvent"
269DCA:  ADD             R2, PC; "Error: UnMakeCurrent failed"
269DCC:  B               loc_269DD6
269DCE:  LDR             R1, =(aNvevent - 0x269DD6); "NVEvent"
269DD0:  LDR             R2, =(aErrorNoValidJn_0 - 0x269DD8); "Error: No valid JNI env in UnMakeCurren"...
269DD2:  ADD             R1, PC; "NVEvent"
269DD4:  ADD             R2, PC; "Error: No valid JNI env in UnMakeCurren"...
269DD6:  MOVS            R0, #3; prio
269DD8:  BLX             __android_log_print
269DDC:  LDR             R0, =(AndroidEGLContext_ptr - 0x269DE2)
269DDE:  ADD             R0, PC; AndroidEGLContext_ptr
269DE0:  LDR             R0, [R0]; AndroidEGLContext
269DE2:  LDR             R0, [R0]; mutex
269DE4:  BLX             pthread_mutex_unlock
269DE8:  LDR             R0, =(windowSize_ptr - 0x269DF2)
269DEA:  MOV             R2, R9; int
269DEC:  MOV             R3, R6; char **
269DEE:  ADD             R0, PC; windowSize_ptr
269DF0:  LDR             R1, [R0]; windowSize
269DF2:  LDRD.W          R0, R1, [R1]; int
269DF6:  BLX             j__Z21OS_ApplicationStartupiiiPPKc; OS_ApplicationStartup(int,int,int,char const**)
269DFA:  CMP             R0, #0
269DFC:  BEQ.W           loc_269FF4
269E00:  LDR             R0, =(AND_AppStarted_ptr - 0x269E08)
269E02:  MOVS            R1, #1
269E04:  ADD             R0, PC; AND_AppStarted_ptr
269E06:  LDR             R0, [R0]; AND_AppStarted
269E08:  STRB            R1, [R0]
269E0A:  ADD             R0, SP, #0x58+tv; tv
269E0C:  MOVS            R1, #0; tz
269E0E:  BLX             gettimeofday
269E12:  MOVS.W          R0, R8,LSL#31
269E16:  BNE.W           loc_269F56
269E1A:  LDRD.W          R0, R1, [SP,#0x58+tv]
269E1E:  VMOV.F64        D10, #5.0
269E22:  VMOV            S0, R1
269E26:  LDR             R1, =(IsAndroidPaused_ptr - 0x269E34)
269E28:  VLDR            D9, =0.00033
269E2C:  VCVT.F64.S32    D16, S0
269E30:  ADD             R1, PC; IsAndroidPaused_ptr
269E32:  LDR             R4, [R1]; IsAndroidPaused
269E34:  LDR             R1, =(IsAndroidPaused_ptr - 0x269E3A)
269E36:  ADD             R1, PC; IsAndroidPaused_ptr
269E38:  LDR.W           R10, [R1]; IsAndroidPaused
269E3C:  VDIV.F64        D16, D16, D8
269E40:  VMOV            S0, R0
269E44:  LDR             R0, =(IsAndroidInMultiplayer_ptr - 0x269E4E)
269E46:  VCVT.F64.S32    D17, S0
269E4A:  ADD             R0, PC; IsAndroidInMultiplayer_ptr
269E4C:  LDR.W           R9, [R0]; IsAndroidInMultiplayer
269E50:  LDR             R0, =(base_time_ptr - 0x269E56)
269E52:  ADD             R0, PC; base_time_ptr
269E54:  LDR.W           R8, [R0]; base_time
269E58:  VADD.F64        D11, D16, D17
269E5C:  LDR             R0, =(IsAndroidInMultiplayer_ptr - 0x269E62)
269E5E:  ADD             R0, PC; IsAndroidInMultiplayer_ptr
269E60:  LDR.W           R11, [R0]; IsAndroidInMultiplayer
269E64:  MOVS            R0, #0; bool
269E66:  BLX             j__Z13ProcessEventsb; ProcessEvents(bool)
269E6A:  MOV             R5, R0
269E6C:  CBNZ            R5, loc_269E9A
269E6E:  LDR             R0, [R4]
269E70:  CBZ             R0, loc_269E9A
269E72:  LDR.W           R0, [R9]
269E76:  CBZ             R0, loc_269E80
269E78:  B               loc_269E9A
269E7A:  LDR.W           R0, [R11]
269E7E:  CBNZ            R0, loc_269E9A
269E80:  MOVS            R0, #0; bool
269E82:  BLX             j__Z13ProcessEventsb; ProcessEvents(bool)
269E86:  MOV             R5, R0
269E88:  MOVW            R0, #0x61A8; useconds
269E8C:  BLX             usleep
269E90:  CBNZ            R5, loc_269E9A
269E92:  LDR.W           R0, [R10]
269E96:  CMP             R0, #0
269E98:  BNE             loc_269E7A
269E9A:  ADD             R0, SP, #0x58+tv; tv
269E9C:  MOVS            R1, #0; tz
269E9E:  BLX             gettimeofday
269EA2:  VLDR            S0, [SP,#0x58+tv]
269EA6:  MOV             R1, #0xF4240
269EAE:  VCVT.F64.S32    D16, S0
269EB2:  LDR             R0, [SP,#0x58+tv.tv_usec]
269EB4:  CMP             R0, R1
269EB6:  BGT             loc_269ED8
269EB8:  VMOV            S0, R0
269EBC:  CMP.W           R0, #0xFFFFFFFF
269EC0:  VCVT.F64.S32    D17, S0
269EC4:  BLE             loc_269ED8
269EC6:  VDIV.F64        D17, D17, D8
269ECA:  B               loc_269EF0
269ECC:  ALIGN 0x10
269ED0:  DCFD 1000000.0
269ED8:  LDR             R0, =(unk_6D70D8 - 0x269EDE)
269EDA:  ADD             R0, PC; unk_6D70D8
269EDC:  VLDR            D17, [R0]
269EE0:  VCVT.U32.F64    S0, D17
269EE4:  VCVT.F64.U32    D18, S0
269EE8:  VSUB.F64        D17, D17, D18
269EEC:  VADD.F64        D17, D17, D9
269EF0:  VADD.F64        D16, D17, D16
269EF4:  LDR             R0, =(unk_6D70E0 - 0x269EFA)
269EF6:  ADD             R0, PC; unk_6D70E0
269EF8:  VLDR            D17, [R0]
269EFC:  LDR             R0, =(unk_6D70D8 - 0x269F06)
269EFE:  VSUB.F64        D17, D16, D17
269F02:  ADD             R0, PC; unk_6D70D8
269F04:  VCMPE.F64       D17, D10
269F08:  VMRS            APSR_nzcv, FPSCR
269F0C:  VSTR            D16, [R0]
269F10:  BLE             loc_269F1A
269F12:  LDR             R0, =(unk_6D70E0 - 0x269F18)
269F14:  ADD             R0, PC; unk_6D70E0
269F16:  VSTR            D16, [R0]
269F1A:  VLDR            D17, [R8]
269F1E:  VSUB.F64        D12, D16, D17
269F22:  VSUB.F64        D11, D12, D11
269F26:  VCVT.F32.F64    S0, D11
269F2A:  VMOV            R0, S0; float
269F2E:  BLX             j__Z18OS_ApplicationTickf; OS_ApplicationTick(float)
269F32:  MOV             R6, R0
269F34:  BLX             j__Z17AND_GamepadUpdatev; AND_GamepadUpdate(void)
269F38:  VMOV            R0, R1, D11; double
269F3C:  BLX             j__Z14AND_FileUpdated; AND_FileUpdate(double)
269F40:  MOVS            R0, #0; bool
269F42:  BLX             j__Z17AND_BillingUpdateb; AND_BillingUpdate(bool)
269F46:  VMOV.F64        D11, D12
269F4A:  EOR.W           R0, R6, #1
269F4E:  ORRS            R0, R5
269F50:  CMP             R0, #1
269F52:  BNE.W           loc_269E64
269F56:  MOVS            R0, #0
269F58:  MOVS            R1, #0
269F5A:  MOVS            R4, #0
269F5C:  BLX             j__Z19OS_ApplicationEvent11OSEventTypePv; OS_ApplicationEvent(OSEventType,void *)
269F60:  LDR             R0, =(ANDThreadStorageKey_ptr - 0x269F66)
269F62:  ADD             R0, PC; ANDThreadStorageKey_ptr
269F64:  LDR             R0, [R0]; ANDThreadStorageKey
269F66:  LDR             R0, [R0]; key
269F68:  BLX             pthread_key_delete
269F6C:  LDR             R0, =(items_ptr - 0x269F72)
269F6E:  ADD             R0, PC; items_ptr
269F70:  LDR             R0, [R0]; items
269F72:  LDR             R0, [R0]; p
269F74:  CBZ             R0, loc_269F8A
269F76:  BLX             free
269F7A:  LDR             R0, =(numItems_ptr - 0x269F82)
269F7C:  LDR             R1, =(items_ptr - 0x269F84)
269F7E:  ADD             R0, PC; numItems_ptr
269F80:  ADD             R1, PC; items_ptr
269F82:  LDR             R0, [R0]; numItems
269F84:  LDR             R1, [R1]; items
269F86:  STR             R4, [R0]
269F88:  STR             R4, [R1]
269F8A:  LDR             R0, =(billingMutex_ptr - 0x269F90)
269F8C:  ADD             R0, PC; billingMutex_ptr
269F8E:  LDR             R0, [R0]; billingMutex
269F90:  LDR             R4, [R0]
269F92:  CBZ             R4, loc_269FA6
269F94:  MOV             R0, R4; mutex
269F96:  BLX             pthread_mutex_destroy
269F9A:  ADDS            R0, R4, #4; attr
269F9C:  BLX             pthread_mutexattr_destroy
269FA0:  MOV             R0, R4; void *
269FA2:  BLX             _ZdlPv; operator delete(void *)
269FA6:  LDR             R0, =(billingMutex_ptr - 0x269FAC)
269FA8:  ADD             R0, PC; billingMutex_ptr
269FAA:  LDR             R4, [R0]; billingMutex
269FAC:  MOVS            R0, #0
269FAE:  STR             R0, [R4]
269FB0:  MOVS            R0, #1; bool
269FB2:  BLX             j__Z24AND_ClearAchievementDatab; AND_ClearAchievementData(bool)
269FB6:  LDR             R4, [R4]
269FB8:  CBZ             R4, loc_269FCC
269FBA:  MOV             R0, R4; mutex
269FBC:  BLX             pthread_mutex_destroy
269FC0:  ADDS            R0, R4, #4; attr
269FC2:  BLX             pthread_mutexattr_destroy
269FC6:  MOV             R0, R4; void *
269FC8:  BLX             _ZdlPv; operator delete(void *)
269FCC:  LDR             R0, =(fileMutex_ptr - 0x269FD2)
269FCE:  ADD             R0, PC; fileMutex_ptr
269FD0:  LDR             R0, [R0]; fileMutex
269FD2:  LDR             R4, [R0]
269FD4:  CBZ             R4, loc_269FE8
269FD6:  MOV             R0, R4; mutex
269FD8:  BLX             pthread_mutex_destroy
269FDC:  ADDS            R0, R4, #4; attr
269FDE:  BLX             pthread_mutexattr_destroy
269FE2:  MOV             R0, R4; void *
269FE4:  BLX             _ZdlPv; operator delete(void *)
269FE8:  LDR             R0, =(fileMutex_ptr - 0x269FF0)
269FEA:  MOVS            R1, #0
269FEC:  ADD             R0, PC; fileMutex_ptr
269FEE:  LDR             R0, [R0]; fileMutex
269FF0:  STR             R1, [R0]
269FF2:  B               loc_269FFC
269FF4:  MOVS            R0, #0
269FF6:  MOVS            R1, #0
269FF8:  BLX             j__Z19OS_ApplicationEvent11OSEventTypePv; OS_ApplicationEvent(OSEventType,void *)
269FFC:  MOVS            R0, #0
269FFE:  ADD             SP, SP, #0x10
26A000:  VPOP            {D8-D12}
26A004:  ADD             SP, SP, #4
26A006:  POP.W           {R8-R11}
26A00A:  POP             {R4-R7,PC}
