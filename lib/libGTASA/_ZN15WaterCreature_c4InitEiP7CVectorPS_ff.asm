; =========================================================
; Game Engine Function: _ZN15WaterCreature_c4InitEiP7CVectorPS_ff
; Address            : 0x591F30 - 0x592242
; =========================================================

591F30:  PUSH            {R4-R7,LR}
591F32:  ADD             R7, SP, #0xC
591F34:  PUSH.W          {R8-R10}
591F38:  VPUSH           {D8-D13}
591F3C:  MOV             R4, R0
591F3E:  LDR             R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x591F48)
591F40:  MOV             R9, R3
591F42:  MOV             R8, R2
591F44:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
591F46:  MOV             R10, R1
591F48:  LDR             R0, [R0]; CObject::nNoTempObjects ...
591F4A:  LDRH            R0, [R0]; CObject::nNoTempObjects
591F4C:  CMP             R0, #0x95
591F4E:  BLS             loc_591F54
591F50:  MOVS            R5, #0
591F52:  B               loc_592236
591F54:  LDR             R1, =(_ZN22WaterCreatureManager_c21ms_waterCreatureInfosE_ptr - 0x591F64)
591F56:  MOVS            R0, #0x2C ; ','
591F58:  MUL.W           R2, R10, R0
591F5C:  CMP.W           R9, #0
591F60:  ADD             R1, PC; _ZN22WaterCreatureManager_c21ms_waterCreatureInfosE_ptr
591F62:  LDR             R1, [R1]; WaterCreatureManager_c::ms_waterCreatureInfos ...
591F64:  MLA.W           R3, R10, R0, R1
591F68:  LDR             R5, [R1,R2]
591F6A:  VLDR            S20, [R3,#0x10]
591F6E:  VLDR            S22, [R3,#0x14]
591F72:  VLDR            S16, [R3,#0x18]
591F76:  VLDR            S18, [R3,#0x1C]
591F7A:  BNE             loc_591FDC
591F7C:  LDR             R1, =(_ZN22WaterCreatureManager_c21ms_waterCreatureInfosE_ptr - 0x591F8A)
591F7E:  VMOV.F32        S4, #2.0
591F82:  VLDR            S0, [R7,#arg_4]
591F86:  ADD             R1, PC; _ZN22WaterCreatureManager_c21ms_waterCreatureInfosE_ptr
591F88:  VLDR            S2, [R7,#arg_0]
591F8C:  VLDR            S8, =-50.0
591F90:  LDR             R1, [R1]; WaterCreatureManager_c::ms_waterCreatureInfos ...
591F92:  MLA.W           R0, R10, R0, R1
591F96:  VSUB.F32        S0, S2, S0
591F9A:  VLDR            S6, [R0,#8]
591F9E:  VSUB.F32        S24, S2, S6
591FA2:  VADD.F32        S2, S2, S8
591FA6:  VADD.F32        S0, S0, S4
591FAA:  VMAX.F32        D13, D0, D1
591FAE:  VCMPE.F32       S24, S26
591FB2:  VMRS            APSR_nzcv, FPSCR
591FB6:  BLT             loc_591F50
591FB8:  BLX             rand
591FBC:  VMOV            S0, R0
591FC0:  VLDR            S2, =4.6566e-10
591FC4:  VSUB.F32        S4, S24, S26
591FC8:  VCVT.F32.S32    S0, S0
591FCC:  VMUL.F32        S0, S0, S2
591FD0:  VMUL.F32        S0, S4, S0
591FD4:  VADD.F32        S0, S26, S0
591FD8:  VSTR            S0, [R8,#8]
591FDC:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x591FE4)
591FDE:  MOVS            R1, #1; unsigned int
591FE0:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
591FE2:  LDR             R6, [R0]; CPools::ms_pObjectPool ...
591FE4:  LDR             R0, [R6]; CPools::ms_pObjectPool
591FE6:  STRB            R1, [R0,#0x11]
591FE8:  MOV.W           R0, #(elf_hash_bucket+0x88); this
591FEC:  BLX             j__ZN7CObjectnwEj; CObject::operator new(uint)
591FF0:  LDRH            R1, [R5]; int
591FF2:  MOVS            R2, #0; bool
591FF4:  MOVS            R5, #0
591FF6:  BLX             j__ZN7CObjectC2Eib; CObject::CObject(int,bool)
591FFA:  STR             R0, [R4,#8]
591FFC:  LDR             R0, [R6]; CPools::ms_pObjectPool
591FFE:  STRB            R5, [R0,#0x11]
592000:  LDR             R0, [R4,#8]
592002:  CMP             R0, #0
592004:  BEQ.W           loc_592236
592008:  LDR             R1, =(_ZN5CGame8currAreaE_ptr - 0x59200E)
59200A:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
59200C:  LDR             R1, [R1]; CGame::currArea ...
59200E:  LDR             R1, [R1]; CGame::currArea
592010:  STRB.W          R1, [R0,#0x33]
592014:  LDR             R0, [R4,#8]
592016:  LDR             R1, [R0]
592018:  LDR             R2, [R1,#0x14]
59201A:  MOVS            R1, #1
59201C:  BLX             R2
59201E:  LDR             R0, [R4,#8]
592020:  LDRD.W          R1, R2, [R0,#0x1C]
592024:  ORR.W           R1, R1, #0x100000
592028:  STRD.W          R1, R2, [R0,#0x1C]
59202C:  LDR             R0, [R4,#8]
59202E:  LDR             R1, [R0,#0x44]
592030:  BIC.W           R1, R1, #2
592034:  STR             R1, [R0,#0x44]
592036:  LDR             R0, [R4,#8]
592038:  LDR             R1, [R0,#0x1C]
59203A:  BIC.W           R1, R1, #1
59203E:  STR             R1, [R0,#0x1C]
592040:  LDR             R0, [R4,#8]
592042:  MOVS            R1, #5
592044:  STRB.W          R1, [R0,#0x140]
592048:  SUB.W           R0, R10, #3
59204C:  CMP             R0, #1
59204E:  ITTTT LS
592050:  LDRLS           R0, [R4,#8]
592052:  LDRDLS.W        R1, R2, [R0,#0x1C]
592056:  ORRLS.W         R1, R1, #0x4000
59205A:  STRDLS.W        R1, R2, [R0,#0x1C]
59205E:  CMP.W           R9, #0
592062:  MOV.W           R0, #0
592066:  STR.W           R9, [R4,#0x1C]
59206A:  STRB.W          R10, [R4,#0xC]
59206E:  STRB            R0, [R4,#0xD]
592070:  BEQ             loc_592136
592072:  BLX             rand
592076:  MOV             R10, R0
592078:  BLX             rand
59207C:  MOV             R6, R0
59207E:  BLX             rand
592082:  MOV             R5, R0
592084:  BLX             rand
592088:  VMOV            S0, R0
59208C:  VLDR            S6, =4.6566e-10
592090:  VMOV            S2, R6
592094:  VMOV            S4, R10
592098:  VCVT.F32.S32    S0, S0
59209C:  VCVT.F32.S32    S2, S2
5920A0:  VCVT.F32.S32    S4, S4
5920A4:  VMOV            S8, R5
5920A8:  VSUB.F32        S10, S22, S20
5920AC:  VCVT.F32.S32    S8, S8
5920B0:  LDR             R0, [R4,#8]
5920B2:  VMOV.F32        S12, #-0.5
5920B6:  VMUL.F32        S0, S0, S6
5920BA:  VMUL.F32        S2, S2, S6
5920BE:  VMUL.F32        S4, S4, S6
5920C2:  VMUL.F32        S6, S8, S6
5920C6:  VMOV.F32        S8, #-1.0
5920CA:  VMUL.F32        S0, S10, S0
5920CE:  VLDR            S10, [R8,#4]
5920D2:  VADD.F32        S2, S2, S2
5920D6:  VADD.F32        S4, S4, S4
5920DA:  VADD.F32        S6, S6, S12
5920DE:  VLDR            S12, [R8,#8]
5920E2:  VADD.F32        S0, S20, S0
5920E6:  VADD.F32        S2, S2, S8
5920EA:  VADD.F32        S4, S4, S8
5920EE:  VLDR            S8, [R8]
5920F2:  VMUL.F32        S6, S6, S0
5920F6:  VMUL.F32        S2, S2, S0
5920FA:  VMUL.F32        S4, S4, S0
5920FE:  VADD.F32        S0, S12, S6
592102:  VADD.F32        S2, S10, S2
592106:  VADD.F32        S4, S8, S4
59210A:  VSUB.F32        S6, S12, S0
59210E:  VSUB.F32        S10, S10, S2
592112:  VSUB.F32        S8, S8, S4
592116:  VSTR            S8, [R4,#0x20]
59211A:  VSTR            S10, [R4,#0x24]
59211E:  VSTR            S6, [R4,#0x28]
592122:  LDR             R1, [R0,#0x14]
592124:  CBZ             R1, loc_592156
592126:  VSTR            S4, [R1,#0x30]
59212A:  LDR             R1, [R0,#0x14]
59212C:  VSTR            S2, [R1,#0x34]
592130:  LDR             R0, [R0,#0x14]
592132:  ADDS            R0, #0x38 ; '8'
592134:  B               loc_592160
592136:  LDR             R1, [R4,#8]
592138:  STRD.W          R0, R0, [R4,#0x20]
59213C:  STR             R0, [R4,#0x28]
59213E:  LDRD.W          R3, R2, [R8]
592142:  LDR             R6, [R1,#0x14]
592144:  LDR.W           R0, [R8,#8]
592148:  CBZ             R6, loc_59218C
59214A:  STR             R3, [R6,#0x30]
59214C:  LDR             R3, [R1,#0x14]
59214E:  STR             R2, [R3,#0x34]
592150:  LDR             R1, [R1,#0x14]
592152:  ADDS            R1, #0x38 ; '8'
592154:  B               loc_592192
592156:  VSTR            S4, [R0,#4]
59215A:  VSTR            S2, [R0,#8]
59215E:  ADDS            R0, #0xC
592160:  VSTR            S0, [R0]
592164:  LDR.W           R0, [R9,#8]
592168:  LDR             R1, [R0,#0x14]
59216A:  CBZ             R1, loc_59217E
59216C:  LDRD.W          R0, R1, [R1,#0x10]; x
592170:  EOR.W           R0, R0, #0x80000000; y
592174:  BLX.W           atan2f
592178:  VMOV            S0, R0
59217C:  B               loc_592182
59217E:  VLDR            S0, [R0,#0x10]
592182:  VSTR            S0, [R4,#0x2C]
592186:  VLDR            S18, [R9,#0x14]
59218A:  B               loc_5921BC
59218C:  STRD.W          R3, R2, [R1,#4]
592190:  ADDS            R1, #0xC
592192:  STR             R0, [R1]
592194:  BLX             rand
592198:  VMOV            S0, R0
59219C:  VLDR            S2, =4.6566e-10
5921A0:  VCVT.F32.S32    S0, S0
5921A4:  VMUL.F32        S0, S0, S2
5921A8:  VLDR            S2, =6.2832
5921AC:  VMUL.F32        S0, S0, S2
5921B0:  VLDR            S2, =-3.1416
5921B4:  VADD.F32        S0, S0, S2
5921B8:  VSTR            S0, [R4,#0x2C]
5921BC:  BLX             rand
5921C0:  VMOV            S0, R0
5921C4:  VLDR            S2, =4.6566e-10
5921C8:  VSUB.F32        S4, S18, S16
5921CC:  MOVS            R0, #0
5921CE:  VCVT.F32.S32    S0, S0
5921D2:  STRB            R0, [R4,#0xE]
5921D4:  LDR             R1, [R4,#8]
5921D6:  MOVS            R0, #1
5921D8:  VMUL.F32        S0, S0, S2
5921DC:  VMUL.F32        S0, S4, S0
5921E0:  VADD.F32        S2, S16, S0
5921E4:  VLDR            S0, [R4,#0x2C]
5921E8:  STRB.W          R0, [R4,#0x30]
5921EC:  VSTR            S2, [R4,#0x14]
5921F0:  LDR             R0, [R1,#0x14]; this
5921F2:  CBZ             R0, loc_5921FE
5921F4:  VMOV            R1, S0; x
5921F8:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
5921FC:  B               loc_592202
5921FE:  VSTR            S0, [R1,#0x10]
592202:  LDR             R2, [R4,#8]
592204:  LDR             R0, [R2,#0x18]
592206:  CBZ             R0, loc_59221C
592208:  LDR             R1, [R0,#4]
59220A:  LDR             R0, [R2,#0x14]
59220C:  ADDS            R1, #0x10
59220E:  CBZ             R0, loc_592216
592210:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
592214:  B               loc_59221C
592216:  ADDS            R0, R2, #4
592218:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
59221C:  LDR             R0, [R4,#8]; this
59221E:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
592222:  LDR             R0, [R4,#8]; this
592224:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
592228:  LDR             R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x592230)
59222A:  MOVS            R5, #1
59222C:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
59222E:  LDR             R0, [R0]; CObject::nNoTempObjects ...
592230:  LDRH            R1, [R0]; CObject::nNoTempObjects
592232:  ADDS            R1, #1
592234:  STRH            R1, [R0]; CObject::nNoTempObjects
592236:  MOV             R0, R5
592238:  VPOP            {D8-D13}
59223C:  POP.W           {R8-R10}
592240:  POP             {R4-R7,PC}
