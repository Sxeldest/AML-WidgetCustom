; =========================================================
; Game Engine Function: alGetSource3dSOFT
; Address            : 0x259698 - 0x2597B4
; =========================================================

259698:  PUSH            {R4-R7,LR}
25969A:  ADD             R7, SP, #0xC
25969C:  PUSH.W          {R8,R9,R11}
2596A0:  SUB             SP, SP, #0x18
2596A2:  MOV             R8, R3
2596A4:  MOV             R9, R2
2596A6:  MOV             R5, R1
2596A8:  MOV             R6, R0
2596AA:  BLX             j_GetContextRef
2596AE:  MOV             R4, R0
2596B0:  CMP             R4, #0
2596B2:  BEQ             loc_2597AC
2596B4:  ADD.W           R0, R4, #8
2596B8:  MOV             R1, R6
2596BA:  BLX             j_LookupUIntMapKey
2596BE:  CBZ             R0, loc_259702
2596C0:  CMP.W           R9, #0
2596C4:  IT NE
2596C6:  CMPNE.W         R8, #0
2596CA:  BEQ             loc_259738
2596CC:  LDR             R6, [R7,#arg_0]
2596CE:  CBZ             R6, loc_259738
2596D0:  MOVW            R1, #0x1004
2596D4:  SUBS            R1, R5, R1
2596D6:  CMP             R1, #3
2596D8:  BCS             loc_25976C
2596DA:  MOV             R3, SP
2596DC:  MOV             R1, R4
2596DE:  MOV             R2, R5
2596E0:  BL              sub_258E98
2596E4:  CMP             R0, #0
2596E6:  BNE             loc_2597A6
2596E8:  VLDR            D16, [SP,#0x30+var_30]
2596EC:  VSTR            D16, [R9]
2596F0:  VLDR            D16, [SP,#0x30+var_28]
2596F4:  VSTR            D16, [R8]
2596F8:  VLDR            D16, [SP,#0x30+var_20]
2596FC:  VSTR            D16, [R6]
259700:  B               loc_2597A6
259702:  LDR             R0, =(TrapALError_ptr - 0x259708)
259704:  ADD             R0, PC; TrapALError_ptr
259706:  LDR             R0, [R0]; TrapALError
259708:  LDRB            R0, [R0]
25970A:  CMP             R0, #0
25970C:  ITT NE
25970E:  MOVNE           R0, #5; sig
259710:  BLXNE           raise
259714:  LDREX.W         R0, [R4,#0x50]
259718:  CMP             R0, #0
25971A:  BNE             loc_25979E
25971C:  ADD.W           R0, R4, #0x50 ; 'P'
259720:  MOVW            R1, #0xA001
259724:  DMB.W           ISH
259728:  STREX.W         R2, R1, [R0]
25972C:  CBZ             R2, loc_2597A2
25972E:  LDREX.W         R2, [R0]
259732:  CMP             R2, #0
259734:  BEQ             loc_259728
259736:  B               loc_25979E
259738:  LDR             R0, =(TrapALError_ptr - 0x25973E)
25973A:  ADD             R0, PC; TrapALError_ptr
25973C:  LDR             R0, [R0]; TrapALError
25973E:  LDRB            R0, [R0]
259740:  CMP             R0, #0
259742:  ITT NE
259744:  MOVNE           R0, #5; sig
259746:  BLXNE           raise
25974A:  LDREX.W         R0, [R4,#0x50]
25974E:  CBNZ            R0, loc_25979E
259750:  ADD.W           R0, R4, #0x50 ; 'P'
259754:  MOVW            R1, #0xA003
259758:  DMB.W           ISH
25975C:  STREX.W         R2, R1, [R0]
259760:  CBZ             R2, loc_2597A2
259762:  LDREX.W         R2, [R0]
259766:  CMP             R2, #0
259768:  BEQ             loc_25975C
25976A:  B               loc_25979E
25976C:  LDR             R0, =(TrapALError_ptr - 0x259772)
25976E:  ADD             R0, PC; TrapALError_ptr
259770:  LDR             R0, [R0]; TrapALError
259772:  LDRB            R0, [R0]
259774:  CMP             R0, #0
259776:  ITT NE
259778:  MOVNE           R0, #5; sig
25977A:  BLXNE           raise
25977E:  LDREX.W         R0, [R4,#0x50]
259782:  CBNZ            R0, loc_25979E
259784:  ADD.W           R0, R4, #0x50 ; 'P'
259788:  MOVW            R1, #0xA002
25978C:  DMB.W           ISH
259790:  STREX.W         R2, R1, [R0]
259794:  CBZ             R2, loc_2597A2
259796:  LDREX.W         R2, [R0]
25979A:  CMP             R2, #0
25979C:  BEQ             loc_259790
25979E:  CLREX.W
2597A2:  DMB.W           ISH
2597A6:  MOV             R0, R4
2597A8:  BLX             j_ALCcontext_DecRef
2597AC:  ADD             SP, SP, #0x18
2597AE:  POP.W           {R8,R9,R11}
2597B2:  POP             {R4-R7,PC}
