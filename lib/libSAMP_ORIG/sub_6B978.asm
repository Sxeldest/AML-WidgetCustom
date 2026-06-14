; =========================================================
; Game Engine Function: sub_6B978
; Address            : 0x6B978 - 0x6B9EC
; =========================================================

6B978:  PUSH            {R4,R6,R7,LR}
6B97A:  ADD             R7, SP, #8
6B97C:  SUB             SP, SP, #0x118
6B97E:  LDR             R1, =(aSampOrig - 0x6B98A); "SAMP_ORIG" ...
6B980:  MOV             R4, R0
6B982:  LDR             R2, =(aRpcScrdisabler - 0x6B98C); "RPC: ScrDisableRemoteVehicleCollisions" ...
6B984:  LDR             R0, =(__stack_chk_guard_ptr - 0x6B98E)
6B986:  ADD             R1, PC; "SAMP_ORIG"
6B988:  ADD             R2, PC; "RPC: ScrDisableRemoteVehicleCollisions"
6B98A:  ADD             R0, PC; __stack_chk_guard_ptr
6B98C:  LDR             R0, [R0]; __stack_chk_guard
6B98E:  LDR             R0, [R0]
6B990:  STR             R0, [SP,#0x120+var_C]
6B992:  MOVS            R0, #4; prio
6B994:  BLX             __android_log_print
6B998:  LDRD.W          R1, R0, [R4]; src
6B99C:  MOVS            R2, #1
6B99E:  ADD.W           R2, R2, R0,LSR#3; size
6B9A2:  MOV             R0, SP; int
6B9A4:  MOVS            R3, #0
6B9A6:  BL              sub_86BA8
6B9AA:  LDR             R1, [SP,#0x120+var_120]
6B9AC:  LDR             R0, [SP,#0x120+var_118]
6B9AE:  CMP             R0, R1
6B9B0:  BGE             loc_6B9C8
6B9B2:  LDR             R1, [SP,#0x120+var_114]
6B9B4:  ASRS            R2, R0, #3
6B9B6:  LDRB            R1, [R1,R2]
6B9B8:  ADDS            R2, R0, #1
6B9BA:  AND.W           R0, R0, #7
6B9BE:  STR             R2, [SP,#0x120+var_118]
6B9C0:  LSL.W           R0, R1, R0
6B9C4:  UXTB            R0, R0
6B9C6:  LSRS            R1, R0, #7
6B9C8:  LDR             R0, =(off_114B04 - 0x6B9CE)
6B9CA:  ADD             R0, PC; off_114B04
6B9CC:  LDR             R0, [R0]; byte_117634
6B9CE:  STRB            R1, [R0]
6B9D0:  MOV             R0, SP
6B9D2:  BL              sub_86BF8
6B9D6:  LDR             R0, [SP,#0x120+var_C]
6B9D8:  LDR             R1, =(__stack_chk_guard_ptr - 0x6B9DE)
6B9DA:  ADD             R1, PC; __stack_chk_guard_ptr
6B9DC:  LDR             R1, [R1]; __stack_chk_guard
6B9DE:  LDR             R1, [R1]
6B9E0:  CMP             R1, R0
6B9E2:  ITT EQ
6B9E4:  ADDEQ           SP, SP, #0x118
6B9E6:  POPEQ           {R4,R6,R7,PC}
6B9E8:  BLX             __stack_chk_fail
