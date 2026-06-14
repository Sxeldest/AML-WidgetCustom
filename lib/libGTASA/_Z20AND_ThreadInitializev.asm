; =========================================================
; Game Engine Function: _Z20AND_ThreadInitializev
; Address            : 0x26A144 - 0x26A18E
; =========================================================

26A144:  LDR             R0, =(ANDThread_Initted_ptr - 0x26A14A)
26A146:  ADD             R0, PC; ANDThread_Initted_ptr
26A148:  LDR             R0, [R0]; ANDThread_Initted
26A14A:  LDRB            R0, [R0]
26A14C:  CMP             R0, #0
26A14E:  IT NE
26A150:  BXNE            LR
26A152:  PUSH            {R4,R6,R7,LR}
26A154:  ADD             R7, SP, #0x10+var_8
26A156:  LDR             R0, =(ANDThreadStorageKey_ptr - 0x26A15E)
26A158:  LDR             R1, =(_ZN13ANDThreadData7DestroyEPv_ptr - 0x26A160)
26A15A:  ADD             R0, PC; ANDThreadStorageKey_ptr
26A15C:  ADD             R1, PC; _ZN13ANDThreadData7DestroyEPv_ptr
26A15E:  LDR             R4, [R0]; ANDThreadStorageKey
26A160:  LDR             R1, [R1]; ANDThreadData::Destroy(void *) ; destr_function
26A162:  MOV             R0, R4; key
26A164:  BLX             pthread_key_create
26A168:  MOVS            R0, #0xC; byte_count
26A16A:  BLX             malloc
26A16E:  MOV             R1, R0; pointer
26A170:  MOVS            R0, #0
26A172:  STRD.W          R0, R0, [R1]
26A176:  STR             R0, [R1,#8]
26A178:  LDR             R0, [R4]; key
26A17A:  BLX             pthread_setspecific
26A17E:  LDR             R0, =(ANDThread_Initted_ptr - 0x26A186)
26A180:  MOVS            R1, #1
26A182:  ADD             R0, PC; ANDThread_Initted_ptr
26A184:  LDR             R0, [R0]; ANDThread_Initted
26A186:  STRB            R1, [R0]
26A188:  POP.W           {R4,R6,R7,LR}
26A18C:  BX              LR
