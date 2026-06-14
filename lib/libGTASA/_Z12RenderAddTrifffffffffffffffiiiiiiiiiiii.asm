; =========================================================
; Game Engine Function: _Z12RenderAddTrifffffffffffffffiiiiiiiiiiii
; Address            : 0x36684C - 0x3669B4
; =========================================================

36684C:  PUSH            {R4-R7,LR}
36684E:  ADD             R7, SP, #0xC
366850:  PUSH.W          {R8,R9,R11}
366854:  LDR             R4, =(g_pVertex3d_ptr - 0x36685E)
366856:  LDRB.W          R5, [R7,#arg_3C]
36685A:  ADD             R4, PC; g_pVertex3d_ptr
36685C:  LDR.W           R9, [R7,#arg_34]
366860:  LDR.W           R8, =(g_numVertices_ptr - 0x366870)
366864:  LDR.W           R12, [R4]; g_pVertex3d
366868:  LDRB.W          R4, [R7,#arg_2C]
36686C:  ADD             R8, PC; g_numVertices_ptr
36686E:  LDR.W           LR, =(g_pRaster_ptr - 0x36687E)
366872:  LDR.W           R6, [R12]
366876:  LDR.W           R8, [R8]; g_numVertices
36687A:  ADD             LR, PC; g_pRaster_ptr
36687C:  VLDR            S0, [R7,#arg_4]
366880:  STRD.W          R1, R2, [R6,#4]
366884:  LDR             R1, [R7,#arg_40]
366886:  STR             R0, [R6]
366888:  MOV.W           R0, R9,LSL#16
36688C:  BFI.W           R5, R1, #8, #8
366890:  LDR             R1, [R7,#arg_30]
366892:  LDR             R6, [R7,#arg_38]
366894:  UXTB16.W        R0, R0
366898:  BFI.W           R4, R1, #8, #8
36689C:  LDR             R2, [R7,#arg_44]
36689E:  LDR.W           R1, [R12]
3668A2:  ORRS            R0, R4
3668A4:  ORR.W           R0, R0, R6,LSL#24
3668A8:  LDR             R4, [R7,#arg_48]
3668AA:  LDR.W           LR, [LR]; g_pRaster
3668AE:  STR             R0, [R1,#0x18]
3668B0:  LSLS            R0, R2, #0x10
3668B2:  LDR             R2, [R7,#arg_54]
3668B4:  UXTB16.W        R0, R0
3668B8:  ORRS            R5, R0
3668BA:  LDR.W           R0, [R8]
3668BE:  ORR.W           R4, R5, R4,LSL#24
3668C2:  STR             R4, [R1,#0x3C]
3668C4:  STR             R3, [R1,#0x24]
3668C6:  LSLS            R2, R2, #0x10
3668C8:  LDRB.W          R5, [R7,#arg_4C]
3668CC:  UXTB16.W        R2, R2
3668D0:  LDR             R3, [R7,#arg_50]
3668D2:  VLDR            S2, [R7,#arg_0]
3668D6:  BFI.W           R5, R3, #8, #8
3668DA:  LDR             R3, [R7,#arg_58]
3668DC:  ORRS            R2, R5
3668DE:  VLDR            S4, [R7,#arg_10]
3668E2:  VLDR            S6, [R7,#arg_C]
3668E6:  VLDR            S8, [R7,#arg_8]
3668EA:  ORR.W           R2, R2, R3,LSL#24
3668EE:  VSTR            S2, [R1,#0x28]
3668F2:  ADD.W           R3, R1, #0x6C ; 'l'
3668F6:  VSTR            S0, [R1,#0x2C]
3668FA:  STR             R2, [R1,#0x60]
3668FC:  ADDS            R2, R0, #3
3668FE:  VSTR            S8, [R1,#0x48]
366902:  VSTR            S6, [R1,#0x4C]
366906:  VSTR            S4, [R1,#0x50]
36690A:  STR.W           R2, [R8]
36690E:  LDR.W           R2, [LR]
366912:  STR.W           R3, [R12]
366916:  CBZ             R2, loc_366948
366918:  VLDR            S10, [R7,#arg_14]
36691C:  VLDR            S0, [R7,#arg_28]
366920:  VLDR            S2, [R7,#arg_24]
366924:  VLDR            S4, [R7,#arg_20]
366928:  VLDR            S6, [R7,#arg_1C]
36692C:  VLDR            S8, [R7,#arg_18]
366930:  VSTR            S10, [R1,#0x1C]
366934:  VSTR            S8, [R1,#0x20]
366938:  VSTR            S6, [R1,#0x40]
36693C:  VSTR            S4, [R1,#0x44]
366940:  VSTR            S2, [R1,#0x64]
366944:  VSTR            S0, [R1,#0x68]
366948:  LDR             R1, =(g_numTris_ptr - 0x36694E)
36694A:  ADD             R1, PC; g_numTris_ptr
36694C:  LDR             R2, [R1]; g_numTris
36694E:  LDR             R3, [R2]
366950:  ADDS            R1, R3, #1
366952:  STR             R1, [R2]
366954:  MOVW            R2, #0xFFD
366958:  CMP             R3, R2
36695A:  ITT LE
36695C:  MOVWLE          R2, #0x7FA
366960:  CMPLE           R0, R2
366962:  BLT             loc_3669AE
366964:  LDR             R0, =(g_rwFlags_ptr - 0x366970)
366966:  ADD.W           R1, R1, R1,LSL#1
36696A:  LDR             R2, =(g_pMatrix_ptr - 0x366974)
36696C:  ADD             R0, PC; g_rwFlags_ptr
36696E:  LDR             R6, =(TempVertexBuffer_ptr - 0x366978)
366970:  ADD             R2, PC; g_pMatrix_ptr
366972:  LDR             R0, [R0]; g_rwFlags
366974:  ADD             R6, PC; TempVertexBuffer_ptr
366976:  LDR             R2, [R2]; g_pMatrix
366978:  LDR             R3, [R0]
36697A:  LDR             R2, [R2]
36697C:  LDR             R0, [R6]; TempVertexBuffer
36697E:  BLX             j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
366982:  CBZ             R0, loc_36698E
366984:  MOVS            R0, #3
366986:  BLX             j__Z21RwIm3DRenderPrimitive15RwPrimitiveType; RwIm3DRenderPrimitive(RwPrimitiveType)
36698A:  BLX             j__Z9RwIm3DEndv; RwIm3DEnd(void)
36698E:  LDR             R0, =(g_numVertices_ptr - 0x36699A)
366990:  MOVS            R6, #0
366992:  LDR             R1, =(g_pVertex3d_ptr - 0x36699C)
366994:  LDR             R2, =(g_numTris_ptr - 0x3669A0)
366996:  ADD             R0, PC; g_numVertices_ptr
366998:  ADD             R1, PC; g_pVertex3d_ptr
36699A:  LDR             R3, =(TempVertexBuffer_ptr - 0x3669A4)
36699C:  ADD             R2, PC; g_numTris_ptr
36699E:  LDR             R0, [R0]; g_numVertices
3669A0:  ADD             R3, PC; TempVertexBuffer_ptr
3669A2:  LDR             R1, [R1]; g_pVertex3d
3669A4:  LDR             R2, [R2]; g_numTris
3669A6:  LDR             R3, [R3]; TempVertexBuffer
3669A8:  STR             R6, [R0]
3669AA:  STR             R6, [R2]
3669AC:  STR             R3, [R1]
3669AE:  POP.W           {R8,R9,R11}
3669B2:  POP             {R4-R7,PC}
