; =========================================================
; Game Engine Function: sub_87B50
; Address            : 0x87B50 - 0x87B68
; =========================================================

87B50:  PUSH            {R4,R6,R7,LR}
87B52:  ADD             R7, SP, #8
87B54:  MOV             R4, R0
87B56:  LDR             R0, [R0,#8]
87B58:  CMP             R0, #0
87B5A:  ITTT NE
87B5C:  LDRNE           R0, [R4]; void *
87B5E:  CMPNE           R0, #0
87B60:  BLXNE           j__ZdaPv; operator delete[](void *)
87B64:  MOV             R0, R4
87B66:  POP             {R4,R6,R7,PC}
