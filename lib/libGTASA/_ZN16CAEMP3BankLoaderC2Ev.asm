; =========================================================
; Game Engine Function: _ZN16CAEMP3BankLoaderC2Ev
; Address            : 0x27DA94 - 0x27DB0A
; =========================================================

27DA94:  PUSH            {R4-R7,LR}
27DA96:  ADD             R7, SP, #0xC
27DA98:  PUSH.W          {R11}
27DA9C:  SUB             SP, SP, #8
27DA9E:  MOV             R4, R0
27DAA0:  ADDS            R0, R4, #4; this
27DAA2:  BLX             j__ZN13CAEBankLoaderC2Ev; CAEBankLoader::CAEBankLoader(void)
27DAA6:  LDR             R1, =(_ZTV16CAEMP3BankLoader_ptr - 0x27DAB6)
27DAA8:  VMOV.I32        Q8, #0
27DAAC:  LDR             R0, =(loaderSemaphore_ptr - 0x27DABA)
27DAAE:  ADD.W           R2, R4, #0x1C
27DAB2:  ADD             R1, PC; _ZTV16CAEMP3BankLoader_ptr
27DAB4:  MOVS            R5, #0
27DAB6:  ADD             R0, PC; loaderSemaphore_ptr
27DAB8:  VST1.32         {D16-D17}, [R2]
27DABC:  LDR             R1, [R1]; `vtable for'CAEMP3BankLoader ...
27DABE:  STRB            R5, [R4,#0x19]
27DAC0:  LDR             R6, [R0]; loaderSemaphore
27DAC2:  ADD.W           R0, R1, #8
27DAC6:  STRD.W          R5, R5, [R4,#0x2C]
27DACA:  STR             R0, [R4]
27DACC:  BLX             j__Z18OS_SemaphoreCreatev; OS_SemaphoreCreate(void)
27DAD0:  STR             R0, [R6]
27DAD2:  ADR             R0, aBankloadermute; "BankLoaderMutex"
27DAD4:  BLX             j__Z14OS_MutexCreatePKc; OS_MutexCreate(char const*)
27DAD8:  LDR             R1, =(loaderMutex_ptr - 0x27DAE2)
27DADA:  ADR             R3, aBankloader; "BankLoader"
27DADC:  LDR             R2, =(_Z17BankLoadingThreadPv_ptr - 0x27DAE6)
27DADE:  ADD             R1, PC; loaderMutex_ptr
27DAE0:  STR             R5, [SP,#0x18+var_14]
27DAE2:  ADD             R2, PC; _Z17BankLoadingThreadPv_ptr
27DAE4:  LDR             R1, [R1]; loaderMutex
27DAE6:  STR             R0, [R1]
27DAE8:  MOVS            R1, #1
27DAEA:  LDR             R0, [R2]; BankLoadingThread(void *)
27DAEC:  MOVS            R2, #4
27DAEE:  STR             R1, [SP,#0x18+var_18]
27DAF0:  MOV             R1, R4
27DAF2:  BLX             j__Z15OS_ThreadLaunchPFjPvES_jPKci16OSThreadPriority; OS_ThreadLaunch(uint (*)(void *),void *,uint,char const*,int,OSThreadPriority)
27DAF6:  LDR             R1, =(loaderThread_ptr - 0x27DAFC)
27DAF8:  ADD             R1, PC; loaderThread_ptr
27DAFA:  LDR             R1, [R1]; loaderThread
27DAFC:  STR             R0, [R1]
27DAFE:  MOV             R0, R4
27DB00:  STRB            R5, [R4,#0x18]
27DB02:  ADD             SP, SP, #8
27DB04:  POP.W           {R11}
27DB08:  POP             {R4-R7,PC}
