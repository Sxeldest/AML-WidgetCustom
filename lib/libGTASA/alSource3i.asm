; =========================================================
; Game Engine Function: alSource3i
; Address            : 0x258440 - 0x25850C
; =========================================================

258440:  PUSH            {R4-R7,LR}
258442:  ADD             R7, SP, #0xC
258444:  PUSH.W          {R8,R9,R11}
258448:  SUB             SP, SP, #0x10
25844A:  MOV             R8, R3
25844C:  MOV             R9, R2
25844E:  MOV             R5, R1
258450:  MOV             R6, R0
258452:  BLX             j_GetContextRef
258456:  MOV             R4, R0
258458:  CMP             R4, #0
25845A:  BEQ             loc_258504
25845C:  ADD.W           R0, R4, #8
258460:  MOV             R1, R6
258462:  BLX             j_LookupUIntMapKey
258466:  CBZ             R0, loc_258490
258468:  MOVW            R1, #0x1004
25846C:  SUBS            R1, R5, R1
25846E:  CMP             R1, #3
258470:  BCC             loc_25847C
258472:  MOVS            R1, #0x20006
258478:  CMP             R5, R1
25847A:  BNE             loc_2584C4
25847C:  LDR             R1, [R7,#arg_0]
25847E:  ADD             R3, SP, #0x28+var_24
258480:  STRD.W          R9, R8, [SP,#0x28+var_24]
258484:  MOV             R2, R5
258486:  STR             R1, [SP,#0x28+var_1C]
258488:  MOV             R1, R4
25848A:  BL              sub_2579C4
25848E:  B               loc_2584FE
258490:  LDR             R0, =(TrapALError_ptr - 0x258496)
258492:  ADD             R0, PC; TrapALError_ptr
258494:  LDR             R0, [R0]; TrapALError
258496:  LDRB            R0, [R0]
258498:  CMP             R0, #0
25849A:  ITT NE
25849C:  MOVNE           R0, #5; sig
25849E:  BLXNE           raise
2584A2:  LDREX.W         R0, [R4,#0x50]
2584A6:  CBNZ            R0, loc_2584F6
2584A8:  ADD.W           R0, R4, #0x50 ; 'P'
2584AC:  MOVW            R1, #0xA001
2584B0:  DMB.W           ISH
2584B4:  STREX.W         R2, R1, [R0]
2584B8:  CBZ             R2, loc_2584FA
2584BA:  LDREX.W         R2, [R0]
2584BE:  CMP             R2, #0
2584C0:  BEQ             loc_2584B4
2584C2:  B               loc_2584F6
2584C4:  LDR             R0, =(TrapALError_ptr - 0x2584CA)
2584C6:  ADD             R0, PC; TrapALError_ptr
2584C8:  LDR             R0, [R0]; TrapALError
2584CA:  LDRB            R0, [R0]
2584CC:  CMP             R0, #0
2584CE:  ITT NE
2584D0:  MOVNE           R0, #5; sig
2584D2:  BLXNE           raise
2584D6:  LDREX.W         R0, [R4,#0x50]
2584DA:  CBNZ            R0, loc_2584F6
2584DC:  ADD.W           R0, R4, #0x50 ; 'P'
2584E0:  MOVW            R1, #0xA002
2584E4:  DMB.W           ISH
2584E8:  STREX.W         R2, R1, [R0]
2584EC:  CBZ             R2, loc_2584FA
2584EE:  LDREX.W         R2, [R0]
2584F2:  CMP             R2, #0
2584F4:  BEQ             loc_2584E8
2584F6:  CLREX.W
2584FA:  DMB.W           ISH
2584FE:  MOV             R0, R4
258500:  BLX             j_ALCcontext_DecRef
258504:  ADD             SP, SP, #0x10
258506:  POP.W           {R8,R9,R11}
25850A:  POP             {R4-R7,PC}
