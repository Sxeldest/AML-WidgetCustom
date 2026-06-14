; =========================================================
; Game Engine Function: _ZN11CAutomobile22DoSoftGroundResistanceERj
; Address            : 0x558B84 - 0x558EA2
; =========================================================

558B84:  PUSH            {R4-R7,LR}
558B86:  ADD             R7, SP, #0xC
558B88:  PUSH.W          {R11}
558B8C:  VPUSH           {D8}
558B90:  VMOV.F32        S16, #1.0
558B94:  MOV             R4, R0
558B96:  ADD.W           R6, R4, #0x7E8
558B9A:  MOV             R5, R1
558B9C:  VLDR            S0, [R6]
558BA0:  VCMPE.F32       S0, S16
558BA4:  VMRS            APSR_nzcv, FPSCR
558BA8:  BGE             loc_558BBC
558BAA:  LDR             R0, =(g_surfaceInfos_ptr - 0x558BB4)
558BAC:  LDRB.W          R1, [R4,#0x75B]; unsigned int
558BB0:  ADD             R0, PC; g_surfaceInfos_ptr
558BB2:  LDR             R0, [R0]; g_surfaceInfos ; this
558BB4:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
558BB8:  CMP             R0, #4
558BBA:  BEQ             loc_558C28
558BBC:  ADDW            R0, R4, #0x7EC
558BC0:  VLDR            S0, [R0]
558BC4:  VCMPE.F32       S0, S16
558BC8:  VMRS            APSR_nzcv, FPSCR
558BCC:  BGE             loc_558BE0
558BCE:  LDR             R0, =(g_surfaceInfos_ptr - 0x558BD8)
558BD0:  LDRB.W          R1, [R4,#0x787]; unsigned int
558BD4:  ADD             R0, PC; g_surfaceInfos_ptr
558BD6:  LDR             R0, [R0]; g_surfaceInfos ; this
558BD8:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
558BDC:  CMP             R0, #4
558BDE:  BEQ             loc_558C28
558BE0:  ADD.W           R0, R4, #0x7F0
558BE4:  VLDR            S0, [R0]
558BE8:  VCMPE.F32       S0, S16
558BEC:  VMRS            APSR_nzcv, FPSCR
558BF0:  BGE             loc_558C04
558BF2:  LDR             R0, =(g_surfaceInfos_ptr - 0x558BFC)
558BF4:  LDRB.W          R1, [R4,#0x7B3]; unsigned int
558BF8:  ADD             R0, PC; g_surfaceInfos_ptr
558BFA:  LDR             R0, [R0]; g_surfaceInfos ; this
558BFC:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
558C00:  CMP             R0, #4
558C02:  BEQ             loc_558C28
558C04:  ADDW            R0, R4, #0x7F4
558C08:  VLDR            S0, [R0]
558C0C:  VCMPE.F32       S0, S16
558C10:  VMRS            APSR_nzcv, FPSCR
558C14:  BGE             loc_558C3C
558C16:  LDR             R0, =(g_surfaceInfos_ptr - 0x558C20)
558C18:  LDRB.W          R1, [R4,#0x7DF]; unsigned int
558C1C:  ADD             R0, PC; g_surfaceInfos_ptr
558C1E:  LDR             R0, [R0]; g_surfaceInfos ; this
558C20:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
558C24:  CMP             R0, #4
558C26:  BNE             loc_558C3C
558C28:  LDRSH.W         R0, [R4,#0x26]
558C2C:  CMP.W           R0, #0x1B0
558C30:  ITT NE
558C32:  MOVWNE          R1, #0x1B9
558C36:  CMPNE           R0, R1
558C38:  BNE.W           loc_558D48
558C3C:  VLDR            S0, [R6]
558C40:  VCMPE.F32       S0, S16
558C44:  VMRS            APSR_nzcv, FPSCR
558C48:  BGE             loc_558C52
558C4A:  LDRB.W          R0, [R4,#0x75B]
558C4E:  CMP             R0, #0xB2
558C50:  BEQ             loc_558CA4
558C52:  ADDW            R0, R4, #0x7EC
558C56:  VLDR            S0, [R0]
558C5A:  VCMPE.F32       S0, S16
558C5E:  VMRS            APSR_nzcv, FPSCR
558C62:  BGE             loc_558C6C
558C64:  LDRB.W          R0, [R4,#0x787]
558C68:  CMP             R0, #0xB2
558C6A:  BEQ             loc_558CA4
558C6C:  ADD.W           R0, R4, #0x7F0
558C70:  VLDR            S0, [R0]
558C74:  VCMPE.F32       S0, S16
558C78:  VMRS            APSR_nzcv, FPSCR
558C7C:  BGE             loc_558C86
558C7E:  LDRB.W          R0, [R4,#0x7B3]
558C82:  CMP             R0, #0xB2
558C84:  BEQ             loc_558CA4
558C86:  ADDW            R0, R4, #0x7F4
558C8A:  VLDR            S0, [R0]
558C8E:  VCMPE.F32       S0, S16
558C92:  VMRS            APSR_nzcv, FPSCR
558C96:  BGE.W           loc_558E98
558C9A:  LDRB.W          R0, [R4,#0x7DF]
558C9E:  CMP             R0, #0xB2
558CA0:  BNE.W           loc_558E98
558CA4:  LDRSH.W         R0, [R4,#0x26]
558CA8:  CMP.W           R0, #0x1B0
558CAC:  ITT NE
558CAE:  MOVWNE          R1, #0x1B9
558CB2:  CMPNE           R0, R1
558CB4:  BEQ.W           loc_558E98
558CB8:  LDR             R0, [R4,#0x14]
558CBA:  VLDR            S0, [R4,#0x48]
558CBE:  VLDR            S2, [R4,#0x4C]
558CC2:  VLDR            S6, [R0,#0x20]
558CC6:  VLDR            S8, [R0,#0x24]
558CCA:  VMUL.F32        S14, S0, S6
558CCE:  VLDR            S10, [R0,#0x28]
558CD2:  VMUL.F32        S12, S2, S8
558CD6:  VLDR            S4, [R4,#0x50]
558CDA:  LDR             R0, =(_ZN8CVehicle23ms_fRailTrackResistanceE_ptr - 0x558CE6)
558CDC:  VMUL.F32        S1, S4, S10
558CE0:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x558CE8)
558CE2:  ADD             R0, PC; _ZN8CVehicle23ms_fRailTrackResistanceE_ptr
558CE4:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
558CE6:  LDR             R0, [R0]; CVehicle::ms_fRailTrackResistance ...
558CE8:  VADD.F32        S12, S14, S12
558CEC:  VLDR            S14, [R4,#0x90]
558CF0:  VADD.F32        S12, S12, S1
558CF4:  VLDR            S1, [R0]
558CF8:  LDR             R0, [R1]; CTimer::ms_fTimeStep ...
558CFA:  VMUL.F32        S14, S1, S14
558CFE:  VMUL.F32        S6, S6, S12
558D02:  VMUL.F32        S8, S8, S12
558D06:  VMUL.F32        S10, S10, S12
558D0A:  VLDR            S12, [R0]
558D0E:  MOV             R0, R4
558D10:  VMUL.F32        S12, S14, S12
558D14:  VSUB.F32        S0, S0, S6
558D18:  VSUB.F32        S2, S2, S8
558D1C:  VSUB.F32        S4, S4, S10
558D20:  VNMUL.F32       S0, S12, S0
558D24:  VNMUL.F32       S2, S12, S2
558D28:  VNMUL.F32       S4, S12, S4
558D2C:  VMOV            R1, S0
558D30:  VMOV            R2, S2
558D34:  VMOV            R3, S4
558D38:  VPOP            {D8}
558D3C:  POP.W           {R11}
558D40:  POP.W           {R4-R7,LR}
558D44:  B.W             sub_193318
558D48:  LDR             R0, [R4,#0x14]
558D4A:  VLDR            S2, [R4,#0x48]
558D4E:  VLDR            S0, [R4,#0x4C]
558D52:  VLDR            S4, [R0,#0x20]
558D56:  VLDR            S8, [R0,#0x24]
558D5A:  VMUL.F32        S14, S2, S4
558D5E:  VLDR            S6, [R4,#0x50]
558D62:  VMUL.F32        S12, S0, S8
558D66:  VLDR            S10, [R0,#0x28]
558D6A:  VMUL.F32        S1, S6, S10
558D6E:  VADD.F32        S12, S14, S12
558D72:  VADD.F32        S12, S12, S1
558D76:  VMUL.F32        S4, S4, S12
558D7A:  VMUL.F32        S8, S8, S12
558D7E:  VMUL.F32        S10, S10, S12
558D82:  VSUB.F32        S4, S2, S4
558D86:  VSUB.F32        S0, S0, S8
558D8A:  VSUB.F32        S2, S6, S10
558D8E:  VMUL.F32        S8, S4, S4
558D92:  VMUL.F32        S6, S0, S0
558D96:  VMUL.F32        S10, S2, S2
558D9A:  VADD.F32        S6, S8, S6
558D9E:  VLDR            S8, =0.09
558DA2:  VADD.F32        S6, S10, S6
558DA6:  VCMPE.F32       S6, S8
558DAA:  VMRS            APSR_nzcv, FPSCR
558DAE:  BLE             loc_558E00
558DB0:  VSQRT.F32       S6, S6
558DB4:  VMOV.F32        S8, #-2.0
558DB8:  VLDR            S12, =0.005
558DBC:  VDIV.F32        S10, S16, S6
558DC0:  VMUL.F32        S6, S6, S8
558DC4:  VLDR            S14, =0.001
558DC8:  VADD.F32        S8, S6, S16
558DCC:  VLDR            S6, =0.3
558DD0:  VMUL.F32        S2, S2, S6
558DD4:  VMUL.F32        S0, S0, S6
558DD8:  VMUL.F32        S4, S4, S6
558DDC:  VMUL.F32        S6, S8, S12
558DE0:  VLDR            S12, =0.2
558DE4:  VCMPE.F32       S8, S12
558DE8:  VMRS            APSR_nzcv, FPSCR
558DEC:  VMUL.F32        S2, S2, S10
558DF0:  VMUL.F32        S0, S0, S10
558DF4:  VMUL.F32        S4, S4, S10
558DF8:  IT LT
558DFA:  VMOVLT.F32      S6, S14
558DFE:  B               loc_558E10
558E00:  LDRB.W          R0, [R4,#0x87C]
558E04:  VLDR            S6, =0.005
558E08:  ORR.W           R0, R0, #0x40 ; '@'
558E0C:  STRB.W          R0, [R4,#0x87C]
558E10:  LDR.W           R0, [R4,#0x390]
558E14:  TST.W           R0, #0x200000
558E18:  BNE             loc_558E2C
558E1A:  VLDR            S8, =0.6
558E1E:  LSLS            R0, R0, #0xB
558E20:  VMUL.F32        S8, S6, S8
558E24:  IT PL
558E26:  VMOVPL.F32      S8, S6
558E2A:  B               loc_558E34
558E2C:  VLDR            S8, =0.3
558E30:  VMUL.F32        S8, S6, S8
558E34:  LDR             R0, =(_ZN8CWeather8WetRoadsE_ptr - 0x558E3E)
558E36:  VLDR            S12, =0.2
558E3A:  ADD             R0, PC; _ZN8CWeather8WetRoadsE_ptr
558E3C:  VLDR            S6, =1.2
558E40:  LDR             R0, [R0]; CWeather::WetRoads ...
558E42:  VLDR            S10, [R0]
558E46:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x558E58)
558E48:  VCMPE.F32       S10, S12
558E4C:  VMRS            APSR_nzcv, FPSCR
558E50:  VSUB.F32        S6, S6, S10
558E54:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
558E56:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
558E58:  VMUL.F32        S6, S8, S6
558E5C:  IT GT
558E5E:  VMOVGT.F32      S8, S6
558E62:  VLDR            S6, [R4,#0x90]
558E66:  VMUL.F32        S6, S6, S8
558E6A:  VLDR            S8, [R0]
558E6E:  MOV             R0, R4
558E70:  VMUL.F32        S6, S8, S6
558E74:  VNMUL.F32       S4, S6, S4
558E78:  VNMUL.F32       S0, S6, S0
558E7C:  VNMUL.F32       S2, S6, S2
558E80:  VMOV            R1, S4
558E84:  VMOV            R2, S0
558E88:  VMOV            R3, S2
558E8C:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
558E90:  LDR             R0, [R5]
558E92:  ORR.W           R0, R0, #8
558E96:  STR             R0, [R5]
558E98:  VPOP            {D8}
558E9C:  POP.W           {R11}
558EA0:  POP             {R4-R7,PC}
