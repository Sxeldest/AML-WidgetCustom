; =========================================================
; Game Engine Function: _Z21OS_ApplicationPreinitv
; Address            : 0x287270 - 0x2872A4
; =========================================================

287270:  PUSH            {R7,LR}
287272:  MOV             R7, SP
287274:  LDR             R1, =(byte_61CD7E - 0x28727C)
287276:  ADR             R0, aIsamazonbuild; "IsAmazonBuild"
287278:  ADD             R1, PC; byte_61CD7E ; char *
28727A:  BLX             j__Z20OS_ServiceAppCommandPKcS0_; OS_ServiceAppCommand(char const*,char const*)
28727E:  CMP             R0, #1
287280:  IT EQ
287282:  BLXEQ           j__Z17SetupDataDownloadv; SetupDataDownload(void)
287286:  BLX             j__Z14AND_GetJNIFuncv; AND_GetJNIFunc(void)
28728A:  BLX             _Z13SetJNEEnvFuncPFPvvE; SetJNEEnvFunc(void * (*)(void))
28728E:  MOVS            R0, #1; int
287290:  BLX             j__Z16OS_GetDeviceInfoi; OS_GetDeviceInfo(int)
287294:  LDR             R1, =(hasTouchScreen_ptr - 0x2872A0)
287296:  CMP             R0, #0
287298:  IT NE
28729A:  MOVNE           R0, #1
28729C:  ADD             R1, PC; hasTouchScreen_ptr
28729E:  LDR             R1, [R1]; hasTouchScreen
2872A0:  STRB            R0, [R1]
2872A2:  POP             {R7,PC}
