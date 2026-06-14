; =========================================================
; Game Engine Function: _ZN12RenderBuffer11StopStoringEv
; Address            : 0x5BBAD4 - 0x5BBB7C
; =========================================================

5BBAD4:  PUSH            {R4,R6,R7,LR}
5BBAD6:  ADD             R7, SP, #8
5BBAD8:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5BBAE2)
5BBADA:  LDR             R1, =(_ZN12RenderBuffer17IndicesToBeStoredE_ptr - 0x5BBAE4)
5BBADC:  LDR             R2, =(TempBufferVerticesStored_ptr - 0x5BBAE6)
5BBADE:  ADD             R0, PC; TempBufferIndicesStored_ptr
5BBAE0:  ADD             R1, PC; _ZN12RenderBuffer17IndicesToBeStoredE_ptr
5BBAE2:  ADD             R2, PC; TempBufferVerticesStored_ptr
5BBAE4:  LDR             R0, [R0]; TempBufferIndicesStored
5BBAE6:  LDR             R1, [R1]; RenderBuffer::IndicesToBeStored ...
5BBAE8:  LDR             R2, [R2]; TempBufferVerticesStored
5BBAEA:  LDR             R3, [R0]
5BBAEC:  LDR             R4, [R1]; RenderBuffer::IndicesToBeStored
5BBAEE:  LDR             R0, [R2]
5BBAF0:  ADDS            R1, R4, R3
5BBAF2:  CMP             R4, #1
5BBAF4:  BLT             loc_5BBB60
5BBAF6:  ADDS            R2, R3, #1
5BBAF8:  CMP             R1, R2
5BBAFA:  IT GT
5BBAFC:  MOVGT           R2, R1
5BBAFE:  SUB.W           LR, R2, R3
5BBB02:  CMP.W           LR, #7
5BBB06:  BLS             loc_5BBB48
5BBB08:  BIC.W           R12, LR, #7
5BBB0C:  CMP.W           R12, #0
5BBB10:  BEQ             loc_5BBB48
5BBB12:  LDR             R4, =(TempBufferRenderIndexList_ptr - 0x5BBB20)
5BBB14:  ADD.W           R2, R3, R12
5BBB18:  VDUP.32         Q8, R0
5BBB1C:  ADD             R4, PC; TempBufferRenderIndexList_ptr
5BBB1E:  LDR             R4, [R4]; TempBufferRenderIndexList
5BBB20:  ADD.W           R3, R4, R3,LSL#1
5BBB24:  MOV             R4, R12
5BBB26:  VLD1.16         {D18-D19}, [R3]
5BBB2A:  SUBS            R4, #8
5BBB2C:  VADDW.U16       Q10, Q8, D19
5BBB30:  VADDW.U16       Q9, Q8, D18
5BBB34:  VMOVN.I32       D21, Q10
5BBB38:  VMOVN.I32       D20, Q9
5BBB3C:  VST1.16         {D20-D21}, [R3]!
5BBB40:  BNE             loc_5BBB26
5BBB42:  CMP             LR, R12
5BBB44:  BNE             loc_5BBB4A
5BBB46:  B               loc_5BBB60
5BBB48:  MOV             R2, R3
5BBB4A:  LDR             R3, =(TempBufferRenderIndexList_ptr - 0x5BBB50)
5BBB4C:  ADD             R3, PC; TempBufferRenderIndexList_ptr
5BBB4E:  LDR             R3, [R3]; TempBufferRenderIndexList
5BBB50:  LDRH.W          R4, [R3,R2,LSL#1]
5BBB54:  ADD             R4, R0
5BBB56:  STRH.W          R4, [R3,R2,LSL#1]
5BBB5A:  ADDS            R2, #1
5BBB5C:  CMP             R2, R1
5BBB5E:  BLT             loc_5BBB50
5BBB60:  LDR             R2, =(_ZN12RenderBuffer18VerticesToBeStoredE_ptr - 0x5BBB68)
5BBB62:  LDR             R3, =(TempBufferIndicesStored_ptr - 0x5BBB6C)
5BBB64:  ADD             R2, PC; _ZN12RenderBuffer18VerticesToBeStoredE_ptr
5BBB66:  LDR             R4, =(TempBufferVerticesStored_ptr - 0x5BBB6E)
5BBB68:  ADD             R3, PC; TempBufferIndicesStored_ptr
5BBB6A:  ADD             R4, PC; TempBufferVerticesStored_ptr
5BBB6C:  LDR             R2, [R2]; RenderBuffer::VerticesToBeStored ...
5BBB6E:  LDR             R3, [R3]; TempBufferIndicesStored
5BBB70:  LDR             R4, [R4]; TempBufferVerticesStored
5BBB72:  LDR             R2, [R2]; RenderBuffer::VerticesToBeStored
5BBB74:  STR             R1, [R3]
5BBB76:  ADD             R0, R2
5BBB78:  STR             R0, [R4]
5BBB7A:  POP             {R4,R6,R7,PC}
