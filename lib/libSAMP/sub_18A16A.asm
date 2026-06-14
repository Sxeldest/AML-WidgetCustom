; =========================================================
; Game Engine Function: sub_18A16A
; Address            : 0x18A16A - 0x18A188
; =========================================================

18A16A:  PUSH            {R4,R6,R7,LR}
18A16C:  ADD             R7, SP, #8
18A16E:  MOVS            R1, #0
18A170:  MOV             R4, R0
18A172:  BL              sub_18A188
18A176:  LDR             R0, [R4,#8]
18A178:  CBZ             R0, loc_18A184
18A17A:  LDR             R0, [R4]
18A17C:  CBZ             R0, loc_18A184
18A17E:  SUBS            R0, #8; void *
18A180:  BLX             j__ZdaPv; operator delete[](void *)
18A184:  MOV             R0, R4
18A186:  POP             {R4,R6,R7,PC}
