; =========================================================
; Game Engine Function: _Z14IsPinchZoomingb
; Address            : 0x3FBFB8 - 0x3FC07A
; =========================================================

3FBFB8:  PUSH            {R4,R5,R7,LR}
3FBFBA:  ADD             R7, SP, #8
3FBFBC:  MOV             R4, R0
3FBFBE:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x3FBFC4)
3FBFC0:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
3FBFC2:  LDR             R0, [R0]; this
3FBFC4:  LDR.W           R5, [R0,#(dword_6F3A50 - 0x6F3794)]
3FBFC8:  CBZ             R5, loc_3FC048
3FBFCA:  BLX             j__ZN15CTouchInterface13GetNumTouchesEv; CTouchInterface::GetNumTouches(void)
3FBFCE:  CMP             R0, #1
3FBFD0:  BGT             loc_3FBFE0
3FBFD2:  LDR             R1, =(byte_959E24 - 0x3FBFDA)
3FBFD4:  MOVS            R0, #0
3FBFD6:  ADD             R1, PC; byte_959E24
3FBFD8:  STRB            R0, [R1]
3FBFDA:  MOVS            R1, #1
3FBFDC:  ANDS            R0, R1
3FBFDE:  POP             {R4,R5,R7,PC}
3FBFE0:  BLX             j__ZN15CTouchInterface13GetNumTouchesEv; CTouchInterface::GetNumTouches(void)
3FBFE4:  CMP             R0, #2
3FBFE6:  BLT             loc_3FC048
3FBFE8:  LDR             R0, [R5]
3FBFEA:  LDR             R1, [R0,#0x18]
3FBFEC:  MOV             R0, R5
3FBFEE:  BLX             R1
3FBFF0:  LDR             R1, =(byte_959E24 - 0x3FBFFA)
3FBFF2:  VMOV            S0, R0
3FBFF6:  ADD             R1, PC; byte_959E24
3FBFF8:  LDRB            R0, [R1]
3FBFFA:  CMP             R0, #1
3FBFFC:  BNE             loc_3FC008
3FBFFE:  LDR             R0, =(unk_959E28 - 0x3FC004)
3FC000:  ADD             R0, PC; unk_959E28
3FC002:  VLDR            S2, [R0]
3FC006:  B               loc_3FC01C
3FC008:  VMOV.F32        S2, S0
3FC00C:  LDR             R0, =(unk_959E28 - 0x3FC014)
3FC00E:  LDR             R1, =(byte_959E24 - 0x3FC016)
3FC010:  ADD             R0, PC; unk_959E28
3FC012:  ADD             R1, PC; byte_959E24
3FC014:  VSTR            S0, [R0]
3FC018:  MOVS            R0, #1
3FC01A:  STRB            R0, [R1]
3FC01C:  LDR             R0, =(RsGlobal_ptr - 0x3FC028)
3FC01E:  VSUB.F32        S2, S2, S0
3FC022:  CMP             R4, #1
3FC024:  ADD             R0, PC; RsGlobal_ptr
3FC026:  LDR             R0, [R0]; RsGlobal
3FC028:  LDR             R0, [R0,#(dword_9FC900 - 0x9FC8FC)]
3FC02A:  BNE             loc_3FC050
3FC02C:  NEGS            R0, R0
3FC02E:  VLDR            S6, =0.005
3FC032:  VMOV            S4, R0
3FC036:  VCVT.F32.S32    S4, S4
3FC03A:  VMUL.F32        S4, S4, S6
3FC03E:  VCMPE.F32       S2, S4
3FC042:  VMRS            APSR_nzcv, FPSCR
3FC046:  BLT             loc_3FC06A
3FC048:  MOVS            R0, #1
3FC04A:  MOVS            R1, #0
3FC04C:  ANDS            R0, R1
3FC04E:  POP             {R4,R5,R7,PC}
3FC050:  VMOV            S4, R0
3FC054:  VLDR            S6, =0.005
3FC058:  VCVT.F32.S32    S4, S4
3FC05C:  VMUL.F32        S4, S4, S6
3FC060:  VCMPE.F32       S2, S4
3FC064:  VMRS            APSR_nzcv, FPSCR
3FC068:  BLE             loc_3FC048
3FC06A:  LDR             R0, =(unk_959E28 - 0x3FC072)
3FC06C:  MOVS            R1, #1
3FC06E:  ADD             R0, PC; unk_959E28
3FC070:  VSTR            S0, [R0]
3FC074:  MOVS            R0, #1
3FC076:  ANDS            R0, R1
3FC078:  POP             {R4,R5,R7,PC}
