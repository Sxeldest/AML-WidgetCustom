; =========================================================
; Game Engine Function: _ZN23CTaskSimpleWaitForPizza9SerializeEv
; Address            : 0x4F3828 - 0x4F388C
; =========================================================

4F3828:  PUSH            {R4-R7,LR}
4F382A:  ADD             R7, SP, #0xC
4F382C:  PUSH.W          {R11}
4F3830:  MOV             R4, R0
4F3832:  LDR             R0, [R4]
4F3834:  LDR             R1, [R0,#0x14]
4F3836:  MOV             R0, R4
4F3838:  BLX             R1
4F383A:  MOV             R5, R0
4F383C:  LDR             R0, =(UseDataFence_ptr - 0x4F3842)
4F383E:  ADD             R0, PC; UseDataFence_ptr
4F3840:  LDR             R0, [R0]; UseDataFence
4F3842:  LDRB            R0, [R0]
4F3844:  CMP             R0, #0
4F3846:  IT NE
4F3848:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F384C:  MOVS            R0, #4; byte_count
4F384E:  BLX             malloc
4F3852:  MOV             R6, R0
4F3854:  MOVS            R1, #byte_4; void *
4F3856:  STR             R5, [R6]
4F3858:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F385C:  MOV             R0, R6; p
4F385E:  BLX             free
4F3862:  LDR             R0, [R4]
4F3864:  LDR             R1, [R0,#0x14]
4F3866:  MOV             R0, R4
4F3868:  BLX             R1
4F386A:  CMP             R0, #0xEF
4F386C:  ITT EQ
4F386E:  POPEQ.W         {R11}
4F3872:  POPEQ           {R4-R7,PC}
4F3874:  LDR             R0, [R4]
4F3876:  LDR             R1, [R0,#0x14]
4F3878:  MOV             R0, R4
4F387A:  BLX             R1
4F387C:  MOV             R1, R0; int
4F387E:  MOVS            R0, #0xEF; int
4F3880:  POP.W           {R11}
4F3884:  POP.W           {R4-R7,LR}
4F3888:  B.W             sub_1941D4
