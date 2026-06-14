; =========================================================
; Game Engine Function: _Z37RpAnimBlendClumpRemoveAllAssociationsP7RpClump
; Address            : 0x390970 - 0x390996
; =========================================================

390970:  PUSH            {R4,R6,R7,LR}
390972:  ADD             R7, SP, #8
390974:  LDR             R1, =(ClumpOffset_ptr - 0x39097A)
390976:  ADD             R1, PC; ClumpOffset_ptr
390978:  LDR             R1, [R1]; ClumpOffset
39097A:  LDR             R1, [R1]
39097C:  LDR             R0, [R0,R1]
39097E:  LDR             R4, [R0]
390980:  B               loc_39098E
390982:  MOV             R0, R4
390984:  LDR             R4, [R4]
390986:  LDR.W           R1, [R0,#-4]!
39098A:  LDR             R1, [R1,#4]
39098C:  BLX             R1
39098E:  CMP             R4, #0
390990:  IT EQ
390992:  POPEQ           {R4,R6,R7,PC}
390994:  B               loc_390982
