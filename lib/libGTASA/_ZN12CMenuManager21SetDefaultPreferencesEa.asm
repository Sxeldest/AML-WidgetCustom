; =========================================================
; Game Engine Function: _ZN12CMenuManager21SetDefaultPreferencesEa
; Address            : 0x42E1E8 - 0x42E2FC
; =========================================================

42E1E8:  PUSH            {R4,R5,R7,LR}
42E1EA:  ADD             R7, SP, #8
42E1EC:  MOV             R4, R0
42E1EE:  SUBS            R0, R1, #3; switch 35 cases
42E1F0:  CMP             R0, #0x22 ; '"'
42E1F2:  IT HI
42E1F4:  POPHI           {R4,R5,R7,PC}
42E1F6:  TBB.W           [PC,R0]; switch jump
42E1FA:  DCB 0x3B; jump table for switch statement
42E1FB:  DCB 0x12
42E1FC:  DCB 0x80
42E1FD:  DCB 0x80
42E1FE:  DCB 0x80
42E1FF:  DCB 0x80
42E200:  DCB 0x80
42E201:  DCB 0x80
42E202:  DCB 0x80
42E203:  DCB 0x80
42E204:  DCB 0x80
42E205:  DCB 0x80
42E206:  DCB 0x80
42E207:  DCB 0x80
42E208:  DCB 0x80
42E209:  DCB 0x80
42E20A:  DCB 0x80
42E20B:  DCB 0x80
42E20C:  DCB 0x80
42E20D:  DCB 0x80
42E20E:  DCB 0x80
42E20F:  DCB 0x80
42E210:  DCB 0x80
42E211:  DCB 0x80
42E212:  DCB 0x12
42E213:  DCB 0x80
42E214:  DCB 0x80
42E215:  DCB 0x80
42E216:  DCB 0x80
42E217:  DCB 0x80
42E218:  DCB 0x80
42E219:  DCB 0x80
42E21A:  DCB 0x80
42E21B:  DCB 0x80
42E21C:  DCB 0x64
42E21D:  ALIGN 2
42E21E:  LDR             R0, =(g_fx_ptr - 0x42E228); jumptable 0042E1F6 cases 4,27
42E220:  MOVS            R1, #2
42E222:  MOVS            R5, #2
42E224:  ADD             R0, PC; g_fx_ptr
42E226:  LDR             R0, [R0]; g_fx
42E228:  BLX             j__ZN4Fx_c12SetFxQualityE11FxQuality_e; Fx_c::SetFxQuality(FxQuality_e)
42E22C:  LDR             R0, =(_ZN9CRenderer15ms_lodDistScaleE_ptr - 0x42E23A)
42E22E:  MOVS            R1, #0x3FA00000
42E234:  MOVS            R2, #1
42E236:  ADD             R0, PC; _ZN9CRenderer15ms_lodDistScaleE_ptr
42E238:  STR             R1, [R4,#0x28]
42E23A:  LDR             R0, [R0]; CRenderer::ms_lodDistScale ...
42E23C:  STR             R1, [R0]; CRenderer::ms_lodDistScale
42E23E:  MOVS            R0, #0
42E240:  STRB.W          R0, [R4,#0x2D]
42E244:  STRB.W          R0, [R4,#0x2E]
42E248:  LDR.W           R1, [R4,#0x98]
42E24C:  STRB.W          R2, [R4,#0x2F]
42E250:  STRB.W          R0, [R4,#0xB5]
42E254:  STRB            R2, [R4,#0x19]
42E256:  STRB.W          R2, [R4,#0xAC]
42E25A:  STRB.W          R2, [R4,#0x88]
42E25E:  STRD.W          R2, R2, [R4,#0x8C]
42E262:  STRB.W          R2, [R4,#0x2C]
42E266:  STR.W           R5, [R4,#0xB0]
42E26A:  STR.W           R1, [R4,#0x9C]
42E26E:  POP             {R4,R5,R7,PC}
42E270:  LDR             R0, =(FrontEndMenuManager_ptr - 0x42E27A); jumptable 0042E1F6 case 3
42E272:  MOVS            R1, #1
42E274:  LDR             R2, =(AudioEngine_ptr - 0x42E284)
42E276:  ADD             R0, PC; FrontEndMenuManager_ptr
42E278:  STRB.W          R1, [R4,#0x34]
42E27C:  MOVW            R1, #0x101
42E280:  ADD             R2, PC; AudioEngine_ptr
42E282:  LDR             R5, [R0]; FrontEndMenuManager
42E284:  MOVT            R1, #0x4040
42E288:  MOVS            R0, #0
42E28A:  STR             R1, [R4,#0x30]
42E28C:  STRB.W          R0, [R4,#0x89]
42E290:  STRB.W          R0, [R4,#0x74]
42E294:  LDR             R4, [R2]; AudioEngine
42E296:  LDRSB.W         R1, [R5,#(byte_98F12B - 0x98F0F8)]; signed __int8
42E29A:  MOV             R0, R4; this
42E29C:  BLX             j__ZN12CAudioEngine20SetMusicMasterVolumeEa; CAudioEngine::SetMusicMasterVolume(signed char)
42E2A0:  LDRSB.W         R1, [R5,#(byte_98F12A - 0x98F0F8)]; signed __int8
42E2A4:  MOV             R0, R4; this
42E2A6:  BLX             j__ZN12CAudioEngine22SetEffectsMasterVolumeEa; CAudioEngine::SetEffectsMasterVolume(signed char)
42E2AA:  LDRB.W          R1, [R5,#(byte_98F12C - 0x98F0F8)]; unsigned __int8
42E2AE:  MOV             R0, R4; this
42E2B0:  BLX             j__ZN12CAudioEngine19SetBassEnhanceOnOffEh; CAudioEngine::SetBassEnhanceOnOff(uchar)
42E2B4:  LDRB.W          R1, [R5,#(byte_98F128 - 0x98F0F8)]; unsigned __int8
42E2B8:  MOV             R0, R4; this
42E2BA:  POP.W           {R4,R5,R7,LR}
42E2BE:  B.W             j_j__ZN12CAudioEngine23SetRadioAutoRetuneOnOffEh; j_CAudioEngine::SetRadioAutoRetuneOnOff(uchar)
42E2C2:  LDR             R1, =(_ZN8CVehicle22m_bEnableMouseSteeringE_ptr - 0x42E2CC); jumptable 0042E1F6 case 37
42E2C4:  MOVS            R5, #2
42E2C6:  LDR             R0, =(_ZN7CCamera20m_fMouseAccelHorzntlE_ptr - 0x42E2D2)
42E2C8:  ADD             R1, PC; _ZN8CVehicle22m_bEnableMouseSteeringE_ptr
42E2CA:  LDR             R2, =(MousePointerStateHelper_ptr - 0x42E2D4)
42E2CC:  LDR             R3, =(_ZN8CVehicle20m_bEnableMouseFlyingE_ptr - 0x42E2D8)
42E2CE:  ADD             R0, PC; _ZN7CCamera20m_fMouseAccelHorzntlE_ptr
42E2D0:  ADD             R2, PC; MousePointerStateHelper_ptr
42E2D2:  LDR             R1, [R1]; CVehicle::m_bEnableMouseSteering ...
42E2D4:  ADD             R3, PC; _ZN8CVehicle20m_bEnableMouseFlyingE_ptr
42E2D6:  STRB.W          R5, [R4,#0x94]
42E2DA:  MOVS            R5, #0
42E2DC:  LDR             R2, [R2]; MousePointerStateHelper
42E2DE:  LDR             R3, [R3]; CVehicle::m_bEnableMouseFlying ...
42E2E0:  LDR             R0, [R0]; CCamera::m_fMouseAccelHorzntl ...
42E2E2:  STRB            R5, [R1]; CVehicle::m_bEnableMouseSteering
42E2E4:  MOV             R1, #0x3B23D70A
42E2EC:  STRB            R5, [R2,#(byte_98F0F5 - 0x98F0F4)]
42E2EE:  STRB            R5, [R3]; CVehicle::m_bEnableMouseFlying
42E2F0:  STR             R1, [R0]; CCamera::m_fMouseAccelHorzntl
42E2F2:  STRH.W          R5, [R4,#0x79]
42E2F6:  STR.W           R5, [R4,#0x75]
42E2FA:  POP             {R4,R5,R7,PC}; jumptable 0042E1F6 cases 5-26,28-36
