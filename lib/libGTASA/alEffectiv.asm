; =========================================================
; Game Engine Function: alEffectiv
; Address            : 0x253714 - 0x2537B2
; =========================================================

253714:  PUSH            {R4-R7,LR}
253716:  ADD             R7, SP, #0xC
253718:  PUSH.W          {R8}
25371C:  MOV             R4, R0
25371E:  MOV             R5, R2
253720:  MOV             R6, R1
253722:  MOVW            R0, #0x8001
253726:  CMP             R6, R0
253728:  BNE             loc_25373C
25372A:  LDR             R2, [R5]
25372C:  MOV             R0, R4
25372E:  MOVW            R1, #0x8001
253732:  POP.W           {R8}
253736:  POP.W           {R4-R7,LR}
25373A:  B               alEffecti
25373C:  BLX             j_GetContextRef
253740:  MOV             R8, R0
253742:  CMP.W           R8, #0
253746:  BEQ             loc_253764
253748:  LDR.W           R0, [R8,#0x88]
25374C:  MOV             R1, R4
25374E:  ADDS            R0, #0x64 ; 'd'
253750:  BLX             j_LookupUIntMapKey
253754:  CBZ             R0, loc_25376A
253756:  LDR.W           R4, [R0,#0x98]
25375A:  MOV             R1, R8
25375C:  MOV             R2, R6
25375E:  MOV             R3, R5
253760:  BLX             R4
253762:  B               loc_2537A4
253764:  POP.W           {R8}
253768:  POP             {R4-R7,PC}
25376A:  LDR             R0, =(TrapALError_ptr - 0x253770)
25376C:  ADD             R0, PC; TrapALError_ptr
25376E:  LDR             R0, [R0]; TrapALError
253770:  LDRB            R0, [R0]
253772:  CMP             R0, #0
253774:  ITT NE
253776:  MOVNE           R0, #5; sig
253778:  BLXNE           raise
25377C:  LDREX.W         R0, [R8,#0x50]
253780:  CBNZ            R0, loc_25379C
253782:  ADD.W           R0, R8, #0x50 ; 'P'
253786:  MOVW            R1, #0xA001
25378A:  DMB.W           ISH
25378E:  STREX.W         R2, R1, [R0]
253792:  CBZ             R2, loc_2537A0
253794:  LDREX.W         R2, [R0]
253798:  CMP             R2, #0
25379A:  BEQ             loc_25378E
25379C:  CLREX.W
2537A0:  DMB.W           ISH
2537A4:  MOV             R0, R8
2537A6:  POP.W           {R8}
2537AA:  POP.W           {R4-R7,LR}
2537AE:  B.W             ALCcontext_DecRef
