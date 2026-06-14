; =========================================================
; Game Engine Function: sub_13B6E8
; Address            : 0x13B6E8 - 0x13B73A
; =========================================================

13B6E8:  PUSH            {R4-R7,LR}
13B6EA:  ADD             R7, SP, #0xC
13B6EC:  PUSH.W          {R8,R9,R11}
13B6F0:  MOV             R4, R0
13B6F2:  MOVS            R0, #0x1C; unsigned int
13B6F4:  MOV             R8, R2
13B6F6:  MOV             R5, R1
13B6F8:  BLX             j__Znwj; operator new(uint)
13B6FC:  MOV             R6, R0
13B6FE:  LDR             R0, [R7,#arg_0]
13B700:  LDR             R1, =(byte_8F794 - 0x13B71C)
13B702:  MOV.W           R9, #0
13B706:  ADD.W           R2, R5, #8
13B70A:  STR             R2, [R4,#4]
13B70C:  LDR             R0, [R0]
13B70E:  VMOV.I32        Q8, #0
13B712:  STRB.W          R9, [R4,#8]
13B716:  MOVS            R2, #4
13B718:  ADD             R1, PC; byte_8F794 ; s
13B71A:  STR             R6, [R4]
13B71C:  LDRH            R0, [R0]
13B71E:  STRH            R0, [R6,#8]
13B720:  ADD.W           R0, R6, #0xC
13B724:  VST1.32         {D16-D17}, [R0],R2; int
13B728:  BL              sub_DC6DC
13B72C:  MOVS            R0, #1
13B72E:  STRD.W          R9, R8, [R6]
13B732:  STRB            R0, [R4,#8]
13B734:  POP.W           {R8,R9,R11}
13B738:  POP             {R4-R7,PC}
