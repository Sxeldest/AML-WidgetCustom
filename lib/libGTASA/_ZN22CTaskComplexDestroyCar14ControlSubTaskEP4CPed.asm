; =========================================================
; Game Engine Function: _ZN22CTaskComplexDestroyCar14ControlSubTaskEP4CPed
; Address            : 0x4E60A8 - 0x4E6210
; =========================================================

4E60A8:  PUSH            {R4-R7,LR}
4E60AA:  ADD             R7, SP, #0xC
4E60AC:  PUSH.W          {R8}
4E60B0:  MOV             R4, R0
4E60B2:  MOV             R5, R1
4E60B4:  LDR             R0, [R4,#0x10]
4E60B6:  CBZ             R0, loc_4E60E0
4E60B8:  ADDW            R0, R0, #0x4CC
4E60BC:  VLDR            S0, [R0]
4E60C0:  VCMPE.F32       S0, #0.0
4E60C4:  VMRS            APSR_nzcv, FPSCR
4E60C8:  BLE             loc_4E60E0
4E60CA:  LDRB            R0, [R4,#0xC]
4E60CC:  CBZ             R0, loc_4E60E8
4E60CE:  LDR             R0, [R4]
4E60D0:  MOV             R1, R5
4E60D2:  LDR             R2, [R0,#0x2C]
4E60D4:  MOV             R0, R4
4E60D6:  POP.W           {R8}
4E60DA:  POP.W           {R4-R7,LR}
4E60DE:  BX              R2
4E60E0:  MOVS            R0, #0
4E60E2:  POP.W           {R8}
4E60E6:  POP             {R4-R7,PC}
4E60E8:  LDR             R0, [R4,#8]
4E60EA:  LDR             R1, [R0]
4E60EC:  LDR             R1, [R1,#0x14]
4E60EE:  BLX             R1
4E60F0:  MOVW            R1, #0x3ED
4E60F4:  CMP             R0, R1
4E60F6:  BEQ             loc_4E613C
4E60F8:  CMP.W           R0, #0x3EC
4E60FC:  BNE             loc_4E61FA
4E60FE:  LDRSB.W         R0, [R5,#0x71C]
4E6102:  RSB.W           R0, R0, R0,LSL#3
4E6106:  ADD.W           R0, R5, R0,LSL#2
4E610A:  ADDW            R0, R0, #0x5A4; this
4E610E:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
4E6112:  CMP             R0, #0
4E6114:  BNE             loc_4E61FA
4E6116:  MOVW            R8, #0x3ED
4E611A:  LDR             R0, [R4,#8]
4E611C:  MOVS            R2, #1
4E611E:  MOVS            R3, #0
4E6120:  LDR             R1, [R0]
4E6122:  LDR             R6, [R1,#0x1C]
4E6124:  MOV             R1, R5
4E6126:  BLX             R6
4E6128:  CMP             R0, #1
4E612A:  BNE             loc_4E61FA
4E612C:  MOV             R0, R4; this
4E612E:  MOV             R1, R8; int
4E6130:  MOV             R2, R5; CPed *
4E6132:  POP.W           {R8}
4E6136:  POP.W           {R4-R7,LR}
4E613A:  B               _ZN22CTaskComplexDestroyCar13CreateSubTaskEiP4CPed; CTaskComplexDestroyCar::CreateSubTask(int,CPed *)
4E613C:  LDRSB.W         R0, [R5,#0x71C]
4E6140:  RSB.W           R0, R0, R0,LSL#3
4E6144:  ADD.W           R0, R5, R0,LSL#2
4E6148:  LDR.W           R0, [R0,#0x5B0]
4E614C:  CMP             R0, #0
4E614E:  BNE             loc_4E61FA
4E6150:  MOV             R0, R5; this
4E6152:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4E6156:  CMP             R0, #0
4E6158:  BNE             loc_4E61FA
4E615A:  LDR.W           R0, [R5,#0x5B0]
4E615E:  CMP             R0, #1
4E6160:  BLT             loc_4E6166
4E6162:  MOVS            R1, #0
4E6164:  B               loc_4E61F4
4E6166:  LDR.W           R0, [R5,#0x5CC]
4E616A:  CMP             R0, #0
4E616C:  BLE             loc_4E6172
4E616E:  MOVS            R1, #1
4E6170:  B               loc_4E61F4
4E6172:  LDR.W           R0, [R5,#0x5E8]
4E6176:  CMP             R0, #0
4E6178:  BLE             loc_4E617E
4E617A:  MOVS            R1, #2
4E617C:  B               loc_4E61F4
4E617E:  LDR.W           R0, [R5,#0x604]
4E6182:  CMP             R0, #0
4E6184:  BLE             loc_4E618A
4E6186:  MOVS            R1, #3
4E6188:  B               loc_4E61F4
4E618A:  LDR.W           R0, [R5,#0x620]
4E618E:  CMP             R0, #0
4E6190:  BLE             loc_4E6196
4E6192:  MOVS            R1, #4
4E6194:  B               loc_4E61F4
4E6196:  LDR.W           R0, [R5,#0x63C]
4E619A:  CMP             R0, #0
4E619C:  BLE             loc_4E61A2
4E619E:  MOVS            R1, #5
4E61A0:  B               loc_4E61F4
4E61A2:  LDR.W           R0, [R5,#0x658]
4E61A6:  CMP             R0, #0
4E61A8:  BLE             loc_4E61AE
4E61AA:  MOVS            R1, #6
4E61AC:  B               loc_4E61F4
4E61AE:  LDR.W           R0, [R5,#0x674]
4E61B2:  CMP             R0, #0
4E61B4:  BLE             loc_4E61BA
4E61B6:  MOVS            R1, #7
4E61B8:  B               loc_4E61F4
4E61BA:  LDR.W           R0, [R5,#0x690]
4E61BE:  CMP             R0, #0
4E61C0:  BLE             loc_4E61C6
4E61C2:  MOVS            R1, #8
4E61C4:  B               loc_4E61F4
4E61C6:  LDR.W           R0, [R5,#0x6AC]
4E61CA:  CMP             R0, #0
4E61CC:  BLE             loc_4E61D2
4E61CE:  MOVS            R1, #9
4E61D0:  B               loc_4E61F4
4E61D2:  LDR.W           R0, [R5,#0x6C8]
4E61D6:  CMP             R0, #0
4E61D8:  BLE             loc_4E61DE
4E61DA:  MOVS            R1, #0xA
4E61DC:  B               loc_4E61F4
4E61DE:  LDR.W           R0, [R5,#0x6E4]
4E61E2:  CMP             R0, #0
4E61E4:  BLE             loc_4E61EA
4E61E6:  MOVS            R1, #0xB
4E61E8:  B               loc_4E61F4
4E61EA:  LDR.W           R0, [R5,#0x700]
4E61EE:  CMP             R0, #0
4E61F0:  BLE             loc_4E6202
4E61F2:  MOVS            R1, #0xC; int
4E61F4:  MOV             R0, R5; this
4E61F6:  BLX             j__ZN4CPed16SetCurrentWeaponEi; CPed::SetCurrentWeapon(int)
4E61FA:  LDR             R0, [R4,#8]
4E61FC:  POP.W           {R8}
4E6200:  POP             {R4-R7,PC}
4E6202:  MOV             R0, R5; this
4E6204:  MOVS            R1, #0; int
4E6206:  BLX             j__ZN4CPed16SetCurrentWeaponEi; CPed::SetCurrentWeapon(int)
4E620A:  MOV.W           R8, #0x3EC
4E620E:  B               loc_4E611A
