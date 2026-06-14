; =========================================================
; Game Engine Function: _ZN14CAEWaveDecoder10InitialiseEv
; Address            : 0x3B9832 - 0x3B9878
; =========================================================

3B9832:  PUSH            {R4,R6,R7,LR}
3B9834:  ADD             R7, SP, #8
3B9836:  MOV             R4, R0
3B9838:  MOVS            R1, #0
3B983A:  LDR             R0, [R4,#0xC]; this
3B983C:  MOVS            R2, #0x2C ; ','; n
3B983E:  STRB            R1, [R4,#8]
3B9840:  ADD.W           R1, R4, #0x10; ptr
3B9844:  BLX             j__ZN13CAEDataStream10FillBufferEPvj; CAEDataStream::FillBuffer(void *,uint)
3B9848:  CMP             R0, #0x2C ; ','
3B984A:  BNE             loc_3B9858
3B984C:  LDRH            R0, [R4,#0x32]
3B984E:  CMP             R0, #0x10
3B9850:  ITT EQ
3B9852:  LDRHEQ          R0, [R4,#0x26]
3B9854:  CMPEQ           R0, #2
3B9856:  BEQ             loc_3B985C
3B9858:  LDRB            R0, [R4,#8]
3B985A:  POP             {R4,R6,R7,PC}
3B985C:  LDR             R0, [R4]
3B985E:  MOVS            R1, #1
3B9860:  STRB            R1, [R4,#8]
3B9862:  LDR             R1, [R0,#8]
3B9864:  MOV             R0, R4
3B9866:  BLX             R1
3B9868:  MOVW            R1, #0x1B57
3B986C:  CMP             R0, R1
3B986E:  ITT LE
3B9870:  MOVLE           R0, #0
3B9872:  STRBLE          R0, [R4,#8]
3B9874:  LDRB            R0, [R4,#8]
3B9876:  POP             {R4,R6,R7,PC}
