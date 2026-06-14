; =========================================================
; Game Engine Function: _Z11NVHHDDSFreeP12NVHHDDSImage
; Address            : 0x274B58 - 0x274B78
; =========================================================

274B58:  PUSH            {R4,R6,R7,LR}
274B5A:  ADD             R7, SP, #8
274B5C:  MOV             R4, R0
274B5E:  CMP             R4, #0
274B60:  IT EQ
274B62:  POPEQ           {R4,R6,R7,PC}
274B64:  LDR             R0, [R4,#0x28]; void *
274B66:  CMP             R0, #0
274B68:  IT NE
274B6A:  BLXNE           _ZdaPv; operator delete[](void *)
274B6E:  MOV             R0, R4; void *
274B70:  POP.W           {R4,R6,R7,LR}
274B74:  B.W             j__ZdlPv; operator delete(void *)
