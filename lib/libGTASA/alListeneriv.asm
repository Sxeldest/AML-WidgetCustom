; =========================================================
; Game Engine Function: alListeneriv
; Address            : 0x255750 - 0x255852
; =========================================================

255750:  PUSH            {R4,R5,R7,LR}
255752:  ADD             R7, SP, #8
255754:  SUB             SP, SP, #0x18
255756:  MOV             R5, R1
255758:  CBZ             R5, loc_25579E
25575A:  MOVW            R1, #0x1004
25575E:  CMP             R0, R1
255760:  BEQ             loc_255772
255762:  MOVW            R1, #0x100F
255766:  CMP             R0, R1
255768:  BEQ             loc_2557DE
25576A:  MOVW            R1, #0x1006
25576E:  CMP             R0, R1
255770:  BNE             loc_25579E
255772:  VLDR            S0, [R5]
255776:  VLDR            S2, [R5,#4]
25577A:  VLDR            S4, [R5,#8]
25577E:  VCVT.F32.S32    S0, S0
255782:  VCVT.F32.S32    S2, S2
255786:  VCVT.F32.S32    S4, S4
25578A:  VMOV            R1, S0
25578E:  VMOV            R2, S2
255792:  VMOV            R3, S4
255796:  BLX             j_alListener3f
25579A:  ADD             SP, SP, #0x18
25579C:  POP             {R4,R5,R7,PC}
25579E:  BLX             j_GetContextRef
2557A2:  MOV             R4, R0
2557A4:  CBZ             R4, loc_255810
2557A6:  LDR             R0, =(TrapALError_ptr - 0x2557AE)
2557A8:  CMP             R5, #0
2557AA:  ADD             R0, PC; TrapALError_ptr
2557AC:  LDR             R0, [R0]; TrapALError
2557AE:  LDRB            R0, [R0]
2557B0:  BEQ             loc_255814
2557B2:  CMP             R0, #0
2557B4:  ITT NE
2557B6:  MOVNE           R0, #5; sig
2557B8:  BLXNE           raise
2557BC:  LDREX.W         R0, [R4,#0x50]
2557C0:  CBNZ            R0, loc_25583E
2557C2:  ADD.W           R0, R4, #0x50 ; 'P'
2557C6:  MOVW            R1, #0xA002
2557CA:  DMB.W           ISH
2557CE:  STREX.W         R2, R1, [R0]
2557D2:  CBZ             R2, loc_255842
2557D4:  LDREX.W         R2, [R0]
2557D8:  CMP             R2, #0
2557DA:  BEQ             loc_2557CE
2557DC:  B               loc_25583E
2557DE:  MOV             R0, R5
2557E0:  MOV             R1, SP
2557E2:  VLD1.32         {D16-D17}, [R0]!
2557E6:  MOV             R2, R1
2557E8:  VCVT.F32.S32    Q8, Q8
2557EC:  VST1.32         {D16-D17}, [R2]!
2557F0:  VLDR            S0, [R0]
2557F4:  MOVW            R0, #0x100F
2557F8:  VCVT.F32.S32    S0, S0
2557FC:  VSTR            S0, [R2]
255800:  VLDR            S0, [R5,#0x14]
255804:  VCVT.F32.S32    S0, S0
255808:  VSTR            S0, [SP,#0x20+var_C]
25580C:  BLX             j_alListenerfv
255810:  ADD             SP, SP, #0x18
255812:  POP             {R4,R5,R7,PC}
255814:  CMP             R0, #0
255816:  ITT NE
255818:  MOVNE           R0, #5; sig
25581A:  BLXNE           raise
25581E:  LDREX.W         R0, [R4,#0x50]
255822:  CBNZ            R0, loc_25583E
255824:  ADD.W           R0, R4, #0x50 ; 'P'
255828:  MOVW            R1, #0xA003
25582C:  DMB.W           ISH
255830:  STREX.W         R2, R1, [R0]
255834:  CBZ             R2, loc_255842
255836:  LDREX.W         R2, [R0]
25583A:  CMP             R2, #0
25583C:  BEQ             loc_255830
25583E:  CLREX.W
255842:  DMB.W           ISH
255846:  MOV             R0, R4
255848:  ADD             SP, SP, #0x18
25584A:  POP.W           {R4,R5,R7,LR}
25584E:  B.W             ALCcontext_DecRef
