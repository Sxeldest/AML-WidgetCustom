; =========================================================
; Game Engine Function: _ZN6CStats23UpdateFatAndMuscleStatsEj
; Address            : 0x41AB50 - 0x41AE3A
; =========================================================

41AB50:  PUSH            {R7,LR}
41AB52:  MOV             R7, SP
41AB54:  VPUSH           {D8}; float
41AB58:  LDR             R1, =(_ZN6CStats17StatReactionValueE_ptr - 0x41AB60)
41AB5A:  LDR             R2, =(_ZN6CStats12m_FatCounterE_ptr - 0x41AB66)
41AB5C:  ADD             R1, PC; _ZN6CStats17StatReactionValueE_ptr
41AB5E:  VLDR            S16, =1000.0
41AB62:  ADD             R2, PC; _ZN6CStats12m_FatCounterE_ptr
41AB64:  LDR             R1, [R1]; CStats::StatReactionValue ...
41AB66:  LDR             R2, [R2]; CStats::m_FatCounter ...
41AB68:  VLDR            S0, [R1,#0xA8]
41AB6C:  LDR             R1, [R2]; CStats::m_FatCounter
41AB6E:  VMUL.F32        S0, S0, S16
41AB72:  VMOV            S2, R1
41AB76:  VCVT.F32.U32    S2, S2
41AB7A:  VCMPE.F32       S0, S2
41AB7E:  VMRS            APSR_nzcv, FPSCR
41AB82:  BGE             loc_41AC62
41AB84:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41AB8C)
41AB86:  LDR             R1, =(_ZN6CStats12m_FatCounterE_ptr - 0x41AB8E)
41AB88:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41AB8A:  ADD             R1, PC; _ZN6CStats12m_FatCounterE_ptr
41AB8C:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41AB8E:  LDR             R1, [R1]; bool
41AB90:  VLDR            S0, [R0,#0x54]
41AB94:  MOVS            R0, #0
41AB96:  STR             R0, [R1]; CStats::m_FatCounter
41AB98:  VCMPE.F32       S0, #0.0
41AB9C:  VMRS            APSR_nzcv, FPSCR
41ABA0:  BLE             loc_41AC9C
41ABA2:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41ABA8)
41ABA4:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41ABA6:  LDR             R0, [R0]; CStats::StatReactionValue ...
41ABA8:  VLDR            S2, [R0,#0x5C]
41ABAC:  VCMPE.F32       S2, #0.0
41ABB0:  VMRS            APSR_nzcv, FPSCR
41ABB4:  BLE             loc_41ABD2
41ABB6:  VSUB.F32        S0, S0, S2
41ABBA:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41ABC4)
41ABBC:  VLDR            S4, =0.0
41ABC0:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41ABC2:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41ABC4:  VMAX.F32        D0, D0, D2
41ABC8:  VSTR            S0, [R0,#0x54]
41ABCC:  MOVS            R0, #0; this
41ABCE:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
41ABD2:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41ABD8)
41ABD4:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41ABD6:  LDR             R0, [R0]; CStats::StatReactionValue ...
41ABD8:  VLDR            S0, [R0,#0x24]
41ABDC:  VCMPE.F32       S0, #0.0
41ABE0:  VMRS            APSR_nzcv, FPSCR
41ABE4:  BLE             loc_41AC02
41ABE6:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41ABEC)
41ABE8:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41ABEA:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41ABEC:  VLDR            S2, [R0,#0x5C]
41ABF0:  VADD.F32        S0, S0, S2
41ABF4:  VMIN.F32        D0, D0, D8
41ABF8:  VSTR            S0, [R0,#0x5C]
41ABFC:  MOVS            R0, #0; this
41ABFE:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
41AC02:  LDR             R0, =(byte_965AEC - 0x41AC0A)
41AC04:  MOVS            R2, #1
41AC06:  ADD             R0, PC; byte_965AEC
41AC08:  LDRB            R1, [R0]
41AC0A:  CMP             R1, #1
41AC0C:  IT EQ
41AC0E:  MOVEQ           R2, #2
41AC10:  STRB            R2, [R0]
41AC12:  BNE.W           loc_41AD1E
41AC16:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41AC20)
41AC18:  VMOV.F32        S2, #1.0
41AC1C:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41AC1E:  LDR             R0, [R0]; CStats::StatReactionValue ...
41AC20:  VLDR            S0, [R0,#0x24]
41AC24:  VCMPE.F32       S0, S2
41AC28:  VMRS            APSR_nzcv, FPSCR
41AC2C:  BLE.W           loc_41AD66
41AC30:  LDR             R0, =(_ZN6CStats16bShowUpdateStatsE_ptr - 0x41AC36)
41AC32:  ADD             R0, PC; _ZN6CStats16bShowUpdateStatsE_ptr
41AC34:  LDR             R0, [R0]; CStats::bShowUpdateStats ...
41AC36:  LDRB            R0, [R0]; CStats::bShowUpdateStats
41AC38:  CMP             R0, #0
41AC3A:  BEQ.W           loc_41AD66
41AC3E:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41AC44)
41AC40:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41AC42:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41AC44:  VLDR            S2, [R0,#0x5C]
41AC48:  VCMPE.F32       S2, S16
41AC4C:  VMRS            APSR_nzcv, FPSCR
41AC50:  BGE.W           loc_41AD66
41AC54:  VMOV            R2, S0
41AC58:  MOVS            R3, #0x447A0000
41AC5E:  MOVS            R0, #1
41AC60:  B               loc_41AD1A
41AC62:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x41AC74)
41AC64:  MOVW            R3, #0xCCCD
41AC68:  VLDR            S0, =50.0
41AC6C:  MOVT            R3, #0xCCCC
41AC70:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
41AC72:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
41AC74:  VLDR            S2, [R2]
41AC78:  VDIV.F32        S0, S2, S0
41AC7C:  VMUL.F32        S0, S0, S16
41AC80:  VCVT.U32.F32    S0, S0
41AC84:  VMOV            R2, S0
41AC88:  MULS            R0, R2
41AC8A:  LDR             R2, =(_ZN6CStats12m_FatCounterE_ptr - 0x41AC90)
41AC8C:  ADD             R2, PC; _ZN6CStats12m_FatCounterE_ptr
41AC8E:  UMULL.W         R0, R3, R0, R3
41AC92:  LDR             R0, [R2]; CStats::m_FatCounter ...
41AC94:  ADD.W           R1, R1, R3,LSR#3
41AC98:  STR             R1, [R0]; CStats::m_FatCounter
41AC9A:  B               loc_41AD66
41AC9C:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41ACA2)
41AC9E:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41ACA0:  LDR             R0, [R0]; CStats::StatReactionValue ...
41ACA2:  VLDR            S0, [R0,#0x60]
41ACA6:  VCMPE.F32       S0, #0.0
41ACAA:  VMRS            APSR_nzcv, FPSCR
41ACAE:  BLE             loc_41ACDA
41ACB0:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41ACBA)
41ACB2:  VLDR            S4, =0.0
41ACB6:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41ACB8:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41ACBA:  VLDR            S2, [R0,#0x5C]
41ACBE:  VSUB.F32        S0, S2, S0
41ACC2:  VMAX.F32        D0, D0, D2
41ACC6:  VSTR            S0, [R0,#0x5C]
41ACCA:  MOVS            R0, #0; this
41ACCC:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
41ACD0:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41ACD6)
41ACD2:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41ACD4:  LDR             R0, [R0]; CStats::StatReactionValue ...
41ACD6:  VLDR            S0, [R0,#0x60]
41ACDA:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41ACE6)
41ACDC:  VMOV.F32        S4, #1.0
41ACE0:  LDR             R1, =(_ZN6CStats16bShowUpdateStatsE_ptr - 0x41ACEA)
41ACE2:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41ACE4:  LDR             R2, =(byte_965AEC - 0x41ACEE)
41ACE6:  ADD             R1, PC; _ZN6CStats16bShowUpdateStatsE_ptr
41ACE8:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41ACEA:  ADD             R2, PC; byte_965AEC
41ACEC:  LDR             R1, [R1]; CStats::bShowUpdateStats ...
41ACEE:  VLDR            S2, [R0,#0x5C]
41ACF2:  VCMPE.F32       S0, S4
41ACF6:  LDRB            R0, [R1]; CStats::bShowUpdateStats
41ACF8:  MOVS            R1, #3
41ACFA:  VMRS            APSR_nzcv, FPSCR
41ACFE:  STRB            R1, [R2]
41AD00:  BLE             loc_41AD66
41AD02:  CBZ             R0, loc_41AD66
41AD04:  VCMPE.F32       S2, S16
41AD08:  VMRS            APSR_nzcv, FPSCR
41AD0C:  BGE             loc_41AD66
41AD0E:  MOVS            R3, #0
41AD10:  VMOV            R2, S0
41AD14:  MOVT            R3, #0x447A
41AD18:  MOVS            R0, #0
41AD1A:  MOVS            R1, #0x17
41AD1C:  B               loc_41AD62
41AD1E:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41AD28)
41AD20:  VMOV.F32        S2, #1.0
41AD24:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41AD26:  LDR             R0, [R0]; CStats::StatReactionValue ...
41AD28:  VLDR            S0, [R0,#0x5C]
41AD2C:  VCMPE.F32       S0, S2
41AD30:  VMRS            APSR_nzcv, FPSCR
41AD34:  BLE             loc_41AD66
41AD36:  LDR             R0, =(_ZN6CStats16bShowUpdateStatsE_ptr - 0x41AD3C)
41AD38:  ADD             R0, PC; _ZN6CStats16bShowUpdateStatsE_ptr
41AD3A:  LDR             R0, [R0]; CStats::bShowUpdateStats ...
41AD3C:  LDRB            R0, [R0]; CStats::bShowUpdateStats
41AD3E:  CBZ             R0, loc_41AD66
41AD40:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41AD46)
41AD42:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41AD44:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41AD46:  VLDR            S2, [R0,#0x54]
41AD4A:  VCMPE.F32       S2, S16
41AD4E:  VMRS            APSR_nzcv, FPSCR
41AD52:  BGE             loc_41AD66
41AD54:  VMOV            R2, S0; unsigned __int16
41AD58:  MOVS            R3, #0x447A0000; float
41AD5E:  MOVS            R0, #0; this
41AD60:  MOVS            R1, #0x15; unsigned __int8
41AD62:  BLX             j__ZN4CHud24SetHelpMessageStatUpdateEhtff; CHud::SetHelpMessageStatUpdate(uchar,ushort,float,float)
41AD66:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41AD6E)
41AD68:  LDR             R1, =(_ZN6CStats18m_MaxHealthCounterE_ptr - 0x41AD70)
41AD6A:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41AD6C:  ADD             R1, PC; _ZN6CStats18m_MaxHealthCounterE_ptr
41AD6E:  LDR             R0, [R0]; CStats::StatReactionValue ...
41AD70:  LDR             R1, [R1]; bool
41AD72:  VLDR            S0, [R0,#0xB4]
41AD76:  LDR             R0, [R1]; CStats::m_MaxHealthCounter
41AD78:  VMUL.F32        S0, S0, S16
41AD7C:  VMOV            S2, R0
41AD80:  VCVT.F32.U32    S2, S2
41AD84:  VCMPE.F32       S0, S2
41AD88:  VMRS            APSR_nzcv, FPSCR
41AD8C:  BGE             loc_41AE0C
41AD8E:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41AD94)
41AD90:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41AD92:  LDR             R0, [R0]; CStats::StatReactionValue ...
41AD94:  VLDR            S0, [R0,#0x2C]
41AD98:  VCMPE.F32       S0, #0.0
41AD9C:  VMRS            APSR_nzcv, FPSCR
41ADA0:  BLE             loc_41ADC8
41ADA2:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41ADA8)
41ADA4:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41ADA6:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41ADA8:  VLDR            S2, [R0,#0x60]
41ADAC:  VADD.F32        S0, S0, S2
41ADB0:  VMIN.F32        D0, D0, D8
41ADB4:  VSTR            S0, [R0,#0x60]
41ADB8:  MOVS            R0, #0; this
41ADBA:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
41ADBE:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x41ADC4)
41ADC0:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
41ADC2:  LDR             R0, [R0]; CStats::StatReactionValue ...
41ADC4:  VLDR            S0, [R0,#0x2C]
41ADC8:  VMOV.F32        S2, #1.0
41ADCC:  MOVS            R0, #0
41ADCE:  VCMPE.F32       S0, S2
41ADD2:  VMRS            APSR_nzcv, FPSCR
41ADD6:  BLE             loc_41AE2C
41ADD8:  LDR             R1, =(_ZN6CStats16bShowUpdateStatsE_ptr - 0x41ADDE)
41ADDA:  ADD             R1, PC; _ZN6CStats16bShowUpdateStatsE_ptr
41ADDC:  LDR             R1, [R1]; CStats::bShowUpdateStats ...
41ADDE:  LDRB            R1, [R1]; CStats::bShowUpdateStats
41ADE0:  CBZ             R1, loc_41AE2C
41ADE2:  LDR             R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41ADE8)
41ADE4:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
41ADE6:  LDR             R1, [R1]; CStats::StatTypesFloat ...
41ADE8:  VLDR            S2, [R1,#0x60]
41ADEC:  VCMPE.F32       S2, S16
41ADF0:  VMRS            APSR_nzcv, FPSCR
41ADF4:  BGE             loc_41AE2C
41ADF6:  VMOV            R2, S0; unsigned __int16
41ADFA:  MOVS            R3, #0x447A0000; float
41AE00:  MOVS            R0, #(stderr+1); this
41AE02:  MOVS            R1, #0x18; unsigned __int8
41AE04:  BLX             j__ZN4CHud24SetHelpMessageStatUpdateEhtff; CHud::SetHelpMessageStatUpdate(uchar,ushort,float,float)
41AE08:  MOVS            R0, #0
41AE0A:  B               loc_41AE2C
41AE0C:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x41AE16)
41AE0E:  VLDR            S0, =50.0
41AE12:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
41AE14:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
41AE16:  VLDR            S2, [R1]
41AE1A:  VDIV.F32        S0, S2, S0
41AE1E:  VMUL.F32        S0, S0, S16
41AE22:  VCVT.U32.F32    S0, S0
41AE26:  VMOV            R1, S0
41AE2A:  ADD             R0, R1
41AE2C:  LDR             R1, =(_ZN6CStats18m_MaxHealthCounterE_ptr - 0x41AE32)
41AE2E:  ADD             R1, PC; _ZN6CStats18m_MaxHealthCounterE_ptr
41AE30:  LDR             R1, [R1]; CStats::m_MaxHealthCounter ...
41AE32:  STR             R0, [R1]; CStats::m_MaxHealthCounter
41AE34:  VPOP            {D8}
41AE38:  POP             {R7,PC}
