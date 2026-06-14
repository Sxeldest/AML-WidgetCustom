; =========================================================
; Game Engine Function: sub_1BA828
; Address            : 0x1BA828 - 0x1BA940
; =========================================================

1BA828:  PUSH            {R4-R6,R10,R11,LR}
1BA82C:  ADD             R11, SP, #0x10
1BA830:  LDR             R0, =(dword_382818 - 0x1BA83C)
1BA834:  ADD             R5, PC, R0; dword_382818
1BA838:  LDR             R0, [R5]; ptr
1BA83C:  BL              free
1BA840:  LDR             R0, =(dword_382820 - 0x1BA854)
1BA844:  MOV             R4, #0
1BA848:  LDR             R1, =(dword_38281C - 0x1BA860)
1BA84C:  ADD             R6, PC, R0; dword_382820
1BA850:  STR             R4, [R5]
1BA854:  LDR             R0, [R6]; ptr
1BA858:  STR             R4, [PC,R1]; dword_38281C
1BA85C:  BL              free
1BA860:  LDR             R0, =(dword_382828 - 0x1BA870)
1BA864:  LDR             R1, =(dword_382824 - 0x1BA87C)
1BA868:  ADD             R5, PC, R0; dword_382828
1BA86C:  STR             R4, [R6]
1BA870:  LDR             R0, [R5]; ptr
1BA874:  STR             R4, [PC,R1]; dword_382824
1BA878:  BL              free
1BA87C:  LDR             R0, =(dword_382840 - 0x1BA88C)
1BA880:  LDR             R1, =(dword_38282C - 0x1BA898)
1BA884:  ADD             R6, PC, R0; dword_382840
1BA888:  STR             R4, [R5]
1BA88C:  LDR             R0, [R6]; ptr
1BA890:  STR             R4, [PC,R1]; dword_38282C
1BA894:  BL              free
1BA898:  LDR             R0, =(dword_382844 - 0x1BA8A8)
1BA89C:  STR             R4, [R6]
1BA8A0:  ADD             R5, PC, R0; dword_382844
1BA8A4:  LDR             R0, [R5]; ptr
1BA8A8:  BL              free
1BA8AC:  LDR             R0, =(dword_382848 - 0x1BA8BC)
1BA8B0:  STR             R4, [R5]
1BA8B4:  ADD             R6, PC, R0; dword_382848
1BA8B8:  LDR             R0, [R6]; ptr
1BA8BC:  BL              free
1BA8C0:  LDR             R0, =(dword_382838 - 0x1BA8D0)
1BA8C4:  STR             R4, [R6]
1BA8C8:  ADD             R1, PC, R0; dword_382838
1BA8CC:  DMB             ISH
1BA8D0:  LDREX           R0, [R1]
1BA8D4:  STREX           R2, R4, [R1]
1BA8D8:  CMP             R2, #0
1BA8DC:  BNE             loc_1BA8D0
1BA8E0:  CMP             R0, #0
1BA8E4:  DMB             ISH
1BA8E8:  POPEQ           {R4-R6,R10,R11,PC}
1BA8EC:  MOVW            R1, #:lower16:(aZnkst6Ndk14Fs1_14+0x29); "Ev"
1BA8F0:  MOV             R2, #0
1BA8F4:  MOVT            R1, #:upper16:(aZnkst6Ndk14Fs1_14+0x29); "Ev"
1BA8F8:  LDR             R0, [R0,R1]
1BA8FC:  ADD             R2, R2, #1
1BA900:  CMP             R0, #0
1BA904:  BNE             loc_1BA8F8
1BA908:  LDR             R0, =(LogLevel_ptr - 0x1BA914)
1BA90C:  LDR             R0, [PC,R0]; LogLevel
1BA910:  LDR             R0, [R0]
1BA914:  CMP             R0, #0
1BA918:  BEQ             locret_1BA93C
1BA91C:  LDR             R0, =(byte_8F794 - 0x1BA930)
1BA920:  ADR             R3, dword_1BA970
1BA924:  CMP             R2, #1
1BA928:  ADDLS           R3, PC, R0; byte_8F794
1BA92C:  ADR             R0, aReleasealc; "ReleaseALC"
1BA930:  ADR             R1, aUDeviceSNotClo; "%u device%s not closed\n"
1BA934:  POP             {R4-R6,R10,R11,LR}
1BA938:  B               j_al_print
1BA93C:  POP             {R4-R6,R10,R11,PC}
