; =========================================================
; Game Engine Function: sub_482500
; Address            : 0x482500 - 0x48251C
; =========================================================

482500:  PUSH            {R4,R6,R7,LR}
482502:  ADD             R7, SP, #8
482504:  MOV             R4, R0
482506:  LDR             R0, =(dword_6AF47C - 0x48250E)
482508:  MOV             R3, R1
48250A:  ADD             R0, PC; dword_6AF47C
48250C:  LDR             R0, [R0]
48250E:  ADDS            R1, R2, R0; void *
482510:  MOV             R0, R4; int
482512:  MOV             R2, R3; size_t
482514:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
482518:  MOV             R0, R4
48251A:  POP             {R4,R6,R7,PC}
