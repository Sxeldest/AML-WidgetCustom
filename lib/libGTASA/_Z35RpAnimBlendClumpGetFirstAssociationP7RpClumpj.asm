; =========================================================
; Game Engine Function: _Z35RpAnimBlendClumpGetFirstAssociationP7RpClumpj
; Address            : 0x390BB4 - 0x390BE0
; =========================================================

390BB4:  LDR             R2, =(ClumpOffset_ptr - 0x390BBA)
390BB6:  ADD             R2, PC; ClumpOffset_ptr
390BB8:  LDR             R2, [R2]; ClumpOffset
390BBA:  LDR             R2, [R2]
390BBC:  LDR             R0, [R0,R2]
390BBE:  LDR             R0, [R0]
390BC0:  CMP             R0, #0
390BC2:  ITT EQ
390BC4:  MOVEQ           R0, #0
390BC6:  BXEQ            LR
390BC8:  B               loc_390BD4
390BCA:  LDR             R0, [R0]
390BCC:  CMP             R0, #0
390BCE:  ITT EQ
390BD0:  MOVEQ           R0, #0
390BD2:  BXEQ            LR
390BD4:  LDRH            R2, [R0,#0x2A]
390BD6:  TST             R2, R1
390BD8:  ITT NE
390BDA:  SUBNE           R0, #4
390BDC:  BXNE            LR
390BDE:  B               loc_390BCA
