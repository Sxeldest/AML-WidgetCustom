; =========================================================
; Game Engine Function: _ZN14CCarFXRenderer22IsCCPCPipelineAttachedEP8RpAtomic
; Address            : 0x2C9FC6 - 0x2C9FE0
; =========================================================

2C9FC6:  PUSH            {R7,LR}
2C9FC8:  MOV             R7, SP
2C9FCA:  BLX             j__Z13GetPipelineIDP8RpAtomic; GetPipelineID(RpAtomic *)
2C9FCE:  MOVS            R2, #0x9A
2C9FD0:  MOVS            R1, #0
2C9FD2:  MOVT            R2, #0x53F2
2C9FD6:  CMP             R0, R2
2C9FD8:  IT EQ
2C9FDA:  MOVEQ           R1, #1
2C9FDC:  MOV             R0, R1
2C9FDE:  POP             {R7,PC}
