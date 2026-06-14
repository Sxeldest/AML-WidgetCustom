; =========================================================
; Game Engine Function: _ZN5CBike22DoSoftGroundResistanceERj
; Address            : 0x564FD4 - 0x565262
; =========================================================

564FD4:  PUSH            {R4-R7,LR}
564FD6:  ADD             R7, SP, #0xC
564FD8:  PUSH.W          {R8-R10}
564FDC:  VPUSH           {D8}
564FE0:  VMOV.F32        S16, #1.0
564FE4:  MOV             R4, R0
564FE6:  ADDW            R6, R4, #0x724
564FEA:  MOV             R8, R1
564FEC:  VLDR            S0, [R6]
564FF0:  VCMPE.F32       S0, S16
564FF4:  VMRS            APSR_nzcv, FPSCR
564FF8:  BGE             loc_56500C
564FFA:  LDR             R0, =(g_surfaceInfos_ptr - 0x565004)
564FFC:  LDRB.W          R1, [R4,#0x697]; unsigned int
565000:  ADD             R0, PC; g_surfaceInfos_ptr
565002:  LDR             R0, [R0]; g_surfaceInfos ; this
565004:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
565008:  CMP             R0, #4
56500A:  BEQ             loc_56507A
56500C:  ADD.W           R5, R4, #0x728
565010:  VLDR            S0, [R5]
565014:  VCMPE.F32       S0, S16
565018:  VMRS            APSR_nzcv, FPSCR
56501C:  BGE             loc_565030
56501E:  LDR             R0, =(g_surfaceInfos_ptr - 0x565028)
565020:  LDRB.W          R1, [R4,#0x6C3]; unsigned int
565024:  ADD             R0, PC; g_surfaceInfos_ptr
565026:  LDR             R0, [R0]; g_surfaceInfos ; this
565028:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
56502C:  CMP             R0, #4
56502E:  BEQ             loc_56507A
565030:  ADDW            R9, R4, #0x72C
565034:  VLDR            S0, [R9]
565038:  VCMPE.F32       S0, S16
56503C:  VMRS            APSR_nzcv, FPSCR
565040:  BGE             loc_565054
565042:  LDR             R0, =(g_surfaceInfos_ptr - 0x56504C)
565044:  LDRB.W          R1, [R4,#0x6EF]; unsigned int
565048:  ADD             R0, PC; g_surfaceInfos_ptr
56504A:  LDR             R0, [R0]; g_surfaceInfos ; this
56504C:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
565050:  CMP             R0, #4
565052:  BEQ             loc_56507A
565054:  ADD.W           R10, R4, #0x730
565058:  VLDR            S0, [R10]
56505C:  VCMPE.F32       S0, S16
565060:  VMRS            APSR_nzcv, FPSCR
565064:  BGE.W           loc_565170
565068:  LDR             R0, =(g_surfaceInfos_ptr - 0x565072)
56506A:  LDRB.W          R1, [R4,#0x71B]; unsigned int
56506E:  ADD             R0, PC; g_surfaceInfos_ptr
565070:  LDR             R0, [R0]; g_surfaceInfos ; this
565072:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
565076:  CMP             R0, #4
565078:  BNE             loc_565170
56507A:  LDR             R0, [R4,#0x14]
56507C:  ADD.W           R1, R4, #0x4A0
565080:  VLDR            S4, [R4,#0x48]
565084:  VLDR            S2, [R4,#0x4C]
565088:  VLDR            S6, [R0,#0x20]
56508C:  VLDR            S8, [R0,#0x24]
565090:  VMUL.F32        S14, S4, S6
565094:  VLDR            S0, [R4,#0x50]
565098:  VMUL.F32        S12, S2, S8
56509C:  VLDR            S10, [R0,#0x28]
5650A0:  VMUL.F32        S1, S0, S10
5650A4:  VADD.F32        S12, S14, S12
5650A8:  VADD.F32        S12, S12, S1
5650AC:  VMUL.F32        S10, S10, S12
5650B0:  VMUL.F32        S8, S8, S12
5650B4:  VMUL.F32        S6, S6, S12
5650B8:  VSUB.F32        S0, S0, S10
5650BC:  VSUB.F32        S2, S2, S8
5650C0:  VLDR            S8, [R1]
5650C4:  VSUB.F32        S4, S4, S6
5650C8:  VLDR            S6, =0.3
5650CC:  VCMPE.F32       S8, S6
5650D0:  VMRS            APSR_nzcv, FPSCR
5650D4:  BLE             loc_56513C
5650D6:  VMUL.F32        S6, S2, S2
5650DA:  VMUL.F32        S8, S4, S4
5650DE:  VMUL.F32        S10, S0, S0
5650E2:  VADD.F32        S6, S8, S6
5650E6:  VLDR            S8, =0.09
5650EA:  VADD.F32        S6, S10, S6
5650EE:  VCMPE.F32       S6, S8
5650F2:  VMRS            APSR_nzcv, FPSCR
5650F6:  ITTTT LT
5650F8:  LDRLT.W         R0, [R8]
5650FC:  ADDLT           R0, #4
5650FE:  STRLT.W         R0, [R8]
565102:  LDRLT           R0, [R4,#0x14]
565104:  VLDR            S6, [R0,#0x10]
565108:  VLDR            S8, [R0,#0x14]
56510C:  VMUL.F32        S14, S4, S6
565110:  VLDR            S10, [R0,#0x18]
565114:  VMUL.F32        S12, S2, S8
565118:  VMUL.F32        S1, S0, S10
56511C:  VADD.F32        S12, S14, S12
565120:  VADD.F32        S12, S12, S1
565124:  VMUL.F32        S10, S10, S12
565128:  VMUL.F32        S8, S8, S12
56512C:  VMUL.F32        S6, S6, S12
565130:  VSUB.F32        S0, S0, S10
565134:  VSUB.F32        S2, S2, S8
565138:  VSUB.F32        S4, S4, S6
56513C:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x56514A)
56513E:  VLDR            S6, =-0.02
565142:  VLDR            S8, [R4,#0x90]
565146:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
565148:  VMUL.F32        S6, S8, S6
56514C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
56514E:  VLDR            S8, [R0]
565152:  VMUL.F32        S6, S6, S8
565156:  VMUL.F32        S4, S4, S6
56515A:  VMUL.F32        S2, S2, S6
56515E:  VMUL.F32        S0, S0, S6
565162:  VMOV            R1, S4
565166:  VMOV            R2, S2
56516A:  VMOV            R3, S0
56516E:  B               loc_565246
565170:  VLDR            S0, [R6]
565174:  VCMPE.F32       S0, S16
565178:  VMRS            APSR_nzcv, FPSCR
56517C:  BGE             loc_565186
56517E:  LDRB.W          R0, [R4,#0x697]
565182:  CMP             R0, #0xB2
565184:  BEQ             loc_5651C8
565186:  VLDR            S0, [R5]
56518A:  VCMPE.F32       S0, S16
56518E:  VMRS            APSR_nzcv, FPSCR
565192:  BGE             loc_56519C
565194:  LDRB.W          R0, [R4,#0x6C3]
565198:  CMP             R0, #0xB2
56519A:  BEQ             loc_5651C8
56519C:  VLDR            S0, [R9]
5651A0:  VCMPE.F32       S0, S16
5651A4:  VMRS            APSR_nzcv, FPSCR
5651A8:  BGE             loc_5651B2
5651AA:  LDRB.W          R0, [R4,#0x6EF]
5651AE:  CMP             R0, #0xB2
5651B0:  BEQ             loc_5651C8
5651B2:  VLDR            S0, [R10]
5651B6:  VCMPE.F32       S0, S16
5651BA:  VMRS            APSR_nzcv, FPSCR
5651BE:  BGE             loc_565258
5651C0:  LDRB.W          R0, [R4,#0x71B]
5651C4:  CMP             R0, #0xB2
5651C6:  BNE             loc_565258
5651C8:  LDR             R0, [R4,#0x14]
5651CA:  VLDR            S0, [R4,#0x48]
5651CE:  VLDR            S2, [R4,#0x4C]
5651D2:  VLDR            S6, [R0,#0x20]
5651D6:  VLDR            S8, [R0,#0x24]
5651DA:  VMUL.F32        S14, S0, S6
5651DE:  VLDR            S10, [R0,#0x28]
5651E2:  VMUL.F32        S12, S2, S8
5651E6:  VLDR            S4, [R4,#0x50]
5651EA:  LDR             R0, =(_ZN8CVehicle23ms_fRailTrackResistanceE_ptr - 0x5651F6)
5651EC:  VMUL.F32        S1, S4, S10
5651F0:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5651F8)
5651F2:  ADD             R0, PC; _ZN8CVehicle23ms_fRailTrackResistanceE_ptr
5651F4:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5651F6:  LDR             R0, [R0]; CVehicle::ms_fRailTrackResistance ...
5651F8:  VADD.F32        S12, S14, S12
5651FC:  VLDR            S14, [R4,#0x90]
565200:  VADD.F32        S12, S12, S1
565204:  VLDR            S1, [R0]
565208:  LDR             R0, [R1]; CTimer::ms_fTimeStep ...
56520A:  VMUL.F32        S14, S1, S14
56520E:  VMUL.F32        S6, S6, S12
565212:  VMUL.F32        S8, S8, S12
565216:  VMUL.F32        S10, S10, S12
56521A:  VLDR            S12, [R0]
56521E:  VMUL.F32        S12, S14, S12
565222:  VSUB.F32        S0, S0, S6
565226:  VSUB.F32        S2, S2, S8
56522A:  VSUB.F32        S4, S4, S10
56522E:  VNMUL.F32       S0, S12, S0
565232:  VNMUL.F32       S2, S12, S2
565236:  VNMUL.F32       S4, S12, S4
56523A:  VMOV            R1, S0
56523E:  VMOV            R2, S2
565242:  VMOV            R3, S4
565246:  MOV             R0, R4
565248:  VPOP            {D8}
56524C:  POP.W           {R8-R10}
565250:  POP.W           {R4-R7,LR}
565254:  B.W             sub_193318
565258:  VPOP            {D8}
56525C:  POP.W           {R8-R10}
565260:  POP             {R4-R7,PC}
