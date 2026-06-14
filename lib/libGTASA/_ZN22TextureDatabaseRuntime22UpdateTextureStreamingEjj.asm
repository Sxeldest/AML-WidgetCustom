; =========================================================
; Game Engine Function: _ZN22TextureDatabaseRuntime22UpdateTextureStreamingEjj
; Address            : 0x1E98B4 - 0x1E9946
; =========================================================

1E98B4:  PUSH            {R4-R7,LR}
1E98B6:  ADD             R7, SP, #0xC
1E98B8:  PUSH.W          {R8-R11}
1E98BC:  SUB             SP, SP, #4
1E98BE:  MOV             R9, R2
1E98C0:  MOV             R10, R1
1E98C2:  MOV             R8, R0
1E98C4:  CMP.W           R9, #2
1E98C8:  BEQ             loc_1E98DE
1E98CA:  CMP.W           R9, #1
1E98CE:  BEQ             loc_1E98E4
1E98D0:  CMP.W           R9, #0
1E98D4:  ITE EQ
1E98D6:  ADDEQ.W         R5, R8, #0x78 ; 'x'
1E98DA:  MOVNE           R5, #0
1E98DC:  B               loc_1E98E8
1E98DE:  ADD.W           R5, R8, #0x90
1E98E2:  B               loc_1E98E8
1E98E4:  ADD.W           R5, R8, #0x84
1E98E8:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
1E98EC:  LDR             R2, [R5,#4]
1E98EE:  MOVS            R6, #0
1E98F0:  CMP             R2, #0
1E98F2:  BEQ             loc_1E993C
1E98F4:  MOV             R11, #0xFFFFFFFC
1E98F8:  LDR             R0, [R5,#8]; dest
1E98FA:  CMP.W           R9, #2
1E98FE:  BNE             loc_1E990A
1E9900:  ADD.W           R0, R0, R2,LSL#2
1E9904:  LDR.W           R4, [R0,#-4]
1E9908:  B               loc_1E991A
1E990A:  MOV             R1, R0
1E990C:  ADD.W           R2, R11, R2,LSL#2; n
1E9910:  LDR.W           R4, [R1],#4; src
1E9914:  BLX             memmove_1
1E9918:  LDR             R2, [R5,#4]
1E991A:  SUBS            R0, R2, #1
1E991C:  STR             R0, [R5,#4]
1E991E:  MOV             R0, R8; this
1E9920:  MOV             R1, R4; unsigned int
1E9922:  BLX             j__ZN22TextureDatabaseRuntime15LoadFullTextureEj; TextureDatabaseRuntime::LoadFullTexture(uint)
1E9926:  ADD             R6, R0
1E9928:  CMP.W           R10, #0x2D00000
1E992C:  IT NE
1E992E:  CMPNE           R6, R10
1E9930:  BHI             loc_1E993C
1E9932:  BLX             j__Z12CheckForPumpv; CheckForPump(void)
1E9936:  LDR             R2, [R5,#4]
1E9938:  CMP             R2, #0
1E993A:  BNE             loc_1E98F8
1E993C:  MOV             R0, R6
1E993E:  ADD             SP, SP, #4
1E9940:  POP.W           {R8-R11}
1E9944:  POP             {R4-R7,PC}
