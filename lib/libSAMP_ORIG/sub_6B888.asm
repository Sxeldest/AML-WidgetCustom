; =========================================================
; Game Engine Function: sub_6B888
; Address            : 0x6B888 - 0x6B940
; =========================================================

6B888:  PUSH            {R4,R5,R7,LR}
6B88A:  ADD             R7, SP, #8
6B88C:  SUB             SP, SP, #0x120
6B88E:  MOV             R4, R0
6B890:  LDR             R0, =(__stack_chk_guard_ptr - 0x6B898)
6B892:  MOVS            R3, #0
6B894:  ADD             R0, PC; __stack_chk_guard_ptr
6B896:  LDR             R0, [R0]; __stack_chk_guard
6B898:  LDR             R0, [R0]
6B89A:  STR             R0, [SP,#0x128+var_C]
6B89C:  LDRD.W          R1, R0, [R4]; src
6B8A0:  ASRS            R2, R0, #0x1F
6B8A2:  ADD.W           R0, R0, R2,LSR#29
6B8A6:  MOVS            R2, #1
6B8A8:  ADD.W           R2, R2, R0,ASR#3; size
6B8AC:  ADD             R0, SP, #0x128+var_120; int
6B8AE:  BL              sub_86BA8
6B8B2:  ADD.W           R1, SP, #0x128+var_121; int
6B8B6:  MOVS            R2, #8
6B8B8:  MOVS            R3, #1
6B8BA:  BL              sub_86E30
6B8BE:  LDRB.W          R3, [SP,#0x128+var_121]
6B8C2:  LDR             R1, =(aSampOrig - 0x6B8CA); "SAMP_ORIG" ...
6B8C4:  LDR             R2, =(aRpcSetplayersp - 0x6B8CC); "RPC: SetPlayerSpecialAction(%u)" ...
6B8C6:  ADD             R1, PC; "SAMP_ORIG"
6B8C8:  ADD             R2, PC; "RPC: SetPlayerSpecialAction(%u)"
6B8CA:  MOVS            R0, #4; prio
6B8CC:  BLX             __android_log_print
6B8D0:  LDR             R0, =(off_114AD8 - 0x6B8D6)
6B8D2:  ADD             R0, PC; off_114AD8
6B8D4:  LDR             R0, [R0]; dword_1A4434
6B8D6:  LDR             R0, [R0]
6B8D8:  LDR.W           R0, [R0,#0x3B0]
6B8DC:  LDR             R5, [R0]
6B8DE:  CBNZ            R5, loc_6B8EE
6B8E0:  LDR             R1, =(aSampOrig - 0x6B8E8); "SAMP_ORIG" ...
6B8E2:  LDR             R2, =(aInvalidCplayer - 0x6B8EA); "Invalid CPlayerPool Pointer!" ...
6B8E4:  ADD             R1, PC; "SAMP_ORIG"
6B8E6:  ADD             R2, PC; "Invalid CPlayerPool Pointer!"
6B8E8:  MOVS            R0, #4; prio
6B8EA:  BLX             __android_log_print
6B8EE:  MOVW            R0, #0x13BC
6B8F2:  LDR             R0, [R5,R0]
6B8F4:  LDR             R0, [R0,#0x1C]
6B8F6:  CBNZ            R0, loc_6B906
6B8F8:  LDR             R1, =(aSampOrig - 0x6B900); "SAMP_ORIG" ...
6B8FA:  LDR             R2, =(aInvalidCplayer_0 - 0x6B902); "Invalid CPlayerPed Pointer!" ...
6B8FC:  ADD             R1, PC; "SAMP_ORIG"
6B8FE:  ADD             R2, PC; "Invalid CPlayerPed Pointer!"
6B900:  MOVS            R0, #4; prio
6B902:  BLX             __android_log_print
6B906:  LDRB.W          R0, [SP,#0x128+var_121]
6B90A:  CMP             R0, #0xA
6B90C:  BNE             loc_6B912
6B90E:  MOVS            R0, #0xA
6B910:  B               loc_6B920
6B912:  LDR             R0, =(off_1A4424 - 0x6B918)
6B914:  ADD             R0, PC; off_1A4424
6B916:  LDR             R1, [R0]
6B918:  MOV             R0, R4
6B91A:  BLX             R1
6B91C:  LDRB.W          R0, [SP,#0x128+var_121]
6B920:  BL              sub_60F50
6B924:  ADD             R0, SP, #0x128+var_120
6B926:  BL              sub_86BF8
6B92A:  LDR             R0, [SP,#0x128+var_C]
6B92C:  LDR             R1, =(__stack_chk_guard_ptr - 0x6B932)
6B92E:  ADD             R1, PC; __stack_chk_guard_ptr
6B930:  LDR             R1, [R1]; __stack_chk_guard
6B932:  LDR             R1, [R1]
6B934:  CMP             R1, R0
6B936:  ITT EQ
6B938:  ADDEQ           SP, SP, #0x120
6B93A:  POPEQ           {R4,R5,R7,PC}
6B93C:  BLX             __stack_chk_fail
