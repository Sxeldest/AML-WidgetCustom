; =========================================================
; Game Engine Function: _ZN4CPad13SniperZoomOutEv
; Address            : 0x3FC188 - 0x3FC246
; =========================================================

3FC188:  PUSH            {R4,R6,R7,LR}
3FC18A:  ADD             R7, SP, #8
3FC18C:  LDRH.W          R0, [R0,#0x110]
3FC190:  CBZ             R0, loc_3FC198
3FC192:  MOVS            R4, #0
3FC194:  MOV             R0, R4
3FC196:  POP             {R4,R6,R7,PC}
3FC198:  MOVS            R0, #0x33 ; '3'
3FC19A:  MOVS            R1, #0
3FC19C:  MOVS            R2, #1
3FC19E:  MOVS            R4, #1
3FC1A0:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FC1A4:  CBZ             R0, loc_3FC1AA
3FC1A6:  MOV             R0, R4
3FC1A8:  POP             {R4,R6,R7,PC}
3FC1AA:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x3FC1B0)
3FC1AC:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
3FC1AE:  LDR             R0, [R0]; this
3FC1B0:  LDR.W           R4, [R0,#(dword_6F3A50 - 0x6F3794)]
3FC1B4:  CMP             R4, #0
3FC1B6:  BEQ             loc_3FC23E
3FC1B8:  BLX             j__ZN15CTouchInterface13GetNumTouchesEv; CTouchInterface::GetNumTouches(void)
3FC1BC:  CMP             R0, #1
3FC1BE:  BGT             loc_3FC1CE
3FC1C0:  LDR             R1, =(byte_959E24 - 0x3FC1C8)
3FC1C2:  MOVS            R0, #0
3FC1C4:  ADD             R1, PC; byte_959E24
3FC1C6:  STRB            R0, [R1]
3FC1C8:  MOVS            R1, #1
3FC1CA:  ANDS            R0, R1
3FC1CC:  POP             {R4,R6,R7,PC}
3FC1CE:  BLX             j__ZN15CTouchInterface13GetNumTouchesEv; CTouchInterface::GetNumTouches(void)
3FC1D2:  CMP             R0, #2
3FC1D4:  BLT             loc_3FC23E
3FC1D6:  LDR             R0, [R4]
3FC1D8:  LDR             R1, [R0,#0x18]
3FC1DA:  MOV             R0, R4
3FC1DC:  BLX             R1
3FC1DE:  LDR             R1, =(byte_959E24 - 0x3FC1E8)
3FC1E0:  VMOV            S0, R0
3FC1E4:  ADD             R1, PC; byte_959E24
3FC1E6:  LDRB            R0, [R1]
3FC1E8:  CMP             R0, #1
3FC1EA:  BNE             loc_3FC1F6
3FC1EC:  LDR             R0, =(unk_959E28 - 0x3FC1F2)
3FC1EE:  ADD             R0, PC; unk_959E28
3FC1F0:  VLDR            S2, [R0]
3FC1F4:  B               loc_3FC20A
3FC1F6:  VMOV.F32        S2, S0
3FC1FA:  LDR             R0, =(unk_959E28 - 0x3FC202)
3FC1FC:  LDR             R1, =(byte_959E24 - 0x3FC204)
3FC1FE:  ADD             R0, PC; unk_959E28
3FC200:  ADD             R1, PC; byte_959E24
3FC202:  VSTR            S0, [R0]
3FC206:  MOVS            R0, #1
3FC208:  STRB            R0, [R1]
3FC20A:  LDR             R0, =(RsGlobal_ptr - 0x3FC218)
3FC20C:  VSUB.F32        S2, S2, S0
3FC210:  VLDR            S6, =0.005
3FC214:  ADD             R0, PC; RsGlobal_ptr
3FC216:  LDR             R0, [R0]; RsGlobal
3FC218:  VLDR            S4, [R0,#4]
3FC21C:  VCVT.F32.S32    S4, S4
3FC220:  VMUL.F32        S4, S4, S6
3FC224:  VCMPE.F32       S2, S4
3FC228:  VMRS            APSR_nzcv, FPSCR
3FC22C:  BLE             loc_3FC23E
3FC22E:  LDR             R0, =(unk_959E28 - 0x3FC236)
3FC230:  MOVS            R1, #1
3FC232:  ADD             R0, PC; unk_959E28
3FC234:  VSTR            S0, [R0]
3FC238:  MOVS            R0, #1
3FC23A:  ANDS            R0, R1
3FC23C:  POP             {R4,R6,R7,PC}
3FC23E:  MOVS            R0, #1
3FC240:  MOVS            R1, #0
3FC242:  ANDS            R0, R1
3FC244:  POP             {R4,R6,R7,PC}
