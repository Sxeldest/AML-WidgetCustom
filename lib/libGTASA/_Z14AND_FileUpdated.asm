; =========================================================
; Game Engine Function: _Z14AND_FileUpdated
; Address            : 0x266920 - 0x2669AA
; =========================================================

266920:  PUSH            {R4,R5,R7,LR}
266922:  ADD             R7, SP, #8
266924:  MOV             R5, R0
266926:  LDR             R0, =(fileMutex_ptr - 0x26692E)
266928:  MOV             R4, R1
26692A:  ADD             R0, PC; fileMutex_ptr
26692C:  LDR             R0, [R0]; fileMutex
26692E:  LDR             R0, [R0]; mutex
266930:  BLX             pthread_mutex_lock
266934:  VLDR            D17, =0.1
266938:  VMOV            D16, R5, R4
26693C:  VCMPE.F64       D16, D17
266940:  VMRS            APSR_nzcv, FPSCR
266944:  IT LE
266946:  VMOVLE.F64      D16, D17
26694A:  VCMPE.F64       D16, #0.0
26694E:  VMRS            APSR_nzcv, FPSCR
266952:  BLE             loc_26699A
266954:  LDR             R0, =(_ZN11AndroidFile14firstAsyncFileE_ptr - 0x26695A)
266956:  ADD             R0, PC; _ZN11AndroidFile14firstAsyncFileE_ptr
266958:  LDR             R0, [R0]; AndroidFile::firstAsyncFile ...
26695A:  LDR             R5, [R0]; AndroidFile::firstAsyncFile
26695C:  CBZ             R5, loc_26699A
26695E:  VLDR            D17, =768.0
266962:  LDR             R0, =(MaxAsyncReadMultiply_ptr - 0x26696C)
266964:  VMUL.F64        D16, D16, D17
266968:  ADD             R0, PC; MaxAsyncReadMultiply_ptr
26696A:  LDR             R0, [R0]; MaxAsyncReadMultiply
26696C:  VLDR            D17, =1024.0
266970:  VMUL.F64        D16, D16, D17
266974:  VCVT.S32.F64    S0, D16
266978:  LDR             R0, [R0]
26697A:  VMOV            R1, S0
26697E:  MUL.W           R4, R0, R1
266982:  CMP.W           R4, #0x1400
266986:  IT LE
266988:  MOVLE.W         R4, #0x1400
26698C:  MOV             R0, R5; this
26698E:  MOV             R1, R4; int
266990:  BLX             j__ZN11AndroidFile10UpdateReadEi; AndroidFile::UpdateRead(int)
266994:  LDR             R5, [R5,#0x14]
266996:  CMP             R5, #0
266998:  BNE             loc_26698C
26699A:  LDR             R0, =(fileMutex_ptr - 0x2669A0)
26699C:  ADD             R0, PC; fileMutex_ptr
26699E:  LDR             R0, [R0]; fileMutex
2669A0:  LDR             R0, [R0]; mutex
2669A2:  POP.W           {R4,R5,R7,LR}
2669A6:  B.W             j_pthread_mutex_unlock
