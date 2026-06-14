; =========================================================
; Game Engine Function: _ZN7CClouds33VolumetricClouds_GetFirstFreeSlotEv
; Address            : 0x5A0954 - 0x5A097C
; =========================================================

5A0954:  LDR             R0, =(_ZN7CClouds25m_VolumetricCloudsUsedNumE_ptr - 0x5A095A)
5A0956:  ADD             R0, PC; _ZN7CClouds25m_VolumetricCloudsUsedNumE_ptr
5A0958:  LDR             R0, [R0]; CClouds::m_VolumetricCloudsUsedNum ...
5A095A:  LDR             R1, [R0]; CClouds::m_VolumetricCloudsUsedNum
5A095C:  CMP             R1, #1
5A095E:  BLT             loc_5A0976
5A0960:  LDR             R2, =(_ZN7CClouds5ms_vcE_ptr - 0x5A0968)
5A0962:  MOVS            R0, #0
5A0964:  ADD             R2, PC; _ZN7CClouds5ms_vcE_ptr
5A0966:  LDR             R2, [R2]; CClouds::ms_vc ...
5A0968:  LDRB            R3, [R2,R0]
5A096A:  CMP             R3, #0
5A096C:  IT EQ
5A096E:  BXEQ            LR
5A0970:  ADDS            R0, #1
5A0972:  CMP             R0, R1
5A0974:  BLT             loc_5A0968
5A0976:  MOV.W           R0, #0xFFFFFFFF
5A097A:  BX              LR
