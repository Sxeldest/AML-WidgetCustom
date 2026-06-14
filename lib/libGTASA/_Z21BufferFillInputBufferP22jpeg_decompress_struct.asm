; =========================================================
; Game Engine Function: _Z21BufferFillInputBufferP22jpeg_decompress_struct
; Address            : 0x481E90 - 0x481EDA
; =========================================================

481E90:  PUSH            {R4-R7,LR}
481E92:  ADD             R7, SP, #0xC
481E94:  PUSH.W          {R8,R9,R11}
481E98:  MOV             R4, R0
481E9A:  LDR             R0, =(FrontEndMenuManager_ptr - 0x481EA8)
481E9C:  LDR.W           R8, =(dword_9EC2B0 - 0x481EAC)
481EA0:  MOV.W           R2, #0x32000; size_t
481EA4:  ADD             R0, PC; FrontEndMenuManager_ptr
481EA6:  LDR             R5, =(unk_9BA2B0 - 0x481EB4)
481EA8:  ADD             R8, PC; dword_9EC2B0
481EAA:  MOV.W           R9, #0x32000
481EAE:  LDR             R0, [R0]; FrontEndMenuManager
481EB0:  ADD             R5, PC; unk_9BA2B0
481EB2:  LDR.W           R6, [R8]
481EB6:  LDR             R0, [R0,#(dword_98F154 - 0x98F0F8)]
481EB8:  ADDS            R1, R0, R6; void *
481EBA:  MOV             R0, R5; void *
481EBC:  BLX             memcpy_1
481EC0:  LDR             R0, [R4,#0x18]
481EC2:  STR             R5, [R0]
481EC4:  LDR             R0, [R4,#0x18]
481EC6:  STR.W           R9, [R0,#4]
481ECA:  ADD.W           R0, R6, #0x32000
481ECE:  STR.W           R0, [R8]
481ED2:  MOVS            R0, #1
481ED4:  POP.W           {R8,R9,R11}
481ED8:  POP             {R4-R7,PC}
