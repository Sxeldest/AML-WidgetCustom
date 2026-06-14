; =========================================================
; Game Engine Function: _Z14RwImageSetPathPKc
; Address            : 0x1D9744 - 0x1D97C8
; =========================================================

1D9744:  PUSH            {R4-R7,LR}
1D9746:  ADD             R7, SP, #0xC
1D9748:  PUSH.W          {R11}
1D974C:  SUB             SP, SP, #8
1D974E:  MOV             R6, R0
1D9750:  LDR             R0, =(RwEngineInstance_ptr - 0x1D9756)
1D9752:  ADD             R0, PC; RwEngineInstance_ptr
1D9754:  LDR             R5, [R0]; RwEngineInstance
1D9756:  LDR             R0, [R5]
1D9758:  LDR.W           R1, [R0,#0x118]
1D975C:  MOV             R0, R6
1D975E:  BLX             R1
1D9760:  LDR             R1, =(dword_6BCF04 - 0x1D976A)
1D9762:  LDR             R2, [R5]
1D9764:  ADDS            R5, R0, #1
1D9766:  ADD             R1, PC; dword_6BCF04
1D9768:  LDR             R1, [R1]
1D976A:  ADDS            R3, R2, R1
1D976C:  LDR             R4, [R3,#8]
1D976E:  CMP             R5, R4
1D9770:  BLE             loc_1D9798
1D9772:  LDR             R0, [R3,#4]
1D9774:  MOV             R1, R5
1D9776:  LDR.W           R2, [R2,#0x134]
1D977A:  BLX             R2
1D977C:  CBZ             R0, loc_1D97A6
1D977E:  LDR             R1, =(RwEngineInstance_ptr - 0x1D9786)
1D9780:  LDR             R2, =(dword_6BCF04 - 0x1D9788)
1D9782:  ADD             R1, PC; RwEngineInstance_ptr
1D9784:  ADD             R2, PC; dword_6BCF04
1D9786:  LDR             R3, [R1]; RwEngineInstance
1D9788:  LDR             R1, [R2]
1D978A:  LDR             R2, [R3]
1D978C:  ADD             R2, R1
1D978E:  STR             R0, [R2,#4]
1D9790:  LDR             R0, [R3]
1D9792:  ADD             R0, R1
1D9794:  STR             R5, [R0,#8]
1D9796:  LDR             R2, [R3]
1D9798:  ADDS            R0, R2, R1
1D979A:  MOV             R1, R6; void *
1D979C:  MOV             R2, R5; size_t
1D979E:  LDR             R0, [R0,#4]; void *
1D97A0:  BLX             memcpy_1
1D97A4:  B               loc_1D97BE
1D97A6:  MOVS            R0, #0x13
1D97A8:  MOVS            R6, #0
1D97AA:  MOVT            R0, #0x8000; int
1D97AE:  MOV             R1, R5
1D97B0:  STR             R6, [SP,#0x18+var_18]
1D97B2:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1D97B6:  STR             R0, [SP,#0x18+var_14]
1D97B8:  MOV             R0, SP
1D97BA:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1D97BE:  MOV             R0, R6
1D97C0:  ADD             SP, SP, #8
1D97C2:  POP.W           {R11}
1D97C6:  POP             {R4-R7,PC}
