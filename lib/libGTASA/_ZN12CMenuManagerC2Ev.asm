; =========================================================
; Game Engine Function: _ZN12CMenuManagerC2Ev
; Address            : 0x42DF50 - 0x42E1C6
; =========================================================

42DF50:  PUSH            {R4-R7,LR}
42DF52:  ADD             R7, SP, #0xC
42DF54:  PUSH.W          {R8-R11}
42DF58:  SUB             SP, SP, #4
42DF5A:  MOV             R4, R0
42DF5C:  ADD.W           R0, R4, #0xBC; this
42DF60:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42DF64:  ADD.W           R0, R4, #0xC0; this
42DF68:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42DF6C:  ADD.W           R0, R4, #0xC4; this
42DF70:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42DF74:  ADD.W           R0, R4, #0xC8; this
42DF78:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42DF7C:  ADD.W           R0, R4, #0xCC; this
42DF80:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42DF84:  ADD.W           R0, R4, #0xD0; this
42DF88:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42DF8C:  ADD.W           R0, R4, #0xD4; this
42DF90:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42DF94:  ADD.W           R0, R4, #0xD8; this
42DF98:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42DF9C:  ADD.W           R0, R4, #0xDC; this
42DFA0:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42DFA4:  ADD.W           R0, R4, #0xE0; this
42DFA8:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42DFAC:  ADD.W           R0, R4, #0xE4; this
42DFB0:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42DFB4:  ADD.W           R0, R4, #0xE8; this
42DFB8:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42DFBC:  ADD.W           R0, R4, #0xEC; this
42DFC0:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42DFC4:  ADD.W           R0, R4, #0xF0; this
42DFC8:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42DFCC:  ADD.W           R0, R4, #0xF4; this
42DFD0:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42DFD4:  ADD.W           R0, R4, #0xF8; this
42DFD8:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42DFDC:  ADD.W           R0, R4, #0xFC; this
42DFE0:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42DFE4:  ADD.W           R0, R4, #0x100; this
42DFE8:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42DFEC:  ADD.W           R0, R4, #0x104; this
42DFF0:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42DFF4:  ADD.W           R0, R4, #0x108; this
42DFF8:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42DFFC:  ADD.W           R0, R4, #0x10C; this
42E000:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42E004:  ADD.W           R0, R4, #0x110; this
42E008:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42E00C:  ADD.W           R0, R4, #0x114; this
42E010:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42E014:  ADD.W           R0, R4, #0x118; this
42E018:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42E01C:  ADD.W           R0, R4, #0x11C; this
42E020:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
42E024:  LDR             R0, =(g_fx_ptr - 0x42E030)
42E026:  MOVW            R1, #0x1ACE
42E02A:  MOVS            R5, #0
42E02C:  ADD             R0, PC; g_fx_ptr
42E02E:  STRH            R5, [R4,R1]
42E030:  MOVS            R1, #2
42E032:  LDR.W           R8, [R0]; g_fx
42E036:  STR.W           R5, [R4,#0xA0]
42E03A:  MOV             R0, R8
42E03C:  BLX             j__ZN4Fx_c12SetFxQualityE11FxQuality_e; Fx_c::SetFxQuality(FxQuality_e)
42E040:  LDR             R0, =(_ZN9CRenderer15ms_lodDistScaleE_ptr - 0x42E04C)
42E042:  MOV.W           R9, #1
42E046:  LDR             R1, =(_ZN8CVehicle22m_bEnableMouseSteeringE_ptr - 0x42E04E)
42E048:  ADD             R0, PC; _ZN9CRenderer15ms_lodDistScaleE_ptr
42E04A:  ADD             R1, PC; _ZN8CVehicle22m_bEnableMouseSteeringE_ptr
42E04C:  LDR.W           R11, [R0]; CRenderer::ms_lodDistScale ...
42E050:  LDR             R0, [R1]; CVehicle::m_bEnableMouseSteering ...
42E052:  MOVS            R1, #0x3FA00000
42E058:  STR             R1, [R4,#0x28]
42E05A:  STR.W           R1, [R11]; CRenderer::ms_lodDistScale
42E05E:  STRB.W          R5, [R4,#0x2D]
42E062:  STRB.W          R5, [R4,#0x2E]
42E066:  LDR.W           R1, [R4,#0x98]
42E06A:  STR.W           R1, [R4,#0x9C]
42E06E:  MOVS            R1, #2
42E070:  STRB.W          R9, [R4,#0x2F]
42E074:  STRB.W          R5, [R4,#0xB5]
42E078:  STRB.W          R9, [R4,#0x19]
42E07C:  STRB.W          R9, [R4,#0xAC]
42E080:  STRB.W          R9, [R4,#0x88]
42E084:  STRD.W          R9, R9, [R4,#0x8C]
42E088:  STRB.W          R9, [R4,#0x2C]
42E08C:  STR.W           R1, [R4,#0xB0]
42E090:  STRB.W          R1, [R4,#0x94]
42E094:  MOVW            R1, #0xD70A
42E098:  STRB            R5, [R0]; CVehicle::m_bEnableMouseSteering
42E09A:  MOVT            R1, #0x3B23
42E09E:  LDR             R0, =(MousePointerStateHelper_ptr - 0x42E0A4)
42E0A0:  ADD             R0, PC; MousePointerStateHelper_ptr
42E0A2:  LDR             R0, [R0]; MousePointerStateHelper
42E0A4:  STRB            R5, [R0,#(byte_98F0F5 - 0x98F0F4)]
42E0A6:  LDR             R0, =(_ZN8CVehicle20m_bEnableMouseFlyingE_ptr - 0x42E0AC)
42E0A8:  ADD             R0, PC; _ZN8CVehicle20m_bEnableMouseFlyingE_ptr
42E0AA:  LDR             R0, [R0]; CVehicle::m_bEnableMouseFlying ...
42E0AC:  STRB            R5, [R0]; CVehicle::m_bEnableMouseFlying
42E0AE:  LDR             R0, =(_ZN7CCamera20m_fMouseAccelHorzntlE_ptr - 0x42E0B4)
42E0B0:  ADD             R0, PC; _ZN7CCamera20m_fMouseAccelHorzntlE_ptr
42E0B2:  LDR             R0, [R0]; CCamera::m_fMouseAccelHorzntl ...
42E0B4:  STR             R1, [R0]; CCamera::m_fMouseAccelHorzntl
42E0B6:  MOVW            R0, #0x1ABC
42E0BA:  STR             R5, [R4,R0]
42E0BC:  MOV.W           R0, #0x1AC0
42E0C0:  MOVS            R1, #0x10
42E0C2:  STR             R5, [R4,R0]
42E0C4:  MOVW            R0, #0x1AC4
42E0C8:  STR             R1, [R4,R0]
42E0CA:  MOVS            R0, #0x40 ; '@'
42E0CC:  STRB.W          R0, [R4,#0x32]
42E0D0:  STRB.W          R0, [R4,#0x33]
42E0D4:  LDRD.W          R0, R1, [R4,#0xA4]
42E0D8:  STRD.W          R0, R1, [R4,#0x80]
42E0DC:  LDR             R0, =(AudioEngine_ptr - 0x42E0E6)
42E0DE:  STR.W           R5, [R4,#0xB8]
42E0E2:  ADD             R0, PC; AudioEngine_ptr
42E0E4:  STR             R5, [R4,#0x40]
42E0E6:  STR             R5, [R4,#0x70]
42E0E8:  LDR             R6, [R0]; AudioEngine
42E0EA:  LDR             R0, =(FrontEndMenuManager_ptr - 0x42E0F2)
42E0EC:  STR             R5, [R4,#0x54]
42E0EE:  ADD             R0, PC; FrontEndMenuManager_ptr
42E0F0:  STRH.W          R5, [R4,#0x79]
42E0F4:  STRB.W          R9, [R4,#0xAD]
42E0F8:  LDR.W           R10, [R0]; FrontEndMenuManager
42E0FC:  MOV             R0, R6; this
42E0FE:  STRB.W          R5, [R4,#0x7C]
42E102:  STRB.W          R5, [R4,#0x21]
42E106:  STRB.W          R9, [R4,#0x31]
42E10A:  STR.W           R5, [R4,#0x75]
42E10E:  STRB.W          R9, [R4,#0x30]
42E112:  STRB.W          R9, [R4,#0x34]
42E116:  STRB.W          R5, [R4,#0x89]
42E11A:  STRB.W          R5, [R4,#0x74]
42E11E:  LDRSB.W         R1, [R10,#(byte_98F12B - 0x98F0F8)]; signed __int8
42E122:  BLX             j__ZN12CAudioEngine20SetMusicMasterVolumeEa; CAudioEngine::SetMusicMasterVolume(signed char)
42E126:  LDRSB.W         R1, [R10,#(byte_98F12A - 0x98F0F8)]; signed __int8
42E12A:  MOV             R0, R6; this
42E12C:  BLX             j__ZN12CAudioEngine22SetEffectsMasterVolumeEa; CAudioEngine::SetEffectsMasterVolume(signed char)
42E130:  LDRB.W          R1, [R10,#(byte_98F12C - 0x98F0F8)]; unsigned __int8
42E134:  MOV             R0, R6; this
42E136:  BLX             j__ZN12CAudioEngine19SetBassEnhanceOnOffEh; CAudioEngine::SetBassEnhanceOnOff(uchar)
42E13A:  LDRB.W          R1, [R10,#(byte_98F128 - 0x98F0F8)]; unsigned __int8
42E13E:  MOV             R0, R6; this
42E140:  BLX             j__ZN12CAudioEngine23SetRadioAutoRetuneOnOffEh; CAudioEngine::SetRadioAutoRetuneOnOff(uchar)
42E144:  MOV             R0, R8
42E146:  MOVS            R1, #2
42E148:  BLX             j__ZN4Fx_c12SetFxQualityE11FxQuality_e; Fx_c::SetFxQuality(FxQuality_e)
42E14C:  MOVS            R0, #0
42E14E:  MOVS            R1, #2
42E150:  MOVT            R0, #0x3FA0
42E154:  STR             R0, [R4,#0x28]
42E156:  STR.W           R0, [R11]; CRenderer::ms_lodDistScale
42E15A:  LDR.W           R0, [R4,#0x98]
42E15E:  STRB.W          R5, [R4,#0x2D]
42E162:  STRB.W          R5, [R4,#0x2E]
42E166:  STRB.W          R9, [R4,#0x2F]
42E16A:  STRB.W          R5, [R4,#0xB5]
42E16E:  STRB.W          R9, [R4,#0x19]
42E172:  STRB.W          R9, [R4,#0xAC]
42E176:  STRB.W          R9, [R4,#0x88]
42E17A:  STRD.W          R9, R9, [R4,#0x8C]
42E17E:  STRB.W          R9, [R4,#0x2C]
42E182:  STR.W           R1, [R4,#0xB0]
42E186:  MOVS            R1, #0xD; int
42E188:  STR.W           R0, [R4,#0x9C]
42E18C:  MOVS            R0, #(stderr+1); this
42E18E:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
42E192:  STRB.W          R0, [R4,#0x35]
42E196:  MOV.W           R0, #0xFFFFFFFF
42E19A:  STR             R0, [R4,#0x24]
42E19C:  MOV             R0, R4
42E19E:  STRB.W          R5, [R4,#0xB7]
42E1A2:  STRB.W          R5, [R4,#0x48]
42E1A6:  STR             R5, [R4,#0x44]
42E1A8:  STRB.W          R5, [R4,#0x49]
42E1AC:  STR             R5, [R4,#0x4C]
42E1AE:  STRB.W          R9, [R4,#0x18]
42E1B2:  STRB.W          R5, [R4,#0x20]
42E1B6:  STRB.W          R5, [R4,#0xB4]
42E1BA:  STRB.W          R5, [R4,#0xAE]
42E1BE:  ADD             SP, SP, #4
42E1C0:  POP.W           {R8-R11}
42E1C4:  POP             {R4-R7,PC}
