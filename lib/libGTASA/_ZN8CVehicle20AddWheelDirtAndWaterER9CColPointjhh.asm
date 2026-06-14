; =========================================================
; Game Engine Function: _ZN8CVehicle20AddWheelDirtAndWaterER9CColPointjhh
; Address            : 0x58AB1C - 0x58AD56
; =========================================================

58AB1C:  PUSH            {R4-R7,LR}
58AB1E:  ADD             R7, SP, #0xC
58AB20:  PUSH.W          {R8}
58AB24:  VPUSH           {D8}
58AB28:  SUB             SP, SP, #0x10
58AB2A:  MOV             R8, R3
58AB2C:  MOV             R6, R1
58AB2E:  MOV             R4, R0
58AB30:  CBNZ            R2, loc_58AB42
58AB32:  LDR             R0, =(g_surfaceInfos_ptr - 0x58AB3C)
58AB34:  LDRB.W          R1, [R6,#0x23]; unsigned int
58AB38:  ADD             R0, PC; g_surfaceInfos_ptr
58AB3A:  LDR             R0, [R0]; g_surfaceInfos ; this
58AB3C:  BLX             j__ZN14SurfaceInfos_c6IsSandEj; SurfaceInfos_c::IsSand(uint)
58AB40:  CBZ             R0, loc_58AB98
58AB42:  LDR             R0, [R7,#arg_0]
58AB44:  CBZ             R0, loc_58AB6A
58AB46:  LDR             R0, =(g_fx_ptr - 0x58AB50)
58AB48:  LDRD.W          R2, R3, [R6]
58AB4C:  ADD             R0, PC; g_fx_ptr
58AB4E:  VLDR            S0, [R4,#0x130]
58AB52:  LDR             R1, [R6,#8]
58AB54:  MOVS            R6, #1
58AB56:  LDR             R0, [R0]; g_fx
58AB58:  VSTR            S0, [SP,#0x28+var_1C]
58AB5C:  STR             R6, [SP,#0x28+var_20]
58AB5E:  STRD.W          R1, R8, [SP,#0x28+var_28]
58AB62:  MOV             R1, R4
58AB64:  BLX             j__ZN4Fx_c13AddWheelSprayEP8CVehicle7CVectorhhf; Fx_c::AddWheelSpray(CVehicle *,CVector,uchar,uchar,float)
58AB68:  B               loc_58AB98
58AB6A:  LDR             R0, =(g_surfaceInfos_ptr - 0x58AB74)
58AB6C:  LDRB.W          R1, [R6,#0x23]; unsigned int
58AB70:  ADD             R0, PC; g_surfaceInfos_ptr
58AB72:  LDR             R0, [R0]; g_surfaceInfos ; this
58AB74:  BLX.W           j__ZN14SurfaceInfos_c17CreatesWheelGrassEj; SurfaceInfos_c::CreatesWheelGrass(uint)
58AB78:  CBZ             R0, loc_58ABA8
58AB7A:  LDR             R0, =(g_fx_ptr - 0x58AB84)
58AB7C:  LDRD.W          R2, R3, [R6]
58AB80:  ADD             R0, PC; g_fx_ptr
58AB82:  VLDR            S0, [R4,#0x130]
58AB86:  LDR             R1, [R6,#8]
58AB88:  LDR             R0, [R0]; g_fx
58AB8A:  VSTR            S0, [SP,#0x28+var_20]
58AB8E:  STRD.W          R1, R8, [SP,#0x28+var_28]
58AB92:  MOV             R1, R4
58AB94:  BLX             j__ZN4Fx_c13AddWheelGrassEP8CVehicle7CVectorhf; Fx_c::AddWheelGrass(CVehicle *,CVector,uchar,float)
58AB98:  MOVS            R5, #0
58AB9A:  MOV             R0, R5
58AB9C:  ADD             SP, SP, #0x10
58AB9E:  VPOP            {D8}
58ABA2:  POP.W           {R8}
58ABA6:  POP             {R4-R7,PC}
58ABA8:  LDR             R0, =(g_surfaceInfos_ptr - 0x58ABB2)
58ABAA:  LDRB.W          R1, [R6,#0x23]; unsigned int
58ABAE:  ADD             R0, PC; g_surfaceInfos_ptr
58ABB0:  LDR             R0, [R0]; g_surfaceInfos ; this
58ABB2:  BLX             j__ZN14SurfaceInfos_c18CreatesWheelGravelEj; SurfaceInfos_c::CreatesWheelGravel(uint)
58ABB6:  CBZ             R0, loc_58ABDA
58ABB8:  LDR             R0, =(g_fx_ptr - 0x58ABC2)
58ABBA:  LDRD.W          R2, R3, [R6]
58ABBE:  ADD             R0, PC; g_fx_ptr
58ABC0:  VLDR            S0, [R4,#0x130]
58ABC4:  LDR             R1, [R6,#8]
58ABC6:  LDR             R0, [R0]; g_fx
58ABC8:  VSTR            S0, [SP,#0x28+var_20]
58ABCC:  STRD.W          R1, R8, [SP,#0x28+var_28]
58ABD0:  MOV             R1, R4
58ABD2:  BLX             j__ZN4Fx_c14AddWheelGravelEP8CVehicle7CVectorhf; Fx_c::AddWheelGravel(CVehicle *,CVector,uchar,float)
58ABD6:  MOVS            R5, #1
58ABD8:  B               loc_58AB9A
58ABDA:  LDR             R0, =(g_surfaceInfos_ptr - 0x58ABE4)
58ABDC:  LDRB.W          R1, [R6,#0x23]; unsigned int
58ABE0:  ADD             R0, PC; g_surfaceInfos_ptr
58ABE2:  LDR             R0, [R0]; g_surfaceInfos ; this
58ABE4:  BLX             j__ZN14SurfaceInfos_c15CreatesWheelMudEj; SurfaceInfos_c::CreatesWheelMud(uint)
58ABE8:  CBZ             R0, loc_58AC0A
58ABEA:  LDR             R0, =(g_fx_ptr - 0x58ABF4)
58ABEC:  LDRD.W          R2, R3, [R6]
58ABF0:  ADD             R0, PC; g_fx_ptr
58ABF2:  VLDR            S0, [R4,#0x130]
58ABF6:  LDR             R1, [R6,#8]
58ABF8:  LDR             R0, [R0]; g_fx
58ABFA:  VSTR            S0, [SP,#0x28+var_20]
58ABFE:  STRD.W          R1, R8, [SP,#0x28+var_28]
58AC02:  MOV             R1, R4
58AC04:  BLX             j__ZN4Fx_c11AddWheelMudEP8CVehicle7CVectorhf; Fx_c::AddWheelMud(CVehicle *,CVector,uchar,float)
58AC08:  B               loc_58AB98
58AC0A:  LDR             R0, =(g_surfaceInfos_ptr - 0x58AC14)
58AC0C:  LDRB.W          R1, [R6,#0x23]; unsigned int
58AC10:  ADD             R0, PC; g_surfaceInfos_ptr
58AC12:  LDR             R0, [R0]; g_surfaceInfos ; this
58AC14:  BLX             j__ZN14SurfaceInfos_c16CreatesWheelDustEj; SurfaceInfos_c::CreatesWheelDust(uint)
58AC18:  CBZ             R0, loc_58AC80
58AC1A:  LDR             R0, =(_ZN8CWeather8WetRoadsE_ptr - 0x58AC20)
58AC1C:  ADD             R0, PC; _ZN8CWeather8WetRoadsE_ptr
58AC1E:  LDR             R0, [R0]; CWeather::WetRoads ...
58AC20:  VLDR            S16, [R0]
58AC24:  VCMPE.F32       S16, #0.0
58AC28:  VMRS            APSR_nzcv, FPSCR
58AC2C:  BLE             loc_58AC60
58AC2E:  BLX             rand
58AC32:  VMOV            S0, R0
58AC36:  VLDR            S2, =1.01
58AC3A:  VLDR            S4, =4.6566e-10
58AC3E:  VCVT.F32.S32    S0, S0
58AC42:  VSUB.F32        S2, S2, S16
58AC46:  VMUL.F32        S0, S0, S4
58AC4A:  VMUL.F32        S0, S2, S0
58AC4E:  VMOV.F32        S2, #0.5
58AC52:  VADD.F32        S0, S16, S0
58AC56:  VCMPE.F32       S0, S2
58AC5A:  VMRS            APSR_nzcv, FPSCR
58AC5E:  BGT             loc_58AB98
58AC60:  LDR             R0, =(g_fx_ptr - 0x58AC6A)
58AC62:  LDRD.W          R2, R3, [R6]
58AC66:  ADD             R0, PC; g_fx_ptr
58AC68:  VLDR            S0, [R4,#0x130]
58AC6C:  LDR             R1, [R6,#8]
58AC6E:  LDR             R0, [R0]; g_fx
58AC70:  VSTR            S0, [SP,#0x28+var_20]
58AC74:  STRD.W          R1, R8, [SP,#0x28+var_28]
58AC78:  MOV             R1, R4
58AC7A:  BLX             j__ZN4Fx_c12AddWheelDustEP8CVehicle7CVectorhf; Fx_c::AddWheelDust(CVehicle *,CVector,uchar,float)
58AC7E:  B               loc_58AB98
58AC80:  LDR             R0, =(g_surfaceInfos_ptr - 0x58AC8A)
58AC82:  LDRB.W          R1, [R6,#0x23]; unsigned int
58AC86:  ADD             R0, PC; g_surfaceInfos_ptr
58AC88:  LDR             R0, [R0]; g_surfaceInfos ; this
58AC8A:  BLX             j__ZN14SurfaceInfos_c16CreatesWheelSandEj; SurfaceInfos_c::CreatesWheelSand(uint)
58AC8E:  CBZ             R0, loc_58ACF8
58AC90:  LDR             R0, =(_ZN8CWeather8WetRoadsE_ptr - 0x58AC96)
58AC92:  ADD             R0, PC; _ZN8CWeather8WetRoadsE_ptr
58AC94:  LDR             R0, [R0]; CWeather::WetRoads ...
58AC96:  VLDR            S16, [R0]
58AC9A:  VCMPE.F32       S16, #0.0
58AC9E:  VMRS            APSR_nzcv, FPSCR
58ACA2:  BLE             loc_58ACD8
58ACA4:  BLX             rand
58ACA8:  VMOV            S0, R0
58ACAC:  VLDR            S2, =1.01
58ACB0:  VLDR            S4, =4.6566e-10
58ACB4:  VCVT.F32.S32    S0, S0
58ACB8:  VSUB.F32        S2, S2, S16
58ACBC:  VMUL.F32        S0, S0, S4
58ACC0:  VMUL.F32        S0, S2, S0
58ACC4:  VMOV.F32        S2, #0.5
58ACC8:  VADD.F32        S0, S16, S0
58ACCC:  VCMPE.F32       S0, S2
58ACD0:  VMRS            APSR_nzcv, FPSCR
58ACD4:  BGT.W           loc_58AB98
58ACD8:  LDR             R0, =(g_fx_ptr - 0x58ACE2)
58ACDA:  LDRD.W          R2, R3, [R6]
58ACDE:  ADD             R0, PC; g_fx_ptr
58ACE0:  VLDR            S0, [R4,#0x130]
58ACE4:  LDR             R1, [R6,#8]
58ACE6:  LDR             R0, [R0]; g_fx
58ACE8:  VSTR            S0, [SP,#0x28+var_20]
58ACEC:  STRD.W          R1, R8, [SP,#0x28+var_28]
58ACF0:  MOV             R1, R4
58ACF2:  BLX             j__ZN4Fx_c12AddWheelSandEP8CVehicle7CVectorhf; Fx_c::AddWheelSand(CVehicle *,CVector,uchar,float)
58ACF6:  B               loc_58AB98
58ACF8:  LDR             R0, =(g_surfaceInfos_ptr - 0x58AD02)
58ACFA:  LDRB.W          R1, [R6,#0x23]; unsigned int
58ACFE:  ADD             R0, PC; g_surfaceInfos_ptr
58AD00:  LDR             R0, [R0]; g_surfaceInfos ; this
58AD02:  BLX             j__ZN14SurfaceInfos_c17CreatesWheelSprayEj; SurfaceInfos_c::CreatesWheelSpray(uint)
58AD06:  MOVS            R5, #1
58AD08:  CMP             R0, #0
58AD0A:  BEQ.W           loc_58AB9A
58AD0E:  LDR             R0, =(_ZN8CWeather8WetRoadsE_ptr - 0x58AD18)
58AD10:  VLDR            S2, =0.4
58AD14:  ADD             R0, PC; _ZN8CWeather8WetRoadsE_ptr
58AD16:  LDR             R0, [R0]; this
58AD18:  VLDR            S0, [R0]
58AD1C:  VCMPE.F32       S0, S2
58AD20:  VMRS            APSR_nzcv, FPSCR
58AD24:  BLE.W           loc_58AB9A
58AD28:  BLX             j__ZN10CCullZones9CamNoRainEv; CCullZones::CamNoRain(void)
58AD2C:  CBZ             R0, loc_58AD32
58AD2E:  MOVS            R5, #1
58AD30:  B               loc_58AB9A
58AD32:  LDR             R0, =(g_fx_ptr - 0x58AD3E)
58AD34:  MOVS            R5, #0
58AD36:  LDRD.W          R2, R3, [R6]
58AD3A:  ADD             R0, PC; g_fx_ptr
58AD3C:  VLDR            S0, [R4,#0x130]
58AD40:  LDR             R1, [R6,#8]
58AD42:  LDR             R0, [R0]; g_fx
58AD44:  VSTR            S0, [SP,#0x28+var_1C]
58AD48:  STR             R5, [SP,#0x28+var_20]
58AD4A:  STRD.W          R1, R8, [SP,#0x28+var_28]
58AD4E:  MOV             R1, R4
58AD50:  BLX             j__ZN4Fx_c13AddWheelSprayEP8CVehicle7CVectorhhf; Fx_c::AddWheelSpray(CVehicle *,CVector,uchar,uchar,float)
58AD54:  B               loc_58AB9A
