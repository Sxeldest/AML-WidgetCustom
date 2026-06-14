; =========================================================
; Game Engine Function: alGetSourcedvSOFT
; Address            : 0x2597C0 - 0x259938
; =========================================================

2597C0:  PUSH            {R4-R7,LR}
2597C2:  ADD             R7, SP, #0xC
2597C4:  PUSH.W          {R8}
2597C8:  MOV             R8, R2
2597CA:  MOV             R6, R1
2597CC:  MOV             R5, R0
2597CE:  BLX             j_GetContextRef
2597D2:  MOV             R4, R0
2597D4:  CMP             R4, #0
2597D6:  BEQ.W           loc_25984A
2597DA:  ADD.W           R0, R4, #8
2597DE:  MOV             R1, R5
2597E0:  BLX             j_LookupUIntMapKey
2597E4:  CMP             R0, #0
2597E6:  BEQ.W           loc_259850
2597EA:  CMP.W           R8, #0
2597EE:  BEQ.W           loc_259884
2597F2:  CMP.W           R6, #0x1200
2597F6:  BGT.W           loc_2598CC
2597FA:  MOVW            R1, #0x1001
2597FE:  SUBS            R1, R6, R1
259800:  CMP             R1, #0x32 ; '2'; switch 51 cases
259802:  BHI.W           def_259806; jumptable 00259806 default case
259806:  TBB.W           [PC,R1]; switch jump
25980A:  DCB 0x1A; jump table for switch statement
25980B:  DCB 0x1A
25980C:  DCB 0x1A
25980D:  DCB 0x1A
25980E:  DCB 0x1A
25980F:  DCB 0x1A
259810:  DCB 0x1A
259811:  DCB 0x7B
259812:  DCB 0x1A
259813:  DCB 0x1A
259814:  DCB 0x7B
259815:  DCB 0x7B
259816:  DCB 0x1A
259817:  DCB 0x1A
259818:  DCB 0x7B
259819:  DCB 0x1A
25981A:  DCB 0x7B
25981B:  DCB 0x7B
25981C:  DCB 0x7B
25981D:  DCB 0x7B
25981E:  DCB 0x1A
25981F:  DCB 0x1A
259820:  DCB 0x7B
259821:  DCB 0x7B
259822:  DCB 0x7B
259823:  DCB 0x7B
259824:  DCB 0x7B
259825:  DCB 0x7B
259826:  DCB 0x7B
259827:  DCB 0x7B
259828:  DCB 0x7B
259829:  DCB 0x1A
25982A:  DCB 0x1A
25982B:  DCB 0x1A
25982C:  DCB 0x1A
25982D:  DCB 0x1A
25982E:  DCB 0x1A
25982F:  DCB 0x1A
259830:  DCB 0x1A
259831:  DCB 0x7B
259832:  DCB 0x7B
259833:  DCB 0x7B
259834:  DCB 0x7B
259835:  DCB 0x7B
259836:  DCB 0x7B
259837:  DCB 0x7B
259838:  DCB 0x7B
259839:  DCB 0x7B
25983A:  DCB 0x1A
25983B:  DCB 0x1A
25983C:  DCB 0x1A
25983D:  ALIGN 2
25983E:  MOV             R1, R4; jumptable 00259806 cases 0-6,8,9,12,13,15,20,21,31-38,48-50
259840:  MOV             R2, R6
259842:  MOV             R3, R8
259844:  BL              sub_258E98
259848:  B               loc_2598BE
25984A:  POP.W           {R8}
25984E:  POP             {R4-R7,PC}
259850:  LDR             R0, =(TrapALError_ptr - 0x259856)
259852:  ADD             R0, PC; TrapALError_ptr
259854:  LDR             R0, [R0]; TrapALError
259856:  LDRB            R0, [R0]
259858:  CMP             R0, #0
25985A:  ITT NE
25985C:  MOVNE           R0, #5; sig
25985E:  BLXNE           raise
259862:  LDREX.W         R0, [R4,#0x50]
259866:  CBNZ            R0, loc_2598B6
259868:  ADD.W           R0, R4, #0x50 ; 'P'
25986C:  MOVW            R1, #0xA001
259870:  DMB.W           ISH
259874:  STREX.W         R2, R1, [R0]
259878:  CBZ             R2, loc_2598BA
25987A:  LDREX.W         R2, [R0]
25987E:  CMP             R2, #0
259880:  BEQ             loc_259874
259882:  B               loc_2598B6
259884:  LDR             R0, =(TrapALError_ptr - 0x25988A)
259886:  ADD             R0, PC; TrapALError_ptr
259888:  LDR             R0, [R0]; TrapALError
25988A:  LDRB            R0, [R0]
25988C:  CMP             R0, #0
25988E:  ITT NE
259890:  MOVNE           R0, #5; sig
259892:  BLXNE           raise
259896:  LDREX.W         R0, [R4,#0x50]
25989A:  CBNZ            R0, loc_2598B6
25989C:  ADD.W           R0, R4, #0x50 ; 'P'
2598A0:  MOVW            R1, #0xA003
2598A4:  DMB.W           ISH
2598A8:  STREX.W         R2, R1, [R0]
2598AC:  CBZ             R2, loc_2598BA
2598AE:  LDREX.W         R2, [R0]
2598B2:  CMP             R2, #0
2598B4:  BEQ             loc_2598A8
2598B6:  CLREX.W
2598BA:  DMB.W           ISH
2598BE:  MOV             R0, R4
2598C0:  POP.W           {R8}
2598C4:  POP.W           {R4-R7,LR}
2598C8:  B.W             ALCcontext_DecRef
2598CC:  MOVS            R1, #0x20006
2598D2:  CMP             R6, R1
2598D4:  BLE             loc_2598E2
2598D6:  SUB.W           R1, R6, #0x20000
2598DA:  SUBS            R1, #7
2598DC:  CMP             R1, #6
2598DE:  BCC             loc_25983E; jumptable 00259806 cases 0-6,8,9,12,13,15,20,21,31-38,48-50
2598E0:  B               loc_259900; jumptable 00259806 cases 7,10,11,14,16-19,22-30,39-47
2598E2:  MOVW            R1, #0x1201
2598E6:  CMP             R6, R1
2598E8:  IT NE
2598EA:  CMPNE.W         R6, #0xC000
2598EE:  BEQ             loc_25983E; jumptable 00259806 cases 0-6,8,9,12,13,15,20,21,31-38,48-50
2598F0:  CMP.W           R6, #0xD000
2598F4:  BEQ             loc_25983E; jumptable 00259806 cases 0-6,8,9,12,13,15,20,21,31-38,48-50
2598F6:  B               loc_259900; jumptable 00259806 cases 7,10,11,14,16-19,22-30,39-47
2598F8:  MOVW            R1, #0x202; jumptable 00259806 default case
2598FC:  CMP             R6, R1
2598FE:  BEQ             loc_25983E; jumptable 00259806 cases 0-6,8,9,12,13,15,20,21,31-38,48-50
259900:  LDR             R0, =(TrapALError_ptr - 0x259906); jumptable 00259806 cases 7,10,11,14,16-19,22-30,39-47
259902:  ADD             R0, PC; TrapALError_ptr
259904:  LDR             R0, [R0]; TrapALError
259906:  LDRB            R0, [R0]
259908:  CMP             R0, #0
25990A:  ITT NE
25990C:  MOVNE           R0, #5; sig
25990E:  BLXNE           raise
259912:  LDREX.W         R0, [R4,#0x50]
259916:  CMP             R0, #0
259918:  BNE             loc_2598B6
25991A:  ADD.W           R0, R4, #0x50 ; 'P'
25991E:  MOVW            R1, #0xA002
259922:  DMB.W           ISH
259926:  STREX.W         R2, R1, [R0]
25992A:  CMP             R2, #0
25992C:  BEQ             loc_2598BA
25992E:  LDREX.W         R2, [R0]
259932:  CMP             R2, #0
259934:  BEQ             loc_259926
259936:  B               loc_2598B6
