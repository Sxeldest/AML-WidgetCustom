; =========================================================
; Game Engine Function: sub_13B1F8
; Address            : 0x13B1F8 - 0x13B24A
; =========================================================

13B1F8:  PUSH            {R4-R7,LR}
13B1FA:  ADD             R7, SP, #0xC
13B1FC:  PUSH.W          {R8,R9,R11}
13B200:  MOV             R4, R0
13B202:  MOVS            R0, #0x1C; unsigned int
13B204:  MOV             R8, R2
13B206:  MOV             R5, R1
13B208:  BLX             j__Znwj; operator new(uint)
13B20C:  MOV             R6, R0
13B20E:  LDR             R0, [R7,#arg_0]
13B210:  LDR             R1, =(byte_8F794 - 0x13B22C)
13B212:  MOV.W           R9, #0
13B216:  ADD.W           R2, R5, #8
13B21A:  STR             R2, [R4,#4]
13B21C:  LDR             R0, [R0]
13B21E:  VMOV.I32        Q8, #0
13B222:  STRB.W          R9, [R4,#8]
13B226:  MOVS            R2, #4
13B228:  ADD             R1, PC; byte_8F794 ; s
13B22A:  STR             R6, [R4]
13B22C:  LDRH            R0, [R0]
13B22E:  STRH            R0, [R6,#8]
13B230:  ADD.W           R0, R6, #0xC
13B234:  VST1.32         {D16-D17}, [R0],R2; int
13B238:  BL              sub_DC6DC
13B23C:  MOVS            R0, #1
13B23E:  STRD.W          R9, R8, [R6]
13B242:  STRB            R0, [R4,#8]
13B244:  POP.W           {R8,R9,R11}
13B248:  POP             {R4-R7,PC}
