; =========================================================
; Game Engine Function: _ZN10CSkidmarks11RegisterOneEjRK7CVectorff13eSkidmarkTypePbf
; Address            : 0x5BEC74 - 0x5BEFDA
; =========================================================

5BEC74:  PUSH            {R4-R7,LR}
5BEC76:  ADD             R7, SP, #0xC
5BEC78:  PUSH.W          {R8-R11}
5BEC7C:  SUB             SP, SP, #4
5BEC7E:  VPUSH           {D8}
5BEC82:  SUB             SP, SP, #0x20
5BEC84:  MOV             LR, R1
5BEC86:  LDR             R1, =(_ZN10CSkidmarks10aSkidmarksE_ptr - 0x5BEC94)
5BEC88:  LDRD.W          R6, R12, [R7,#arg_0]
5BEC8C:  VMOV            S2, R3
5BEC90:  ADD             R1, PC; _ZN10CSkidmarks10aSkidmarksE_ptr
5BEC92:  VLDR            S0, [R7,#arg_8]
5BEC96:  VMOV            S4, R2
5BEC9A:  LDR             R1, [R1]; CSkidmarks::aSkidmarks ...
5BEC9C:  ADD.W           R4, R1, #0xC0
5BECA0:  MOV.W           R1, #0xFFFFFFFF
5BECA4:  LDRB.W          R2, [R4,#0x96]
5BECA8:  CMP             R2, #1
5BECAA:  ITT EQ
5BECAC:  LDREQ.W         R2, [R4,#0x80]
5BECB0:  CMPEQ           R2, R0
5BECB2:  BEQ.W           loc_5BEE48
5BECB6:  ADDS            R1, #1
5BECB8:  ADD.W           R4, R4, #0x158
5BECBC:  CMP             R1, #0x1F
5BECBE:  BLT             loc_5BECA4
5BECC0:  LDR             R1, =(_ZN10CSkidmarks10aSkidmarksE_ptr - 0x5BECC6)
5BECC2:  ADD             R1, PC; _ZN10CSkidmarks10aSkidmarksE_ptr
5BECC4:  LDR             R1, [R1]; CSkidmarks::aSkidmarks ...
5BECC6:  ADD.W           R3, R1, #0x156
5BECCA:  MOVS            R1, #0
5BECCC:  LDRB            R2, [R3]
5BECCE:  CMP             R2, #0
5BECD0:  BEQ.W           loc_5BEDEE
5BECD4:  ADDS            R4, R1, #1
5BECD6:  ADD.W           R3, R3, #0x158
5BECDA:  CMP             R1, #0x1F
5BECDC:  MOV             R1, R4
5BECDE:  BLT             loc_5BECCC
5BECE0:  STRD.W          R0, LR, [SP,#0x48+var_48]
5BECE4:  VMOV.F32        S16, #0.5
5BECE8:  LDR             R0, =(_ZN10CSkidmarks10aSkidmarksE_ptr - 0x5BECFA)
5BECEA:  MOV.W           R5, #0xFFFFFFFF
5BECEE:  MOV.W           R9, #0
5BECF2:  MOV.W           R11, #0
5BECF6:  ADD             R0, PC; _ZN10CSkidmarks10aSkidmarksE_ptr
5BECF8:  LDR.W           R10, [R0]; CSkidmarks::aSkidmarks ...
5BECFC:  LDR             R0, =(_ZN10CSkidmarks10aSkidmarksE_ptr - 0x5BED02)
5BECFE:  ADD             R0, PC; _ZN10CSkidmarks10aSkidmarksE_ptr
5BED00:  LDR.W           R8, [R0]; CSkidmarks::aSkidmarks ...
5BED04:  LDR             R0, =(_ZN10CSkidmarks10aSkidmarksE_ptr - 0x5BED0A)
5BED06:  ADD             R0, PC; _ZN10CSkidmarks10aSkidmarksE_ptr
5BED08:  LDR             R0, [R0]; CSkidmarks::aSkidmarks ...
5BED0A:  STR             R0, [SP,#0x48+var_38]
5BED0C:  LDR             R0, =(TheCamera_ptr - 0x5BED12)
5BED0E:  ADD             R0, PC; TheCamera_ptr
5BED10:  LDR             R0, [R0]; TheCamera
5BED12:  STR             R0, [SP,#0x48+var_3C]
5BED14:  MOV.W           R0, #0xFFFFFFFF
5BED18:  STR             R0, [SP,#0x48+var_40]
5BED1A:  ADD.W           R0, R10, R9
5BED1E:  LDRB.W          R0, [R0,#0x157]
5BED22:  CMP             R0, #0
5BED24:  BNE             loc_5BEDBE
5BED26:  ADD.W           R6, R8, R9
5BED2A:  LDR.W           R0, [R6,#0x144]
5BED2E:  CMP             R0, R5
5BED30:  BCS             loc_5BEDBE
5BED32:  LDR             R2, [SP,#0x48+var_38]
5BED34:  ADD.W           R0, R2, R9
5BED38:  LDRSH.W         R1, [R0,#0x154]
5BED3C:  VLDR            S0, [R0]
5BED40:  VLDR            S2, [R0,#4]
5BED44:  VLDR            S4, [R0,#8]
5BED48:  ADD.W           R0, R1, R1,LSL#1
5BED4C:  ADD             R1, SP, #0x48+var_34; CVector *
5BED4E:  ADD.W           R0, R9, R0,LSL#2
5BED52:  ADD             R0, R2
5BED54:  VLDR            S6, [R0]
5BED58:  VLDR            S8, [R0,#4]
5BED5C:  VADD.F32        S6, S0, S6
5BED60:  VLDR            S10, [R0,#8]
5BED64:  VADD.F32        S8, S2, S8
5BED68:  LDR             R0, [SP,#0x48+var_3C]; this
5BED6A:  VADD.F32        S10, S4, S10
5BED6E:  VMUL.F32        S6, S6, S16
5BED72:  VMUL.F32        S8, S8, S16
5BED76:  VMUL.F32        S10, S10, S16
5BED7A:  VSUB.F32        S0, S0, S6
5BED7E:  VSUB.F32        S2, S2, S8
5BED82:  VSTR            S8, [SP,#0x48+var_30]
5BED86:  VSUB.F32        S4, S4, S10
5BED8A:  VSTR            S6, [SP,#0x48+var_34]
5BED8E:  VSTR            S10, [SP,#0x48+var_2C]
5BED92:  VMUL.F32        S0, S0, S0
5BED96:  VMUL.F32        S2, S2, S2
5BED9A:  VMUL.F32        S4, S4, S4
5BED9E:  VADD.F32        S0, S0, S2
5BEDA2:  VADD.F32        S0, S0, S4
5BEDA6:  VSQRT.F32       S0, S0
5BEDAA:  VMOV            R2, S0; float
5BEDAE:  BLX.W           j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
5BEDB2:  CMP             R0, #0
5BEDB4:  ITT EQ
5BEDB6:  LDREQ.W         R5, [R6,#0x144]
5BEDBA:  STREQ.W         R11, [SP,#0x48+var_40]
5BEDBE:  ADD.W           R9, R9, #0x158
5BEDC2:  ADD.W           R11, R11, #1
5BEDC6:  CMP.W           R9, #0x2B00
5BEDCA:  BNE             loc_5BED1A
5BEDCC:  LDR             R0, [SP,#0x48+var_40]
5BEDCE:  LDR             R6, [R7,#arg_4]
5BEDD0:  CMP.W           R0, #0xFFFFFFFF
5BEDD4:  IT GT
5BEDD6:  MOVGT           R4, R0
5BEDD8:  LDR.W           LR, [SP,#0x48+var_44]
5BEDDC:  MOV             R12, R6
5BEDDE:  LDR             R6, [R7,#arg_0]
5BEDE0:  LDR             R0, [SP,#0x48+var_48]
5BEDE2:  CMP             R4, #0x1F
5BEDE4:  BLE             loc_5BEDF0
5BEDE6:  MOVS            R0, #0
5BEDE8:  STRB.W          R0, [R12]
5BEDEC:  B               loc_5BEFCC
5BEDEE:  MOV             R4, R1
5BEDF0:  LDR             R2, =(_ZN10CSkidmarks10aSkidmarksE_ptr - 0x5BEDFA)
5BEDF2:  MOV.W           R1, #0x158
5BEDF6:  ADD             R2, PC; _ZN10CSkidmarks10aSkidmarksE_ptr
5BEDF8:  LDR             R2, [R2]; CSkidmarks::aSkidmarks ...
5BEDFA:  MLA.W           R4, R4, R1, R2
5BEDFE:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5BEE06)
5BEE00:  MOVS            R2, #1
5BEE02:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5BEE04:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
5BEE06:  STR.W           R0, [R4,#0x140]
5BEE0A:  STRB.W          R2, [R4,#0x156]
5BEE0E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
5BEE10:  VLDR            D16, [LR]
5BEE14:  LDR.W           R3, [LR,#8]
5BEE18:  SUB.W           R1, R1, #0x3E8
5BEE1C:  STR             R3, [R4,#8]
5BEE1E:  MOVS            R3, #0
5BEE20:  STR.W           R3, [R4,#0xC0]
5BEE24:  STR.W           R3, [R4,#0x100]
5BEE28:  STRB.W          R2, [R4,#0x157]
5BEE2C:  STRH.W          R3, [R4,#0x154]
5BEE30:  VSTR            D16, [R4]
5BEE34:  STR.W           R1, [R4,#0x144]
5BEE38:  LDRB.W          R1, [R12]
5BEE3C:  CMP             R1, #0
5BEE3E:  IT NE
5BEE40:  MOVNE           R6, #3
5BEE42:  STR.W           R6, [R4,#0x150]
5BEE46:  B               loc_5BEFCC
5BEE48:  LDR.W           R1, [R4,#0x90]
5BEE4C:  MOVS            R3, #0
5BEE4E:  LDRB.W          R2, [R12]
5BEE52:  CMP             R1, #3
5BEE54:  IT EQ
5BEE56:  MOVEQ           R3, #1
5BEE58:  CMP             R3, R2
5BEE5A:  BNE             loc_5BEEEC
5BEE5C:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5BEE68)
5BEE5E:  MOVS            R3, #1
5BEE60:  LDR.W           R2, [R4,#0x84]
5BEE64:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5BEE66:  STRB.W          R3, [R4,#0x97]
5BEE6A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
5BEE6C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
5BEE6E:  SUBS            R2, R1, R2
5BEE70:  CMP             R2, #0x65 ; 'e'
5BEE72:  BCC             loc_5BEF0C
5BEE74:  LDRSH.W         R2, [R4,#0x94]
5BEE78:  STR.W           R1, [R4,#0x84]
5BEE7C:  CMP             R2, #0xE
5BEE7E:  BGT             loc_5BEF2A
5BEE80:  ADDS            R1, R2, #1
5BEE82:  STRH.W          R1, [R4,#0x94]
5BEE86:  VLDR            D16, [LR]
5BEE8A:  SXTH            R1, R1
5BEE8C:  LDR.W           R2, [LR,#8]
5BEE90:  ADD.W           R1, R1, R1,LSL#1
5BEE94:  ADD.W           R1, R4, R1,LSL#2
5BEE98:  STR.W           R2, [R1,#-0xB8]
5BEE9C:  VSTR            D16, [R1,#-0xC0]
5BEEA0:  LDRSH.W         R1, [R4,#0x94]
5BEEA4:  ADD.W           R2, R1, R1,LSL#1
5BEEA8:  ADD.W           R2, R4, R2,LSL#2
5BEEAC:  VLDR            S6, [R2,#-0xC0]
5BEEB0:  VLDR            S10, [R2,#-0xCC]
5BEEB4:  VLDR            S8, [R2,#-0xBC]
5BEEB8:  VLDR            S12, [R2,#-0xC8]
5BEEBC:  VSUB.F32        S6, S10, S6
5BEEC0:  VSUB.F32        S10, S8, S12
5BEEC4:  VMUL.F32        S8, S6, S6
5BEEC8:  VMUL.F32        S12, S10, S10
5BEECC:  VADD.F32        S8, S12, S8
5BEED0:  VSQRT.F32       S12, S8
5BEED4:  VMOV.F32        S8, #1.0
5BEED8:  VCMPE.F32       S12, #0.0
5BEEDC:  VMRS            APSR_nzcv, FPSCR
5BEEE0:  BLE             loc_5BEF44
5BEEE2:  VDIV.F32        S6, S6, S12
5BEEE6:  VDIV.F32        S10, S10, S12
5BEEEA:  B               loc_5BEF48
5BEEEC:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5BEEFC)
5BEEEE:  MOVS            R2, #2
5BEEF0:  STRB.W          R2, [R4,#0x96]
5BEEF4:  MOVW            R2, #0x4E20
5BEEF8:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5BEEFA:  MOVW            R3, #0x2710
5BEEFE:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
5BEF00:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
5BEF02:  ADD             R2, R1
5BEF04:  ADD             R1, R3
5BEF06:  STRD.W          R1, R2, [R4,#0x88]
5BEF0A:  B               loc_5BEFCC
5BEF0C:  LDRSH.W         R1, [R4,#0x94]
5BEF10:  VLDR            D16, [LR]
5BEF14:  LDR.W           R2, [LR,#8]
5BEF18:  ADD.W           R1, R1, R1,LSL#1
5BEF1C:  ADD.W           R0, R4, R1,LSL#2
5BEF20:  STR.W           R2, [R0,#-0xB8]
5BEF24:  VSTR            D16, [R0,#-0xC0]
5BEF28:  B               loc_5BEFCC
5BEF2A:  MOVS            R2, #2
5BEF2C:  MOVW            R3, #0x4E20
5BEF30:  STRB.W          R2, [R4,#0x96]
5BEF34:  MOVW            R2, #0x2710
5BEF38:  ADD             R2, R1
5BEF3A:  ADD             R3, R1
5BEF3C:  ADD.W           R0, R4, #0x84
5BEF40:  STM             R0!, {R1-R3}
5BEF42:  B               loc_5BEDE6
5BEF44:  VMOV.F32        S10, S8
5BEF48:  VMUL.F32        S12, S2, S2
5BEF4C:  VMUL.F32        S14, S4, S4
5BEF50:  VADD.F32        S12, S14, S12
5BEF54:  VSQRT.F32       S12, S12
5BEF58:  VCMPE.F32       S12, #0.0
5BEF5C:  VMRS            APSR_nzcv, FPSCR
5BEF60:  BLE             loc_5BEF6C
5BEF62:  VDIV.F32        S2, S2, S12
5BEF66:  VDIV.F32        S4, S4, S12
5BEF6A:  B               loc_5BEF70
5BEF6C:  VMOV.F32        S4, S8
5BEF70:  VMUL.F32        S4, S10, S4
5BEF74:  ADD.W           R1, R4, R1,LSL#2
5BEF78:  VMUL.F32        S2, S6, S2
5BEF7C:  VADD.F32        S2, S2, S4
5BEF80:  VABS.F32        S2, S2
5BEF84:  VADD.F32        S2, S2, S8
5BEF88:  VMUL.F32        S4, S10, S2
5BEF8C:  VMUL.F32        S2, S6, S2
5BEF90:  VMOV.F32        S6, #0.5
5BEF94:  VMUL.F32        S4, S4, S0
5BEF98:  VMUL.F32        S0, S2, S0
5BEF9C:  VMUL.F32        S2, S4, S6
5BEFA0:  VMUL.F32        S0, S0, S6
5BEFA4:  VSTR            S2, [R1]
5BEFA8:  LDRSH.W         R1, [R4,#0x94]
5BEFAC:  ADD.W           R1, R4, R1,LSL#2
5BEFB0:  VSTR            S0, [R1,#0x40]
5BEFB4:  LDRSH.W         R1, [R4,#0x94]
5BEFB8:  CMP             R1, #1
5BEFBA:  BNE             loc_5BEFC6
5BEFBC:  LDR             R1, [R4,#4]
5BEFBE:  LDR             R2, [R4,#0x44]
5BEFC0:  STR             R1, [R4]
5BEFC2:  STR             R2, [R4,#0x40]
5BEFC4:  B               loc_5BEFCC
5BEFC6:  CMP             R1, #9
5BEFC8:  BGE.W           loc_5BEDE6
5BEFCC:  ADD             SP, SP, #0x20 ; ' '
5BEFCE:  VPOP            {D8}
5BEFD2:  ADD             SP, SP, #4
5BEFD4:  POP.W           {R8-R11}
5BEFD8:  POP             {R4-R7,PC}
