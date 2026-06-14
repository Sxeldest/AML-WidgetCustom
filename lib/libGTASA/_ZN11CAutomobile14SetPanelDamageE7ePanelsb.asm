; =========================================================
; Game Engine Function: _ZN11CAutomobile14SetPanelDamageE7ePanelsb
; Address            : 0x552C6C - 0x552DBA
; =========================================================

552C6C:  PUSH            {R4-R7,LR}
552C6E:  ADD             R7, SP, #0xC
552C70:  PUSH.W          {R8-R10}
552C74:  MOV             R9, R0
552C76:  ADDW            R0, R9, #0x5B4; this
552C7A:  MOV             R8, R2
552C7C:  MOV             R6, R1
552C7E:  BLX             j__ZNK14CDamageManager14GetPanelStatusEi; CDamageManager::GetPanelStatus(int)
552C82:  MOV             R4, R0
552C84:  MOV             R0, R6
552C86:  BLX             j__ZN14CDamageManager24GetCarNodeIndexFromPanelE7ePanels; CDamageManager::GetCarNodeIndexFromPanel(ePanels)
552C8A:  MOV             R5, R0
552C8C:  ADD.W           R0, R9, R5,LSL#2
552C90:  LDR.W           R1, [R0,#0x65C]
552C94:  CBZ             R1, loc_552CE2
552C96:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x552CA0)
552C98:  LDRSH.W         R3, [R9,#0x26]
552C9C:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
552C9E:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
552CA0:  LDR.W           R2, [R2,R3,LSL#2]
552CA4:  MOVS            R3, #1
552CA6:  LSLS            R3, R5
552CA8:  LDR             R2, [R2,#0x74]
552CAA:  LDR.W           R2, [R2,#0x328]; bool
552CAE:  TST             R2, R3
552CB0:  BEQ             loc_552CE2
552CB2:  ADDW            R10, R0, #0x65C
552CB6:  UXTB            R0, R4
552CB8:  CMP             R0, #1
552CBA:  BEQ             loc_552CE8
552CBC:  CMP             R0, #3
552CBE:  BEQ             loc_552CFE
552CC0:  CMP             R0, #2
552CC2:  BNE             loc_552CE2
552CC4:  LDR.W           R0, [R9,#0x388]
552CC8:  LDRB.W          R0, [R0,#0xCF]
552CCC:  LSLS            R0, R0, #0x1B
552CCE:  BMI             loc_552CE2
552CD0:  LDRSH.W         R0, [R9,#0x6C0]
552CD4:  ADDS            R2, R0, #1
552CD6:  BNE             loc_552D26
552CD8:  ADD.W           R6, R9, #0x6C0
552CDC:  CMP             R5, #0x12
552CDE:  BLS             loc_552D56
552CE0:  B               loc_552D86
552CE2:  POP.W           {R8-R10}
552CE6:  POP             {R4-R7,PC}
552CE8:  CMP             R6, #4
552CEA:  BNE             loc_552D60
552CEC:  ADD.W           R0, R9, #0x13C; this
552CF0:  MOVS            R1, #0x5B ; '['; int
552CF2:  MOVS            R2, #0; float
552CF4:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
552CF8:  LDR.W           R1, [R10]
552CFC:  B               loc_552D60
552CFE:  CMP.W           R8, #0
552D02:  BEQ             loc_552D12
552D04:  CMP             R6, #4
552D06:  BNE             loc_552D1C
552D08:  MOV             R0, R9; this
552D0A:  MOVS            R1, #0; CVehicle *
552D0C:  BLX             j__ZN6CGlass21CarWindscreenShattersEP8CVehicleb; CGlass::CarWindscreenShatters(CVehicle *,bool)
552D10:  B               loc_552D1C
552D12:  MOV             R0, R9; this
552D14:  MOV             R1, R5; int
552D16:  MOVS            R2, #5; unsigned int
552D18:  BLX             j__ZN11CAutomobile20SpawnFlyingComponentEij; CAutomobile::SpawnFlyingComponent(int,uint)
552D1C:  LDR.W           R1, [R10]
552D20:  MOV             R0, R9
552D22:  MOVS            R2, #0
552D24:  B               loc_552D64
552D26:  CMP             R5, R0
552D28:  BEQ             loc_552D60
552D2A:  LDRH.W          R2, [R9,#0x6E0]
552D2E:  MOVW            R0, #0xFFFF
552D32:  CMP             R2, R0
552D34:  BNE             loc_552D40
552D36:  ADD.W           R6, R9, #0x6E0
552D3A:  CMP             R5, #0x12
552D3C:  BLS             loc_552D56
552D3E:  B               loc_552D86
552D40:  SXTH            R2, R2
552D42:  CMP             R5, R2
552D44:  BEQ             loc_552D60
552D46:  LDRH.W          R2, [R9,#0x700]
552D4A:  CMP             R2, R0
552D4C:  BNE             loc_552D70
552D4E:  ADD.W           R6, R9, #0x700
552D52:  CMP             R5, #0x12
552D54:  BHI             loc_552D86
552D56:  MOVS            R0, #1
552D58:  LSLS            R0, R5
552D5A:  TST.W           R0, #0x4C000
552D5E:  BEQ             loc_552D86
552D60:  MOV             R0, R9
552D62:  MOVS            R2, #2
552D64:  POP.W           {R8-R10}
552D68:  POP.W           {R4-R7,LR}
552D6C:  B.W             sub_18B824
552D70:  SXTH            R2, R2
552D72:  CMP             R5, R2
552D74:  BEQ             loc_552D60
552D76:  LDRH.W          R2, [R9,#0x720]
552D7A:  CMP             R2, R0
552D7C:  BNE             loc_552D60
552D7E:  ADD.W           R6, R9, #0x720
552D82:  CMP             R5, #0x12
552D84:  BLS             loc_552D56
552D86:  BLX             rand
552D8A:  VMOV            S0, R0
552D8E:  VLDR            S2, =-4.6566e-10
552D92:  SXTH            R1, R5; __int16
552D94:  MOV             R0, R6; this
552D96:  VCVT.F32.S32    S0, S0
552D9A:  MOVS            R2, #1; __int16
552D9C:  VMUL.F32        S0, S0, S2
552DA0:  VLDR            S2, =0.3
552DA4:  VMUL.F32        S0, S0, S2
552DA8:  VLDR            S2, =-0.2
552DAC:  VADD.F32        S0, S0, S2
552DB0:  VMOV            R3, S0; float
552DB4:  BLX             j__ZN14CBouncingPanel8SetPanelEssf; CBouncingPanel::SetPanel(short,short,float)
552DB8:  B               loc_552CF8
