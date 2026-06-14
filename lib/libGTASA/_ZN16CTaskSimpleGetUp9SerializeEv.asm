; =========================================================
; Game Engine Function: _ZN16CTaskSimpleGetUp9SerializeEv
; Address            : 0x53291C - 0x532980
; =========================================================

53291C:  PUSH            {R4-R7,LR}
53291E:  ADD             R7, SP, #0xC
532920:  PUSH.W          {R11}
532924:  MOV             R4, R0
532926:  LDR             R0, [R4]
532928:  LDR             R1, [R0,#0x14]
53292A:  MOV             R0, R4
53292C:  BLX             R1
53292E:  MOV             R5, R0
532930:  LDR             R0, =(UseDataFence_ptr - 0x532936)
532932:  ADD             R0, PC; UseDataFence_ptr
532934:  LDR             R0, [R0]; UseDataFence
532936:  LDRB            R0, [R0]
532938:  CMP             R0, #0
53293A:  IT NE
53293C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
532940:  MOVS            R0, #4; byte_count
532942:  BLX             malloc
532946:  MOV             R6, R0
532948:  MOVS            R1, #byte_4; void *
53294A:  STR             R5, [R6]
53294C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
532950:  MOV             R0, R6; p
532952:  BLX             free
532956:  LDR             R0, [R4]
532958:  LDR             R1, [R0,#0x14]
53295A:  MOV             R0, R4
53295C:  BLX             R1
53295E:  CMP             R0, #0xCD
532960:  ITT EQ
532962:  POPEQ.W         {R11}
532966:  POPEQ           {R4-R7,PC}
532968:  LDR             R0, [R4]
53296A:  LDR             R1, [R0,#0x14]
53296C:  MOV             R0, R4
53296E:  BLX             R1
532970:  MOV             R1, R0; int
532972:  MOVS            R0, #0xCD; int
532974:  POP.W           {R11}
532978:  POP.W           {R4-R7,LR}
53297C:  B.W             sub_1941D4
