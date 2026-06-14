; =========================================================
; Game Engine Function: _ZN8CVehicle21DoHeadLightReflectionER7CMatrixjhh
; Address            : 0x590D74 - 0x590DA2
; =========================================================

590D74:  LSLS            R2, R2, #0x1F
590D76:  BNE             loc_590D86
590D78:  LDRH            R2, [R0,#0x26]
590D7A:  CMP.W           R2, #0x214
590D7E:  IT EQ
590D80:  BEQ             _ZN8CVehicle25DoHeadLightReflectionTwinER7CMatrix; CVehicle::DoHeadLightReflectionTwin(CMatrix &)
590D82:  MOVS            R2, #1; unsigned __int8
590D84:  B               _ZN8CVehicle27DoHeadLightReflectionSingleER7CMatrixh; CVehicle::DoHeadLightReflectionSingle(CMatrix &,uchar)
590D86:  LDR             R2, [SP,#arg_0]
590D88:  CMP             R3, #0
590D8A:  ITT NE
590D8C:  CMPNE           R2, #0
590D8E:  BNE             _ZN8CVehicle25DoHeadLightReflectionTwinER7CMatrix; CVehicle::DoHeadLightReflectionTwin(CMatrix &)
590D90:  CMP             R3, #0
590D92:  ITT NE
590D94:  MOVNE           R2, #0; unsigned __int8
590D96:  BNE             _ZN8CVehicle27DoHeadLightReflectionSingleER7CMatrixh; CVehicle::DoHeadLightReflectionSingle(CMatrix &,uchar)
590D98:  CMP             R2, #0
590D9A:  IT EQ
590D9C:  BXEQ            LR
590D9E:  MOVS            R2, #1; unsigned __int8
590DA0:  B               _ZN8CVehicle27DoHeadLightReflectionSingleER7CMatrixh; CVehicle::DoHeadLightReflectionSingle(CMatrix &,uchar)
