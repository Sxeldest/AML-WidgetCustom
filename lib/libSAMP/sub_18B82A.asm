; =========================================================
; Game Engine Function: sub_18B82A
; Address            : 0x18B82A - 0x18B8AE
; =========================================================

18B82A:  PUSH            {R4-R7,LR}
18B82C:  ADD             R7, SP, #0xC
18B82E:  PUSH.W          {R8-R10}
18B832:  MOV             R4, R0
18B834:  LDRD.W          R5, R0, [R0,#4]
18B838:  MOV             R9, R2
18B83A:  MOV             R8, R1
18B83C:  CMP             R5, R0
18B83E:  BNE             loc_18B88A
18B840:  MOVW            R1, #0xFFFE
18B844:  LSLS            R0, R5, #1
18B846:  MOVT            R1, #0x3FFF
18B84A:  CMP             R5, #0
18B84C:  IT EQ
18B84E:  MOVEQ           R0, #0x10
18B850:  ANDS            R1, R0
18B852:  STR             R0, [R4,#8]
18B854:  SUBS            R1, R0, R1
18B856:  MOV.W           R0, R0,LSL#2
18B85A:  IT NE
18B85C:  MOVNE           R1, #1
18B85E:  CMP             R1, #0
18B860:  IT NE
18B862:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
18B866:  BLX             j__Znaj; operator new[](uint)
18B86A:  LDR.W           R10, [R4]
18B86E:  LSLS            R2, R5, #2; n
18B870:  MOV             R6, R0
18B872:  MOV             R1, R10; src
18B874:  BLX             j_memcpy
18B878:  CMP.W           R10, #0
18B87C:  BEQ             loc_18B886
18B87E:  MOV             R0, R10; void *
18B880:  BLX             j__ZdaPv; operator delete[](void *)
18B884:  LDR             R5, [R4,#4]
18B886:  STR             R6, [R4]
18B888:  B               loc_18B88C
18B88A:  LDR             R6, [R4]
18B88C:  SUB.W           R2, R5, R9
18B890:  ADD.W           R1, R6, R9,LSL#2; src
18B894:  ADDS            R0, R1, #4; dest
18B896:  LSLS            R2, R2, #2; n
18B898:  BLX             j_memmove
18B89C:  LDRD.W          R0, R1, [R4]
18B8A0:  STR.W           R8, [R0,R9,LSL#2]
18B8A4:  ADDS            R0, R1, #1
18B8A6:  STR             R0, [R4,#4]
18B8A8:  POP.W           {R8-R10}
18B8AC:  POP             {R4-R7,PC}
