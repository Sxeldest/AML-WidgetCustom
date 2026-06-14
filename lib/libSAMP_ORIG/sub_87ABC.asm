; =========================================================
; Game Engine Function: sub_87ABC
; Address            : 0x87ABC - 0x87B50
; =========================================================

87ABC:  PUSH            {R4-R7,LR}
87ABE:  ADD             R7, SP, #0xC
87AC0:  PUSH.W          {R8-R11}
87AC4:  SUB             SP, SP, #4
87AC6:  MOV             R4, R0
87AC8:  LDRD.W          R5, R0, [R0,#4]
87ACC:  MOV             R11, R3
87ACE:  MOV             R8, R2
87AD0:  MOV             R9, R1
87AD2:  CMP             R5, R0
87AD4:  BNE             loc_87B20
87AD6:  MOVW            R1, #0xFFFE
87ADA:  LSLS            R0, R5, #1
87ADC:  MOVT            R1, #0x1FFF
87AE0:  CMP             R5, #0
87AE2:  IT EQ
87AE4:  MOVEQ           R0, #0x10
87AE6:  ANDS            R1, R0
87AE8:  STR             R0, [R4,#8]
87AEA:  SUBS            R1, R0, R1
87AEC:  MOV.W           R0, R0,LSL#3
87AF0:  IT NE
87AF2:  MOVNE           R1, #1
87AF4:  CMP             R1, #0
87AF6:  IT NE
87AF8:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
87AFC:  BLX             j__Znaj; operator new[](uint)
87B00:  LDR.W           R10, [R4]
87B04:  LSLS            R2, R5, #3; n
87B06:  MOV             R6, R0
87B08:  MOV             R1, R10; src
87B0A:  BLX             j_memcpy
87B0E:  CMP.W           R10, #0
87B12:  BEQ             loc_87B1C
87B14:  MOV             R0, R10; void *
87B16:  BLX             j__ZdaPv; operator delete[](void *)
87B1A:  LDR             R5, [R4,#4]
87B1C:  STR             R6, [R4]
87B1E:  B               loc_87B22
87B20:  LDR             R6, [R4]
87B22:  SUB.W           R2, R5, R11
87B26:  ADD.W           R1, R6, R11,LSL#3; src
87B2A:  ADD.W           R0, R1, #8; dest
87B2E:  LSLS            R2, R2, #3; n
87B30:  BLX             j_memmove
87B34:  LDR             R0, [R4]
87B36:  STR.W           R9, [R0,R11,LSL#3]
87B3A:  ADD.W           R0, R0, R11,LSL#3
87B3E:  STR.W           R8, [R0,#4]
87B42:  LDR             R0, [R4,#4]
87B44:  ADDS            R0, #1
87B46:  STR             R0, [R4,#4]
87B48:  ADD             SP, SP, #4
87B4A:  POP.W           {R8-R11}
87B4E:  POP             {R4-R7,PC}
