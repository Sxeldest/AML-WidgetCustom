; =========================================================
; Game Engine Function: _ZN4CCam21Process_M16_1stPersonERK7CVectorfff
; Address            : 0x3C4DC0 - 0x3C63FC
; =========================================================

3C4DC0:  PUSH            {R4-R7,LR}
3C4DC2:  ADD             R7, SP, #0xC
3C4DC4:  PUSH.W          {R8-R11}
3C4DC8:  SUB             SP, SP, #4
3C4DCA:  VPUSH           {D8-D15}
3C4DCE:  SUB             SP, SP, #0x50
3C4DD0:  MOV             R4, R0
3C4DD2:  MOV             R5, R1
3C4DD4:  LDR.W           R0, [R4,#0x1F4]; this
3C4DD8:  LDRB.W          R1, [R0,#0x3A]
3C4DDC:  AND.W           R1, R1, #7
3C4DE0:  CMP             R1, #3
3C4DE2:  BNE.W           loc_3C63EE
3C4DE6:  ADD.W           R9, R4, #0x1F4
3C4DEA:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3C4DEE:  CMP             R0, #1
3C4DF0:  BNE             loc_3C4E06
3C4DF2:  LDR.W           R0, [R9]
3C4DF6:  LDR.W           R10, [R0,#0x100]
3C4DFA:  CMP.W           R10, #0
3C4DFE:  IT NE
3C4E00:  MOVNE.W         R10, #1
3C4E04:  B               loc_3C4E0A
3C4E06:  MOV.W           R10, #0
3C4E0A:  VLDR            D16, [R5]
3C4E0E:  LDR             R0, [R5,#8]
3C4E10:  STR             R0, [SP,#0xB0+var_88]
3C4E12:  VSTR            D16, [SP,#0xB0+var_90]
3C4E16:  LDRB            R0, [R4,#0xA]; this
3C4E18:  CMP             R0, #0
3C4E1A:  BEQ             loc_3C4EAA
3C4E1C:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3C4E20:  CMP             R0, #2
3C4E22:  BNE             loc_3C4E38
3C4E24:  LDR.W           R0, [R9]
3C4E28:  LDR.W           R1, [R0,#0x720]
3C4E2C:  CMP             R1, #0
3C4E2E:  IT NE
3C4E30:  MOVNE           R1, #1
3C4E32:  ORRS.W          R1, R1, R10
3C4E36:  BEQ             loc_3C4E6E
3C4E38:  CMP.W           R10, #1
3C4E3C:  BNE             loc_3C4E50
3C4E3E:  LDR.W           R0, =(_ZN11CTheScripts34fCameraHeadingWhenPlayerIsAttachedE_ptr - 0x3C4E46)
3C4E42:  ADD             R0, PC; _ZN11CTheScripts34fCameraHeadingWhenPlayerIsAttachedE_ptr
3C4E44:  LDR             R1, [R0]; CTheScripts::fCameraHeadingWhenPlayerIsAttached ...
3C4E46:  LDR.W           R0, [R9]
3C4E4A:  VLDR            S0, [R1]
3C4E4E:  B               loc_3C4E64
3C4E50:  LDR.W           R0, [R9]
3C4E54:  VLDR            S0, =-1.5708
3C4E58:  ADDW            R1, R0, #0x55C
3C4E5C:  VLDR            S2, [R1]
3C4E60:  VADD.F32        S0, S2, S0
3C4E64:  MOVS            R1, #0
3C4E66:  STR.W           R1, [R4,#0x84]
3C4E6A:  VSTR            S0, [R4,#0x94]
3C4E6E:  ADDW            R0, R0, #0x55C
3C4E72:  VLDR            S0, =-1.5708
3C4E76:  LDR.W           R1, =(dword_952E48 - 0x3C4E8A)
3C4E7A:  MOVS            R2, #0
3C4E7C:  VLDR            S2, [R0]
3C4E80:  MOVS            R3, #1
3C4E82:  LDR.W           R0, =(byte_952E44 - 0x3C4E92)
3C4E86:  ADD             R1, PC; dword_952E48
3C4E88:  VADD.F32        S0, S2, S0
3C4E8C:  STRB            R2, [R4,#0xA]
3C4E8E:  ADD             R0, PC; byte_952E44
3C4E90:  VSTR            S0, [R4,#0x80]
3C4E94:  STRB            R2, [R0]
3C4E96:  STR.W           R2, [R4,#0x90]
3C4E9A:  LDR.W           R0, [R4,#0x8C]
3C4E9E:  STRB            R3, [R4,#3]
3C4EA0:  STR             R0, [R1]
3C4EA2:  STR.W           R2, [R4,#0x98]
3C4EA6:  STR.W           R2, [R4,#0x88]
3C4EAA:  LDRH            R0, [R4,#0xE]
3C4EAC:  CMP             R0, #0x2E ; '.'
3C4EAE:  IT NE
3C4EB0:  CMPNE           R0, #7
3C4EB2:  BNE             loc_3C4FA2
3C4EB4:  LDR.W           R0, =(ControlsManager_ptr - 0x3C4EBE)
3C4EB8:  MOVS            R1, #8
3C4EBA:  ADD             R0, PC; ControlsManager_ptr
3C4EBC:  LDR             R6, [R0]; ControlsManager
3C4EBE:  MOV             R0, R6
3C4EC0:  BLX             j__ZN24CControllerConfigManager34GetMouseButtonAssociatedWithActionE18e_ControllerAction; CControllerConfigManager::GetMouseButtonAssociatedWithAction(e_ControllerAction)
3C4EC4:  MOV             R5, R0
3C4EC6:  MOV             R0, R6
3C4EC8:  MOVS            R1, #9
3C4ECA:  BLX             j__ZN24CControllerConfigManager34GetMouseButtonAssociatedWithActionE18e_ControllerAction; CControllerConfigManager::GetMouseButtonAssociatedWithAction(e_ControllerAction)
3C4ECE:  MOV             R6, R0
3C4ED0:  MOVS            R0, #0; this
3C4ED2:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C4ED6:  CMP             R6, #4
3C4ED8:  BNE             loc_3C4EF0
3C4EDA:  LDR.W           R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x3C4EE2)
3C4EDE:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
3C4EE0:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
3C4EE2:  VLDR            S0, [R0,#8]
3C4EE6:  VCMPE.F32       S0, #0.0
3C4EEA:  VMRS            APSR_nzcv, FPSCR
3C4EEE:  BGT             loc_3C4F14
3C4EF0:  MOVS            R0, #0; this
3C4EF2:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C4EF6:  CMP             R6, #5
3C4EF8:  BNE.W           loc_3C506A
3C4EFC:  LDR.W           R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x3C4F04)
3C4F00:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
3C4F02:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
3C4F04:  VLDR            S0, [R0,#8]
3C4F08:  VCMPE.F32       S0, #0.0
3C4F0C:  VMRS            APSR_nzcv, FPSCR
3C4F10:  BGE.W           loc_3C506A
3C4F14:  MOVS            R0, #0; this
3C4F16:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C4F1A:  LDR.W           R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x3C4F26)
3C4F1E:  VMOV.F32        S2, #7.0
3C4F22:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
3C4F24:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
3C4F26:  VLDR            S0, [R0,#8]
3C4F2A:  LDR.W           R0, =(dword_952E48 - 0x3C4F36)
3C4F2E:  VABS.F32        S0, S0
3C4F32:  ADD             R0, PC; dword_952E48
3C4F34:  VMUL.F32        S0, S0, S2
3C4F38:  VLDR            S2, =10000.0
3C4F3C:  VADD.F32        S0, S0, S2
3C4F40:  VDIV.F32        S0, S0, S2
3C4F44:  VLDR            S2, [R0]
3C4F48:  VMUL.F32        S0, S2, S0
3C4F4C:  LDR.W           R0, =(dword_952E48 - 0x3C4F56)
3C4F50:  MOVS            R6, #1
3C4F52:  ADD             R0, PC; dword_952E48
3C4F54:  VSTR            S0, [R0]
3C4F58:  MOVS            R0, #0; this
3C4F5A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C4F5E:  BLX             j__ZN4CPad13SniperZoomOutEv; CPad::SniperZoomOut(void)
3C4F62:  MOV             R5, R0
3C4F64:  MOVS            R0, #0; this
3C4F66:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C4F6A:  BLX             j__ZN4CPad12SniperZoomInEv; CPad::SniperZoomIn(void)
3C4F6E:  CBNZ            R6, loc_3C4FAE
3C4F70:  CBZ             R5, loc_3C4FAE
3C4F72:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C4F7E)
3C4F76:  VLDR            S0, =255.0
3C4F7A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C4F7C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C4F7E:  VLDR            S2, [R0]
3C4F82:  LDR.W           R0, =(dword_952E48 - 0x3C4F92)
3C4F86:  VMUL.F32        S0, S2, S0
3C4F8A:  VLDR            S2, =10000.0
3C4F8E:  ADD             R0, PC; dword_952E48
3C4F90:  VADD.F32        S0, S0, S2
3C4F94:  VDIV.F32        S0, S0, S2
3C4F98:  VLDR            S2, [R4,#0x8C]
3C4F9C:  VMUL.F32        S0, S2, S0
3C4FA0:  B               loc_3C5118
3C4FA2:  MOVS            R0, #0x428C0000
3C4FA8:  STR.W           R0, [R4,#0x8C]
3C4FAC:  B               loc_3C516A
3C4FAE:  EOR.W           R0, R0, #1
3C4FB2:  ORRS            R0, R6
3C4FB4:  BEQ.W           loc_3C50EA
3C4FB8:  LDR.W           R0, =(dword_952E48 - 0x3C4FC8)
3C4FBC:  VMOV.F32        S4, #0.5
3C4FC0:  VLDR            S0, [R4,#0x8C]
3C4FC4:  ADD             R0, PC; dword_952E48
3C4FC6:  VLDR            S2, [R0]
3C4FCA:  ADD.W           R0, R4, #0x8C
3C4FCE:  VSUB.F32        S2, S2, S0
3C4FD2:  VABS.F32        S6, S2
3C4FD6:  VCMPE.F32       S6, S4
3C4FDA:  VMRS            APSR_nzcv, FPSCR
3C4FDE:  BLE.W           loc_3C5522
3C4FE2:  VMUL.F32        S4, S2, S4
3C4FE6:  VLDR            S6, [R4,#0x90]
3C4FEA:  VMOV.F32        S2, #0.25
3C4FEE:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C4FF6)
3C4FF2:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C4FF4:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
3C4FF6:  VSUB.F32        S8, S4, S6
3C4FFA:  VABS.F32        S10, S8
3C4FFE:  VCMPE.F32       S8, #0.0
3C5002:  VMRS            APSR_nzcv, FPSCR
3C5006:  VCMPE.F32       S4, #0.0
3C500A:  VMUL.F32        S10, S10, S2
3C500E:  VLDR            S2, [R1]
3C5012:  VNMUL.F32       S12, S2, S10
3C5016:  VMUL.F32        S10, S2, S10
3C501A:  IT GT
3C501C:  VMOVGT.F32      S12, S10
3C5020:  VMRS            APSR_nzcv, FPSCR
3C5024:  VADD.F32        S6, S6, S12
3C5028:  VSTR            S6, [R4,#0x90]
3C502C:  ITT LT
3C502E:  VCMPELT.F32     S6, S4
3C5032:  VMRSLT          APSR_nzcv, FPSCR
3C5036:  BLT             loc_3C504C
3C5038:  VCMPE.F32       S4, #0.0
3C503C:  VMRS            APSR_nzcv, FPSCR
3C5040:  ITT GT
3C5042:  VCMPEGT.F32     S6, S4
3C5046:  VMRSGT          APSR_nzcv, FPSCR
3C504A:  BLE             loc_3C5054
3C504C:  VMOV.F32        S6, S4
3C5050:  VSTR            S4, [R4,#0x90]
3C5054:  VMOV.F32        S4, #10.0
3C5058:  VMIN.F32        D1, D1, D2
3C505C:  VMUL.F32        S2, S6, S2
3C5060:  VADD.F32        S0, S0, S2
3C5064:  VSTR            S0, [R0]
3C5068:  B               loc_3C512A
3C506A:  MOVS            R0, #0; this
3C506C:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C5070:  CMP             R5, #4
3C5072:  BNE             loc_3C508A
3C5074:  LDR.W           R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x3C507C)
3C5078:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
3C507A:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
3C507C:  VLDR            S0, [R0,#8]
3C5080:  VCMPE.F32       S0, #0.0
3C5084:  VMRS            APSR_nzcv, FPSCR
3C5088:  BGT             loc_3C50B0
3C508A:  MOVS            R0, #0; this
3C508C:  MOVS            R6, #0
3C508E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C5092:  CMP             R5, #5
3C5094:  BNE.W           loc_3C4F58
3C5098:  LDR.W           R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x3C50A0)
3C509C:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
3C509E:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
3C50A0:  VLDR            S0, [R0,#8]
3C50A4:  VCMPE.F32       S0, #0.0
3C50A8:  VMRS            APSR_nzcv, FPSCR
3C50AC:  BGE.W           loc_3C4F58
3C50B0:  MOVS            R0, #0; this
3C50B2:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C50B6:  LDR.W           R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x3C50C2)
3C50BA:  VMOV.F32        S2, #7.0
3C50BE:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
3C50C0:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
3C50C2:  VLDR            S0, [R0,#8]
3C50C6:  LDR.W           R0, =(dword_952E48 - 0x3C50D2)
3C50CA:  VABS.F32        S0, S0
3C50CE:  ADD             R0, PC; dword_952E48
3C50D0:  VMUL.F32        S0, S0, S2
3C50D4:  VLDR            S2, =10000.0
3C50D8:  VADD.F32        S0, S0, S2
3C50DC:  VDIV.F32        S0, S0, S2
3C50E0:  VLDR            S2, [R0]
3C50E4:  VDIV.F32        S0, S2, S0
3C50E8:  B               loc_3C4F4C
3C50EA:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C50F6)
3C50EE:  VLDR            S0, =255.0
3C50F2:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C50F4:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C50F6:  VLDR            S2, [R0]
3C50FA:  LDR.W           R0, =(dword_952E48 - 0x3C510A)
3C50FE:  VMUL.F32        S0, S2, S0
3C5102:  VLDR            S2, =10000.0
3C5106:  ADD             R0, PC; dword_952E48
3C5108:  VADD.F32        S0, S0, S2
3C510C:  VDIV.F32        S0, S0, S2
3C5110:  VLDR            S2, [R4,#0x8C]
3C5114:  VDIV.F32        S0, S2, S0
3C5118:  MOVS            R1, #0
3C511A:  STR.W           R1, [R4,#0x90]
3C511E:  VSTR            S0, [R4,#0x8C]
3C5122:  VSTR            S0, [R0]
3C5126:  ADD.W           R0, R4, #0x8C
3C512A:  VMOV.F32        S4, #3.0
3C512E:  VLDR            S6, =70.0
3C5132:  VMOV.F32        S2, #12.0
3C5136:  LDRH            R2, [R4,#0xE]
3C5138:  VMIN.F32        D16, D0, D3
3C513C:  LDR.W           R1, =(TheCamera_ptr - 0x3C514A)
3C5140:  CMP             R2, #0x2E ; '.'
3C5142:  ADR.W           R2, dword_3C5D60
3C5146:  ADD             R1, PC; TheCamera_ptr
3C5148:  LDR             R1, [R1]; TheCamera ; int
3C514A:  IT EQ
3C514C:  VMOVEQ.F32      S2, S4
3C5150:  VMAX.F32        D0, D16, D1
3C5154:  VLD1.64         {D16-D17}, [R2@128]
3C5158:  VSTR            S0, [R0]
3C515C:  ADD.W           R0, R1, #0x80
3C5160:  VST1.32         {D16-D17}, [R0]
3C5164:  MOVS            R0, #0x78 ; 'x'
3C5166:  STR.W           R0, [R1,#(dword_952044 - 0x951FA8)]
3C516A:  LDR.W           R0, =(_ZN11CTheScripts38fCameraHeadingStepWhenPlayerIsAttachedE_ptr - 0x3C5174)
3C516E:  MOVS            R5, #0
3C5170:  ADD             R0, PC; _ZN11CTheScripts38fCameraHeadingStepWhenPlayerIsAttachedE_ptr
3C5172:  LDR             R0, [R0]; CTheScripts::fCameraHeadingStepWhenPlayerIsAttached ...
3C5174:  VLDR            S0, [R0]
3C5178:  MOVS            R0, #0
3C517A:  VCMPE.F32       S0, #0.0
3C517E:  VMRS            APSR_nzcv, FPSCR
3C5182:  IT GT
3C5184:  MOVGT           R0, #1
3C5186:  AND.W           R0, R0, R10
3C518A:  CMP             R0, #1
3C518C:  BNE             loc_3C5276
3C518E:  LDR.W           R0, =(_ZN11CTheScripts34fCameraHeadingWhenPlayerIsAttachedE_ptr - 0x3C519A)
3C5192:  VLDR            S2, [R4,#0x94]
3C5196:  ADD             R0, PC; _ZN11CTheScripts34fCameraHeadingWhenPlayerIsAttachedE_ptr
3C5198:  VLDR            S8, =6.2832
3C519C:  LDR             R0, [R0]; CTheScripts::fCameraHeadingWhenPlayerIsAttached ...
3C519E:  VLDR            S4, [R0]
3C51A2:  VSUB.F32        S6, S2, S4
3C51A6:  VCMPE.F32       S6, #0.0
3C51AA:  VMRS            APSR_nzcv, FPSCR
3C51AE:  VADD.F32        S10, S6, S8
3C51B2:  IT LT
3C51B4:  VMOVLT.F32      S6, S10
3C51B8:  VCMPE.F32       S6, S0
3C51BC:  VMRS            APSR_nzcv, FPSCR
3C51C0:  ITTT GE
3C51C2:  VSUBGE.F32      S8, S8, S6
3C51C6:  VCMPEGE.F32     S8, S0
3C51CA:  VMRSGE          APSR_nzcv, FPSCR
3C51CE:  BGE             loc_3C525C
3C51D0:  LDR.W           R0, =(_ZN11CTheScripts38fCameraHeadingStepWhenPlayerIsAttachedE_ptr - 0x3C51DE)
3C51D4:  MOVS            R1, #0
3C51D6:  VSTR            S4, [R4,#0x94]
3C51DA:  ADD             R0, PC; _ZN11CTheScripts38fCameraHeadingStepWhenPlayerIsAttachedE_ptr
3C51DC:  LDR             R0, [R0]; CTheScripts::fCameraHeadingStepWhenPlayerIsAttached ...
3C51DE:  STR             R1, [R0]; CTheScripts::fCameraHeadingStepWhenPlayerIsAttached
3C51E0:  B               loc_3C5276
3C51E2:  ALIGN 4
3C51E4:  DCFS -1.5708
3C51E8:  DCFS 10000.0
3C51EC:  DCFS 255.0
3C51F0:  DCFS 70.0
3C51F4:  DCFS 6.2832
3C51F8:  DCFS 0.0
3C51FC:  DCFS 100.0
3C5200:  DCFS 0.3
3C5204:  DCFS 80.0
3C5208:  DCFS 0.04
3C520C:  DCFS 0.0078125
3C5210:  DCFS 0.034286
3C5214:  ALIGN 8
3C5218:  DCFD 0.00075
3C5220:  DCFS 0.001
3C5224:  DCFS 0.00015
3C5228:  DCFD 0.000150000007
3C5230:  DCFS 0.8
3C5234:  ALIGN 8
3C5238:  DCFD -5.82077005e-12
3C5240:  DCFS 0.006
3C5244:  DCFS 0.008
3C5248:  DCFS 0.0005
3C524C:  DCFS 0.0015
3C5250:  DCFS 0.0025
3C5254:  DCFS 80.0
3C5258:  DCFS 3.1416
3C525C:  VCMPE.F32       S6, S8
3C5260:  VMRS            APSR_nzcv, FPSCR
3C5264:  VNEG.F32        S4, S0
3C5268:  IT GT
3C526A:  VMOVGT.F32      S4, S0
3C526E:  VADD.F32        S0, S2, S4
3C5272:  VSTR            S0, [R4,#0x94]
3C5276:  MOVS            R0, #0; this
3C5278:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C527C:  LDR.W           R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x3C5284)
3C5280:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
3C5282:  LDR             R0, [R0]; this
3C5284:  VLDR            D8, [R0,#0xC]
3C5288:  STRD.W          R5, R5, [SP,#0xB0+var_98]
3C528C:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3C5290:  CBZ             R0, loc_3C5308
3C5292:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3C5296:  CMP             R0, #1
3C5298:  BNE             loc_3C5324
3C529A:  ADD             R1, SP, #0xB0+var_98
3C529C:  MOVS            R0, #0xA7
3C529E:  MOVS            R2, #1
3C52A0:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3C52A4:  VLDR            S16, =0.0
3C52A8:  CMP             R0, #1
3C52AA:  BNE             loc_3C535C
3C52AC:  MOVS            R0, #0x1E
3C52AE:  MOVS            R1, #0
3C52B0:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
3C52B4:  CBNZ            R0, loc_3C52C6
3C52B6:  MOVS            R0, #0x1F
3C52B8:  MOVS            R1, #0
3C52BA:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
3C52BE:  VMOV.F32        S18, S16
3C52C2:  CMP             R0, #1
3C52C4:  BNE             loc_3C5360
3C52C6:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3C52D2)
3C52CA:  VLDR            S4, =100.0
3C52CE:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
3C52D0:  LDR             R0, [R0]; MobileSettings::settings ...
3C52D2:  VLDR            S0, [R0,#0x328]
3C52D6:  VLDR            S2, [R0,#0x348]
3C52DA:  VCVT.F32.S32    S2, S2
3C52DE:  VCVT.F32.S32    S0, S0
3C52E2:  VLDR            S6, [SP,#0xB0+var_98+4]
3C52E6:  VDIV.F32        S2, S2, S4
3C52EA:  VDIV.F32        S0, S0, S4
3C52EE:  VLDR            S4, =0.3
3C52F2:  VADD.F32        S2, S2, S4
3C52F6:  VADD.F32        S0, S0, S4
3C52FA:  VLDR            S4, [SP,#0xB0+var_98]
3C52FE:  VNMUL.F32       S18, S6, S2
3C5302:  VNMUL.F32       S16, S4, S0
3C5306:  B               loc_3C5360
3C5308:  ADD             R1, SP, #0xB0+var_98
3C530A:  MOVS            R0, #0xAF
3C530C:  MOVS            R2, #1
3C530E:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3C5312:  CMP             R0, #1
3C5314:  BNE             loc_3C5352
3C5316:  VMOV.I32        D16, #0xBF000000
3C531A:  VLDR            D17, [SP,#0xB0+var_98]
3C531E:  VMUL.F32        D8, D17, D16
3C5322:  B               loc_3C5566
3C5324:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3C5328:  CMP             R0, #2
3C532A:  BNE             loc_3C5352
3C532C:  ADD             R1, SP, #0xB0+var_98
3C532E:  MOVS            R0, #0xA7
3C5330:  MOVS            R2, #1
3C5332:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3C5336:  MOV             R5, R0
3C5338:  MOVS            R0, #0; this
3C533A:  VLDR            D9, [SP,#0xB0+var_98]
3C533E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C5342:  LDRH.W          R0, [R0,#0x110]
3C5346:  CMP             R0, #0
3C5348:  BEQ.W           loc_3C552A
3C534C:  VMOV.I32        D8, #0
3C5350:  B               loc_3C5566
3C5352:  VLDR            S16, =0.0
3C5356:  VMOV.F32        S18, S16
3C535A:  B               loc_3C53C4
3C535C:  VMOV.F32        S18, S16
3C5360:  ADD             R1, SP, #0xB0+var_98
3C5362:  MOVS            R0, #0xAF
3C5364:  MOVS            R2, #1
3C5366:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3C536A:  CMP             R0, #1
3C536C:  BNE             loc_3C53C4
3C536E:  MOVS            R0, #0x1C
3C5370:  MOVS            R1, #0
3C5372:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
3C5376:  CBNZ            R0, loc_3C5384
3C5378:  MOVS            R0, #0x1D
3C537A:  MOVS            R1, #0
3C537C:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
3C5380:  CMP             R0, #1
3C5382:  BNE             loc_3C53C4
3C5384:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3C5390)
3C5388:  VLDR            S4, =100.0
3C538C:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
3C538E:  LDR             R0, [R0]; MobileSettings::settings ...
3C5390:  VLDR            S0, [R0,#0x328]
3C5394:  VLDR            S2, [R0,#0x348]
3C5398:  VCVT.F32.S32    S2, S2
3C539C:  VCVT.F32.S32    S0, S0
3C53A0:  VLDR            S6, [SP,#0xB0+var_98+4]
3C53A4:  VDIV.F32        S2, S2, S4
3C53A8:  VDIV.F32        S0, S0, S4
3C53AC:  VLDR            S4, =0.3
3C53B0:  VADD.F32        S2, S2, S4
3C53B4:  VADD.F32        S0, S0, S4
3C53B8:  VLDR            S4, [SP,#0xB0+var_98]
3C53BC:  VNMUL.F32       S18, S6, S2
3C53C0:  VNMUL.F32       S16, S4, S0
3C53C4:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3C53D0)
3C53C8:  VNEG.F32        S0, S18
3C53CC:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
3C53CE:  LDR             R0, [R0]; MobileSettings::settings ...
3C53D0:  LDR.W           R0, [R0,#(dword_6E05DC - 0x6E03F4)]
3C53D4:  CMP             R0, #0
3C53D6:  IT EQ
3C53D8:  VMOVEQ.F32      S0, S18
3C53DC:  CMP.W           R10, #1
3C53E0:  BNE             loc_3C5430
3C53E2:  VLDR            S2, =80.0
3C53E6:  VLDR            S4, [R4,#0x8C]
3C53EA:  VLDR            S10, =0.04
3C53EE:  VDIV.F32        S2, S4, S2
3C53F2:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C53FA)
3C53F6:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C53F8:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C53FA:  VLDR            S4, =0.0078125
3C53FE:  VLDR            S20, [R0]
3C5402:  VMUL.F32        S6, S16, S4
3C5406:  VMUL.F32        S4, S0, S4
3C540A:  VABS.F32        S8, S6
3C540E:  VMUL.F32        S6, S6, S8
3C5412:  VMUL.F32        S8, S2, S10
3C5416:  VABS.F32        S10, S4
3C541A:  VMUL.F32        S6, S6, S8
3C541E:  VLDR            S8, =0.034286
3C5422:  VMUL.F32        S24, S4, S10
3C5426:  VMUL.F32        S18, S2, S8
3C542A:  VMUL.F32        S22, S20, S6
3C542E:  B               loc_3C54A4
3C5430:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3C543C)
3C5434:  VLDR            S6, =100.0
3C5438:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
3C543A:  VLDR            D17, =0.00075
3C543E:  LDR             R0, [R0]; MobileSettings::settings ...
3C5440:  VLDR            S4, [R0,#0x348]
3C5444:  VLDR            S2, [R0,#0x328]
3C5448:  VCVT.F32.S32    S4, S4
3C544C:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C545C)
3C5450:  VCVT.F32.S32    S2, S2
3C5454:  VLDR            S8, [R4,#0x8C]
3C5458:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C545A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C545C:  VDIV.F32        S4, S4, S6
3C5460:  VDIV.F32        S2, S2, S6
3C5464:  VCVT.F64.F32    D16, S4
3C5468:  VLDR            S4, =0.001
3C546C:  VLDR            S6, =80.0
3C5470:  VMUL.F32        S2, S2, S4
3C5474:  VLDR            S4, =0.00015
3C5478:  VMUL.F64        D16, D16, D17
3C547C:  VDIV.F32        S18, S8, S6
3C5480:  VADD.F32        S2, S2, S4
3C5484:  VLDR            D17, =0.000150000007
3C5488:  VLDR            S20, [R0]
3C548C:  VADD.F64        D16, D16, D17
3C5490:  VMUL.F32        S2, S16, S2
3C5494:  VCVT.F32.F64    S4, D16
3C5498:  VMUL.F32        S2, S18, S2
3C549C:  VMUL.F32        S24, S0, S4
3C54A0:  VMUL.F32        S22, S20, S2
3C54A4:  VMOV.F32        S2, #2.0
3C54A8:  VLDR            S6, =0.8
3C54AC:  VABS.F32        S0, S0
3C54B0:  VABS.F32        S4, S16
3C54B4:  VMOV.F32        S8, #0.5
3C54B8:  VMOV            R1, S20; y
3C54BC:  VCMPE.F32       S0, S2
3C54C0:  VMRS            APSR_nzcv, FPSCR
3C54C4:  VMOV.F32        S0, S6
3C54C8:  VCMPE.F32       S4, S2
3C54CC:  IT LT
3C54CE:  VMOVLT.F32      S0, S8
3C54D2:  VMRS            APSR_nzcv, FPSCR
3C54D6:  IT LT
3C54D8:  VMOVLT.F32      S6, S0
3C54DC:  VMOV            R0, S6; x
3C54E0:  BLX             powf
3C54E4:  VMUL.F32        S2, S18, S24
3C54E8:  VLDR            S6, [R4,#0x88]
3C54EC:  VMOV.F32        S0, #1.0
3C54F0:  VLDR            S8, [R4,#0x98]
3C54F4:  VMOV            S4, R0
3C54F8:  VMUL.F32        S8, S4, S8
3C54FC:  VMUL.F32        S2, S2, S20
3C5500:  VSUB.F32        S0, S0, S4
3C5504:  VMUL.F32        S4, S4, S6
3C5508:  VMUL.F32        S10, S22, S0
3C550C:  VMUL.F32        S0, S2, S0
3C5510:  VADD.F32        S2, S8, S10
3C5514:  VADD.F32        S0, S0, S4
3C5518:  VSTR            S2, [R4,#0x98]
3C551C:  VSTR            S0, [R4,#0x88]
3C5520:  B               loc_3C55FA
3C5522:  MOVS            R1, #0
3C5524:  STR.W           R1, [R4,#0x90]
3C5528:  B               loc_3C512A
3C552A:  CMP             R5, #0
3C552C:  MOV.W           R0, #0; this
3C5530:  ITEE EQ
3C5532:  VNEGEQ.F32      D8, D8
3C5536:  VLDRNE          D16, =-5.82077005e-12
3C553A:  VMULNE.F32      D8, D9, D16
3C553E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C5542:  LDRB.W          R0, [R0,#0x113]
3C5546:  CMP             R0, #0
3C5548:  BNE.W           loc_3C534C
3C554C:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C5554)
3C5550:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C5552:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C5554:  VLDR            S0, [R0]
3C5558:  VCMPE.F32       S0, #0.0
3C555C:  VMRS            APSR_nzcv, FPSCR
3C5560:  IT LE
3C5562:  VMOVLE.I32      D8, #0
3C5566:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3C5572)
3C556A:  VNEG.F32        S18, S17
3C556E:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
3C5570:  LDR             R0, [R0]; MobileSettings::settings ...
3C5572:  LDR.W           R0, [R0,#(dword_6E05DC - 0x6E03F4)]; this
3C5576:  CMP             R0, #0
3C5578:  IT EQ
3C557A:  VMOVEQ.F32      S18, S17
3C557E:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3C5582:  CMP             R0, #2
3C5584:  BNE             loc_3C55CC
3C5586:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3C5592)
3C558A:  VLDR            S4, =100.0
3C558E:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
3C5590:  VLDR            S6, =0.006
3C5594:  LDR             R0, [R0]; MobileSettings::settings ...
3C5596:  VLDR            S0, [R0,#0x3E8]
3C559A:  ADD.W           R0, R0, #0x408
3C559E:  VCVT.F32.S32    S0, S0
3C55A2:  VLDR            S2, [R0]
3C55A6:  VCVT.F32.S32    S2, S2
3C55AA:  VDIV.F32        S0, S0, S4
3C55AE:  VDIV.F32        S2, S2, S4
3C55B2:  VLDR            S4, =0.008
3C55B6:  VMUL.F32        S2, S2, S6
3C55BA:  VMUL.F32        S0, S0, S4
3C55BE:  VLDR            S4, =0.0005
3C55C2:  VADD.F32        S2, S2, S4
3C55C6:  VADD.F32        S0, S0, S4
3C55CA:  B               loc_3C55D4
3C55CC:  VLDR            S2, =0.0015
3C55D0:  VLDR            S0, =0.0025
3C55D4:  VLDR            S4, =80.0
3C55D8:  VMUL.F32        S2, S18, S2
3C55DC:  VLDR            S6, [R4,#0x8C]
3C55E0:  MOVS            R0, #0
3C55E2:  STR.W           R0, [R4,#0x88]
3C55E6:  VDIV.F32        S4, S6, S4
3C55EA:  STR.W           R0, [R4,#0x98]
3C55EE:  VMUL.F32        S6, S16, S0
3C55F2:  VMUL.F32        S0, S2, S4
3C55F6:  VMUL.F32        S2, S6, S4
3C55FA:  VLDR            S6, [R4,#0x94]
3C55FE:  VLDR            S4, [R4,#0x84]
3C5602:  VADD.F32        S16, S2, S6
3C5606:  VLDR            S18, =3.1416
3C560A:  VADD.F32        S20, S0, S4
3C560E:  VCMPE.F32       S16, S18
3C5612:  VSTR            S16, [R4,#0x94]
3C5616:  VMRS            APSR_nzcv, FPSCR
3C561A:  VSTR            S20, [R4,#0x84]
3C561E:  BLE             loc_3C5626
3C5620:  VLDR            S0, =-6.2832
3C5624:  B               loc_3C5638
3C5626:  VLDR            S0, =-3.1416
3C562A:  VCMPE.F32       S16, S0
3C562E:  VMRS            APSR_nzcv, FPSCR
3C5632:  BGE             loc_3C5640
3C5634:  VLDR            S0, =6.2832
3C5638:  VADD.F32        S16, S16, S0
3C563C:  VSTR            S16, [R4,#0x94]
3C5640:  LDR.W           R5, [R4,#0xF8]
3C5644:  CMP             R5, #1
3C5646:  BLT             loc_3C56F6
3C5648:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3C5654)
3C564C:  LDR.W           R0, =(_ZN4CCam23CAM_BUMPED_SWING_PERIODE_ptr - 0x3C5656)
3C5650:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3C5652:  ADD             R0, PC; _ZN4CCam23CAM_BUMPED_SWING_PERIODE_ptr
3C5654:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3C5656:  LDR             R0, [R0]; CCam::CAM_BUMPED_SWING_PERIOD ...
3C5658:  LDR             R6, [R1]; CTimer::m_snTimeInMilliseconds
3C565A:  VLDR            S0, [R0]
3C565E:  SUBS            R0, R6, R5
3C5660:  VCVT.F32.S32    S0, S0
3C5664:  VMOV            S2, R0
3C5668:  VCVT.F32.U32    S2, S2
3C566C:  VDIV.F32        S0, S2, S0
3C5670:  VLDR            S2, =6.2832
3C5674:  VMUL.F32        S0, S0, S2
3C5678:  VMOV            R0, S0; x
3C567C:  BLX             cosf
3C5680:  LDR.W           R1, =(_ZN4CCam20CAM_BUMPED_MOVE_MULTE_ptr - 0x3C5690)
3C5684:  VMOV            S2, R0
3C5688:  VLDR            S22, [R4,#0xF0]
3C568C:  ADD             R1, PC; _ZN4CCam20CAM_BUMPED_MOVE_MULTE_ptr
3C568E:  VLDR            S24, [R4,#0xF4]
3C5692:  LDR.W           R0, =(_ZN4CCam20CAM_BUMPED_DAMP_RATEE_ptr - 0x3C569C)
3C5696:  LDR             R1, [R1]; CCam::CAM_BUMPED_MOVE_MULT ...
3C5698:  ADD             R0, PC; _ZN4CCam20CAM_BUMPED_DAMP_RATEE_ptr
3C569A:  VLDR            S0, [R1]
3C569E:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C56AC)
3C56A2:  VMUL.F32        S0, S2, S0
3C56A6:  LDR             R0, [R0]; CCam::CAM_BUMPED_DAMP_RATE ...
3C56A8:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C56AA:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
3C56AC:  VMUL.F32        S2, S0, S22
3C56B0:  VMUL.F32        S0, S0, S24
3C56B4:  VADD.F32        S2, S16, S2
3C56B8:  VADD.F32        S20, S20, S0
3C56BC:  VSTR            S2, [R4,#0x94]
3C56C0:  VSTR            S20, [R4,#0x84]
3C56C4:  LDR             R0, [R0]; x
3C56C6:  LDR             R1, [R1]; y
3C56C8:  BLX             powf
3C56CC:  VMOV            S0, R0
3C56D0:  LDR.W           R0, =(_ZN4CCam19CAM_BUMPED_END_TIMEE_ptr - 0x3C56DC)
3C56D4:  VMUL.F32        S2, S0, S24
3C56D8:  ADD             R0, PC; _ZN4CCam19CAM_BUMPED_END_TIMEE_ptr
3C56DA:  VMUL.F32        S0, S0, S22
3C56DE:  LDR             R0, [R0]; CCam::CAM_BUMPED_END_TIME ...
3C56E0:  VSTR            S0, [R4,#0xF0]
3C56E4:  VSTR            S2, [R4,#0xF4]
3C56E8:  LDR             R0, [R0]; CCam::CAM_BUMPED_END_TIME
3C56EA:  ADD             R0, R5
3C56EC:  CMP             R6, R0
3C56EE:  ITT HI
3C56F0:  MOVHI           R0, #0
3C56F2:  STRHI.W         R0, [R4,#0xF8]
3C56F6:  LDR.W           R8, [R9]
3C56FA:  ADR.W           R1, dword_3C6424
3C56FE:  LDRB.W          R0, [R8,#0x487]
3C5702:  LSLS            R0, R0, #0x1D
3C5704:  IT PL
3C5706:  ADDPL           R1, #4
3C5708:  CMP.W           R10, #1
3C570C:  VLDR            S16, [R1]
3C5710:  BNE             loc_3C57AE
3C5712:  LDRH.W          R0, [R8,#0x780]
3C5716:  CMP             R0, #3
3C5718:  BEQ             loc_3C57F2
3C571A:  CMP             R0, #2
3C571C:  BEQ.W           loc_3C58B4
3C5720:  CMP             R0, #1
3C5722:  BNE.W           loc_3C5950
3C5726:  LDR.W           R5, [R8,#0x100]
3C572A:  LDR             R0, [R5,#0x14]
3C572C:  CBNZ            R0, loc_3C573E
3C572E:  MOV             R0, R5; this
3C5730:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C5734:  LDR             R1, [R5,#0x14]; CMatrix *
3C5736:  ADDS            R0, R5, #4; this
3C5738:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C573C:  LDR             R0, [R5,#0x14]
3C573E:  VMOV.F32        S20, #-1.0
3C5742:  VLDR            S0, [R0,#8]
3C5746:  VCMPE.F32       S0, S20
3C574A:  VMRS            APSR_nzcv, FPSCR
3C574E:  BLT             loc_3C577C
3C5750:  LDR.W           R5, [R8,#0x100]
3C5754:  LDR             R0, [R5,#0x14]
3C5756:  CBNZ            R0, loc_3C5768
3C5758:  MOV             R0, R5; this
3C575A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C575E:  LDR             R1, [R5,#0x14]; CMatrix *
3C5760:  ADDS            R0, R5, #4; this
3C5762:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C5766:  LDR             R0, [R5,#0x14]
3C5768:  VMOV.F32        S0, #1.0
3C576C:  VLDR            S2, [R0,#8]
3C5770:  VCMPE.F32       S2, S0
3C5774:  VMRS            APSR_nzcv, FPSCR
3C5778:  BGT.W           loc_3C5BCA
3C577C:  LDR.W           R5, [R8,#0x100]
3C5780:  LDR             R0, [R5,#0x14]
3C5782:  CBNZ            R0, loc_3C5794
3C5784:  MOV             R0, R5; this
3C5786:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C578A:  LDR             R1, [R5,#0x14]; CMatrix *
3C578C:  ADDS            R0, R5, #4; this
3C578E:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C5792:  LDR             R0, [R5,#0x14]
3C5794:  VMOV.F32        S0, #-1.0
3C5798:  VLDR            S2, [R0,#8]
3C579C:  VCMPE.F32       S2, S0
3C57A0:  VMRS            APSR_nzcv, FPSCR
3C57A4:  BGE.W           loc_3C5BAA
3C57A8:  VMOV.F32        S20, #1.0
3C57AC:  B               loc_3C5BCA
3C57AE:  VLDR            S0, =1.0472
3C57B2:  VCMPE.F32       S20, S0
3C57B6:  VMRS            APSR_nzcv, FPSCR
3C57BA:  BLE             loc_3C57C2
3C57BC:  VSTR            S0, [R4,#0x84]
3C57C0:  B               loc_3C57D4
3C57C2:  VLDR            S0, =-1.4923
3C57C6:  VCMPE.F32       S20, S0
3C57CA:  VMRS            APSR_nzcv, FPSCR
3C57CE:  IT LT
3C57D0:  VSTRLT          S0, [R4,#0x84]
3C57D4:  LDR.W           R0, [R8,#0x18]
3C57D8:  CMP             R0, #0
3C57DA:  BEQ.W           loc_3C5A1A
3C57DE:  LDR             R1, [R0,#4]
3C57E0:  LDR.W           R0, [R8,#0x14]
3C57E4:  ADDS            R1, #0x10
3C57E6:  CMP             R0, #0
3C57E8:  BEQ.W           loc_3C5A12
3C57EC:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
3C57F0:  B               loc_3C5A1A
3C57F2:  LDR.W           R5, [R8,#0x100]
3C57F6:  LDR             R0, [R5,#0x14]
3C57F8:  CBNZ            R0, loc_3C580A
3C57FA:  MOV             R0, R5; this
3C57FC:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C5800:  LDR             R1, [R5,#0x14]; CMatrix *
3C5802:  ADDS            R0, R5, #4; this
3C5804:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C5808:  LDR             R0, [R5,#0x14]
3C580A:  VMOV.F32        S20, #1.0
3C580E:  VLDR            S0, [R0,#8]
3C5812:  VCMPE.F32       S0, S20
3C5816:  VMRS            APSR_nzcv, FPSCR
3C581A:  BGT             loc_3C5846
3C581C:  LDR.W           R5, [R8,#0x100]
3C5820:  LDR             R0, [R5,#0x14]
3C5822:  CBNZ            R0, loc_3C5834
3C5824:  MOV             R0, R5; this
3C5826:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C582A:  LDR             R1, [R5,#0x14]; CMatrix *
3C582C:  ADDS            R0, R5, #4; this
3C582E:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C5832:  LDR             R0, [R5,#0x14]
3C5834:  VMOV.F32        S0, #-1.0
3C5838:  VLDR            S2, [R0,#8]
3C583C:  VCMPE.F32       S2, S0
3C5840:  VMRS            APSR_nzcv, FPSCR
3C5844:  BLT             loc_3C588C
3C5846:  LDR.W           R5, [R8,#0x100]
3C584A:  LDR             R0, [R5,#0x14]
3C584C:  CBNZ            R0, loc_3C585E
3C584E:  MOV             R0, R5; this
3C5850:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C5854:  LDR             R1, [R5,#0x14]; CMatrix *
3C5856:  ADDS            R0, R5, #4; this
3C5858:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C585C:  LDR             R0, [R5,#0x14]
3C585E:  VLDR            S0, [R0,#8]
3C5862:  VCMPE.F32       S0, S20
3C5866:  VMOV.F32        S0, S20
3C586A:  VMRS            APSR_nzcv, FPSCR
3C586E:  BGT             loc_3C588C
3C5870:  LDR.W           R5, [R8,#0x100]
3C5874:  LDR             R0, [R5,#0x14]
3C5876:  CBNZ            R0, loc_3C5888
3C5878:  MOV             R0, R5; this
3C587A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C587E:  LDR             R1, [R5,#0x14]; CMatrix *
3C5880:  ADDS            R0, R5, #4; this
3C5882:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C5886:  LDR             R0, [R5,#0x14]
3C5888:  VLDR            S0, [R0,#8]
3C588C:  VMOV            R0, S0; x
3C5890:  BLX             asinf
3C5894:  MOV             R6, R0
3C5896:  LDR.W           R0, [R8,#0x100]
3C589A:  LDR             R1, [R0,#0x14]
3C589C:  CMP             R1, #0
3C589E:  BEQ.W           loc_3C5BF0
3C58A2:  LDRD.W          R0, R1, [R1,#0x10]; x
3C58A6:  EOR.W           R0, R0, #0x80000000; y
3C58AA:  BLX             atan2f
3C58AE:  VMOV            S0, R0
3C58B2:  B               loc_3C5BF4
3C58B4:  LDR.W           R5, [R8,#0x100]
3C58B8:  LDR             R0, [R5,#0x14]
3C58BA:  CBNZ            R0, loc_3C58CC
3C58BC:  MOV             R0, R5; this
3C58BE:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C58C2:  LDR             R1, [R5,#0x14]; CMatrix *
3C58C4:  ADDS            R0, R5, #4; this
3C58C6:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C58CA:  LDR             R0, [R5,#0x14]
3C58CC:  VMOV.F32        S20, #-1.0
3C58D0:  VLDR            S0, [R0,#0x18]
3C58D4:  VCMPE.F32       S0, S20
3C58D8:  VMRS            APSR_nzcv, FPSCR
3C58DC:  BLT             loc_3C590A
3C58DE:  LDR.W           R5, [R8,#0x100]
3C58E2:  LDR             R0, [R5,#0x14]
3C58E4:  CBNZ            R0, loc_3C58F6
3C58E6:  MOV             R0, R5; this
3C58E8:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C58EC:  LDR             R1, [R5,#0x14]; CMatrix *
3C58EE:  ADDS            R0, R5, #4; this
3C58F0:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C58F4:  LDR             R0, [R5,#0x14]
3C58F6:  VMOV.F32        S0, #1.0
3C58FA:  VLDR            S2, [R0,#0x18]
3C58FE:  VCMPE.F32       S2, S0
3C5902:  VMRS            APSR_nzcv, FPSCR
3C5906:  BGT.W           loc_3C5C1E
3C590A:  LDR.W           R5, [R8,#0x100]
3C590E:  LDR             R0, [R5,#0x14]
3C5910:  CBNZ            R0, loc_3C5922
3C5912:  MOV             R0, R5; this
3C5914:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C5918:  LDR             R1, [R5,#0x14]; CMatrix *
3C591A:  ADDS            R0, R5, #4; this
3C591C:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C5920:  LDR             R0, [R5,#0x14]
3C5922:  VMOV.F32        S0, #-1.0
3C5926:  VLDR            S2, [R0,#0x18]
3C592A:  VCMPE.F32       S2, S0
3C592E:  VMRS            APSR_nzcv, FPSCR
3C5932:  BGE.W           loc_3C5BFE
3C5936:  VMOV.F32        S20, #1.0
3C593A:  B               loc_3C5C1E
3C593C:  DCFS -6.2832
3C5940:  DCFS -3.1416
3C5944:  DCFS 6.2832
3C5948:  DCFS 1.0472
3C594C:  DCFS -1.4923
3C5950:  LDR.W           R5, [R8,#0x100]
3C5954:  LDR             R0, [R5,#0x14]
3C5956:  CBNZ            R0, loc_3C5968
3C5958:  MOV             R0, R5; this
3C595A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C595E:  LDR             R1, [R5,#0x14]; CMatrix *
3C5960:  ADDS            R0, R5, #4; this
3C5962:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C5966:  LDR             R0, [R5,#0x14]
3C5968:  VMOV.F32        S20, #1.0
3C596C:  VLDR            S0, [R0,#0x18]
3C5970:  VCMPE.F32       S0, S20
3C5974:  VMRS            APSR_nzcv, FPSCR
3C5978:  BGT             loc_3C59A4
3C597A:  LDR.W           R5, [R8,#0x100]
3C597E:  LDR             R0, [R5,#0x14]
3C5980:  CBNZ            R0, loc_3C5992
3C5982:  MOV             R0, R5; this
3C5984:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C5988:  LDR             R1, [R5,#0x14]; CMatrix *
3C598A:  ADDS            R0, R5, #4; this
3C598C:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C5990:  LDR             R0, [R5,#0x14]
3C5992:  VMOV.F32        S0, #-1.0
3C5996:  VLDR            S2, [R0,#0x18]
3C599A:  VCMPE.F32       S2, S0
3C599E:  VMRS            APSR_nzcv, FPSCR
3C59A2:  BLT             loc_3C59EA
3C59A4:  LDR.W           R5, [R8,#0x100]
3C59A8:  LDR             R0, [R5,#0x14]
3C59AA:  CBNZ            R0, loc_3C59BC
3C59AC:  MOV             R0, R5; this
3C59AE:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C59B2:  LDR             R1, [R5,#0x14]; CMatrix *
3C59B4:  ADDS            R0, R5, #4; this
3C59B6:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C59BA:  LDR             R0, [R5,#0x14]
3C59BC:  VLDR            S0, [R0,#0x18]
3C59C0:  VCMPE.F32       S0, S20
3C59C4:  VMOV.F32        S0, S20
3C59C8:  VMRS            APSR_nzcv, FPSCR
3C59CC:  BGT             loc_3C59EA
3C59CE:  LDR.W           R5, [R8,#0x100]
3C59D2:  LDR             R0, [R5,#0x14]
3C59D4:  CBNZ            R0, loc_3C59E6
3C59D6:  MOV             R0, R5; this
3C59D8:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C59DC:  LDR             R1, [R5,#0x14]; CMatrix *
3C59DE:  ADDS            R0, R5, #4; this
3C59E0:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C59E4:  LDR             R0, [R5,#0x14]
3C59E6:  VLDR            S0, [R0,#0x18]
3C59EA:  VMOV            R0, S0; x
3C59EE:  BLX             asinf
3C59F2:  MOV             R6, R0
3C59F4:  LDR.W           R0, [R8,#0x100]
3C59F8:  LDR             R1, [R0,#0x14]
3C59FA:  CMP             R1, #0
3C59FC:  BEQ.W           loc_3C5C42
3C5A00:  LDRD.W          R0, R1, [R1,#0x10]; x
3C5A04:  EOR.W           R0, R0, #0x80000000; y
3C5A08:  BLX             atan2f
3C5A0C:  VMOV            S0, R0
3C5A10:  B               loc_3C5C46
3C5A12:  ADD.W           R0, R8, #4
3C5A16:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
3C5A1A:  LDR.W           R0, [R4,#0x1F4]; this
3C5A1E:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
3C5A22:  LDR.W           R0, [R4,#0x1F4]; this
3C5A26:  BLX             j__ZN7CEntity13UpdateRpHAnimEv; CEntity::UpdateRpHAnim(void)
3C5A2A:  MOVS            R0, #0
3C5A2C:  ADD             R1, SP, #0xB0+var_70
3C5A2E:  STRD.W          R0, R0, [SP,#0xB0+var_70]
3C5A32:  MOVS            R2, #5
3C5A34:  STR             R0, [SP,#0xB0+var_68]
3C5A36:  MOVS            R3, #1
3C5A38:  LDR.W           R0, [R4,#0x1F4]; this
3C5A3C:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
3C5A40:  LDR             R0, [SP,#0xB0+var_68]
3C5A42:  ADD.W           R8, R4, #0x174
3C5A46:  STR.W           R0, [R4,#0x17C]
3C5A4A:  VLDR            S0, =0.1
3C5A4E:  VLDR            S2, [R4,#0x17C]
3C5A52:  VLDR            D16, [SP,#0xB0+var_70]
3C5A56:  VADD.F32        S0, S2, S0
3C5A5A:  LDR.W           R5, [R4,#0x1F4]
3C5A5E:  VSTR            D16, [R4,#0x174]
3C5A62:  VSTR            S0, [R4,#0x17C]
3C5A66:  LDRB.W          R0, [R5,#0x487]
3C5A6A:  LSLS            R0, R0, #0x1D
3C5A6C:  BMI             loc_3C5AB4
3C5A6E:  LDR             R0, [R5,#0x14]
3C5A70:  CBNZ            R0, loc_3C5A88
3C5A72:  MOV             R0, R5; this
3C5A74:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C5A78:  LDR             R1, [R5,#0x14]; CMatrix *
3C5A7A:  ADDS            R0, R5, #4; this
3C5A7C:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C5A80:  LDR.W           R1, [R9]
3C5A84:  LDR             R0, [R5,#0x14]
3C5A86:  MOV             R5, R1
3C5A88:  VLDR            S0, [R0,#0x10]
3C5A8C:  VLDR            S2, [R8]
3C5A90:  VMUL.F32        S0, S16, S0
3C5A94:  VSUB.F32        S0, S2, S0
3C5A98:  VSTR            S0, [R8]
3C5A9C:  LDR             R0, [R5,#0x14]
3C5A9E:  CBNZ            R0, loc_3C5AB0
3C5AA0:  MOV             R0, R5; this
3C5AA2:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C5AA6:  LDR             R1, [R5,#0x14]; CMatrix *
3C5AA8:  ADDS            R0, R5, #4; this
3C5AAA:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C5AAE:  LDR             R0, [R5,#0x14]
3C5AB0:  ADDS            R0, #0x10
3C5AB2:  B               loc_3C5B90
3C5AB4:  LDR.W           R0, =(fDuckingBackOffset_ptr - 0x3C5ABC)
3C5AB8:  ADD             R0, PC; fDuckingBackOffset_ptr
3C5ABA:  LDR             R1, [R0]; fDuckingBackOffset
3C5ABC:  LDR             R0, [R5,#0x14]
3C5ABE:  VLDR            S18, [R1]
3C5AC2:  CBZ             R0, loc_3C5ACA
3C5AC4:  VMOV.F32        S16, S18
3C5AC8:  B               loc_3C5AEC
3C5ACA:  MOV             R0, R5; this
3C5ACC:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C5AD0:  LDR             R1, [R5,#0x14]; CMatrix *
3C5AD2:  ADDS            R0, R5, #4; this
3C5AD4:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C5AD8:  LDR.W           R0, =(fDuckingBackOffset_ptr - 0x3C5AE4)
3C5ADC:  LDR.W           R2, [R9]
3C5AE0:  ADD             R0, PC; fDuckingBackOffset_ptr
3C5AE2:  LDR             R1, [R0]; fDuckingBackOffset
3C5AE4:  LDR             R0, [R5,#0x14]
3C5AE6:  MOV             R5, R2
3C5AE8:  VLDR            S16, [R1]
3C5AEC:  VLDR            S0, [R0,#0x10]
3C5AF0:  VLDR            S2, [R8]
3C5AF4:  VMUL.F32        S0, S18, S0
3C5AF8:  VSUB.F32        S0, S2, S0
3C5AFC:  VSTR            S0, [R8]
3C5B00:  LDR             R0, [R5,#0x14]
3C5B02:  CBZ             R0, loc_3C5B08
3C5B04:  MOV             R6, R5
3C5B06:  B               loc_3C5B1C
3C5B08:  MOV             R0, R5; this
3C5B0A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C5B0E:  LDR             R1, [R5,#0x14]; CMatrix *
3C5B10:  ADDS            R0, R5, #4; this
3C5B12:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C5B16:  LDR.W           R6, [R9]
3C5B1A:  LDR             R0, [R5,#0x14]
3C5B1C:  VLDR            S0, [R0,#0x14]
3C5B20:  VLDR            S2, [R4,#0x178]
3C5B24:  VMUL.F32        S0, S16, S0
3C5B28:  LDR.W           R0, =(fDuckingRightOffset_ptr - 0x3C5B30)
3C5B2C:  ADD             R0, PC; fDuckingRightOffset_ptr
3C5B2E:  LDR             R1, [R0]; fDuckingRightOffset
3C5B30:  VSUB.F32        S0, S2, S0
3C5B34:  VSTR            S0, [R4,#0x178]
3C5B38:  LDR             R0, [R6,#0x14]
3C5B3A:  VLDR            S18, [R1]
3C5B3E:  CBZ             R0, loc_3C5B48
3C5B40:  MOV             R5, R6
3C5B42:  VMOV.F32        S16, S18
3C5B46:  B               loc_3C5B68
3C5B48:  MOV             R0, R6; this
3C5B4A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C5B4E:  LDR             R1, [R6,#0x14]; CMatrix *
3C5B50:  ADDS            R0, R6, #4; this
3C5B52:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C5B56:  LDR.W           R0, =(fDuckingRightOffset_ptr - 0x3C5B62)
3C5B5A:  LDR.W           R5, [R9]
3C5B5E:  ADD             R0, PC; fDuckingRightOffset_ptr
3C5B60:  LDR             R1, [R0]; fDuckingRightOffset
3C5B62:  LDR             R0, [R6,#0x14]
3C5B64:  VLDR            S16, [R1]
3C5B68:  VLDR            S0, [R0]
3C5B6C:  VLDR            S2, [R8]
3C5B70:  VMUL.F32        S0, S18, S0
3C5B74:  VSUB.F32        S0, S2, S0
3C5B78:  VSTR            S0, [R8]
3C5B7C:  LDR             R0, [R5,#0x14]
3C5B7E:  CBNZ            R0, loc_3C5B90
3C5B80:  MOV             R0, R5; this
3C5B82:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C5B86:  LDR             R1, [R5,#0x14]; CMatrix *
3C5B88:  ADDS            R0, R5, #4; this
3C5B8A:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C5B8E:  LDR             R0, [R5,#0x14]
3C5B90:  VLDR            S0, [R0,#4]
3C5B94:  VLDR            S2, [R4,#0x178]
3C5B98:  VMUL.F32        S0, S16, S0
3C5B9C:  VSUB.F32        S0, S2, S0
3C5BA0:  VSTR            S0, [R4,#0x178]
3C5BA4:  VLDR            S26, [R4,#0x84]
3C5BA8:  B               loc_3C602E
3C5BAA:  LDR.W           R5, [R8,#0x100]
3C5BAE:  LDR             R0, [R5,#0x14]
3C5BB0:  CBNZ            R0, loc_3C5BC2
3C5BB2:  MOV             R0, R5; this
3C5BB4:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C5BB8:  LDR             R1, [R5,#0x14]; CMatrix *
3C5BBA:  ADDS            R0, R5, #4; this
3C5BBC:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C5BC0:  LDR             R0, [R5,#0x14]
3C5BC2:  VLDR            S0, [R0,#8]
3C5BC6:  VNEG.F32        S20, S0
3C5BCA:  VMOV            R0, S20; x
3C5BCE:  BLX             asinf
3C5BD2:  LDR.W           R1, [R8,#0x100]
3C5BD6:  VMOV            S20, R0
3C5BDA:  LDR             R0, [R1,#0x14]
3C5BDC:  CBZ             R0, loc_3C5C50
3C5BDE:  LDRD.W          R2, R1, [R0,#0x10]; x
3C5BE2:  EOR.W           R0, R2, #0x80000000; y
3C5BE6:  BLX             atan2f
3C5BEA:  VMOV            S26, R0
3C5BEE:  B               loc_3C5C66
3C5BF0:  VLDR            S0, [R0,#0x10]
3C5BF4:  VMOV            S20, R6
3C5BF8:  VLDR            S2, =-3.1416
3C5BFC:  B               loc_3C5C62
3C5BFE:  LDR.W           R5, [R8,#0x100]
3C5C02:  LDR             R0, [R5,#0x14]
3C5C04:  CBNZ            R0, loc_3C5C16
3C5C06:  MOV             R0, R5; this
3C5C08:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C5C0C:  LDR             R1, [R5,#0x14]; CMatrix *
3C5C0E:  ADDS            R0, R5, #4; this
3C5C10:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C5C14:  LDR             R0, [R5,#0x14]
3C5C16:  VLDR            S0, [R0,#0x18]
3C5C1A:  VNEG.F32        S20, S0
3C5C1E:  VMOV            R0, S20; x
3C5C22:  BLX             asinf
3C5C26:  MOV             R6, R0
3C5C28:  LDR.W           R0, [R8,#0x100]
3C5C2C:  LDR             R1, [R0,#0x14]
3C5C2E:  CBZ             R1, loc_3C5C56
3C5C30:  LDRD.W          R0, R1, [R1,#0x10]; x
3C5C34:  EOR.W           R0, R0, #0x80000000; y
3C5C38:  BLX             atan2f
3C5C3C:  VMOV            S0, R0
3C5C40:  B               loc_3C5C5A
3C5C42:  VLDR            S0, [R0,#0x10]
3C5C46:  VMOV            S20, R6
3C5C4A:  VLDR            S2, =-1.5708
3C5C4E:  B               loc_3C5C62
3C5C50:  VLDR            S26, [R1,#0x10]
3C5C54:  B               loc_3C5C66
3C5C56:  VLDR            S0, [R0,#0x10]
3C5C5A:  VMOV            S20, R6
3C5C5E:  VLDR            S2, =1.5708
3C5C62:  VADD.F32        S26, S0, S2
3C5C66:  MOV             R0, R8; this
3C5C68:  BLX             j__ZN4CPed19PositionAttachedPedEv; CPed::PositionAttachedPed(void)
3C5C6C:  LDR.W           R0, [R8,#0x18]
3C5C70:  CBZ             R0, loc_3C5C8A
3C5C72:  LDR             R1, [R0,#4]
3C5C74:  LDR.W           R0, [R8,#0x14]
3C5C78:  ADDS            R1, #0x10
3C5C7A:  CBZ             R0, loc_3C5C82
3C5C7C:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
3C5C80:  B               loc_3C5C8A
3C5C82:  ADD.W           R0, R8, #4
3C5C86:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
3C5C8A:  MOV             R0, R8; this
3C5C8C:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
3C5C90:  MOV             R0, R8; this
3C5C92:  BLX             j__ZN7CEntity13UpdateRpHAnimEv; CEntity::UpdateRpHAnim(void)
3C5C96:  MOVS            R0, #0
3C5C98:  STRD.W          R0, R0, [SP,#0xB0+var_70]
3C5C9C:  STR             R0, [SP,#0xB0+var_68]
3C5C9E:  LDR.W           R0, [R8,#0x100]
3C5CA2:  LDRB.W          R1, [R0,#0x3A]
3C5CA6:  AND.W           R1, R1, #7
3C5CAA:  CMP             R1, #2
3C5CAC:  ITT EQ
3C5CAE:  LDREQ.W         R0, [R0,#0x5A0]
3C5CB2:  CMPEQ           R0, #9
3C5CB4:  BEQ             loc_3C5CD2
3C5CB6:  LDR.W           R0, [R9]; this
3C5CBA:  ADD             R1, SP, #0xB0+var_70
3C5CBC:  MOVS            R2, #5
3C5CBE:  MOVS            R3, #1
3C5CC0:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
3C5CC4:  VLDR            S24, =1.0472
3C5CC8:  VLDR            S22, =1.4923
3C5CCC:  VLDR            S28, =0.1
3C5CD0:  B               loc_3C5CF4
3C5CD2:  LDR.W           R0, [R9]; this
3C5CD6:  ADD             R1, SP, #0xB0+var_70
3C5CD8:  MOVS            R2, #5
3C5CDA:  MOVS            R3, #1
3C5CDC:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
3C5CE0:  ADD.W           R0, R8, #0x788
3C5CE4:  VLDR            S16, =0.0
3C5CE8:  VLDR            S22, [R0]
3C5CEC:  VMOV.F32        S28, S16
3C5CF0:  VMOV.F32        S24, S22
3C5CF4:  VLDR            D16, [SP,#0xB0+var_70]
3C5CF8:  LDR.W           R5, [R4,#0x1F4]
3C5CFC:  LDR             R0, [SP,#0xB0+var_68]
3C5CFE:  STR.W           R0, [R4,#0x17C]
3C5D02:  VSTR            D16, [R4,#0x174]
3C5D06:  LDR             R0, [R5,#0x14]
3C5D08:  CMP             R0, #0
3C5D0A:  BEQ             loc_3C5DC8
3C5D0C:  MOV             R6, R5
3C5D0E:  B               loc_3C5DDC
3C5D10:  DCD _ZN11CTheScripts34fCameraHeadingWhenPlayerIsAttachedE_ptr - 0x3C4E46
3C5D14:  DCD dword_952E48 - 0x3C4E8A
3C5D18:  DCD byte_952E44 - 0x3C4E92
3C5D1C:  DCD ControlsManager_ptr - 0x3C4EBE
3C5D20:  DCD _ZN4CPad23NewMouseControllerStateE_ptr - 0x3C4EE2
3C5D24:  DCD _ZN4CPad23NewMouseControllerStateE_ptr - 0x3C4F04
3C5D28:  DCD _ZN4CPad23NewMouseControllerStateE_ptr - 0x3C4F26
3C5D2C:  DCD dword_952E48 - 0x3C4F36
3C5D30:  DCD dword_952E48 - 0x3C4F56
3C5D34:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x3C4F7E
3C5D38:  DCD dword_952E48 - 0x3C4F92
3C5D3C:  DCD dword_952E48 - 0x3C4FC8
3C5D40:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x3C4FF6
3C5D44:  DCD _ZN4CPad23NewMouseControllerStateE_ptr - 0x3C507C
3C5D48:  DCD _ZN4CPad23NewMouseControllerStateE_ptr - 0x3C50A0
3C5D4C:  DCD _ZN4CPad23NewMouseControllerStateE_ptr - 0x3C50C2
3C5D50:  DCD dword_952E48 - 0x3C50D2
3C5D54:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x3C50F6
3C5D58:  DCD dword_952E48 - 0x3C510A
3C5D5C:  DCD TheCamera_ptr - 0x3C514A
3C5D60:  DCD 0xB4, 0xFF, 0xB4, 1
3C5D70:  DCD _ZN11CTheScripts38fCameraHeadingStepWhenPlayerIsAttachedE_ptr - 0x3C5174
3C5D74:  DCD _ZN11CTheScripts34fCameraHeadingWhenPlayerIsAttachedE_ptr - 0x3C519A
3C5D78:  DCD _ZN11CTheScripts38fCameraHeadingStepWhenPlayerIsAttachedE_ptr - 0x3C51DE
3C5D7C:  DCD _ZN4CPad23NewMouseControllerStateE_ptr - 0x3C5284
3C5D80:  DCD _ZN14MobileSettings8settingsE_ptr - 0x3C52D2
3C5D84:  DCD _ZN14MobileSettings8settingsE_ptr - 0x3C5390
3C5D88:  DCD _ZN14MobileSettings8settingsE_ptr - 0x3C53D0
3C5D8C:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x3C53FA
3C5D90:  DCD _ZN14MobileSettings8settingsE_ptr - 0x3C543C
3C5D94:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x3C545C
3C5D98:  DCFS 0.1
3C5D9C:  DCFS -1.5708
3C5DA0:  DCFS 1.5708
3C5DA4:  DCFS 1.4923
3C5DA8:  DCFS 0.0
3C5DAC:  DCFS -6.2832
3C5DB0:  DCFS -3.1416
3C5DB4:  DCFS 6.2832
3C5DB8:  DCFS 0.05
3C5DBC:  DCFS -0.1
3C5DC0:  DCFS -1.2
3C5DC4:  DCFS 1.2
3C5DC8:  MOV             R0, R5; this
3C5DCA:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C5DCE:  LDR             R1, [R5,#0x14]; CMatrix *
3C5DD0:  ADDS            R0, R5, #4; this
3C5DD2:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C5DD6:  LDR.W           R6, [R9]
3C5DDA:  LDR             R0, [R5,#0x14]
3C5DDC:  VLDR            S0, [R0,#0x20]
3C5DE0:  VLDR            S2, [R0,#0x24]
3C5DE4:  VLDR            S4, [R0,#0x28]
3C5DE8:  VMUL.F32        S0, S28, S0
3C5DEC:  VMUL.F32        S2, S28, S2
3C5DF0:  VLDR            S8, [R4,#0x178]
3C5DF4:  VMUL.F32        S6, S28, S4
3C5DF8:  VLDR            S4, [R4,#0x174]
3C5DFC:  VLDR            S10, [R4,#0x17C]
3C5E00:  VADD.F32        S0, S0, S4
3C5E04:  VADD.F32        S4, S2, S8
3C5E08:  VADD.F32        S2, S6, S10
3C5E0C:  VSTR            S0, [R4,#0x174]
3C5E10:  VSTR            S4, [R4,#0x178]
3C5E14:  VSTR            S2, [R4,#0x17C]
3C5E18:  LDR             R0, [R6,#0x14]
3C5E1A:  CMP             R0, #0
3C5E1C:  BNE             loc_3C5E3A
3C5E1E:  MOV             R0, R6; this
3C5E20:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3C5E24:  LDR             R1, [R6,#0x14]; CMatrix *
3C5E26:  ADDS            R0, R6, #4; this
3C5E28:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3C5E2C:  LDR             R0, [R6,#0x14]
3C5E2E:  VLDR            S0, [R4,#0x174]
3C5E32:  VLDR            S4, [R4,#0x178]
3C5E36:  VLDR            S2, [R4,#0x17C]
3C5E3A:  VLDR            S6, [R0,#0x10]
3C5E3E:  ADDW            R1, R8, #0x784
3C5E42:  VLDR            S8, [R0,#0x14]
3C5E46:  VLDR            S10, [R0,#0x18]
3C5E4A:  VMUL.F32        S6, S16, S6
3C5E4E:  VMUL.F32        S8, S16, S8
3C5E52:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C5E5E)
3C5E56:  VMUL.F32        S10, S16, S10
3C5E5A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C5E5C:  VMOV.F32        S16, #0.75
3C5E60:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C5E62:  VSUB.F32        S0, S0, S6
3C5E66:  VSUB.F32        S4, S4, S8
3C5E6A:  VSUB.F32        S6, S2, S10
3C5E6E:  VLDR            S2, [R4,#0x94]
3C5E72:  VSTR            S0, [R4,#0x174]
3C5E76:  VSTR            S4, [R4,#0x178]
3C5E7A:  VSTR            S6, [R4,#0x17C]
3C5E7E:  VSUB.F32        S6, S26, S2
3C5E82:  VLDR            S4, [R1]
3C5E86:  VLDR            S0, [R0]
3C5E8A:  VCMPE.F32       S6, S18
3C5E8E:  VMRS            APSR_nzcv, FPSCR
3C5E92:  BLE             loc_3C5E9A
3C5E94:  VLDR            S6, =-6.2832
3C5E98:  B               loc_3C5EAC
3C5E9A:  VLDR            S8, =-3.1416
3C5E9E:  VCMPE.F32       S6, S8
3C5EA2:  VMRS            APSR_nzcv, FPSCR
3C5EA6:  BGE             loc_3C5EB0
3C5EA8:  VLDR            S6, =6.2832
3C5EAC:  VADD.F32        S26, S26, S6
3C5EB0:  LDR.W           R1, [R8,#0x100]
3C5EB4:  VMOV.F32        S18, #0.25
3C5EB8:  VMUL.F32        S6, S4, S16
3C5EBC:  VLDR            S28, =0.05
3C5EC0:  LDRB.W          R0, [R1,#0x3A]
3C5EC4:  AND.W           R2, R0, #7
3C5EC8:  MOVS            R0, #0
3C5ECA:  CMP             R2, #2
3C5ECC:  BNE             loc_3C5ED8
3C5ECE:  LDR.W           R2, [R1,#0x5A4]
3C5ED2:  CMP             R2, #3
3C5ED4:  IT EQ
3C5ED6:  MOVEQ           R0, R1; this
3C5ED8:  VSUB.F32        S2, S26, S2
3C5EDC:  VMUL.F32        S4, S4, S18
3C5EE0:  VMUL.F32        S8, S0, S28
3C5EE4:  VCMPE.F32       S2, S6
3C5EE8:  VMRS            APSR_nzcv, FPSCR
3C5EEC:  BLE             loc_3C5EF4
3C5EEE:  VSUB.F32        S30, S2, S6
3C5EF2:  B               loc_3C5F06
3C5EF4:  VNEG.F32        S10, S6
3C5EF8:  VCMPE.F32       S2, S10
3C5EFC:  VMRS            APSR_nzcv, FPSCR
3C5F00:  BGE             loc_3C5F7A
3C5F02:  VADD.F32        S30, S6, S2
3C5F06:  VABS.F32        S2, S30
3C5F0A:  VMUL.F32        S26, S8, S2
3C5F0E:  VADD.F32        S6, S4, S26
3C5F12:  VSUB.F32        S4, S2, S4
3C5F16:  VCMPE.F32       S2, S6
3C5F1A:  VMRS            APSR_nzcv, FPSCR
3C5F1E:  IT GT
3C5F20:  VMOVGT.F32      S26, S4
3C5F24:  CMP             R0, #0
3C5F26:  BEQ             loc_3C5F52
3C5F28:  ADDW            R1, R0, #0x968
3C5F2C:  VLDR            S2, [R1]
3C5F30:  VCMPE.F32       S2, #0.0
3C5F34:  VMRS            APSR_nzcv, FPSCR
3C5F38:  BLE             loc_3C5F52
3C5F3A:  VLDR            S4, =-0.1
3C5F3E:  VMUL.F32        S4, S30, S4
3C5F42:  VMUL.F32        S0, S4, S0
3C5F46:  VADD.F32        S0, S2, S0
3C5F4A:  VMOV            R1, S0; float
3C5F4E:  BLX             j__ZN11CAutomobile18SetHeliOrientationEf; CAutomobile::SetHeliOrientation(float)
3C5F52:  VCMP.F32        S30, #0.0
3C5F56:  VMRS            APSR_nzcv, FPSCR
3C5F5A:  BEQ             loc_3C5F7A
3C5F5C:  VCMPE.F32       S30, #0.0
3C5F60:  VMRS            APSR_nzcv, FPSCR
3C5F64:  VNEG.F32        S0, S26
3C5F68:  IT LT
3C5F6A:  VMOVLT.F32      S26, S0
3C5F6E:  VLDR            S0, [R4,#0x94]
3C5F72:  VADD.F32        S0, S26, S0
3C5F76:  VSTR            S0, [R4,#0x94]
3C5F7A:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C5F8A)
3C5F7E:  VMUL.F32        S2, S24, S16
3C5F82:  VLDR            S26, [R4,#0x84]
3C5F86:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C5F88:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C5F8A:  VLDR            S0, [R0]
3C5F8E:  VADD.F32        S4, S20, S2
3C5F92:  VMUL.F32        S0, S0, S28
3C5F96:  VCMPE.F32       S26, S4
3C5F9A:  VMRS            APSR_nzcv, FPSCR
3C5F9E:  BLE             loc_3C5FE0
3C5FA0:  VSUB.F32        S4, S20, S26
3C5FA4:  VNEG.F32        S6, S2
3C5FA8:  VCMPE.F32       S4, S6
3C5FAC:  VMRS            APSR_nzcv, FPSCR
3C5FB0:  BGE             loc_3C5FE0
3C5FB2:  VADD.F32        S2, S2, S4
3C5FB6:  VMUL.F32        S6, S24, S18
3C5FBA:  VABS.F32        S2, S2
3C5FBE:  VMUL.F32        S4, S0, S2
3C5FC2:  VADD.F32        S8, S6, S4
3C5FC6:  VSUB.F32        S6, S2, S6
3C5FCA:  VCMPE.F32       S2, S8
3C5FCE:  VMRS            APSR_nzcv, FPSCR
3C5FD2:  IT GT
3C5FD4:  VMOVGT.F32      S4, S6
3C5FD8:  VSUB.F32        S26, S26, S4
3C5FDC:  VSTR            S26, [R4,#0x84]
3C5FE0:  VMUL.F32        S2, S22, S16
3C5FE4:  VSUB.F32        S4, S20, S2
3C5FE8:  VCMPE.F32       S26, S4
3C5FEC:  VMRS            APSR_nzcv, FPSCR
3C5FF0:  BGE             loc_3C602E
3C5FF2:  VSUB.F32        S4, S20, S26
3C5FF6:  VCMPE.F32       S4, S2
3C5FFA:  VMRS            APSR_nzcv, FPSCR
3C5FFE:  BLE             loc_3C602E
3C6000:  VSUB.F32        S2, S4, S2
3C6004:  VMUL.F32        S6, S22, S18
3C6008:  VABS.F32        S2, S2
3C600C:  VMUL.F32        S0, S0, S2
3C6010:  VADD.F32        S4, S6, S0
3C6014:  VSUB.F32        S6, S2, S6
3C6018:  VCMPE.F32       S2, S4
3C601C:  VMRS            APSR_nzcv, FPSCR
3C6020:  IT GT
3C6022:  VMOVGT.F32      S0, S6
3C6026:  VADD.F32        S26, S0, S26
3C602A:  VSTR            S26, [R4,#0x84]
3C602E:  VLDR            S0, =-1.2
3C6032:  VCMPE.F32       S26, S0
3C6036:  VMRS            APSR_nzcv, FPSCR
3C603A:  BLT             loc_3C604A
3C603C:  VLDR            S0, =1.2
3C6040:  VCMPE.F32       S26, S0
3C6044:  VMRS            APSR_nzcv, FPSCR
3C6048:  BLE             loc_3C6052
3C604A:  VMOV.F32        S26, S0
3C604E:  VSTR            S0, [R4,#0x84]
3C6052:  LDR.W           R5, [R4,#0x94]
3C6056:  MOV             R0, R5; x
3C6058:  BLX             cosf
3C605C:  VMOV            R6, S26
3C6060:  VMOV            S20, R0
3C6064:  MOV             R0, R6; x
3C6066:  BLX             cosf
3C606A:  VMOV            S22, R0
3C606E:  MOV             R0, R5; x
3C6070:  BLX             sinf
3C6074:  VMOV            S24, R0
3C6078:  MOV             R0, R6; x
3C607A:  VMOV.F32        S18, #3.0
3C607E:  VMOV.F32        S26, #-3.0
3C6082:  VMUL.F32        S28, S20, S22
3C6086:  VMUL.F32        S30, S22, S24
3C608A:  BLX             sinf
3C608E:  VMOV            S0, R0
3C6092:  VLDR            S8, =-0.4
3C6096:  VLDR            S16, =0.4
3C609A:  VMUL.F32        S4, S28, S26
3C609E:  VMUL.F32        S2, S0, S18
3C60A2:  VLDR            S14, [R4,#0x174]
3C60A6:  VMUL.F32        S12, S30, S8
3C60AA:  VLDR            S1, [R4,#0x178]
3C60AE:  VMUL.F32        S6, S30, S26
3C60B2:  VLDR            S3, [R4,#0x17C]
3C60B6:  VMUL.F32        S0, S0, S16
3C60BA:  STR.W           R0, [R4,#0x170]
3C60BE:  VMUL.F32        S8, S28, S8
3C60C2:  ADD.W           R10, R4, #0x168
3C60C6:  VNMUL.F32       S5, S20, S22
3C60CA:  VNMUL.F32       S10, S22, S24
3C60CE:  VADD.F32        S2, S2, S3
3C60D2:  VADD.F32        S4, S4, S14
3C60D6:  VADD.F32        S6, S6, S1
3C60DA:  VADD.F32        S0, S0, S3
3C60DE:  VADD.F32        S12, S12, S1
3C60E2:  VADD.F32        S8, S8, S14
3C60E6:  VSTR            S5, [R4,#0x168]
3C60EA:  VSTR            S10, [R4,#0x16C]
3C60EE:  VSTR            S2, [SP,#0xB0+var_88]
3C60F2:  VSTR            S6, [SP,#0xB0+var_90+4]
3C60F6:  VSTR            S4, [SP,#0xB0+var_90]
3C60FA:  VSTR            S8, [R4,#0x174]
3C60FE:  VSTR            S12, [R4,#0x178]
3C6102:  VSTR            S0, [R4,#0x17C]
3C6106:  LDRB            R0, [R4,#3]
3C6108:  CMP             R0, #0
3C610A:  BEQ.W           loc_3C6294
3C610E:  ADD.W           R9, R4, #0x174
3C6112:  MOV.W           R8, #1
3C6116:  MOVS            R0, #0
3C6118:  MOVS            R2, #(stderr+1); CVector *
3C611A:  STRD.W          R0, R8, [SP,#0xB0+var_B0]; bool
3C611E:  MOV             R1, R9; CVector *
3C6120:  STRD.W          R0, R8, [SP,#0xB0+var_A8]; bool
3C6124:  ADD             R0, SP, #0xB0+var_90; this
3C6126:  MOVS            R3, #1; bool
3C6128:  STR.W           R8, [SP,#0xB0+var_A0]; bool
3C612C:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
3C6130:  CMP             R0, #0
3C6132:  BEQ.W           loc_3C629C
3C6136:  STR.W           R10, [SP,#0xB0+var_9C]; bool
3C613A:  VLDR            S0, =0.61087
3C613E:  VLDR            S2, [R4,#0x94]
3C6142:  VLDR            S22, [R4,#0x84]
3C6146:  VADD.F32        S0, S2, S0
3C614A:  VLDR            S24, [R4,#0x174]
3C614E:  VLDR            S26, [R4,#0x178]
3C6152:  VMOV            R6, S0
3C6156:  MOV             R0, R6; x
3C6158:  BLX             cosf
3C615C:  VLDR            S20, =-0.34907
3C6160:  MOV             R10, R0
3C6162:  VADD.F32        S0, S22, S20
3C6166:  VMOV            R5, S0
3C616A:  MOV             R0, R5; x
3C616C:  BLX             cosf
3C6170:  MOV             R11, R0
3C6172:  MOV             R0, R6; x
3C6174:  BLX             sinf
3C6178:  VMOV            S0, R0
3C617C:  MOV             R0, R5; x
3C617E:  VMOV            S2, R11
3C6182:  VMOV            S4, R10
3C6186:  VMUL.F32        S22, S2, S0
3C618A:  VMUL.F32        S28, S4, S2
3C618E:  BLX             sinf
3C6192:  VMOV            S0, R0
3C6196:  VLDR            S6, [R4,#0x17C]
3C619A:  VMUL.F32        S2, S22, S18
3C619E:  MOVS            R0, #0
3C61A0:  VMUL.F32        S0, S0, S18
3C61A4:  MOV             R1, R9; CVector *
3C61A6:  VMUL.F32        S4, S28, S18
3C61AA:  MOVS            R2, #(stderr+1); CVector *
3C61AC:  MOVS            R3, #1; bool
3C61AE:  VADD.F32        S2, S2, S26
3C61B2:  VADD.F32        S0, S0, S6
3C61B6:  VADD.F32        S4, S4, S24
3C61BA:  VSTR            S0, [SP,#0xB0+var_68]
3C61BE:  VSTR            S2, [SP,#0xB0+var_70+4]
3C61C2:  VSTR            S4, [SP,#0xB0+var_70]
3C61C6:  STRD.W          R0, R8, [SP,#0xB0+var_B0]; bool
3C61CA:  STRD.W          R0, R8, [SP,#0xB0+var_A8]; bool
3C61CE:  ADD             R0, SP, #0xB0+var_70; this
3C61D0:  STR.W           R8, [SP,#0xB0+var_A0]; bool
3C61D4:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
3C61D8:  CMP             R0, #0
3C61DA:  BEQ             loc_3C62BA
3C61DC:  VLDR            S0, =-0.61087
3C61E0:  VLDR            S2, [R4,#0x94]
3C61E4:  VLDR            S22, [R4,#0x84]
3C61E8:  VADD.F32        S0, S2, S0
3C61EC:  VLDR            S24, [R4,#0x174]
3C61F0:  VLDR            S26, [R4,#0x178]
3C61F4:  VMOV            R5, S0
3C61F8:  MOV             R0, R5; x
3C61FA:  BLX             cosf
3C61FE:  VADD.F32        S0, S22, S20
3C6202:  MOV             R10, R0
3C6204:  VMOV            R6, S0
3C6208:  MOV             R0, R6; x
3C620A:  BLX             cosf
3C620E:  MOV             R11, R0
3C6210:  MOV             R0, R5; x
3C6212:  BLX             sinf
3C6216:  VMOV            S0, R0
3C621A:  MOV             R0, R6; x
3C621C:  VMOV            S2, R11
3C6220:  VMOV            S4, R10
3C6224:  VMUL.F32        S20, S2, S0
3C6228:  VMUL.F32        S22, S4, S2
3C622C:  BLX             sinf
3C6230:  VMOV            S0, R0
3C6234:  VLDR            S6, [R4,#0x17C]
3C6238:  VMUL.F32        S2, S20, S18
3C623C:  MOVS            R0, #1
3C623E:  VMUL.F32        S0, S0, S18
3C6242:  MOVS            R5, #0
3C6244:  VMUL.F32        S4, S22, S18
3C6248:  MOV             R1, R9; CVector *
3C624A:  MOVS            R2, #(stderr+1); CVector *
3C624C:  MOVS            R3, #1; bool
3C624E:  VADD.F32        S2, S2, S26
3C6252:  VADD.F32        S0, S0, S6
3C6256:  VADD.F32        S4, S4, S24
3C625A:  VSTR            S0, [SP,#0xB0+var_68]
3C625E:  VSTR            S2, [SP,#0xB0+var_70+4]
3C6262:  VSTR            S4, [SP,#0xB0+var_70]
3C6266:  STRD.W          R5, R0, [SP,#0xB0+var_B0]; bool
3C626A:  STRD.W          R5, R0, [SP,#0xB0+var_A8]; bool
3C626E:  STR             R0, [SP,#0xB0+var_A0]; bool
3C6270:  ADD             R0, SP, #0xB0+var_70; this
3C6272:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
3C6276:  LDR.W           R10, [SP,#0xB0+var_9C]
3C627A:  CBNZ            R0, loc_3C62D4
3C627C:  LDR             R0, =(Scene_ptr - 0x3C628A)
3C627E:  MOV             R1, #0x3E99999A
3C6286:  ADD             R0, PC; Scene_ptr
3C6288:  LDR             R0, [R0]; Scene
3C628A:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
3C628C:  BLX             j__Z24RwCameraSetNearClipPlaneP8RwCameraf; RwCameraSetNearClipPlane(RwCamera *,float)
3C6290:  MOVS            R5, #1
3C6292:  B               loc_3C62D4
3C6294:  LDR             R0, =(byte_952E44 - 0x3C629A)
3C6296:  ADD             R0, PC; byte_952E44
3C6298:  LDRB            R5, [R0]
3C629A:  B               loc_3C62DA
3C629C:  LDR             R0, =(Scene_ptr - 0x3C62AA)
3C629E:  MOV             R1, #0x3E99999A
3C62A6:  ADD             R0, PC; Scene_ptr
3C62A8:  LDR             R0, [R0]; Scene
3C62AA:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
3C62AC:  BLX             j__Z24RwCameraSetNearClipPlaneP8RwCameraf; RwCameraSetNearClipPlane(RwCamera *,float)
3C62B0:  LDR             R0, =(byte_952E44 - 0x3C62B6)
3C62B2:  ADD             R0, PC; byte_952E44
3C62B4:  STRB.W          R8, [R0]
3C62B8:  B               loc_3C631C
3C62BA:  LDR             R0, =(Scene_ptr - 0x3C62C8)
3C62BC:  MOV             R1, #0x3E99999A
3C62C4:  ADD             R0, PC; Scene_ptr
3C62C6:  LDR             R0, [R0]; Scene
3C62C8:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
3C62CA:  BLX             j__Z24RwCameraSetNearClipPlaneP8RwCameraf; RwCameraSetNearClipPlane(RwCamera *,float)
3C62CE:  MOVS            R5, #1
3C62D0:  LDR.W           R10, [SP,#0xB0+var_9C]
3C62D4:  LDR             R0, =(byte_952E44 - 0x3C62DA)
3C62D6:  ADD             R0, PC; byte_952E44
3C62D8:  STRB            R5, [R0]
3C62DA:  CMP             R5, #0
3C62DC:  ITT EQ
3C62DE:  LDRHEQ          R0, [R4,#0xE]
3C62E0:  CMPEQ           R0, #0x2E ; '.'
3C62E2:  BNE             loc_3C631C
3C62E4:  VMOV.F32        S0, #15.0
3C62E8:  VLDR            S2, [R4,#0x8C]
3C62EC:  VMOV.F32        S4, #1.0
3C62F0:  LDR             R0, =(Scene_ptr - 0x3C62F6)
3C62F2:  ADD             R0, PC; Scene_ptr
3C62F4:  LDR             R0, [R0]; Scene
3C62F6:  VMIN.F32        D1, D1, D0
3C62FA:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
3C62FC:  VSUB.F32        S0, S0, S2
3C6300:  VLDR            S2, =0.15
3C6304:  VMUL.F32        S0, S0, S2
3C6308:  VLDR            S2, =0.3
3C630C:  VADD.F32        S0, S0, S4
3C6310:  VMUL.F32        S0, S0, S2
3C6314:  VMOV            R1, S0
3C6318:  BLX             j__Z24RwCameraSetNearClipPlaneP8RwCameraf; RwCameraSetNearClipPlane(RwCamera *,float)
3C631C:  VLDR            S0, [R4,#0x168]
3C6320:  MOVS            R0, #0
3C6322:  VLDR            S2, [R4,#0x16C]
3C6326:  MOV.W           R1, #0x3F800000
3C632A:  VLDR            S4, [R4,#0x170]
3C632E:  VMUL.F32        S0, S0, S16
3C6332:  VMUL.F32        S2, S2, S16
3C6336:  VLDR            S6, [R4,#0x174]
3C633A:  VMUL.F32        S4, S4, S16
3C633E:  VLDR            S8, [R4,#0x178]
3C6342:  VLDR            S10, [R4,#0x17C]
3C6346:  VSUB.F32        S0, S6, S0
3C634A:  VSUB.F32        S2, S8, S2
3C634E:  VSUB.F32        S4, S10, S4
3C6352:  VSTR            S0, [R4,#0x174]
3C6356:  VSTR            S2, [R4,#0x178]
3C635A:  VSTR            S4, [R4,#0x17C]
3C635E:  STRD.W          R0, R0, [R4,#0x18C]
3C6362:  MOV             R0, R10; this
3C6364:  STR.W           R1, [R4,#0x194]
3C6368:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C636C:  VLDR            S0, [R4,#0x168]
3C6370:  ADD.W           R6, R4, #0x18C
3C6374:  VCMP.F32        S0, #0.0
3C6378:  VMRS            APSR_nzcv, FPSCR
3C637C:  BNE             loc_3C6398
3C637E:  VLDR            S0, [R4,#0x16C]
3C6382:  VCMP.F32        S0, #0.0
3C6386:  VMRS            APSR_nzcv, FPSCR
3C638A:  ITTT EQ
3C638C:  MOVWEQ          R0, #0xB717
3C6390:  MOVTEQ          R0, #0x38D1
3C6394:  STRDEQ.W        R0, R0, [R4,#0x168]
3C6398:  ADD             R0, SP, #0xB0+var_80; CVector *
3C639A:  MOV             R1, R10; CVector *
3C639C:  MOV             R2, R6
3C639E:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3C63A2:  ADD             R5, SP, #0xB0+var_70
3C63A4:  LDR             R0, [SP,#0xB0+var_78]
3C63A6:  VLDR            D16, [SP,#0xB0+var_80]
3C63AA:  STR             R0, [SP,#0xB0+var_68]
3C63AC:  MOV             R0, R5; this
3C63AE:  VSTR            D16, [SP,#0xB0+var_70]
3C63B2:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C63B6:  ADD             R0, SP, #0xB0+var_80; CVector *
3C63B8:  MOV             R1, R5; CVector *
3C63BA:  MOV             R2, R10
3C63BC:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3C63C0:  VLDR            D16, [SP,#0xB0+var_80]
3C63C4:  LDR             R0, [SP,#0xB0+var_78]
3C63C6:  STR             R0, [R6,#8]
3C63C8:  VSTR            D16, [R6]
3C63CC:  LDRD.W          R0, R1, [R4,#0x168]; x
3C63D0:  EOR.W           R0, R0, #0x80000000; y
3C63D4:  BLX             atan2f
3C63D8:  LDR             R1, =(TheCamera_ptr - 0x3C63DE)
3C63DA:  ADD             R1, PC; TheCamera_ptr
3C63DC:  LDR             R1, [R1]; TheCamera
3C63DE:  LDR.W           R2, [R1,#(dword_952884 - 0x951FA8)]
3C63E2:  STR.W           R0, [R2,#0x55C]
3C63E6:  LDR.W           R1, [R1,#(dword_952884 - 0x951FA8)]
3C63EA:  STR.W           R0, [R1,#0x560]
3C63EE:  ADD             SP, SP, #0x50 ; 'P'
3C63F0:  VPOP            {D8-D15}
3C63F4:  ADD             SP, SP, #4
3C63F6:  POP.W           {R8-R11}
3C63FA:  POP             {R4-R7,PC}
