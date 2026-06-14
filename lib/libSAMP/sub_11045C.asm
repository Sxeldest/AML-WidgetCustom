; =========================================================
; Game Engine Function: sub_11045C
; Address            : 0x11045C - 0x110492
; =========================================================

11045C:  PUSH            {R4-R7,LR}
11045E:  ADD             R7, SP, #0xC
110460:  PUSH.W          {R8}
110464:  SUB             SP, SP, #0x10
110466:  MOV             R4, R3
110468:  MOV             R8, R2
11046A:  MOV             R6, R1
11046C:  MOV             R5, R0
11046E:  BL              sub_110498
110472:  LDR             R0, =(unk_2633B0 - 0x11047E)
110474:  MOV             R3, R8
110476:  LDRD.W          R1, R2, [R7,#arg_0]
11047A:  ADD             R0, PC; unk_2633B0
11047C:  STR             R2, [SP,#0x20+var_18]
11047E:  MOV             R2, R6
110480:  STRD.W          R4, R1, [SP,#0x20+var_20]
110484:  MOV             R1, R5
110486:  BL              sub_110564
11048A:  ADD             SP, SP, #0x10
11048C:  POP.W           {R8}
110490:  POP             {R4-R7,PC}
