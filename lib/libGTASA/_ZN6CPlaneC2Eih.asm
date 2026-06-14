; =========================================================
; Game Engine Function: _ZN6CPlaneC2Eih
; Address            : 0x575890 - 0x575B7A
; =========================================================

575890:  PUSH            {R4-R7,LR}
575892:  ADD             R7, SP, #0xC
575894:  PUSH.W          {R8,R9,R11}
575898:  SUB             SP, SP, #0x18
57589A:  MOVS            R3, #1; unsigned __int8
57589C:  MOV             R6, R1
57589E:  MOV             R4, R0
5758A0:  BLX             j__ZN11CAutomobileC2Eihh_0; CAutomobile::CAutomobile(int,uchar,uchar)
5758A4:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5758B2)
5758A6:  VMOV.I32        Q9, #0
5758AA:  LDR             R1, =(_ZTV6CPlane_ptr - 0x5758B8)
5758AC:  ADR             R2, dword_575B80
5758AE:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5758B0:  VLD1.64         {D16-D17}, [R2@128]
5758B4:  ADD             R1, PC; _ZTV6CPlane_ptr
5758B6:  MOVS            R2, #0
5758B8:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5758BA:  LDR             R1, [R1]; `vtable for'CPlane ...
5758BC:  ADDS            R1, #8
5758BE:  STR             R1, [R4]
5758C0:  LDR.W           R5, [R0,R6,LSL#2]
5758C4:  ADDW            R0, R4, #0x99C
5758C8:  LDRH            R1, [R4,#0x26]
5758CA:  VST1.32         {D18-D19}, [R0]
5758CE:  ADDW            R0, R4, #0x9B8
5758D2:  VST1.32         {D16-D17}, [R0]
5758D6:  MOVS            R0, #4
5758D8:  STR.W           R0, [R4,#0x5A4]
5758DC:  MOV.W           R0, #0x3F800000
5758E0:  STR.W           R2, [R4,#0x9C8]
5758E4:  STR.W           R2, [R4,#0x9CC]
5758E8:  STR.W           R2, [R4,#0x9D0]
5758EC:  STR.W           R2, [R4,#0x9D4]
5758F0:  STR.W           R2, [R4,#0x9D8]
5758F4:  STR.W           R2, [R4,#0x9DC]
5758F8:  STR.W           R2, [R4,#0x9E0]
5758FC:  STR.W           R0, [R4,#0x9AC]
575900:  MOVW            R0, #0x21B
575904:  STR.W           R2, [R4,#0x9B0]
575908:  CMP             R1, R0
57590A:  STR.W           R2, [R4,#0x9B4]
57590E:  MOV.W           R2, #0xFF
575912:  ITTT NE
575914:  LDRNE           R0, [R4,#0x44]
575916:  ORRNE.W         R0, R0, #0x1000000
57591A:  STRNE           R0, [R4,#0x44]
57591C:  LDR.W           R0, [R4,#0x42C]
575920:  LDR.W           R1, [R4,#0x430]
575924:  ORR.W           R0, R0, #0x400
575928:  STRH.W          R2, [R4,#0x4B0]
57592C:  STR.W           R0, [R4,#0x42C]
575930:  SUB.W           R0, R6, #0x200; switch 42 cases
575934:  CMP             R0, #0x29 ; ')'
575936:  ORR.W           R1, R1, #0x40 ; '@'
57593A:  STR.W           R1, [R4,#0x430]
57593E:  BHI             def_575940; jumptable 00575940 default case
575940:  TBB.W           [PC,R0]; switch jump
575944:  DCB 0x35; jump table for switch statement
575945:  DCB 0x15
575946:  DCB 0x8A
575947:  DCB 0x8A
575948:  DCB 0x8A
575949:  DCB 0x8A
57594A:  DCB 0x8A
57594B:  DCB 0x49
57594C:  DCB 0x35
57594D:  DCB 0x8A
57594E:  DCB 0x8A
57594F:  DCB 0x8A
575950:  DCB 0x8A
575951:  DCB 0x8A
575952:  DCB 0x8A
575953:  DCB 0x8A
575954:  DCB 0x8A
575955:  DCB 0x8A
575956:  DCB 0x8A
575957:  DCB 0x8A
575958:  DCB 0x8A
575959:  DCB 0x8A
57595A:  DCB 0x8A
57595B:  DCB 0x8A
57595C:  DCB 0x8A
57595D:  DCB 0x8A
57595E:  DCB 0x8A
57595F:  DCB 0x64
575960:  DCB 0x8A
575961:  DCB 0x8A
575962:  DCB 0x8A
575963:  DCB 0x8A
575964:  DCB 0x8A
575965:  DCB 0x8A
575966:  DCB 0x8A
575967:  DCB 0x8A
575968:  DCB 0x8A
575969:  DCB 0x8A
57596A:  DCB 0x8A
57596B:  DCB 0x8A
57596C:  DCB 0x8A
57596D:  DCB 0x74
57596E:  ADDW            R0, R4, #0x5B4; jumptable 00575940 case 513
575972:  MOVS            R1, #2
575974:  MOVS            R2, #0
575976:  MOVS            R6, #0
575978:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
57597C:  MOVW            R0, #0x463B
575980:  MOVS            R1, #0x13
575982:  MOVT            R0, #0x3FF1
575986:  STR.W           R0, [R4,#0x5FC]
57598A:  MOVS            R0, #1
57598C:  STR.W           R6, [R4,#0x600]
575990:  STRB.W          R0, [R4,#0x606]
575994:  LDR.W           R0, [R4,#0x678]
575998:  STRH.W          R1, [R4,#0x604]
57599C:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
5759A0:  STRB            R6, [R0,#2]
5759A2:  LDR.W           R0, [R4,#0x66C]
5759A6:  B               loc_575A04
5759A8:  CMP.W           R6, #0x1DC; jumptable 00575940 default case
5759AC:  BNE             loc_575A58; jumptable 00575940 cases 514-518,521-538,540-552
5759AE:  ADDW            R0, R4, #0x5B4; jumptable 00575940 cases 512,520
5759B2:  MOVS            R1, #2
5759B4:  MOVS            R2, #0
5759B6:  MOVS            R6, #0
5759B8:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
5759BC:  MOV             R0, #0x3FF1463B
5759C4:  STR.W           R0, [R4,#0x5FC]
5759C8:  MOVS            R0, #1
5759CA:  STR.W           R6, [R4,#0x600]
5759CE:  STRB.W          R0, [R4,#0x606]
5759D2:  MOVS            R0, #0x13
5759D4:  B               loc_575A54
5759D6:  ADDW            R0, R4, #0x5B4; jumptable 00575940 case 519
5759DA:  MOVS            R1, #2
5759DC:  MOVS            R2, #0
5759DE:  MOVS            R6, #0
5759E0:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
5759E4:  MOVW            R0, #0xCBE4
5759E8:  MOVS            R1, #0x12
5759EA:  MOVT            R0, #0xC016
5759EE:  STR.W           R0, [R4,#0x5FC]
5759F2:  MOVS            R0, #1
5759F4:  STR.W           R6, [R4,#0x600]
5759F8:  STRB.W          R0, [R4,#0x606]
5759FC:  LDR.W           R0, [R4,#0x670]
575A00:  STRH.W          R1, [R4,#0x604]
575A04:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
575A08:  STRB            R6, [R0,#2]
575A0A:  B               loc_575A58; jumptable 00575940 cases 514-518,521-538,540-552
575A0C:  LDRH.W          R0, [R4,#0x6C0]; jumptable 00575940 case 539
575A10:  MOVW            R1, #0xFFFF
575A14:  CMP             R0, R1
575A16:  BNE             loc_575A58; jumptable 00575940 cases 514-518,521-538,540-552
575A18:  MOVS            R3, #0
575A1A:  ADD.W           R0, R4, #0x6C0; this
575A1E:  MOVT            R3, #0xBE80; float
575A22:  MOVS            R1, #0x15; __int16
575A24:  MOVS            R2, #1; __int16
575A26:  BLX             j__ZN14CBouncingPanel8SetPanelEssf; CBouncingPanel::SetPanel(short,short,float)
575A2A:  B               loc_575A58; jumptable 00575940 cases 514-518,521-538,540-552
575A2C:  ADDW            R0, R4, #0x5B4; jumptable 00575940 case 553
575A30:  MOVS            R1, #2
575A32:  MOVS            R2, #0
575A34:  MOV.W           R8, #2
575A38:  MOVS            R6, #0
575A3A:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
575A3E:  MOV             R0, #0xBFA0D97C
575A46:  STR.W           R0, [R4,#0x5FC]
575A4A:  MOVS            R0, #0x14
575A4C:  STR.W           R6, [R4,#0x600]
575A50:  STRB.W          R8, [R4,#0x606]
575A54:  STRH.W          R0, [R4,#0x604]
575A58:  ADD.W           R8, SP, #0x30+var_24; jumptable 00575940 cases 514-518,521-538,540-552
575A5C:  MOV             R0, R5; this
575A5E:  MOVS            R1, #0; int
575A60:  MOVS            R3, #0; bool
575A62:  MOV             R2, R8; CVector *
575A64:  MOV.W           R9, #0
575A68:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
575A6C:  MOV             R6, SP
575A6E:  MOV             R0, R5; this
575A70:  MOVS            R1, #0; int
575A72:  MOV             R2, R6; CVector *
575A74:  MOVS            R3, #1; bool
575A76:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
575A7A:  ADDW            R0, R4, #0x84C
575A7E:  VLDR            S2, [SP,#0x30+var_1C]
575A82:  MOVS            R1, #1; int
575A84:  MOV             R2, R8; CVector *
575A86:  VLDR            S0, [R0]
575A8A:  MOVS            R3, #0; bool
575A8C:  VSUB.F32        S0, S0, S2
575A90:  VLDR            S2, [SP,#0x30+var_28]
575A94:  VADD.F32        S0, S0, S2
575A98:  VSTR            S0, [R0]
575A9C:  MOV             R0, R5; this
575A9E:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
575AA2:  MOV             R0, R5; this
575AA4:  MOVS            R1, #1; int
575AA6:  MOV             R2, R6; CVector *
575AA8:  MOVS            R3, #1; bool
575AAA:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
575AAE:  ADD.W           R0, R4, #0x850
575AB2:  VLDR            S2, [SP,#0x30+var_1C]
575AB6:  MOVS            R1, #2; int
575AB8:  MOV             R2, R8; CVector *
575ABA:  VLDR            S0, [R0]
575ABE:  MOVS            R3, #0; bool
575AC0:  VSUB.F32        S0, S0, S2
575AC4:  VLDR            S2, [SP,#0x30+var_28]
575AC8:  VADD.F32        S0, S0, S2
575ACC:  VSTR            S0, [R0]
575AD0:  MOV             R0, R5; this
575AD2:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
575AD6:  MOV             R0, R5; this
575AD8:  MOVS            R1, #2; int
575ADA:  MOV             R2, R6; CVector *
575ADC:  MOVS            R3, #1; bool
575ADE:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
575AE2:  ADDW            R0, R4, #0x854
575AE6:  VLDR            S2, [SP,#0x30+var_1C]
575AEA:  MOVS            R1, #3; int
575AEC:  MOV             R2, R8; CVector *
575AEE:  VLDR            S0, [R0]
575AF2:  MOVS            R3, #0; bool
575AF4:  VSUB.F32        S0, S0, S2
575AF8:  VLDR            S2, [SP,#0x30+var_28]
575AFC:  VADD.F32        S0, S0, S2
575B00:  VSTR            S0, [R0]
575B04:  MOV             R0, R5; this
575B06:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
575B0A:  MOV             R0, R5; this
575B0C:  MOVS            R1, #3; int
575B0E:  MOV             R2, R6; CVector *
575B10:  MOVS            R3, #1; bool
575B12:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
575B16:  ADDW            R0, R4, #0x858
575B1A:  VLDR            S2, [SP,#0x30+var_1C]
575B1E:  VMOV.I32        Q8, #0
575B22:  MOVS            R1, #0x10
575B24:  VLDR            S0, [R0]
575B28:  VSUB.F32        S0, S0, S2
575B2C:  VLDR            S2, [SP,#0x30+var_28]
575B30:  VADD.F32        S0, S0, S2
575B34:  VSTR            S0, [R0]
575B38:  ADDW            R0, R4, #0x9FC
575B3C:  VST1.32         {D16-D17}, [R0]
575B40:  STR.W           R9, [R4,#0x9E4]
575B44:  STR.W           R9, [R4,#0x9E8]
575B48:  LDRH            R0, [R4,#0x26]
575B4A:  STRB.W          R1, [R4,#0x9EC]
575B4E:  CMP.W           R0, #0x208
575B52:  STR.W           R9, [R4,#0x9F0]
575B56:  STR.W           R9, [R4,#0x9F4]
575B5A:  STR.W           R9, [R4,#0xA0C]
575B5E:  BNE             loc_575B6C
575B60:  LDR             R0, =(_ZN6CPlane27HARRIER_NOZZLE_ROTATE_LIMITE_ptr - 0x575B66)
575B62:  ADD             R0, PC; _ZN6CPlane27HARRIER_NOZZLE_ROTATE_LIMITE_ptr
575B64:  LDR             R0, [R0]; CPlane::HARRIER_NOZZLE_ROTATE_LIMIT ...
575B66:  LDRH            R0, [R0]; CPlane::HARRIER_NOZZLE_ROTATE_LIMIT
575B68:  STRH.W          R0, [R4,#0x880]
575B6C:  STRB.W          R9, [R4,#0xA14]
575B70:  MOV             R0, R4
575B72:  ADD             SP, SP, #0x18
575B74:  POP.W           {R8,R9,R11}
575B78:  POP             {R4-R7,PC}
