; =========================================================
; Game Engine Function: _ZN10C3dMarkers8ShutdownEv
; Address            : 0x5BFE14 - 0x5BFF9E
; =========================================================

5BFE14:  PUSH            {R4-R7,LR}
5BFE16:  ADD             R7, SP, #0xC
5BFE18:  PUSH.W          {R8-R11}
5BFE1C:  SUB             SP, SP, #0x34
5BFE1E:  LDR             R0, =(_ZN10C3dMarkers14m_aMarkerArrayE_ptr - 0x5BFE2E)
5BFE20:  MOV.W           R10, #0
5BFE24:  MOVW            R9, #0x101
5BFE28:  MOVS            R5, #0
5BFE2A:  ADD             R0, PC; _ZN10C3dMarkers14m_aMarkerArrayE_ptr
5BFE2C:  LDR.W           R11, [R0]; C3dMarkers::m_aMarkerArray ...
5BFE30:  LDR             R0, =(_ZN10C3dMarkers14m_aMarkerArrayE_ptr - 0x5BFE36)
5BFE32:  ADD             R0, PC; _ZN10C3dMarkers14m_aMarkerArrayE_ptr
5BFE34:  LDR.W           R8, [R0]; C3dMarkers::m_aMarkerArray ...
5BFE38:  ADD.W           R6, R11, R5
5BFE3C:  LDR             R0, [R6,#0x48]
5BFE3E:  CBZ             R0, loc_5BFE5C
5BFE40:  ADD.W           R1, R8, R5
5BFE44:  STR.W           R10, [R1,#0x60]
5BFE48:  STRD.W          R9, R10, [R1,#0x50]
5BFE4C:  LDR             R4, [R0,#4]
5BFE4E:  BLX.W           j__Z15RpAtomicDestroyP8RpAtomic; RpAtomicDestroy(RpAtomic *)
5BFE52:  MOV             R0, R4
5BFE54:  BLX.W           j__Z14RwFrameDestroyP7RwFrame; RwFrameDestroy(RwFrame *)
5BFE58:  STR.W           R10, [R6,#0x48]
5BFE5C:  ADDS            R5, #0xA0
5BFE5E:  CMP.W           R5, #0x1400
5BFE62:  BNE             loc_5BFE38
5BFE64:  LDR             R0, =(_ZN10C3dMarkers15m_pRpClumpArrayE_ptr - 0x5BFE6C)
5BFE66:  MOVS            R5, #0
5BFE68:  ADD             R0, PC; _ZN10C3dMarkers15m_pRpClumpArrayE_ptr
5BFE6A:  LDR             R6, [R0]; C3dMarkers::m_pRpClumpArray ...
5BFE6C:  LDR             R0, =(_Z12RemoveRefsCBP8RpAtomicPv_ptr - 0x5BFE72)
5BFE6E:  ADD             R0, PC; _Z12RemoveRefsCBP8RpAtomicPv_ptr
5BFE70:  LDR             R0, [R0]; RemoveRefsCB(RpAtomic *,void *)
5BFE72:  STR             R0, [SP,#0x50+var_20]
5BFE74:  LDR             R0, =(_ZN10C3dMarkers15m_pRpClumpArrayE_ptr - 0x5BFE7A)
5BFE76:  ADD             R0, PC; _ZN10C3dMarkers15m_pRpClumpArrayE_ptr
5BFE78:  LDR             R0, [R0]; C3dMarkers::m_pRpClumpArray ...
5BFE7A:  STR             R0, [SP,#0x50+var_24]
5BFE7C:  LDR             R0, =(_ZN10C3dMarkers15m_pRpClumpArrayE_ptr - 0x5BFE82)
5BFE7E:  ADD             R0, PC; _ZN10C3dMarkers15m_pRpClumpArrayE_ptr
5BFE80:  LDR             R0, [R0]; C3dMarkers::m_pRpClumpArray ...
5BFE82:  STR             R0, [SP,#0x50+var_2C]
5BFE84:  LDR             R0, =(_ZN10C3dMarkers15m_pRpClumpArrayE_ptr - 0x5BFE8A)
5BFE86:  ADD             R0, PC; _ZN10C3dMarkers15m_pRpClumpArrayE_ptr
5BFE88:  LDR             R0, [R0]; C3dMarkers::m_pRpClumpArray ...
5BFE8A:  STR             R0, [SP,#0x50+var_34]
5BFE8C:  LDR             R0, =(_ZN10C3dMarkers15m_pRpClumpArrayE_ptr - 0x5BFE92)
5BFE8E:  ADD             R0, PC; _ZN10C3dMarkers15m_pRpClumpArrayE_ptr
5BFE90:  LDR             R0, [R0]; C3dMarkers::m_pRpClumpArray ...
5BFE92:  STR             R0, [SP,#0x50+var_30]
5BFE94:  LDR             R0, =(_ZN10C3dMarkers15m_pRpClumpArrayE_ptr - 0x5BFE9A)
5BFE96:  ADD             R0, PC; _ZN10C3dMarkers15m_pRpClumpArrayE_ptr
5BFE98:  LDR             R0, [R0]; C3dMarkers::m_pRpClumpArray ...
5BFE9A:  STR             R0, [SP,#0x50+var_38]
5BFE9C:  LDR             R0, =(_ZN10C3dMarkers15m_pRpClumpArrayE_ptr - 0x5BFEA2)
5BFE9E:  ADD             R0, PC; _ZN10C3dMarkers15m_pRpClumpArrayE_ptr
5BFEA0:  LDR.W           R10, [R0]; C3dMarkers::m_pRpClumpArray ...
5BFEA4:  LDR             R0, =(_ZN10C3dMarkers15m_pRpClumpArrayE_ptr - 0x5BFEAA)
5BFEA6:  ADD             R0, PC; _ZN10C3dMarkers15m_pRpClumpArrayE_ptr
5BFEA8:  LDR             R0, [R0]; C3dMarkers::m_pRpClumpArray ...
5BFEAA:  STR             R0, [SP,#0x50+var_3C]
5BFEAC:  LDR             R0, =(_ZN10C3dMarkers15m_pRpClumpArrayE_ptr - 0x5BFEB2)
5BFEAE:  ADD             R0, PC; _ZN10C3dMarkers15m_pRpClumpArrayE_ptr
5BFEB0:  LDR             R0, [R0]; C3dMarkers::m_pRpClumpArray ...
5BFEB2:  STR             R0, [SP,#0x50+var_28]
5BFEB4:  LDR             R0, =(_ZN10C3dMarkers15m_pRpClumpArrayE_ptr - 0x5BFEBA)
5BFEB6:  ADD             R0, PC; _ZN10C3dMarkers15m_pRpClumpArrayE_ptr
5BFEB8:  LDR.W           R9, [R0]; C3dMarkers::m_pRpClumpArray ...
5BFEBC:  LDR             R0, =(_ZN10C3dMarkers15m_pRpClumpArrayE_ptr - 0x5BFEC2)
5BFEBE:  ADD             R0, PC; _ZN10C3dMarkers15m_pRpClumpArrayE_ptr
5BFEC0:  LDR             R0, [R0]; C3dMarkers::m_pRpClumpArray ...
5BFEC2:  STR             R0, [SP,#0x50+var_40]
5BFEC4:  LDR             R0, =(_ZN10C3dMarkers15m_pRpClumpArrayE_ptr - 0x5BFECA)
5BFEC6:  ADD             R0, PC; _ZN10C3dMarkers15m_pRpClumpArrayE_ptr
5BFEC8:  LDR.W           R8, [R0]; C3dMarkers::m_pRpClumpArray ...
5BFECC:  LDR             R0, =(_ZN10C3dMarkers15m_pRpClumpArrayE_ptr - 0x5BFED2)
5BFECE:  ADD             R0, PC; _ZN10C3dMarkers15m_pRpClumpArrayE_ptr
5BFED0:  LDR             R0, [R0]; C3dMarkers::m_pRpClumpArray ...
5BFED2:  STR             R0, [SP,#0x50+var_44]
5BFED4:  LDR             R0, =(_ZN10C3dMarkers15m_pRpClumpArrayE_ptr - 0x5BFEDA)
5BFED6:  ADD             R0, PC; _ZN10C3dMarkers15m_pRpClumpArrayE_ptr
5BFED8:  LDR.W           R11, [R0]; C3dMarkers::m_pRpClumpArray ...
5BFEDC:  LDR             R0, =(_ZN10C3dMarkers15m_pRpClumpArrayE_ptr - 0x5BFEE2)
5BFEDE:  ADD             R0, PC; _ZN10C3dMarkers15m_pRpClumpArrayE_ptr
5BFEE0:  LDR             R0, [R0]; C3dMarkers::m_pRpClumpArray ...
5BFEE2:  STR             R0, [SP,#0x50+var_48]
5BFEE4:  LDR             R0, =(_ZN10C3dMarkers15m_pRpClumpArrayE_ptr - 0x5BFEEA)
5BFEE6:  ADD             R0, PC; _ZN10C3dMarkers15m_pRpClumpArrayE_ptr
5BFEE8:  LDR             R4, [R0]; C3dMarkers::m_pRpClumpArray ...
5BFEEA:  LDR             R0, =(_ZN10C3dMarkers15m_pRpClumpArrayE_ptr - 0x5BFEF0)
5BFEEC:  ADD             R0, PC; _ZN10C3dMarkers15m_pRpClumpArrayE_ptr
5BFEEE:  LDR             R0, [R0]; C3dMarkers::m_pRpClumpArray ...
5BFEF0:  STR             R0, [SP,#0x50+var_4C]
5BFEF2:  LDR             R0, [R6,R5]
5BFEF4:  CMP             R0, #0
5BFEF6:  BEQ             loc_5BFF90
5BFEF8:  LDR             R1, [SP,#0x50+var_20]
5BFEFA:  MOVS            R2, #0
5BFEFC:  BLX.W           j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
5BFF00:  LDR             R0, [SP,#0x50+var_24]
5BFF02:  LDR             R0, [R0,R5]
5BFF04:  BLX.W           j__Z14RpClumpDestroyP7RpClump; RpClumpDestroy(RpClump *)
5BFF08:  MOVS            R2, #0
5BFF0A:  CBZ             R5, loc_5BFF1C
5BFF0C:  LDR             R0, [R4,R5]
5BFF0E:  LDR             R1, [R4]; C3dMarkers::m_pRpClumpArray
5BFF10:  CMP             R1, R0
5BFF12:  ITT EQ
5BFF14:  LDREQ           R0, [SP,#0x50+var_4C]
5BFF16:  STREQ           R2, [R0]
5BFF18:  CMP             R5, #4
5BFF1A:  BEQ             loc_5BFF2E
5BFF1C:  LDR             R1, [SP,#0x50+var_2C]
5BFF1E:  LDR             R0, [R1,R5]
5BFF20:  LDR             R1, [R1,#4]
5BFF22:  CMP             R1, R0
5BFF24:  ITT EQ
5BFF26:  LDREQ           R0, [SP,#0x50+var_34]
5BFF28:  STREQ           R2, [R0,#4]
5BFF2A:  CMP             R5, #8
5BFF2C:  BEQ             loc_5BFF42
5BFF2E:  LDR.W           R0, [R11,R5]
5BFF32:  LDR.W           R1, [R11,#(dword_A57960 - 0xA57958)]
5BFF36:  CMP             R1, R0
5BFF38:  ITT EQ
5BFF3A:  LDREQ           R0, [SP,#0x50+var_48]
5BFF3C:  STREQ           R2, [R0,#8]
5BFF3E:  CMP             R5, #0xC
5BFF40:  BEQ             loc_5BFF54
5BFF42:  LDR             R1, [SP,#0x50+var_30]
5BFF44:  LDR             R0, [R1,R5]
5BFF46:  LDR             R1, [R1,#0xC]
5BFF48:  CMP             R1, R0
5BFF4A:  ITT EQ
5BFF4C:  LDREQ           R0, [SP,#0x50+var_38]
5BFF4E:  STREQ           R2, [R0,#0xC]
5BFF50:  CMP             R5, #0x10
5BFF52:  BEQ             loc_5BFF68
5BFF54:  LDR.W           R0, [R8,R5]
5BFF58:  LDR.W           R1, [R8,#(dword_A57968 - 0xA57958)]
5BFF5C:  CMP             R1, R0
5BFF5E:  ITT EQ
5BFF60:  LDREQ           R0, [SP,#0x50+var_44]
5BFF62:  STREQ           R2, [R0,#0x10]
5BFF64:  CMP             R5, #0x14
5BFF66:  BEQ             loc_5BFF7C
5BFF68:  LDR.W           R0, [R10,R5]
5BFF6C:  LDR.W           R1, [R10,#(dword_A5796C - 0xA57958)]
5BFF70:  CMP             R1, R0
5BFF72:  ITT EQ
5BFF74:  LDREQ           R0, [SP,#0x50+var_3C]
5BFF76:  STREQ           R2, [R0,#0x14]
5BFF78:  CMP             R5, #0x18
5BFF7A:  BEQ             loc_5BFF8C
5BFF7C:  LDR.W           R0, [R9,R5]
5BFF80:  LDR.W           R1, [R9,#(dword_A57970 - 0xA57958)]
5BFF84:  CMP             R1, R0
5BFF86:  ITT EQ
5BFF88:  LDREQ           R0, [SP,#0x50+var_40]
5BFF8A:  STREQ           R2, [R0,#0x18]
5BFF8C:  LDR             R0, [SP,#0x50+var_28]
5BFF8E:  STR             R2, [R0,R5]
5BFF90:  ADDS            R5, #4
5BFF92:  CMP             R5, #0x1C
5BFF94:  BNE             loc_5BFEF2
5BFF96:  ADD             SP, SP, #0x34 ; '4'
5BFF98:  POP.W           {R8-R11}
5BFF9C:  POP             {R4-R7,PC}
