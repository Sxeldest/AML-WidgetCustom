; =========================================================
; Game Engine Function: _ZN9EmuShader23ReevaluateLightingFlagsEb
; Address            : 0x1C0BE4 - 0x1C0D30
; =========================================================

1C0BE4:  PUSH            {R4-R7,LR}
1C0BE6:  ADD             R7, SP, #0xC
1C0BE8:  PUSH.W          {R8,R9,R11}
1C0BEC:  VPUSH           {D8}
1C0BF0:  SUB             SP, SP, #0x10
1C0BF2:  MOV             R8, R0
1C0BF4:  LDR             R0, =(curShaderStateFlags_ptr - 0x1C0BFA)
1C0BF6:  ADD             R0, PC; curShaderStateFlags_ptr
1C0BF8:  LDR             R0, [R0]; curShaderStateFlags
1C0BFA:  LDR             R0, [R0]
1C0BFC:  TST.W           R0, #2
1C0C00:  IT NE
1C0C02:  CMPNE.W         R8, #0
1C0C06:  BEQ             loc_1C0CD6
1C0C08:  VLDR            S16, =180.0
1C0C0C:  MOVS            R5, #0
1C0C0E:  MOV             R9, SP
1C0C10:  STRD.W          R5, R5, [SP,#0x30+var_30]
1C0C14:  STR             R5, [SP,#0x30+var_28]
1C0C16:  MOV             R0, R5; unsigned int
1C0C18:  BLX             j__Z8GetLightj; GetLight(uint)
1C0C1C:  LDRB            R0, [R0]
1C0C1E:  CBZ             R0, loc_1C0C60
1C0C20:  MOV             R0, R5; unsigned int
1C0C22:  BLX             j__Z8GetLightj; GetLight(uint)
1C0C26:  VLDR            S0, [R0,#0x40]
1C0C2A:  VCMP.F32        S0, #0.0
1C0C2E:  VMRS            APSR_nzcv, FPSCR
1C0C32:  BNE             loc_1C0C38
1C0C34:  MOVS            R4, #0
1C0C36:  B               loc_1C0C4A
1C0C38:  VLDR            S0, [R0,#0x58]
1C0C3C:  MOVS            R4, #1
1C0C3E:  VCMPE.F32       S0, S16
1C0C42:  VMRS            APSR_nzcv, FPSCR
1C0C46:  IT LT
1C0C48:  MOVLT           R4, #2
1C0C4A:  MOV             R0, R5; unsigned int
1C0C4C:  BLX             j__Z8GetLightj; GetLight(uint)
1C0C50:  LDR.W           R6, [R9,R4,LSL#2]
1C0C54:  MOV             R1, R6
1C0C56:  BLX             j__Z19SetLightToTypeIndexP8EmuLightj; SetLightToTypeIndex(EmuLight *,uint)
1C0C5A:  ADDS            R0, R6, #1
1C0C5C:  STR.W           R0, [R9,R4,LSL#2]
1C0C60:  ADDS            R5, #1
1C0C62:  CMP             R5, #8
1C0C64:  BNE             loc_1C0C16
1C0C66:  LDR             R0, =(curShaderStateFlags_ptr - 0x1C0C6E)
1C0C68:  LDR             R4, [SP,#0x30+var_30]
1C0C6A:  ADD             R0, PC; curShaderStateFlags_ptr
1C0C6C:  CMP             R4, #0
1C0C6E:  LDR             R0, [R0]; curShaderStateFlags
1C0C70:  LDR             R0, [R0]
1C0C72:  BLE             loc_1C0CEA
1C0C74:  LDR             R1, =(curShaderStateFlags_ptr - 0x1C0C7E)
1C0C76:  ORR.W           R0, R0, #0x2000
1C0C7A:  ADD             R1, PC; curShaderStateFlags_ptr
1C0C7C:  LDR             R6, [R1]; curShaderStateFlags
1C0C7E:  MOVS            R1, #0
1C0C80:  STR             R0, [R6]
1C0C82:  MOVS            R0, #0
1C0C84:  BLX             j__Z14GetLightByType12EmuLightTypej; GetLightByType(EmuLightType,uint)
1C0C88:  MOVS            R5, #1
1C0C8A:  CMP             R4, #1
1C0C8C:  STRB            R5, [R0,#1]
1C0C8E:  LDR             R0, [R6]
1C0C90:  BEQ             loc_1C0CF6
1C0C92:  LDR             R1, =(curShaderStateFlags_ptr - 0x1C0C9C)
1C0C94:  ORR.W           R0, R0, #0x4000
1C0C98:  ADD             R1, PC; curShaderStateFlags_ptr
1C0C9A:  LDR             R1, [R1]; curShaderStateFlags
1C0C9C:  STR             R0, [R1]
1C0C9E:  MOVS            R0, #0
1C0CA0:  MOVS            R1, #1
1C0CA2:  BLX             j__Z14GetLightByType12EmuLightTypej; GetLightByType(EmuLightType,uint)
1C0CA6:  CMP             R4, #3
1C0CA8:  STRB            R5, [R0,#1]
1C0CAA:  BLT             loc_1C0D02
1C0CAC:  BLX             j__Z22GetMobileEffectSettingv; GetMobileEffectSetting(void)
1C0CB0:  CMP             R0, #1
1C0CB2:  BLT             loc_1C0D02
1C0CB4:  LDR             R0, =(curShaderStateFlags_ptr - 0x1C0CBA)
1C0CB6:  ADD             R0, PC; curShaderStateFlags_ptr
1C0CB8:  LDR             R0, [R0]; curShaderStateFlags
1C0CBA:  LDR             R1, [R0]
1C0CBC:  ORR.W           R1, R1, #0x8000
1C0CC0:  STR             R1, [R0]
1C0CC2:  MOVS            R0, #0
1C0CC4:  MOVS            R1, #2
1C0CC6:  BLX             j__Z14GetLightByType12EmuLightTypej; GetLightByType(EmuLightType,uint)
1C0CCA:  MOVS            R1, #1
1C0CCC:  STRB            R1, [R0,#1]
1C0CCE:  CMP.W           R8, #1
1C0CD2:  BEQ             loc_1C0D16
1C0CD4:  B               loc_1C0D24
1C0CD6:  LDR             R1, =(curShaderStateFlags_ptr - 0x1C0CE0)
1C0CD8:  BIC.W           R0, R0, #0xE000
1C0CDC:  ADD             R1, PC; curShaderStateFlags_ptr
1C0CDE:  LDR             R1, [R1]; curShaderStateFlags
1C0CE0:  STR             R0, [R1]
1C0CE2:  CMP.W           R8, #1
1C0CE6:  BEQ             loc_1C0D16
1C0CE8:  B               loc_1C0D24
1C0CEA:  LDR             R1, =(curShaderStateFlags_ptr - 0x1C0CF4)
1C0CEC:  BIC.W           R0, R0, #0x2000
1C0CF0:  ADD             R1, PC; curShaderStateFlags_ptr
1C0CF2:  LDR             R1, [R1]; curShaderStateFlags
1C0CF4:  STR             R0, [R1]
1C0CF6:  LDR             R1, =(curShaderStateFlags_ptr - 0x1C0D00)
1C0CF8:  BIC.W           R0, R0, #0x4000
1C0CFC:  ADD             R1, PC; curShaderStateFlags_ptr
1C0CFE:  LDR             R1, [R1]; curShaderStateFlags
1C0D00:  STR             R0, [R1]
1C0D02:  LDR             R0, =(curShaderStateFlags_ptr - 0x1C0D08)
1C0D04:  ADD             R0, PC; curShaderStateFlags_ptr
1C0D06:  LDR             R0, [R0]; curShaderStateFlags
1C0D08:  LDR             R1, [R0]
1C0D0A:  BIC.W           R1, R1, #0x8000
1C0D0E:  STR             R1, [R0]
1C0D10:  CMP.W           R8, #1
1C0D14:  BNE             loc_1C0D24
1C0D16:  LDR             R0, =(curEmulatorStateFlags_ptr - 0x1C0D1C)
1C0D18:  ADD             R0, PC; curEmulatorStateFlags_ptr
1C0D1A:  LDR             R0, [R0]; curEmulatorStateFlags
1C0D1C:  LDR             R1, [R0]
1C0D1E:  BIC.W           R1, R1, #0x10000000
1C0D22:  STR             R1, [R0]
1C0D24:  ADD             SP, SP, #0x10
1C0D26:  VPOP            {D8}
1C0D2A:  POP.W           {R8,R9,R11}
1C0D2E:  POP             {R4-R7,PC}
