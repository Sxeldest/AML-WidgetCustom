; =========================================================
; Game Engine Function: _ZN6CStats9GetStatIDEt
; Address            : 0x41584C - 0x415872
; =========================================================

41584C:  PUSH            {R7,LR}
41584E:  MOV             R7, SP
415850:  MOV             R2, R0
415852:  CMP             R2, #0x51 ; 'Q'
415854:  BHI             loc_41585E
415856:  LDR             R0, =(gString_ptr - 0x41585E)
415858:  ADR             R1, aStatFD; "stat_f_%d"
41585A:  ADD             R0, PC; gString_ptr
41585C:  B               loc_415864
41585E:  LDR             R0, =(gString_ptr - 0x415866)
415860:  ADR             R1, aStatID; "stat_i_%d"
415862:  ADD             R0, PC; gString_ptr
415864:  LDR             R0, [R0]; gString
415866:  BL              sub_5E6BC0
41586A:  LDR             R0, =(gString_ptr - 0x415870)
41586C:  ADD             R0, PC; gString_ptr
41586E:  LDR             R0, [R0]; gString
415870:  POP             {R7,PC}
