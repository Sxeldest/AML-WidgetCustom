; =========================================================
; Game Engine Function: _ZN4CPad12SniperZoomInEv
; Address            : 0x3FC0A0 - 0x3FC162
; =========================================================

3FC0A0:  PUSH            {R4,R6,R7,LR}
3FC0A2:  ADD             R7, SP, #8
3FC0A4:  LDRH.W          R0, [R0,#0x110]
3FC0A8:  CBZ             R0, loc_3FC0B0
3FC0AA:  MOVS            R4, #0
3FC0AC:  MOV             R0, R4
3FC0AE:  POP             {R4,R6,R7,PC}
3FC0B0:  MOVS            R0, #0x32 ; '2'
3FC0B2:  MOVS            R1, #0
3FC0B4:  MOVS            R2, #1
3FC0B6:  MOVS            R4, #1
3FC0B8:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FC0BC:  CBZ             R0, loc_3FC0C2
3FC0BE:  MOV             R0, R4
3FC0C0:  POP             {R4,R6,R7,PC}
3FC0C2:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x3FC0C8)
3FC0C4:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
3FC0C6:  LDR             R0, [R0]; this
3FC0C8:  LDR.W           R4, [R0,#(dword_6F3A50 - 0x6F3794)]
3FC0CC:  CMP             R4, #0
3FC0CE:  BEQ             loc_3FC15A
3FC0D0:  BLX             j__ZN15CTouchInterface13GetNumTouchesEv; CTouchInterface::GetNumTouches(void)
3FC0D4:  CMP             R0, #1
3FC0D6:  BGT             loc_3FC0E6
3FC0D8:  LDR             R1, =(byte_959E24 - 0x3FC0E0)
3FC0DA:  MOVS            R0, #0
3FC0DC:  ADD             R1, PC; byte_959E24
3FC0DE:  STRB            R0, [R1]
3FC0E0:  MOVS            R1, #1
3FC0E2:  ANDS            R0, R1
3FC0E4:  POP             {R4,R6,R7,PC}
3FC0E6:  BLX             j__ZN15CTouchInterface13GetNumTouchesEv; CTouchInterface::GetNumTouches(void)
3FC0EA:  CMP             R0, #2
3FC0EC:  BLT             loc_3FC15A
3FC0EE:  LDR             R0, [R4]
3FC0F0:  LDR             R1, [R0,#0x18]
3FC0F2:  MOV             R0, R4
3FC0F4:  BLX             R1
3FC0F6:  LDR             R1, =(byte_959E24 - 0x3FC100)
3FC0F8:  VMOV            S0, R0
3FC0FC:  ADD             R1, PC; byte_959E24
3FC0FE:  LDRB            R0, [R1]
3FC100:  CMP             R0, #1
3FC102:  BNE             loc_3FC10E
3FC104:  LDR             R0, =(unk_959E28 - 0x3FC10A)
3FC106:  ADD             R0, PC; unk_959E28
3FC108:  VLDR            S2, [R0]
3FC10C:  B               loc_3FC122
3FC10E:  VMOV.F32        S2, S0
3FC112:  LDR             R0, =(unk_959E28 - 0x3FC11A)
3FC114:  LDR             R1, =(byte_959E24 - 0x3FC11C)
3FC116:  ADD             R0, PC; unk_959E28
3FC118:  ADD             R1, PC; byte_959E24
3FC11A:  VSTR            S0, [R0]
3FC11E:  MOVS            R0, #1
3FC120:  STRB            R0, [R1]
3FC122:  LDR             R0, =(RsGlobal_ptr - 0x3FC130)
3FC124:  VSUB.F32        S2, S2, S0
3FC128:  VLDR            S6, =0.005
3FC12C:  ADD             R0, PC; RsGlobal_ptr
3FC12E:  LDR             R0, [R0]; RsGlobal
3FC130:  LDR             R0, [R0,#(dword_9FC900 - 0x9FC8FC)]
3FC132:  NEGS            R0, R0
3FC134:  VMOV            S4, R0
3FC138:  VCVT.F32.S32    S4, S4
3FC13C:  VMUL.F32        S4, S4, S6
3FC140:  VCMPE.F32       S2, S4
3FC144:  VMRS            APSR_nzcv, FPSCR
3FC148:  BGE             loc_3FC15A
3FC14A:  LDR             R0, =(unk_959E28 - 0x3FC152)
3FC14C:  MOVS            R1, #1
3FC14E:  ADD             R0, PC; unk_959E28
3FC150:  VSTR            S0, [R0]
3FC154:  MOVS            R0, #1
3FC156:  ANDS            R0, R1
3FC158:  POP             {R4,R6,R7,PC}
3FC15A:  MOVS            R0, #1
3FC15C:  MOVS            R1, #0
3FC15E:  ANDS            R0, R1
3FC160:  POP             {R4,R6,R7,PC}
