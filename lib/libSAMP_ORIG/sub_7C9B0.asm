; =========================================================
; Game Engine Function: sub_7C9B0
; Address            : 0x7C9B0 - 0x7CA56
; =========================================================

7C9B0:  PUSH            {R4-R7,LR}
7C9B2:  ADD             R7, SP, #0xC
7C9B4:  PUSH.W          {R8,R9,R11}
7C9B8:  SUB             SP, SP, #0x20; float
7C9BA:  MOV             R4, R0
7C9BC:  LDR             R0, =(__stack_chk_guard_ptr - 0x7C9C6)
7C9BE:  MOV             R9, R2
7C9C0:  MOV             R8, R1
7C9C2:  ADD             R0, PC; __stack_chk_guard_ptr
7C9C4:  LDR             R0, [R0]; __stack_chk_guard
7C9C6:  LDR             R0, [R0]
7C9C8:  STR             R0, [SP,#0x38+var_1C]
7C9CA:  MOV             R0, R4
7C9CC:  BL              sub_7C360
7C9D0:  LDR             R0, =(_ZTV6Button - 0x7C9E0); `vtable for'Button ...
7C9D2:  VMOV.I32        Q8, #0
7C9D6:  ADD.W           R5, R4, #0x70 ; 'p'
7C9DA:  MOVS            R1, #0
7C9DC:  ADD             R0, PC; `vtable for'Button
7C9DE:  STR             R1, [R4,#0x68]
7C9E0:  ADDS            R0, #8
7C9E2:  STR             R0, [R4]
7C9E4:  MOV             R0, R5
7C9E6:  VST1.64         {D16-D17}, [R0]!
7C9EA:  VST1.64         {D16-D17}, [R0]
7C9EE:  MOVS            R0, #0x78 ; 'x'; unsigned int
7C9F0:  BLX             j__Znwj; operator new(uint)
7C9F4:  VMOV.F32        Q8, #1.0
7C9F8:  ADD             R2, SP, #0x38+var_30; int
7C9FA:  MOV             R6, R0
7C9FC:  VMOV            S0, R9
7CA00:  VST1.64         {D16-D17}, [R2]
7CA04:  MOV             R1, R8; int
7CA06:  MOVS            R3, #0; int
7CA08:  VSTR            S0, [SP,#0x38+var_38]
7CA0C:  BL              sub_7D380
7CA10:  STR             R6, [R4,#0x54]
7CA12:  MOV             R0, R4
7CA14:  MOV             R1, R6
7CA16:  BL              sub_7C73C
7CA1A:  LDR             R0, =(off_114CA4 - 0x7CA22)
7CA1C:  LDR             R1, =(off_114CA8 - 0x7CA24)
7CA1E:  ADD             R0, PC; off_114CA4
7CA20:  ADD             R1, PC; off_114CA8
7CA22:  LDR             R0, [R0]; unk_116DA0
7CA24:  LDR             R1, [R1]; unk_116DB0
7CA26:  VLD1.32         {D16-D17}, [R0]
7CA2A:  ADD.W           R0, R4, #0x80
7CA2E:  VLD1.32         {D18-D19}, [R1]
7CA32:  VST1.32         {D16-D17}, [R5]
7CA36:  VST1.32         {D18-D19}, [R0]
7CA3A:  LDR             R0, [SP,#0x38+var_1C]
7CA3C:  LDR             R1, =(__stack_chk_guard_ptr - 0x7CA42)
7CA3E:  ADD             R1, PC; __stack_chk_guard_ptr
7CA40:  LDR             R1, [R1]; __stack_chk_guard
7CA42:  LDR             R1, [R1]
7CA44:  CMP             R1, R0
7CA46:  ITTTT EQ
7CA48:  MOVEQ           R0, R4
7CA4A:  ADDEQ           SP, SP, #0x20 ; ' '
7CA4C:  POPEQ.W         {R8,R9,R11}
7CA50:  POPEQ           {R4-R7,PC}
7CA52:  BLX             __stack_chk_fail
