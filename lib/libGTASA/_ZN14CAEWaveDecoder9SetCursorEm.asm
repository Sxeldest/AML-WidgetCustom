; =========================================================
; Game Engine Function: _ZN14CAEWaveDecoder9SetCursorEm
; Address            : 0x3B990C - 0x3B995A
; =========================================================

3B990C:  LDRB            R2, [R0,#8]
3B990E:  CMP             R2, #0
3B9910:  IT EQ
3B9912:  BXEQ            LR
3B9914:  VMOV            S0, R1
3B9918:  VLDR            S2, =1000.0
3B991C:  VCVT.F32.U32    S0, S0
3B9920:  LDR             R2, [R0,#0xC]
3B9922:  LDR             R0, [R0,#0x28]
3B9924:  LSLS            R0, R0, #2
3B9926:  VDIV.F32        S0, S0, S2
3B992A:  VMOV            S2, R0
3B992E:  VCVT.F32.U32    S2, S2
3B9932:  VMUL.F32        S0, S0, S2
3B9936:  VLDR            S2, =44.0
3B993A:  VADD.F32        S0, S0, S2
3B993E:  VCVT.S32.F32    S0, S0
3B9942:  VMOV            R0, S0
3B9946:  ADD.W           R1, R0, R0,LSR#31
3B994A:  BIC.W           R1, R1, #1
3B994E:  SUBS            R1, R0, R1
3B9950:  ADD             R1, R0; int
3B9952:  MOV             R0, R2; this
3B9954:  MOVS            R2, #0; int
3B9956:  B.W             j_j__ZN13CAEDataStream4SeekEli; j_CAEDataStream::Seek(long,int)
