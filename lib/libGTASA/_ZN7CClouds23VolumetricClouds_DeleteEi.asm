; =========================================================
; Game Engine Function: _ZN7CClouds23VolumetricClouds_DeleteEi
; Address            : 0x5A0984 - 0x5A09A2
; =========================================================

5A0984:  LDR             R1, =(_ZN7CClouds5ms_vcE_ptr - 0x5A098E)
5A0986:  MOVS            R2, #0
5A0988:  CMP             R0, #0
5A098A:  ADD             R1, PC; _ZN7CClouds5ms_vcE_ptr
5A098C:  IT LE
5A098E:  MOVLE           R0, R2
5A0990:  CMP             R0, #0xB3
5A0992:  LDR             R1, [R1]; CClouds::ms_vc ...
5A0994:  IT GE
5A0996:  MOVGE           R0, #(byte_A23EDB - 0xA23E28)
5A0998:  STRB            R2, [R1,R0]
5A099A:  ADD             R0, R1
5A099C:  STRB.W          R2, [R0,#(byte_A23F8F - 0xA23EDB)]
5A09A0:  BX              LR
