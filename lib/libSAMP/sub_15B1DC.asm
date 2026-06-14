; =========================================================
; Game Engine Function: sub_15B1DC
; Address            : 0x15B1DC - 0x15B21C
; =========================================================

15B1DC:  PUSH            {R4-R7,LR}
15B1DE:  ADD             R7, SP, #0xC
15B1E0:  PUSH.W          {R8}
15B1E4:  SUB             SP, SP, #8
15B1E6:  VMOV.I32        Q8, #0
15B1EA:  MOV             R4, R0
15B1EC:  MOV             R5, R1
15B1EE:  MOV.W           R1, #0x3F800000
15B1F2:  VST1.32         {D16-D17}, [R0]!
15B1F6:  STR             R1, [R0]
15B1F8:  CBZ             R2, loc_15B212
15B1FA:  LSLS            R6, R2, #3
15B1FC:  MOV             R8, SP
15B1FE:  MOV             R0, R8
15B200:  MOV             R1, R4
15B202:  MOV             R2, R5
15B204:  MOV             R3, R5
15B206:  BL              sub_15B79A
15B20A:  SUBS            R6, #8
15B20C:  ADD.W           R5, R5, #8
15B210:  BNE             loc_15B1FE
15B212:  MOV             R0, R4
15B214:  ADD             SP, SP, #8
15B216:  POP.W           {R8}
15B21A:  POP             {R4-R7,PC}
