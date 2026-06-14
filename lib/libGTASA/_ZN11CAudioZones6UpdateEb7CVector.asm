; =========================================================
; Game Engine Function: _ZN11CAudioZones6UpdateEb7CVector
; Address            : 0x3BDA44 - 0x3BDC60
; =========================================================

3BDA44:  PUSH            {R4-R7,LR}
3BDA46:  ADD             R7, SP, #0xC
3BDA48:  PUSH.W          {R8}
3BDA4C:  CBNZ            R0, loc_3BDAB0
3BDA4E:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x3BDA54)
3BDA50:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
3BDA52:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
3BDA54:  LDR             R0, [R0]; CTimer::m_FrameCounter
3BDA56:  AND.W           R0, R0, #0xF
3BDA5A:  CMP             R0, #6
3BDA5C:  BEQ             loc_3BDAB0
3BDA5E:  LDR             R0, =(LastUpdateCoors_ptr - 0x3BDA6C)
3BDA60:  VMOV            S0, R2
3BDA64:  VMOV            S8, R1
3BDA68:  ADD             R0, PC; LastUpdateCoors_ptr
3BDA6A:  LDR             R0, [R0]; LastUpdateCoors
3BDA6C:  VLDR            S2, [R0]
3BDA70:  VLDR            S4, [R0,#4]
3BDA74:  VSUB.F32        S2, S8, S2
3BDA78:  VLDR            S6, [R0,#8]
3BDA7C:  VSUB.F32        S0, S0, S4
3BDA80:  VMOV            S4, R3
3BDA84:  VSUB.F32        S4, S4, S6
3BDA88:  VMUL.F32        S2, S2, S2
3BDA8C:  VMUL.F32        S0, S0, S0
3BDA90:  VMUL.F32        S4, S4, S4
3BDA94:  VADD.F32        S0, S2, S0
3BDA98:  VMOV.F32        S2, #20.0
3BDA9C:  VADD.F32        S0, S0, S4
3BDAA0:  VSQRT.F32       S0, S0
3BDAA4:  VCMPE.F32       S0, S2
3BDAA8:  VMRS            APSR_nzcv, FPSCR
3BDAAC:  BLT.W           loc_3BDC5A
3BDAB0:  LDR             R0, =(LastUpdateCoors_ptr - 0x3BDAB8)
3BDAB2:  LDR             R4, =(_ZN11CAudioZones12m_NumSpheresE_ptr - 0x3BDABC)
3BDAB4:  ADD             R0, PC; LastUpdateCoors_ptr
3BDAB6:  LDR             R6, =(_ZN11CAudioZones18m_NumActiveSpheresE_ptr - 0x3BDAC2)
3BDAB8:  ADD             R4, PC; _ZN11CAudioZones12m_NumSpheresE_ptr
3BDABA:  LDR             R5, =(_ZN11CAudioZones16m_NumActiveBoxesE_ptr - 0x3BDAC6)
3BDABC:  LDR             R0, [R0]; LastUpdateCoors
3BDABE:  ADD             R6, PC; _ZN11CAudioZones18m_NumActiveSpheresE_ptr
3BDAC0:  LDR             R4, [R4]; CAudioZones::m_NumSpheres ...
3BDAC2:  ADD             R5, PC; _ZN11CAudioZones16m_NumActiveBoxesE_ptr
3BDAC4:  STM             R0!, {R1-R3}
3BDAC6:  MOVS            R0, #0
3BDAC8:  LDR             R6, [R6]; CAudioZones::m_NumActiveSpheres ...
3BDACA:  LDR             R5, [R5]; CAudioZones::m_NumActiveBoxes ...
3BDACC:  LDR.W           R12, [R4]; CAudioZones::m_NumSpheres
3BDAD0:  STR             R0, [R6]; CAudioZones::m_NumActiveSpheres
3BDAD2:  CMP.W           R12, #1
3BDAD6:  STR             R0, [R5]; CAudioZones::m_NumActiveBoxes
3BDAD8:  BLT             loc_3BDB64
3BDADA:  LDR             R0, =(_ZN11CAudioZones10m_aSpheresE_ptr - 0x3BDAEC)
3BDADC:  VMOV            S0, R3
3BDAE0:  LDR             R4, =(_ZN11CAudioZones18m_NumActiveSpheresE_ptr - 0x3BDAEE)
3BDAE2:  VMOV            S2, R2
3BDAE6:  LDR             R5, =(_ZN11CAudioZones16m_aActiveSpheresE_ptr - 0x3BDAF4)
3BDAE8:  ADD             R0, PC; _ZN11CAudioZones10m_aSpheresE_ptr
3BDAEA:  ADD             R4, PC; _ZN11CAudioZones18m_NumActiveSpheresE_ptr
3BDAEC:  VMOV            S4, R1
3BDAF0:  ADD             R5, PC; _ZN11CAudioZones16m_aActiveSpheresE_ptr
3BDAF2:  LDR             R0, [R0]; CAudioZones::m_aSpheres ...
3BDAF4:  LDR.W           R8, [R4]; CAudioZones::m_NumActiveSpheres ...
3BDAF8:  MOV.W           LR, #0
3BDAFC:  LDR             R5, [R5]; CAudioZones::m_aActiveSpheres ...
3BDAFE:  ADDS            R0, #0xC
3BDB00:  MOVS            R6, #0
3BDB02:  LDRB.W          R4, [R0,#-2]
3BDB06:  LSLS            R4, R4, #0x1F
3BDB08:  BEQ             loc_3BDB5C
3BDB0A:  CMP.W           LR, #9
3BDB0E:  BGT             loc_3BDB5C
3BDB10:  VLDR            S6, [R0]
3BDB14:  VLDR            S8, [R0,#4]
3BDB18:  VSUB.F32        S6, S4, S6
3BDB1C:  VLDR            S10, [R0,#8]
3BDB20:  VSUB.F32        S8, S2, S8
3BDB24:  VLDR            S12, [R0,#0xC]
3BDB28:  VSUB.F32        S10, S0, S10
3BDB2C:  VMUL.F32        S6, S6, S6
3BDB30:  VMUL.F32        S8, S8, S8
3BDB34:  VMUL.F32        S10, S10, S10
3BDB38:  VADD.F32        S6, S6, S8
3BDB3C:  VADD.F32        S6, S6, S10
3BDB40:  VSQRT.F32       S6, S6
3BDB44:  VCMPE.F32       S6, S12
3BDB48:  VMRS            APSR_nzcv, FPSCR
3BDB4C:  ITTTT LT
3BDB4E:  ADDLT.W         R4, LR, #1
3BDB52:  STRLT.W         R4, [R8]; CAudioZones::m_NumActiveSpheres
3BDB56:  STRLT.W         R6, [R5,LR,LSL#2]
3BDB5A:  MOVLT           LR, R4
3BDB5C:  ADDS            R6, #1
3BDB5E:  ADDS            R0, #0x1C
3BDB60:  CMP             R6, R12
3BDB62:  BLT             loc_3BDB02
3BDB64:  LDR             R0, =(_ZN11CAudioZones10m_NumBoxesE_ptr - 0x3BDB6A)
3BDB66:  ADD             R0, PC; _ZN11CAudioZones10m_NumBoxesE_ptr
3BDB68:  LDR             R0, [R0]; CAudioZones::m_NumBoxes ...
3BDB6A:  LDR             R0, [R0]; CAudioZones::m_NumBoxes
3BDB6C:  CMP             R0, #1
3BDB6E:  BLT             loc_3BDC5A
3BDB70:  LDR             R6, =(_ZN11CAudioZones8m_aBoxesE_ptr - 0x3BDB80)
3BDB72:  VMOV            S0, R3
3BDB76:  LDR             R3, =(_ZN11CAudioZones16m_NumActiveBoxesE_ptr - 0x3BDB86)
3BDB78:  VMOV            S2, R2
3BDB7C:  ADD             R6, PC; _ZN11CAudioZones8m_aBoxesE_ptr
3BDB7E:  VMOV.F32        S6, #0.125
3BDB82:  ADD             R3, PC; _ZN11CAudioZones16m_NumActiveBoxesE_ptr
3BDB84:  VMOV            S4, R1
3BDB88:  LDR             R2, [R6]; CAudioZones::m_aBoxes ...
3BDB8A:  LDR             R6, =(_ZN11CAudioZones14m_aActiveBoxesE_ptr - 0x3BDB98)
3BDB8C:  LDR.W           R12, [R3]; CAudioZones::m_NumActiveBoxes ...
3BDB90:  ADD.W           R1, R2, #0xC
3BDB94:  ADD             R6, PC; _ZN11CAudioZones14m_aActiveBoxesE_ptr
3BDB96:  MOVS            R2, #0
3BDB98:  MOVS            R3, #0
3BDB9A:  LDR.W           LR, [R6]; CAudioZones::m_aActiveBoxes ...
3BDB9E:  LDRB.W          R4, [R1,#-2]
3BDBA2:  LSLS            R4, R4, #0x1F
3BDBA4:  BEQ             loc_3BDC52
3BDBA6:  LDRSH.W         R4, [R1]
3BDBAA:  VMOV            S8, R4
3BDBAE:  VCVT.F32.S32    S8, S8
3BDBB2:  VMUL.F32        S8, S8, S6
3BDBB6:  VCMPE.F32       S8, S4
3BDBBA:  VMRS            APSR_nzcv, FPSCR
3BDBBE:  BGE             loc_3BDC52
3BDBC0:  LDRSH.W         R4, [R1,#6]
3BDBC4:  VMOV            S8, R4
3BDBC8:  VCVT.F32.S32    S8, S8
3BDBCC:  VMUL.F32        S8, S8, S6
3BDBD0:  VCMPE.F32       S8, S4
3BDBD4:  VMRS            APSR_nzcv, FPSCR
3BDBD8:  BLE             loc_3BDC52
3BDBDA:  LDRSH.W         R4, [R1,#2]
3BDBDE:  VMOV            S8, R4
3BDBE2:  VCVT.F32.S32    S8, S8
3BDBE6:  VMUL.F32        S8, S8, S6
3BDBEA:  VCMPE.F32       S8, S2
3BDBEE:  VMRS            APSR_nzcv, FPSCR
3BDBF2:  BGE             loc_3BDC52
3BDBF4:  LDRSH.W         R4, [R1,#8]
3BDBF8:  VMOV            S8, R4
3BDBFC:  VCVT.F32.S32    S8, S8
3BDC00:  VMUL.F32        S8, S8, S6
3BDC04:  VCMPE.F32       S8, S2
3BDC08:  VMRS            APSR_nzcv, FPSCR
3BDC0C:  BLE             loc_3BDC52
3BDC0E:  LDRSH.W         R4, [R1,#4]
3BDC12:  VMOV            S8, R4
3BDC16:  VCVT.F32.S32    S8, S8
3BDC1A:  VMUL.F32        S8, S8, S6
3BDC1E:  VCMPE.F32       S8, S0
3BDC22:  VMRS            APSR_nzcv, FPSCR
3BDC26:  BGE             loc_3BDC52
3BDC28:  LDRSH.W         R4, [R1,#0xA]
3BDC2C:  CMP             R2, #9
3BDC2E:  VMOV            S8, R4
3BDC32:  VCVT.F32.S32    S8, S8
3BDC36:  BGT             loc_3BDC52
3BDC38:  VMUL.F32        S8, S8, S6
3BDC3C:  VCMPE.F32       S8, S0
3BDC40:  VMRS            APSR_nzcv, FPSCR
3BDC44:  ITTTT GT
3BDC46:  ADDGT           R4, R2, #1
3BDC48:  STRGT.W         R4, [R12]; CAudioZones::m_NumActiveBoxes
3BDC4C:  STRGT.W         R3, [LR,R2,LSL#2]
3BDC50:  MOVGT           R2, R4
3BDC52:  ADDS            R3, #1
3BDC54:  ADDS            R1, #0x18
3BDC56:  CMP             R3, R0
3BDC58:  BLT             loc_3BDB9E
3BDC5A:  POP.W           {R8}
3BDC5E:  POP             {R4-R7,PC}
