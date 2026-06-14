; =========================================================
; Game Engine Function: _ZN25CPostEffectsSaveStructure10CopyValuesEb
; Address            : 0x48FF9C - 0x490A48
; =========================================================

48FF9C:  PUSH            {R4-R7,LR}
48FF9E:  ADD             R7, SP, #0xC
48FFA0:  PUSH.W          {R8}
48FFA4:  CMP             R1, #1
48FFA6:  BNE.W           loc_490536
48FFAA:  LDR.W           R1, =(_ZN12CPostEffects19m_colour1MultiplierE_ptr - 0x48FFBA)
48FFAE:  ADD.W           R5, R0, #0x2C ; ','
48FFB2:  LDR.W           R2, =(_ZN12CPostEffects19m_colour2MultiplierE_ptr - 0x48FFC0)
48FFB6:  ADD             R1, PC; _ZN12CPostEffects19m_colour1MultiplierE_ptr
48FFB8:  LDR.W           R12, =(_ZN12CPostEffects29SCREEN_EXTRA_MULT_CHANGE_RATEE_ptr - 0x48FFC8)
48FFBC:  ADD             R2, PC; _ZN12CPostEffects19m_colour2MultiplierE_ptr
48FFBE:  LDR.W           LR, =(_ZN12CPostEffects26SCREEN_EXTRA_MULT_BASE_CAPE_ptr - 0x48FFCC)
48FFC2:  LDR             R1, [R1]; CPostEffects::m_colour1Multiplier ...
48FFC4:  ADD             R12, PC; _ZN12CPostEffects29SCREEN_EXTRA_MULT_CHANGE_RATEE_ptr
48FFC6:  LDR             R3, [R0]
48FFC8:  ADD             LR, PC; _ZN12CPostEffects26SCREEN_EXTRA_MULT_BASE_CAPE_ptr
48FFCA:  LDR             R2, [R2]; CPostEffects::m_colour2Multiplier ...
48FFCC:  STR             R3, [R1]; CPostEffects::m_colour1Multiplier
48FFCE:  LDR.W           R3, [R12]; CPostEffects::SCREEN_EXTRA_MULT_CHANGE_RATE ...
48FFD2:  LDR.W           R12, =(_ZN12CPostEffects27SCREEN_EXTRA_MULT_BASE_MULTE_ptr - 0x48FFDE)
48FFD6:  LDR             R1, [R0,#4]
48FFD8:  STR             R1, [R2]; CPostEffects::m_colour2Multiplier
48FFDA:  ADD             R12, PC; _ZN12CPostEffects27SCREEN_EXTRA_MULT_BASE_MULTE_ptr
48FFDC:  LDR.W           R2, [LR]; CPostEffects::SCREEN_EXTRA_MULT_BASE_CAP ...
48FFE0:  LDR.W           LR, =(_ZN12CPostEffects19m_colourLeftUOffsetE_ptr - 0x48FFEC)
48FFE4:  LDR             R1, [R0,#0xC]
48FFE6:  STR             R1, [R3]; CPostEffects::SCREEN_EXTRA_MULT_CHANGE_RATE
48FFE8:  ADD             LR, PC; _ZN12CPostEffects19m_colourLeftUOffsetE_ptr
48FFEA:  LDR.W           R3, [R12]; CPostEffects::SCREEN_EXTRA_MULT_BASE_MULT ...
48FFEE:  LDR.W           R12, =(_ZN12CPostEffects20m_colourRightUOffsetE_ptr - 0x48FFFA)
48FFF2:  LDR             R1, [R0,#0x10]
48FFF4:  STR             R1, [R2]; CPostEffects::SCREEN_EXTRA_MULT_BASE_CAP
48FFF6:  ADD             R12, PC; _ZN12CPostEffects20m_colourRightUOffsetE_ptr
48FFF8:  LDR.W           R2, [LR]; CPostEffects::m_colourLeftUOffset ...
48FFFC:  LDR.W           LR, =(_ZN12CPostEffects18m_colourTopVOffsetE_ptr - 0x490008)
490000:  LDR             R1, [R0,#0x14]
490002:  STR             R1, [R3]; CPostEffects::SCREEN_EXTRA_MULT_BASE_MULT
490004:  ADD             LR, PC; _ZN12CPostEffects18m_colourTopVOffsetE_ptr
490006:  LDR.W           R3, [R12]; CPostEffects::m_colourRightUOffset ...
49000A:  LDR.W           R12, =(_ZN12CPostEffects21m_colourBottomVOffsetE_ptr - 0x490016)
49000E:  LDR             R1, [R0,#0x18]
490010:  STR             R1, [R2]; CPostEffects::m_colourLeftUOffset
490012:  ADD             R12, PC; _ZN12CPostEffects21m_colourBottomVOffsetE_ptr
490014:  LDR.W           R2, [LR]; CPostEffects::m_colourTopVOffset ...
490018:  LDR.W           LR, =(_ZN12CPostEffects14m_bSeamRemoverE_ptr - 0x490024)
49001C:  LDR             R1, [R0,#0x1C]
49001E:  STR             R1, [R3]; CPostEffects::m_colourRightUOffset
490020:  ADD             LR, PC; _ZN12CPostEffects14m_bSeamRemoverE_ptr
490022:  LDR.W           R3, [R12]; CPostEffects::m_colourBottomVOffset ...
490026:  LDR.W           R12, =(_ZN12CPostEffects28m_bSeamRemoverSeamSearchModeE_ptr - 0x490032)
49002A:  LDR             R1, [R0,#0x20]
49002C:  STR             R1, [R2]; CPostEffects::m_colourTopVOffset
49002E:  ADD             R12, PC; _ZN12CPostEffects28m_bSeamRemoverSeamSearchModeE_ptr
490030:  LDR.W           R2, [LR]; CPostEffects::m_bSeamRemover ...
490034:  LDR.W           LR, =(_ZN12CPostEffects23m_bSeamRemoverDebugModeE_ptr - 0x490040)
490038:  LDR             R1, [R0,#0x24]
49003A:  STR             R1, [R3]; CPostEffects::m_colourBottomVOffset
49003C:  ADD             LR, PC; _ZN12CPostEffects23m_bSeamRemoverDebugModeE_ptr
49003E:  LDR.W           R3, [R12]; CPostEffects::m_bSeamRemoverSeamSearchMode ...
490042:  LDR.W           R12, =(_ZN12CPostEffects17m_SeamRemoverModeE_ptr - 0x490050)
490046:  LDRB.W          R1, [R0,#0x28]
49004A:  STRB            R1, [R2]; CPostEffects::m_bSeamRemover
49004C:  ADD             R12, PC; _ZN12CPostEffects17m_SeamRemoverModeE_ptr
49004E:  LDR.W           R2, [LR]; CPostEffects::m_bSeamRemoverDebugMode ...
490052:  LDR.W           LR, =(_ZN12CPostEffects25m_SeamRemoverShiftTopLeftE_ptr - 0x490060)
490056:  LDRB.W          R1, [R0,#0x29]
49005A:  STRB            R1, [R3]; CPostEffects::m_bSeamRemoverSeamSearchMode
49005C:  ADD             LR, PC; _ZN12CPostEffects25m_SeamRemoverShiftTopLeftE_ptr
49005E:  LDR.W           R3, [R12]; CPostEffects::m_SeamRemoverMode ...
490062:  LDR.W           R12, =(_ZN12CPostEffects29m_SeamRemoverShiftBottomRightE_ptr - 0x490070)
490066:  LDRB.W          R1, [R0,#0x2A]
49006A:  STRB            R1, [R2]; CPostEffects::m_bSeamRemoverDebugMode
49006C:  ADD             R12, PC; _ZN12CPostEffects29m_SeamRemoverShiftBottomRightE_ptr
49006E:  LDR.W           R4, [LR]; CPostEffects::m_SeamRemoverShiftTopLeft ...
490072:  LDR.W           LR, =(_ZN12CPostEffects14m_smokeyEnableE_ptr - 0x49007C)
490076:  LDM             R5, {R1,R2,R5}
490078:  ADD             LR, PC; _ZN12CPostEffects14m_smokeyEnableE_ptr
49007A:  STR             R1, [R3]; CPostEffects::m_SeamRemoverMode
49007C:  LDR.W           R1, [R12]; CPostEffects::m_SeamRemoverShiftBottomRight ...
490080:  LDR.W           R3, =(_ZN12CPostEffects16m_smokeyStrengthE_ptr - 0x49008E)
490084:  STR             R2, [R4]; CPostEffects::m_SeamRemoverShiftTopLeft
490086:  LDR.W           R4, =(_ZN12CPostEffects16m_smokeyDistanceE_ptr - 0x490096)
49008A:  ADD             R3, PC; _ZN12CPostEffects16m_smokeyStrengthE_ptr
49008C:  LDR.W           R2, [LR]; CPostEffects::m_smokeyEnable ...
490090:  STR             R5, [R1]; CPostEffects::m_SeamRemoverShiftBottomRight
490092:  ADD             R4, PC; _ZN12CPostEffects16m_smokeyDistanceE_ptr
490094:  LDR.W           R12, =(_ZN12CPostEffects13m_waterEnableE_ptr - 0x4900A2)
490098:  LDRB.W          R1, [R0,#0x38]
49009C:  LDR             R3, [R3]; CPostEffects::m_smokeyStrength ...
49009E:  ADD             R12, PC; _ZN12CPostEffects13m_waterEnableE_ptr
4900A0:  STRB            R1, [R2]; CPostEffects::m_smokeyEnable
4900A2:  LDR.W           R5, =(_ZN12CPostEffects25m_VisionFXDayNightBalanceE_ptr - 0x4900B0)
4900A6:  LDR             R4, [R4]; CPostEffects::m_smokeyDistance ...
4900A8:  LDRD.W          R1, R2, [R0,#0x3C]
4900AC:  ADD             R5, PC; _ZN12CPostEffects25m_VisionFXDayNightBalanceE_ptr
4900AE:  STR             R1, [R3]; CPostEffects::m_smokeyStrength
4900B0:  LDR.W           R3, =(_ZN12CPostEffects13m_bHeatHazeFXE_ptr - 0x4900BE)
4900B4:  LDR.W           R1, [R12]; CPostEffects::m_waterEnable ...
4900B8:  STR             R2, [R4]; CPostEffects::m_smokeyDistance
4900BA:  ADD             R3, PC; _ZN12CPostEffects13m_bHeatHazeFXE_ptr
4900BC:  LDRB.W          R2, [R0,#0x44]
4900C0:  LDR.W           R4, =(_ZN12CPostEffects23m_bHeatHazeMaskModeTestE_ptr - 0x4900CC)
4900C4:  LDR             R5, [R5]; CPostEffects::m_VisionFXDayNightBalance ...
4900C6:  STRB            R2, [R1]; CPostEffects::m_waterEnable
4900C8:  ADD             R4, PC; _ZN12CPostEffects23m_bHeatHazeMaskModeTestE_ptr
4900CA:  LDR             R1, [R0,#0x48]
4900CC:  LDR             R2, [R3]; CPostEffects::m_bHeatHazeFX ...
4900CE:  LDR.W           R3, =(_ZN12CPostEffects26m_HeatHazeFXHourOfDayStartE_ptr - 0x4900DC)
4900D2:  STR             R1, [R5]; CPostEffects::m_VisionFXDayNightBalance
4900D4:  LDRB.W          R1, [R0,#0x4C]
4900D8:  ADD             R3, PC; _ZN12CPostEffects26m_HeatHazeFXHourOfDayStartE_ptr
4900DA:  LDR             R5, [R4]; CPostEffects::m_bHeatHazeMaskModeTest ...
4900DC:  LDR.W           R4, =(_ZN12CPostEffects24m_HeatHazeFXHourOfDayEndE_ptr - 0x4900EA)
4900E0:  STRB            R1, [R2]; CPostEffects::m_bHeatHazeFX
4900E2:  LDRB.W          R1, [R0,#0x4D]
4900E6:  ADD             R4, PC; _ZN12CPostEffects24m_HeatHazeFXHourOfDayEndE_ptr
4900E8:  LDR             R2, [R3]; CPostEffects::m_HeatHazeFXHourOfDayStart ...
4900EA:  LDR.W           R3, =(_ZN12CPostEffects22m_fHeatHazeFXFadeSpeedE_ptr - 0x4900F6)
4900EE:  STRB            R1, [R5]; CPostEffects::m_bHeatHazeMaskModeTest
4900F0:  LDR             R1, [R0,#0x50]
4900F2:  ADD             R3, PC; _ZN12CPostEffects22m_fHeatHazeFXFadeSpeedE_ptr
4900F4:  LDR             R5, [R4]; CPostEffects::m_HeatHazeFXHourOfDayEnd ...
4900F6:  LDR.W           R4, =(_ZN12CPostEffects36m_fHeatHazeFXInsideBuildingFadeSpeedE_ptr - 0x490102)
4900FA:  STR             R1, [R2]; CPostEffects::m_HeatHazeFXHourOfDayStart
4900FC:  LDR             R1, [R0,#0x54]
4900FE:  ADD             R4, PC; _ZN12CPostEffects36m_fHeatHazeFXInsideBuildingFadeSpeedE_ptr
490100:  LDR             R2, [R3]; CPostEffects::m_fHeatHazeFXFadeSpeed ...
490102:  LDR.W           R3, =(_ZN12CPostEffects16m_HeatHazeFXTypeE_ptr - 0x49010E)
490106:  STR             R1, [R5]; CPostEffects::m_HeatHazeFXHourOfDayEnd
490108:  LDR             R1, [R0,#0x58]
49010A:  ADD             R3, PC; _ZN12CPostEffects16m_HeatHazeFXTypeE_ptr
49010C:  LDR             R5, [R4]; CPostEffects::m_fHeatHazeFXInsideBuildingFadeSpeed ...
49010E:  LDR.W           R4, =(_ZN12CPostEffects20m_HeatHazeFXTypeLastE_ptr - 0x49011A)
490112:  STR             R1, [R2]; CPostEffects::m_fHeatHazeFXFadeSpeed
490114:  LDR             R1, [R0,#0x5C]
490116:  ADD             R4, PC; _ZN12CPostEffects20m_HeatHazeFXTypeLastE_ptr
490118:  LDR             R2, [R3]; CPostEffects::m_HeatHazeFXType ...
49011A:  LDR.W           R3, =(_ZN12CPostEffects21m_HeatHazeFXIntensityE_ptr - 0x490126)
49011E:  STR             R1, [R5]; CPostEffects::m_fHeatHazeFXInsideBuildingFadeSpeed
490120:  LDR             R1, [R0,#0x60]
490122:  ADD             R3, PC; _ZN12CPostEffects21m_HeatHazeFXIntensityE_ptr
490124:  LDR             R5, [R4]; CPostEffects::m_HeatHazeFXTypeLast ...
490126:  LDR.W           R4, =(_ZN12CPostEffects23m_HeatHazeFXRandomShiftE_ptr - 0x490132)
49012A:  STR             R1, [R2]; CPostEffects::m_HeatHazeFXType
49012C:  LDR             R1, [R0,#0x64]
49012E:  ADD             R4, PC; _ZN12CPostEffects23m_HeatHazeFXRandomShiftE_ptr
490130:  LDR             R2, [R3]; CPostEffects::m_HeatHazeFXIntensity ...
490132:  LDR.W           R3, =(_ZN12CPostEffects20m_HeatHazeFXSpeedMinE_ptr - 0x49013E)
490136:  STR             R1, [R5]; CPostEffects::m_HeatHazeFXTypeLast
490138:  LDR             R1, [R0,#0x68]
49013A:  ADD             R3, PC; _ZN12CPostEffects20m_HeatHazeFXSpeedMinE_ptr
49013C:  LDR             R5, [R4]; CPostEffects::m_HeatHazeFXRandomShift ...
49013E:  LDR.W           R4, =(_ZN12CPostEffects20m_HeatHazeFXSpeedMaxE_ptr - 0x49014A)
490142:  STR             R1, [R2]; CPostEffects::m_HeatHazeFXIntensity
490144:  LDR             R1, [R0,#0x6C]
490146:  ADD             R4, PC; _ZN12CPostEffects20m_HeatHazeFXSpeedMaxE_ptr
490148:  LDR             R2, [R3]; CPostEffects::m_HeatHazeFXSpeedMin ...
49014A:  LDR.W           R3, =(_ZN12CPostEffects21m_HeatHazeFXScanSizeXE_ptr - 0x490156)
49014E:  STR             R1, [R5]; CPostEffects::m_HeatHazeFXRandomShift
490150:  LDR             R1, [R0,#0x70]
490152:  ADD             R3, PC; _ZN12CPostEffects21m_HeatHazeFXScanSizeXE_ptr
490154:  LDR             R5, [R4]; CPostEffects::m_HeatHazeFXSpeedMax ...
490156:  LDR.W           R4, =(_ZN12CPostEffects21m_HeatHazeFXScanSizeYE_ptr - 0x490162)
49015A:  STR             R1, [R2]; CPostEffects::m_HeatHazeFXSpeedMin
49015C:  LDR             R1, [R0,#0x74]
49015E:  ADD             R4, PC; _ZN12CPostEffects21m_HeatHazeFXScanSizeYE_ptr
490160:  LDR             R2, [R3]; CPostEffects::m_HeatHazeFXScanSizeX ...
490162:  LDR.W           R3, =(_ZN12CPostEffects23m_HeatHazeFXRenderSizeXE_ptr - 0x49016E)
490166:  STR             R1, [R5]; CPostEffects::m_HeatHazeFXSpeedMax
490168:  LDR             R1, [R0,#0x78]
49016A:  ADD             R3, PC; _ZN12CPostEffects23m_HeatHazeFXRenderSizeXE_ptr
49016C:  LDR             R5, [R4]; CPostEffects::m_HeatHazeFXScanSizeY ...
49016E:  LDR.W           R4, =(_ZN12CPostEffects23m_HeatHazeFXRenderSizeYE_ptr - 0x49017A)
490172:  STR             R1, [R2]; CPostEffects::m_HeatHazeFXScanSizeX
490174:  LDR             R1, [R0,#0x7C]
490176:  ADD             R4, PC; _ZN12CPostEffects23m_HeatHazeFXRenderSizeYE_ptr
490178:  LDR             R2, [R3]; CPostEffects::m_HeatHazeFXRenderSizeX ...
49017A:  LDR.W           R3, =(_ZN12CPostEffects17m_bDarknessFilterE_ptr - 0x490188)
49017E:  STR             R1, [R5]; CPostEffects::m_HeatHazeFXScanSizeY
490180:  LDR.W           R1, [R0,#0x80]
490184:  ADD             R3, PC; _ZN12CPostEffects17m_bDarknessFilterE_ptr
490186:  LDR             R5, [R4]; CPostEffects::m_HeatHazeFXRenderSizeY ...
490188:  LDR.W           R4, =(_ZN12CPostEffects21m_DarknessFilterAlphaE_ptr - 0x490196)
49018C:  STR             R1, [R2]; CPostEffects::m_HeatHazeFXRenderSizeX
49018E:  LDR.W           R1, [R0,#0x84]
490192:  ADD             R4, PC; _ZN12CPostEffects21m_DarknessFilterAlphaE_ptr
490194:  LDR             R2, [R3]; CPostEffects::m_bDarknessFilter ...
490196:  ADD.W           R3, R0, #0x8C
49019A:  STR             R1, [R5]; CPostEffects::m_HeatHazeFXRenderSizeY
49019C:  LDR.W           R12, =(_ZN12CPostEffects28m_DarknessFilterAlphaDefaultE_ptr - 0x4901AC)
4901A0:  LDR.W           R8, =(_ZN12CPostEffects39m_DarknessFilterRadiosityIntensityLimitE_ptr - 0x4901B0)
4901A4:  LDRB.W          R1, [R0,#0x88]
4901A8:  ADD             R12, PC; _ZN12CPostEffects28m_DarknessFilterAlphaDefaultE_ptr
4901AA:  LDR             R5, [R4]; CPostEffects::m_DarknessFilterAlpha ...
4901AC:  ADD             R8, PC; _ZN12CPostEffects39m_DarknessFilterRadiosityIntensityLimitE_ptr
4901AE:  STRB            R1, [R2]; CPostEffects::m_bDarknessFilter
4901B0:  LDR.W           LR, =(_ZN12CPostEffects7m_bCCTVE_ptr - 0x4901BA)
4901B4:  LDM             R3, {R1-R3}
4901B6:  ADD             LR, PC; _ZN12CPostEffects7m_bCCTVE_ptr
4901B8:  LDR.W           R4, [R12]; CPostEffects::m_DarknessFilterAlphaDefault ...
4901BC:  LDR.W           R6, =(_ZN12CPostEffects9m_CCTVcolE_ptr - 0x4901CA)
4901C0:  STR             R1, [R5]; CPostEffects::m_DarknessFilterAlpha
4901C2:  LDR.W           R1, [R8]; CPostEffects::m_DarknessFilterRadiosityIntensityLimit ...
4901C6:  ADD             R6, PC; _ZN12CPostEffects9m_CCTVcolE_ptr
4901C8:  LDR.W           R5, [LR]; CPostEffects::m_bCCTV ...
4901CC:  STR             R2, [R4]; CPostEffects::m_DarknessFilterAlphaDefault
4901CE:  STR             R3, [R1]; CPostEffects::m_DarknessFilterRadiosityIntensityLimit
4901D0:  LDRB.W          R1, [R0,#0x98]
4901D4:  LDR             R2, [R6]; CPostEffects::m_CCTVcol ...
4901D6:  STRB            R1, [R5]; CPostEffects::m_bCCTV
4901D8:  LDRB.W          R1, [R0,#0x99]
4901DC:  STRB            R1, [R2]; CPostEffects::m_CCTVcol
4901DE:  LDRB.W          R1, [R0,#0x9A]
4901E2:  LDR.W           R3, =(_ZN12CPostEffects6m_bFogE_ptr - 0x4901EC)
4901E6:  STRB            R1, [R2,#(byte_A4782A - 0xA47829)]
4901E8:  ADD             R3, PC; _ZN12CPostEffects6m_bFogE_ptr
4901EA:  LDRB.W          R1, [R0,#0x9B]
4901EE:  LDR.W           R6, =(_ZN12CPostEffects10m_bSpeedFXE_ptr - 0x4901FC)
4901F2:  STRB            R1, [R2,#(byte_A4782B - 0xA47829)]
4901F4:  LDRB.W          R1, [R0,#0x9C]
4901F8:  ADD             R6, PC; _ZN12CPostEffects10m_bSpeedFXE_ptr
4901FA:  LDR.W           R5, =(_ZN12CPostEffects18m_bSpeedFXTestModeE_ptr - 0x490206)
4901FE:  LDR             R3, [R3]; CPostEffects::m_bFog ...
490200:  STRB            R1, [R2,#(byte_A4782C - 0xA47829)]
490202:  ADD             R5, PC; _ZN12CPostEffects18m_bSpeedFXTestModeE_ptr
490204:  LDRB.W          R1, [R0,#0x9D]
490208:  LDR             R2, [R6]; CPostEffects::m_bSpeedFX ...
49020A:  LDR.W           R6, =(_ZN12CPostEffects14m_SpeedFXAlphaE_ptr - 0x490218)
49020E:  STRB            R1, [R3]; CPostEffects::m_bFog
490210:  LDRB.W          R1, [R0,#0x9E]
490214:  ADD             R6, PC; _ZN12CPostEffects14m_SpeedFXAlphaE_ptr
490216:  LDR             R3, [R5]; CPostEffects::m_bSpeedFXTestMode ...
490218:  LDR.W           R5, =(_ZN12CPostEffects18m_bSpeedFXUserFlagE_ptr - 0x490226)
49021C:  STRB            R1, [R2]; CPostEffects::m_bSpeedFX
49021E:  LDRB.W          R1, [R0,#0x9F]
490222:  ADD             R5, PC; _ZN12CPostEffects18m_bSpeedFXUserFlagE_ptr
490224:  LDR             R2, [R6]; CPostEffects::m_SpeedFXAlpha ...
490226:  LDR.W           R6, =(_ZN12CPostEffects30m_bSpeedFXUserFlagCurrentFrameE_ptr - 0x490234)
49022A:  STRB            R1, [R3]; CPostEffects::m_bSpeedFXTestMode
49022C:  LDR.W           R1, [R0,#0xA0]
490230:  ADD             R6, PC; _ZN12CPostEffects30m_bSpeedFXUserFlagCurrentFrameE_ptr
490232:  LDR             R3, [R5]; CPostEffects::m_bSpeedFXUserFlag ...
490234:  LDR.W           R5, =(_ZN12CPostEffects33m_fSpeedFXManualSpeedCurrentFrameE_ptr - 0x490242)
490238:  STR             R1, [R2]; CPostEffects::m_SpeedFXAlpha
49023A:  LDRB.W          R1, [R0,#0xA4]
49023E:  ADD             R5, PC; _ZN12CPostEffects33m_fSpeedFXManualSpeedCurrentFrameE_ptr
490240:  LDR             R2, [R6]; CPostEffects::m_bSpeedFXUserFlagCurrentFrame ...
490242:  LDR.W           R6, =(_ZN12CPostEffects13m_bInCutsceneE_ptr - 0x490250)
490246:  STRB            R1, [R3]; CPostEffects::m_bSpeedFXUserFlag
490248:  LDRB.W          R1, [R0,#0xA5]
49024C:  ADD             R6, PC; _ZN12CPostEffects13m_bInCutsceneE_ptr
49024E:  LDR             R3, [R5]; CPostEffects::m_fSpeedFXManualSpeedCurrentFrame ...
490250:  LDR.W           R5, =(_ZN12CPostEffects14m_bNightVisionE_ptr - 0x49025E)
490254:  STRB            R1, [R2]; CPostEffects::m_bSpeedFXUserFlagCurrentFrame
490256:  LDR.W           R4, =(_ZN12CPostEffects26m_NightVisionGrainStrengthE_ptr - 0x490266)
49025A:  ADD             R5, PC; _ZN12CPostEffects14m_bNightVisionE_ptr
49025C:  LDR.W           R1, [R0,#0xA8]
490260:  LDR             R2, [R6]; CPostEffects::m_bInCutscene ...
490262:  ADD             R4, PC; _ZN12CPostEffects26m_NightVisionGrainStrengthE_ptr
490264:  STR             R1, [R3]; CPostEffects::m_fSpeedFXManualSpeedCurrentFrame
490266:  LDR.W           R6, =(_ZN12CPostEffects20m_NightVisionMainColE_ptr - 0x490274)
49026A:  LDRB.W          R1, [R0,#0xAC]
49026E:  LDR             R3, [R5]; CPostEffects::m_bNightVision ...
490270:  ADD             R6, PC; _ZN12CPostEffects20m_NightVisionMainColE_ptr
490272:  STRB            R1, [R2]; CPostEffects::m_bInCutscene
490274:  LDRB.W          R1, [R0,#0xAD]
490278:  LDR             R5, [R4]; CPostEffects::m_NightVisionGrainStrength ...
49027A:  ADD.W           R4, R0, #0xB8
49027E:  STRB            R1, [R3]; CPostEffects::m_bNightVision
490280:  LDR.W           R1, [R0,#0xB0]
490284:  LDR             R2, [R6]; CPostEffects::m_NightVisionMainCol ...
490286:  STR             R1, [R5]; CPostEffects::m_NightVisionGrainStrength
490288:  LDRB.W          R1, [R0,#0xB4]
49028C:  STRB            R1, [R2]; CPostEffects::m_NightVisionMainCol
49028E:  LDRB.W          R1, [R0,#0xB5]
490292:  LDR.W           R3, =(_ZN12CPostEffects28m_fNightVisionSwitchOnFXTimeE_ptr - 0x49029C)
490296:  STRB            R1, [R2,#(byte_A477EE - 0xA477ED)]
490298:  ADD             R3, PC; _ZN12CPostEffects28m_fNightVisionSwitchOnFXTimeE_ptr
49029A:  LDRB.W          R1, [R0,#0xB6]
49029E:  LDR.W           R6, =(_ZN12CPostEffects29m_fNightVisionSwitchOnFXCountE_ptr - 0x4902AC)
4902A2:  STRB            R1, [R2,#(byte_A477EF - 0xA477ED)]
4902A4:  LDR.W           R12, =(_ZN12CPostEffects32m_fInfraredVisionSwitchOnFXCountE_ptr - 0x4902B4)
4902A8:  ADD             R6, PC; _ZN12CPostEffects29m_fNightVisionSwitchOnFXCountE_ptr
4902AA:  LDRB.W          R1, [R0,#0xB7]
4902AE:  LDR             R3, [R3]; CPostEffects::m_fNightVisionSwitchOnFXTime ...
4902B0:  ADD             R12, PC; _ZN12CPostEffects32m_fInfraredVisionSwitchOnFXCountE_ptr
4902B2:  STRB            R1, [R2,#(byte_A477F0 - 0xA477ED)]
4902B4:  LDR.W           R5, =(_ZN12CPostEffects17m_bInfraredVisionE_ptr - 0x4902BE)
4902B8:  LDM             R4, {R1,R2,R4}
4902BA:  ADD             R5, PC; _ZN12CPostEffects17m_bInfraredVisionE_ptr
4902BC:  LDR             R6, [R6]; CPostEffects::m_fNightVisionSwitchOnFXCount ...
4902BE:  STR             R1, [R3]; CPostEffects::m_fNightVisionSwitchOnFXTime
4902C0:  LDR.W           R1, [R12]; CPostEffects::m_fInfraredVisionSwitchOnFXCount ...
4902C4:  LDR.W           R3, =(_ZN12CPostEffects29m_InfraredVisionGrainStrengthE_ptr - 0x4902D2)
4902C8:  LDR.W           R12, =(_ZN12CPostEffects29m_fInfraredVisionFilterRadiusE_ptr - 0x4902D6)
4902CC:  STR             R2, [R6]; CPostEffects::m_fNightVisionSwitchOnFXCount
4902CE:  ADD             R3, PC; _ZN12CPostEffects29m_InfraredVisionGrainStrengthE_ptr
4902D0:  LDR             R2, [R5]; CPostEffects::m_bInfraredVision ...
4902D2:  ADD             R12, PC; _ZN12CPostEffects29m_fInfraredVisionFilterRadiusE_ptr
4902D4:  STR             R4, [R1]; CPostEffects::m_fInfraredVisionSwitchOnFXCount
4902D6:  LDR.W           R6, =(_ZN12CPostEffects30m_fInfraredVisionHeatObjectColE_ptr - 0x4902E4)
4902DA:  LDRB.W          R1, [R0,#0xC4]
4902DE:  STRB            R1, [R2]; CPostEffects::m_bInfraredVision
4902E0:  ADD             R6, PC; _ZN12CPostEffects30m_fInfraredVisionHeatObjectColE_ptr
4902E2:  LDR.W           R5, [R12]; CPostEffects::m_fInfraredVisionFilterRadius ...
4902E6:  LDR             R3, [R3]; CPostEffects::m_InfraredVisionGrainStrength ...
4902E8:  LDRD.W          R1, R2, [R0,#0xC8]
4902EC:  LDR.W           R4, =(_ZN12CPostEffects19m_InfraredVisionColE_ptr - 0x4902FC)
4902F0:  STR             R1, [R3]; CPostEffects::m_InfraredVisionGrainStrength
4902F2:  ADD.W           R1, R0, #0xD0
4902F6:  STR             R2, [R5]; CPostEffects::m_fInfraredVisionFilterRadius
4902F8:  ADD             R4, PC; _ZN12CPostEffects19m_InfraredVisionColE_ptr
4902FA:  LDR             R6, [R6]; CPostEffects::m_fInfraredVisionHeatObjectCol ...
4902FC:  VLD1.32         {D16-D17}, [R1]
490300:  LDR             R1, [R4]; CPostEffects::m_InfraredVisionCol ...
490302:  ADD.W           R4, R0, #0x11C
490306:  VST1.32         {D16-D17}, [R6]
49030A:  LDRB.W          R2, [R0,#0xE0]
49030E:  STRB            R2, [R1]; CPostEffects::m_InfraredVisionCol
490310:  LDR.W           R3, =(_ZN12CPostEffects23m_InfraredVisionMainColE_ptr - 0x49031E)
490314:  LDRB.W          R2, [R0,#0xE1]
490318:  STRB            R2, [R1,#(_ZN12CPostEffects19m_InfraredVisionColE+1 - 0xA477FD)]; CPostEffects::m_InfraredVisionCol
49031A:  ADD             R3, PC; _ZN12CPostEffects23m_InfraredVisionMainColE_ptr
49031C:  LDRB.W          R2, [R0,#0xE2]
490320:  STRB            R2, [R1,#(_ZN12CPostEffects19m_InfraredVisionColE+2 - 0xA477FD)]; CPostEffects::m_InfraredVisionCol
490322:  LDRB.W          R2, [R0,#0xE3]
490326:  LDR             R3, [R3]; CPostEffects::m_InfraredVisionMainCol ...
490328:  STRB            R2, [R1,#(_ZN12CPostEffects19m_InfraredVisionColE+3 - 0xA477FD)]; CPostEffects::m_InfraredVisionCol
49032A:  LDRB.W          R1, [R0,#0xE4]
49032E:  STRB            R1, [R3]; CPostEffects::m_InfraredVisionMainCol
490330:  LDRB.W          R1, [R0,#0xE5]
490334:  LDR.W           R2, =(_ZN12CPostEffects12m_bRadiosityE_ptr - 0x49033E)
490338:  STRB            R1, [R3,#(_ZN12CPostEffects23m_InfraredVisionMainColE+1 - 0xA47801)]; CPostEffects::m_InfraredVisionMainCol
49033A:  ADD             R2, PC; _ZN12CPostEffects12m_bRadiosityE_ptr
49033C:  LDRB.W          R1, [R0,#0xE6]
490340:  LDR.W           R6, =(_ZN12CPostEffects24m_bRadiosityLinearFilterE_ptr - 0x49034E)
490344:  STRB            R1, [R3,#(_ZN12CPostEffects23m_InfraredVisionMainColE+2 - 0xA47801)]; CPostEffects::m_InfraredVisionMainCol
490346:  LDRB.W          R1, [R0,#0xE7]
49034A:  ADD             R6, PC; _ZN12CPostEffects24m_bRadiosityLinearFilterE_ptr
49034C:  LDR.W           R5, =(_ZN12CPostEffects25m_bRadiosityStripCopyModeE_ptr - 0x490358)
490350:  LDR             R2, [R2]; CPostEffects::m_bRadiosity ...
490352:  STRB            R1, [R3,#(_ZN12CPostEffects23m_InfraredVisionMainColE+3 - 0xA47801)]; CPostEffects::m_InfraredVisionMainCol
490354:  ADD             R5, PC; _ZN12CPostEffects25m_bRadiosityStripCopyModeE_ptr
490356:  LDRB.W          R1, [R0,#0xE8]
49035A:  LDR             R3, [R6]; CPostEffects::m_bRadiosityLinearFilter ...
49035C:  LDR.W           R6, =(_ZN12CPostEffects18m_RadiosityPixelsXE_ptr - 0x49036A)
490360:  STRB            R1, [R2]; CPostEffects::m_bRadiosity
490362:  LDRB.W          R1, [R0,#0xE9]
490366:  ADD             R6, PC; _ZN12CPostEffects18m_RadiosityPixelsXE_ptr
490368:  LDR             R2, [R5]; CPostEffects::m_bRadiosityStripCopyMode ...
49036A:  LDR.W           R5, =(_ZN12CPostEffects18m_RadiosityPixelsYE_ptr - 0x490378)
49036E:  STRB            R1, [R3]; CPostEffects::m_bRadiosityLinearFilter
490370:  LDRB.W          R1, [R0,#0xEA]
490374:  ADD             R5, PC; _ZN12CPostEffects18m_RadiosityPixelsYE_ptr
490376:  LDR             R3, [R6]; CPostEffects::m_RadiosityPixelsX ...
490378:  LDR.W           R6, =(_ZN12CPostEffects23m_RadiosityFilterPassesE_ptr - 0x490386)
49037C:  STRB            R1, [R2]; CPostEffects::m_bRadiosityStripCopyMode
49037E:  LDR.W           R1, [R0,#0xEC]
490382:  ADD             R6, PC; _ZN12CPostEffects23m_RadiosityFilterPassesE_ptr
490384:  LDR             R2, [R5]; CPostEffects::m_RadiosityPixelsY ...
490386:  LDR.W           R5, =(_ZN12CPostEffects23m_RadiosityRenderPassesE_ptr - 0x490394)
49038A:  STR             R1, [R3]; CPostEffects::m_RadiosityPixelsX
49038C:  LDR.W           R1, [R0,#0xF0]
490390:  ADD             R5, PC; _ZN12CPostEffects23m_RadiosityRenderPassesE_ptr
490392:  LDR             R3, [R6]; CPostEffects::m_RadiosityFilterPasses ...
490394:  LDR.W           R6, =(_ZN12CPostEffects25m_RadiosityIntensityLimitE_ptr - 0x4903A2)
490398:  STR             R1, [R2]; CPostEffects::m_RadiosityPixelsY
49039A:  LDR.W           R1, [R0,#0xF4]
49039E:  ADD             R6, PC; _ZN12CPostEffects25m_RadiosityIntensityLimitE_ptr
4903A0:  LDR             R2, [R5]; CPostEffects::m_RadiosityRenderPasses ...
4903A2:  LDR.W           R5, =(_ZN12CPostEffects20m_RadiosityIntensityE_ptr - 0x4903B0)
4903A6:  STR             R1, [R3]; CPostEffects::m_RadiosityFilterPasses
4903A8:  LDR.W           R1, [R0,#0xF8]
4903AC:  ADD             R5, PC; _ZN12CPostEffects20m_RadiosityIntensityE_ptr
4903AE:  LDR             R3, [R6]; CPostEffects::m_RadiosityIntensityLimit ...
4903B0:  LDR.W           R6, =(_ZN12CPostEffects28m_RadiosityFilterUCorrectionE_ptr - 0x4903BE)
4903B4:  STR             R1, [R2]; CPostEffects::m_RadiosityRenderPasses
4903B6:  LDR.W           R1, [R0,#0xFC]
4903BA:  ADD             R6, PC; _ZN12CPostEffects28m_RadiosityFilterUCorrectionE_ptr
4903BC:  LDR             R2, [R5]; CPostEffects::m_RadiosityIntensity ...
4903BE:  LDR.W           R5, =(_ZN12CPostEffects28m_RadiosityFilterVCorrectionE_ptr - 0x4903CC)
4903C2:  STR             R1, [R3]; CPostEffects::m_RadiosityIntensityLimit
4903C4:  LDR.W           R1, [R0,#0x100]
4903C8:  ADD             R5, PC; _ZN12CPostEffects28m_RadiosityFilterVCorrectionE_ptr
4903CA:  LDR             R3, [R6]; CPostEffects::m_RadiosityFilterUCorrection ...
4903CC:  LDR.W           R6, =(_ZN12CPostEffects17m_bRadiosityDebugE_ptr - 0x4903DA)
4903D0:  STR             R1, [R2]; CPostEffects::m_RadiosityIntensity
4903D2:  LDR.W           R1, [R0,#0x104]
4903D6:  ADD             R6, PC; _ZN12CPostEffects17m_bRadiosityDebugE_ptr
4903D8:  LDR             R2, [R5]; CPostEffects::m_RadiosityFilterVCorrection ...
4903DA:  LDR.W           R5, =(_ZN12CPostEffects41m_bRadiosityBypassTimeCycleIntensityLimitE_ptr - 0x4903E8)
4903DE:  STR             R1, [R3]; CPostEffects::m_RadiosityFilterUCorrection
4903E0:  LDR.W           R1, [R0,#0x108]
4903E4:  ADD             R5, PC; _ZN12CPostEffects41m_bRadiosityBypassTimeCycleIntensityLimitE_ptr
4903E6:  LDR             R3, [R6]; CPostEffects::m_bRadiosityDebug ...
4903E8:  LDR.W           R6, =(_ZN12CPostEffects23m_bDisableAllPostEffectE_ptr - 0x4903F6)
4903EC:  STR             R1, [R2]; CPostEffects::m_RadiosityFilterVCorrection
4903EE:  LDRB.W          R1, [R0,#0x10C]
4903F2:  ADD             R6, PC; _ZN12CPostEffects23m_bDisableAllPostEffectE_ptr
4903F4:  LDR             R2, [R5]; CPostEffects::m_bRadiosityBypassTimeCycleIntensityLimit ...
4903F6:  LDR.W           R5, =(_ZN12CPostEffects22m_bSavePhotoFromScriptE_ptr - 0x490404)
4903FA:  STRB            R1, [R3]; CPostEffects::m_bRadiosityDebug
4903FC:  LDRB.W          R1, [R0,#0x10D]
490400:  ADD             R5, PC; _ZN12CPostEffects22m_bSavePhotoFromScriptE_ptr
490402:  LDR             R3, [R6]; CPostEffects::m_bDisableAllPostEffect ...
490404:  LDR.W           R6, =(_ZN12CPostEffects14m_bGrainEnableE_ptr - 0x490412)
490408:  STRB            R1, [R2]; CPostEffects::m_bRadiosityBypassTimeCycleIntensityLimit
49040A:  LDRB.W          R1, [R0,#0x10E]
49040E:  ADD             R6, PC; _ZN12CPostEffects14m_bGrainEnableE_ptr
490410:  LDR             R2, [R5]; CPostEffects::m_bSavePhotoFromScript ...
490412:  LDR.W           R5, =(_ZN12CPostEffects15m_grainStrengthE_ptr - 0x490420)
490416:  STRB            R1, [R3]; CPostEffects::m_bDisableAllPostEffect
490418:  LDRB.W          R1, [R0,#0x10F]
49041C:  ADD             R5, PC; _ZN12CPostEffects15m_grainStrengthE_ptr
49041E:  LDR             R3, [R6]; CPostEffects::m_bGrainEnable ...
490420:  LDR.W           R6, =(_ZN12CPostEffects16m_bHilightEnableE_ptr - 0x49042E)
490424:  STRB            R1, [R2]; CPostEffects::m_bSavePhotoFromScript
490426:  LDRB.W          R1, [R0,#0x110]
49042A:  ADD             R6, PC; _ZN12CPostEffects16m_bHilightEnableE_ptr
49042C:  LDR             R2, [R5]; CPostEffects::m_grainStrength ...
49042E:  LDR.W           R5, =(_ZN12CPostEffects17m_hilightStrengthE_ptr - 0x49043C)
490432:  STRB            R1, [R3]; CPostEffects::m_bGrainEnable
490434:  LDR.W           R1, [R0,#0x114]
490438:  ADD             R5, PC; _ZN12CPostEffects17m_hilightStrengthE_ptr
49043A:  LDR             R3, [R6]; CPostEffects::m_bHilightEnable ...
49043C:  LDR.W           R6, =(_ZN12CPostEffects14m_hilightScaleE_ptr - 0x49044A)
490440:  STR             R1, [R2]; CPostEffects::m_grainStrength
490442:  LDR.W           R12, =(_ZN12CPostEffects15m_hilightOffsetE_ptr - 0x490452)
490446:  ADD             R6, PC; _ZN12CPostEffects14m_hilightScaleE_ptr
490448:  LDRB.W          R1, [R0,#0x118]
49044C:  LDR             R2, [R5]; CPostEffects::m_hilightStrength ...
49044E:  ADD             R12, PC; _ZN12CPostEffects15m_hilightOffsetE_ptr
490450:  STRB            R1, [R3]; CPostEffects::m_bHilightEnable
490452:  LDR.W           R5, =(_ZN12CPostEffects14m_hilightMblurE_ptr - 0x49045C)
490456:  LDM             R4, {R1,R3,R4}
490458:  ADD             R5, PC; _ZN12CPostEffects14m_hilightMblurE_ptr
49045A:  LDR             R6, [R6]; CPostEffects::m_hilightScale ...
49045C:  STR             R1, [R2]; CPostEffects::m_hilightStrength
49045E:  LDR.W           R1, [R12]; CPostEffects::m_hilightOffset ...
490462:  LDR.W           R2, =(_ZN12CPostEffects15m_waterStrengthE_ptr - 0x49046C)
490466:  STR             R3, [R6]; CPostEffects::m_hilightScale
490468:  ADD             R2, PC; _ZN12CPostEffects15m_waterStrengthE_ptr
49046A:  LDR.W           R6, =(_ZN12CPostEffects9m_xoffsetE_ptr - 0x490476)
49046E:  LDR             R3, [R5]; CPostEffects::m_hilightMblur ...
490470:  STR             R4, [R1]; CPostEffects::m_hilightOffset
490472:  ADD             R6, PC; _ZN12CPostEffects9m_xoffsetE_ptr
490474:  LDRB.W          R1, [R0,#0x128]
490478:  LDR.W           R5, =(_ZN12CPostEffects9m_yoffsetE_ptr - 0x490484)
49047C:  LDR             R2, [R2]; CPostEffects::m_waterStrength ...
49047E:  STRB            R1, [R3]; CPostEffects::m_hilightMblur
490480:  ADD             R5, PC; _ZN12CPostEffects9m_yoffsetE_ptr
490482:  LDR.W           R1, [R0,#0x12C]
490486:  LDR             R3, [R6]; CPostEffects::m_xoffset ...
490488:  LDR.W           R6, =(_ZN12CPostEffects12m_waterSpeedE_ptr - 0x490496)
49048C:  STR             R1, [R2]; CPostEffects::m_waterStrength
49048E:  LDR.W           R4, =(_ZN12CPostEffects11m_waterFreqE_ptr - 0x49049E)
490492:  ADD             R6, PC; _ZN12CPostEffects12m_waterSpeedE_ptr
490494:  LDR.W           R1, [R0,#0x130]
490498:  LDR             R2, [R5]; CPostEffects::m_yoffset ...
49049A:  ADD             R4, PC; _ZN12CPostEffects11m_waterFreqE_ptr
49049C:  STR             R1, [R3]; CPostEffects::m_xoffset
49049E:  LDR.W           R5, =(_ZN12CPostEffects10m_waterColE_ptr - 0x4904AC)
4904A2:  LDR.W           R1, [R0,#0x134]
4904A6:  LDR             R3, [R6]; CPostEffects::m_waterSpeed ...
4904A8:  ADD             R5, PC; _ZN12CPostEffects10m_waterColE_ptr
4904AA:  STR             R1, [R2]; CPostEffects::m_yoffset
4904AC:  LDR.W           R1, [R0,#0x138]
4904B0:  LDR             R6, [R4]; CPostEffects::m_waterFreq ...
4904B2:  STR             R1, [R3]; CPostEffects::m_waterSpeed
4904B4:  LDR.W           R1, [R0,#0x13C]
4904B8:  LDR             R2, [R5]; CPostEffects::m_waterCol ...
4904BA:  STR             R1, [R6]; CPostEffects::m_waterFreq
4904BC:  LDRB.W          R1, [R0,#0x140]
4904C0:  STRB            R1, [R2]; CPostEffects::m_waterCol
4904C2:  LDRB.W          R1, [R0,#0x141]
4904C6:  LDR.W           R3, =(_ZN12CPostEffects21m_bWaterDepthDarknessE_ptr - 0x4904D0)
4904CA:  STRB            R1, [R2,#(byte_A47848 - 0xA47847)]
4904CC:  ADD             R3, PC; _ZN12CPostEffects21m_bWaterDepthDarknessE_ptr
4904CE:  LDRB.W          R1, [R0,#0x142]
4904D2:  LDR.W           R6, =(_ZN12CPostEffects25m_fWaterFullDarknessDepthE_ptr - 0x4904E0)
4904D6:  STRB            R1, [R2,#(byte_A47849 - 0xA47847)]
4904D8:  LDR.W           R5, =(_ZN12CPostEffects29m_fWaterFXStartUnderWaternessE_ptr - 0x4904E8)
4904DC:  ADD             R6, PC; _ZN12CPostEffects25m_fWaterFullDarknessDepthE_ptr
4904DE:  LDRB.W          R1, [R0,#0x143]
4904E2:  LDR             R3, [R3]; CPostEffects::m_bWaterDepthDarkness ...
4904E4:  ADD             R5, PC; _ZN12CPostEffects29m_fWaterFXStartUnderWaternessE_ptr
4904E6:  STRB            R1, [R2,#(byte_A4784A - 0xA47847)]
4904E8:  LDR.W           R12, =(_ZN12CPostEffects13m_bRainEnableE_ptr - 0x4904F6)
4904EC:  LDRB.W          R1, [R0,#0x144]
4904F0:  LDR             R2, [R6]; CPostEffects::m_fWaterFullDarknessDepth ...
4904F2:  ADD             R12, PC; _ZN12CPostEffects13m_bRainEnableE_ptr
4904F4:  STRB            R1, [R3]; CPostEffects::m_bWaterDepthDarkness
4904F6:  LDR.W           R4, =(_ZN12CPostEffects14m_bColorEnableE_ptr - 0x490504)
4904FA:  LDR             R5, [R5]; CPostEffects::m_fWaterFXStartUnderWaterness ...
4904FC:  LDRD.W          R1, R3, [R0,#0x148]
490500:  ADD             R4, PC; _ZN12CPostEffects14m_bColorEnableE_ptr
490502:  STR             R1, [R2]; CPostEffects::m_fWaterFullDarknessDepth
490504:  LDR.W           R1, [R12]; CPostEffects::m_bRainEnable ...
490508:  STR             R3, [R5]; CPostEffects::m_fWaterFXStartUnderWaterness
49050A:  LDR.W           R6, =(_ZN12CPostEffects16m_defScreenXPosnE_ptr - 0x49051A)
49050E:  LDR.W           R2, =(_ZN12CPostEffects16m_defScreenYPosnE_ptr - 0x49051E)
490512:  LDRB.W          R3, [R0,#0x150]
490516:  ADD             R6, PC; _ZN12CPostEffects16m_defScreenXPosnE_ptr
490518:  LDR             R5, [R4]; CPostEffects::m_bColorEnable ...
49051A:  ADD             R2, PC; _ZN12CPostEffects16m_defScreenYPosnE_ptr
49051C:  STRB            R3, [R1]; CPostEffects::m_bRainEnable
49051E:  LDRB.W          R1, [R0,#0x151]
490522:  STRB            R1, [R5]; CPostEffects::m_bColorEnable
490524:  LDR             R6, [R6]; CPostEffects::m_defScreenXPosn ...
490526:  LDR             R2, [R2]; CPostEffects::m_defScreenYPosn ...
490528:  LDRD.W          R1, R0, [R0,#0x154]
49052C:  STR             R1, [R6]; CPostEffects::m_defScreenXPosn
49052E:  STR             R0, [R2]; CPostEffects::m_defScreenYPosn
490530:  POP.W           {R8}
490534:  POP             {R4-R7,PC}
490536:  LDR.W           R1, =(_ZN12CPostEffects19m_colour1MultiplierE_ptr - 0x490542)
49053A:  LDR.W           R2, =(_ZN12CPostEffects19m_colour2MultiplierE_ptr - 0x490548)
49053E:  ADD             R1, PC; _ZN12CPostEffects19m_colour1MultiplierE_ptr
490540:  LDR.W           R3, =(_ZN12CPostEffects29SCREEN_EXTRA_MULT_CHANGE_RATEE_ptr - 0x490550)
490544:  ADD             R2, PC; _ZN12CPostEffects19m_colour2MultiplierE_ptr
490546:  LDR.W           R6, =(_ZN12CPostEffects26SCREEN_EXTRA_MULT_BASE_CAPE_ptr - 0x490554)
49054A:  LDR             R1, [R1]; CPostEffects::m_colour1Multiplier ...
49054C:  ADD             R3, PC; _ZN12CPostEffects29SCREEN_EXTRA_MULT_CHANGE_RATEE_ptr
49054E:  LDR             R2, [R2]; CPostEffects::m_colour2Multiplier ...
490550:  ADD             R6, PC; _ZN12CPostEffects26SCREEN_EXTRA_MULT_BASE_CAPE_ptr
490552:  LDR.W           R5, =(_ZN12CPostEffects27SCREEN_EXTRA_MULT_BASE_MULTE_ptr - 0x49055E)
490556:  LDR             R1, [R1]; CPostEffects::m_colour1Multiplier
490558:  STR             R1, [R0]
49055A:  ADD             R5, PC; _ZN12CPostEffects27SCREEN_EXTRA_MULT_BASE_MULTE_ptr
49055C:  LDR             R3, [R3]; CPostEffects::SCREEN_EXTRA_MULT_CHANGE_RATE ...
49055E:  LDR             R1, [R2]; CPostEffects::m_colour2Multiplier
490560:  LDR.W           R2, =(_ZN12CPostEffects19m_colourLeftUOffsetE_ptr - 0x49056C)
490564:  STR             R1, [R0,#4]
490566:  LDR             R6, [R6]; CPostEffects::SCREEN_EXTRA_MULT_BASE_CAP ...
490568:  ADD             R2, PC; _ZN12CPostEffects19m_colourLeftUOffsetE_ptr
49056A:  LDR             R1, [R3]; CPostEffects::SCREEN_EXTRA_MULT_CHANGE_RATE
49056C:  STR             R1, [R0,#0xC]
49056E:  LDR             R3, [R5]; CPostEffects::SCREEN_EXTRA_MULT_BASE_MULT ...
490570:  LDR.W           R5, =(_ZN12CPostEffects20m_colourRightUOffsetE_ptr - 0x49057A)
490574:  LDR             R1, [R6]; CPostEffects::SCREEN_EXTRA_MULT_BASE_CAP
490576:  ADD             R5, PC; _ZN12CPostEffects20m_colourRightUOffsetE_ptr
490578:  LDR.W           R6, =(_ZN12CPostEffects18m_colourTopVOffsetE_ptr - 0x490584)
49057C:  STR             R1, [R0,#0x10]
49057E:  LDR             R2, [R2]; CPostEffects::m_colourLeftUOffset ...
490580:  ADD             R6, PC; _ZN12CPostEffects18m_colourTopVOffsetE_ptr
490582:  LDR             R1, [R3]; CPostEffects::SCREEN_EXTRA_MULT_BASE_MULT
490584:  LDR.W           R3, =(_ZN12CPostEffects21m_colourBottomVOffsetE_ptr - 0x490590)
490588:  STR             R1, [R0,#0x14]
49058A:  LDR             R5, [R5]; CPostEffects::m_colourRightUOffset ...
49058C:  ADD             R3, PC; _ZN12CPostEffects21m_colourBottomVOffsetE_ptr
49058E:  LDR             R1, [R2]; CPostEffects::m_colourLeftUOffset
490590:  LDR.W           R2, =(_ZN12CPostEffects14m_bSeamRemoverE_ptr - 0x49059C)
490594:  STR             R1, [R0,#0x18]
490596:  LDR             R6, [R6]; CPostEffects::m_colourTopVOffset ...
490598:  ADD             R2, PC; _ZN12CPostEffects14m_bSeamRemoverE_ptr
49059A:  LDR             R1, [R5]; CPostEffects::m_colourRightUOffset
49059C:  LDR.W           R5, =(_ZN12CPostEffects28m_bSeamRemoverSeamSearchModeE_ptr - 0x4905A8)
4905A0:  STR             R1, [R0,#0x1C]
4905A2:  LDR             R3, [R3]; CPostEffects::m_colourBottomVOffset ...
4905A4:  ADD             R5, PC; _ZN12CPostEffects28m_bSeamRemoverSeamSearchModeE_ptr
4905A6:  LDR             R1, [R6]; CPostEffects::m_colourTopVOffset
4905A8:  LDR.W           R6, =(_ZN12CPostEffects23m_bSeamRemoverDebugModeE_ptr - 0x4905B4)
4905AC:  STR             R1, [R0,#0x20]
4905AE:  LDR             R2, [R2]; CPostEffects::m_bSeamRemover ...
4905B0:  ADD             R6, PC; _ZN12CPostEffects23m_bSeamRemoverDebugModeE_ptr
4905B2:  LDR             R1, [R3]; CPostEffects::m_colourBottomVOffset
4905B4:  LDR.W           R3, =(_ZN12CPostEffects17m_SeamRemoverModeE_ptr - 0x4905C0)
4905B8:  STR             R1, [R0,#0x24]
4905BA:  LDR             R5, [R5]; CPostEffects::m_bSeamRemoverSeamSearchMode ...
4905BC:  ADD             R3, PC; _ZN12CPostEffects17m_SeamRemoverModeE_ptr
4905BE:  LDRB            R1, [R2]; CPostEffects::m_bSeamRemover
4905C0:  LDR.W           R2, =(_ZN12CPostEffects25m_SeamRemoverShiftTopLeftE_ptr - 0x4905CE)
4905C4:  STRB.W          R1, [R0,#0x28]
4905C8:  LDR             R6, [R6]; CPostEffects::m_bSeamRemoverDebugMode ...
4905CA:  ADD             R2, PC; _ZN12CPostEffects25m_SeamRemoverShiftTopLeftE_ptr
4905CC:  LDRB            R1, [R5]; CPostEffects::m_bSeamRemoverSeamSearchMode
4905CE:  LDR.W           R5, =(_ZN12CPostEffects29m_SeamRemoverShiftBottomRightE_ptr - 0x4905DC)
4905D2:  STRB.W          R1, [R0,#0x29]
4905D6:  LDR             R3, [R3]; CPostEffects::m_SeamRemoverMode ...
4905D8:  ADD             R5, PC; _ZN12CPostEffects29m_SeamRemoverShiftBottomRightE_ptr
4905DA:  LDRB            R1, [R6]; CPostEffects::m_bSeamRemoverDebugMode
4905DC:  LDR.W           R6, =(_ZN12CPostEffects14m_smokeyEnableE_ptr - 0x4905EA)
4905E0:  STRB.W          R1, [R0,#0x2A]
4905E4:  LDR             R2, [R2]; CPostEffects::m_SeamRemoverShiftTopLeft ...
4905E6:  ADD             R6, PC; _ZN12CPostEffects14m_smokeyEnableE_ptr
4905E8:  LDR             R1, [R3]; CPostEffects::m_SeamRemoverMode
4905EA:  LDR.W           R3, =(_ZN12CPostEffects16m_smokeyStrengthE_ptr - 0x4905F6)
4905EE:  STR             R1, [R0,#0x2C]
4905F0:  LDR             R5, [R5]; CPostEffects::m_SeamRemoverShiftBottomRight ...
4905F2:  ADD             R3, PC; _ZN12CPostEffects16m_smokeyStrengthE_ptr
4905F4:  LDR             R1, [R2]; CPostEffects::m_SeamRemoverShiftTopLeft
4905F6:  LDR.W           R2, =(_ZN12CPostEffects16m_smokeyDistanceE_ptr - 0x490602)
4905FA:  STR             R1, [R0,#0x30]
4905FC:  LDR             R6, [R6]; CPostEffects::m_smokeyEnable ...
4905FE:  ADD             R2, PC; _ZN12CPostEffects16m_smokeyDistanceE_ptr
490600:  LDR             R1, [R5]; CPostEffects::m_SeamRemoverShiftBottomRight
490602:  LDR.W           R5, =(_ZN12CPostEffects13m_waterEnableE_ptr - 0x49060E)
490606:  STR             R1, [R0,#0x34]
490608:  LDR             R3, [R3]; CPostEffects::m_smokeyStrength ...
49060A:  ADD             R5, PC; _ZN12CPostEffects13m_waterEnableE_ptr
49060C:  LDRB            R1, [R6]; CPostEffects::m_smokeyEnable
49060E:  LDR.W           R6, =(_ZN12CPostEffects25m_VisionFXDayNightBalanceE_ptr - 0x49061C)
490612:  STRB.W          R1, [R0,#0x38]
490616:  LDR             R2, [R2]; CPostEffects::m_smokeyDistance ...
490618:  ADD             R6, PC; _ZN12CPostEffects25m_VisionFXDayNightBalanceE_ptr
49061A:  LDR             R1, [R3]; CPostEffects::m_smokeyStrength
49061C:  LDR.W           R3, =(_ZN12CPostEffects13m_bHeatHazeFXE_ptr - 0x490628)
490620:  STR             R1, [R0,#0x3C]
490622:  LDR             R5, [R5]; CPostEffects::m_waterEnable ...
490624:  ADD             R3, PC; _ZN12CPostEffects13m_bHeatHazeFXE_ptr
490626:  LDR             R1, [R2]; CPostEffects::m_smokeyDistance
490628:  LDR.W           R2, =(_ZN12CPostEffects23m_bHeatHazeMaskModeTestE_ptr - 0x490634)
49062C:  STR             R1, [R0,#0x40]
49062E:  LDR             R6, [R6]; CPostEffects::m_VisionFXDayNightBalance ...
490630:  ADD             R2, PC; _ZN12CPostEffects23m_bHeatHazeMaskModeTestE_ptr
490632:  LDRB            R1, [R5]; CPostEffects::m_waterEnable
490634:  LDR.W           R5, =(_ZN12CPostEffects26m_HeatHazeFXHourOfDayStartE_ptr - 0x490642)
490638:  STRB.W          R1, [R0,#0x44]
49063C:  LDR             R3, [R3]; CPostEffects::m_bHeatHazeFX ...
49063E:  ADD             R5, PC; _ZN12CPostEffects26m_HeatHazeFXHourOfDayStartE_ptr
490640:  LDR             R1, [R6]; CPostEffects::m_VisionFXDayNightBalance
490642:  LDR.W           R6, =(_ZN12CPostEffects24m_HeatHazeFXHourOfDayEndE_ptr - 0x49064E)
490646:  STR             R1, [R0,#0x48]
490648:  LDR             R2, [R2]; CPostEffects::m_bHeatHazeMaskModeTest ...
49064A:  ADD             R6, PC; _ZN12CPostEffects24m_HeatHazeFXHourOfDayEndE_ptr
49064C:  LDRB            R1, [R3]; CPostEffects::m_bHeatHazeFX
49064E:  LDR.W           R3, =(_ZN12CPostEffects22m_fHeatHazeFXFadeSpeedE_ptr - 0x49065C)
490652:  STRB.W          R1, [R0,#0x4C]
490656:  LDR             R5, [R5]; CPostEffects::m_HeatHazeFXHourOfDayStart ...
490658:  ADD             R3, PC; _ZN12CPostEffects22m_fHeatHazeFXFadeSpeedE_ptr
49065A:  LDRB            R1, [R2]; CPostEffects::m_bHeatHazeMaskModeTest
49065C:  LDR.W           R2, =(_ZN12CPostEffects36m_fHeatHazeFXInsideBuildingFadeSpeedE_ptr - 0x49066A)
490660:  STRB.W          R1, [R0,#0x4D]
490664:  LDR             R6, [R6]; CPostEffects::m_HeatHazeFXHourOfDayEnd ...
490666:  ADD             R2, PC; _ZN12CPostEffects36m_fHeatHazeFXInsideBuildingFadeSpeedE_ptr
490668:  LDR             R1, [R5]; CPostEffects::m_HeatHazeFXHourOfDayStart
49066A:  LDR.W           R5, =(_ZN12CPostEffects16m_HeatHazeFXTypeE_ptr - 0x490676)
49066E:  STR             R1, [R0,#0x50]
490670:  LDR             R3, [R3]; CPostEffects::m_fHeatHazeFXFadeSpeed ...
490672:  ADD             R5, PC; _ZN12CPostEffects16m_HeatHazeFXTypeE_ptr
490674:  LDR             R1, [R6]; CPostEffects::m_HeatHazeFXHourOfDayEnd
490676:  LDR.W           R6, =(_ZN12CPostEffects20m_HeatHazeFXTypeLastE_ptr - 0x490682)
49067A:  STR             R1, [R0,#0x54]
49067C:  LDR             R2, [R2]; CPostEffects::m_fHeatHazeFXInsideBuildingFadeSpeed ...
49067E:  ADD             R6, PC; _ZN12CPostEffects20m_HeatHazeFXTypeLastE_ptr
490680:  LDR             R1, [R3]; CPostEffects::m_fHeatHazeFXFadeSpeed
490682:  LDR.W           R3, =(_ZN12CPostEffects21m_HeatHazeFXIntensityE_ptr - 0x49068E)
490686:  STR             R1, [R0,#0x58]
490688:  LDR             R5, [R5]; CPostEffects::m_HeatHazeFXType ...
49068A:  ADD             R3, PC; _ZN12CPostEffects21m_HeatHazeFXIntensityE_ptr
49068C:  LDR             R1, [R2]; CPostEffects::m_fHeatHazeFXInsideBuildingFadeSpeed
49068E:  LDR.W           R2, =(_ZN12CPostEffects23m_HeatHazeFXRandomShiftE_ptr - 0x49069A)
490692:  STR             R1, [R0,#0x5C]
490694:  LDR             R6, [R6]; CPostEffects::m_HeatHazeFXTypeLast ...
490696:  ADD             R2, PC; _ZN12CPostEffects23m_HeatHazeFXRandomShiftE_ptr
490698:  LDR             R1, [R5]; CPostEffects::m_HeatHazeFXType
49069A:  LDR.W           R5, =(_ZN12CPostEffects20m_HeatHazeFXSpeedMinE_ptr - 0x4906A6)
49069E:  STR             R1, [R0,#0x60]
4906A0:  LDR             R3, [R3]; CPostEffects::m_HeatHazeFXIntensity ...
4906A2:  ADD             R5, PC; _ZN12CPostEffects20m_HeatHazeFXSpeedMinE_ptr
4906A4:  LDR             R1, [R6]; CPostEffects::m_HeatHazeFXTypeLast
4906A6:  LDR.W           R6, =(_ZN12CPostEffects20m_HeatHazeFXSpeedMaxE_ptr - 0x4906B2)
4906AA:  STR             R1, [R0,#0x64]
4906AC:  LDR             R2, [R2]; CPostEffects::m_HeatHazeFXRandomShift ...
4906AE:  ADD             R6, PC; _ZN12CPostEffects20m_HeatHazeFXSpeedMaxE_ptr
4906B0:  LDR             R1, [R3]; CPostEffects::m_HeatHazeFXIntensity
4906B2:  LDR.W           R3, =(_ZN12CPostEffects21m_HeatHazeFXScanSizeXE_ptr - 0x4906BE)
4906B6:  STR             R1, [R0,#0x68]
4906B8:  LDR             R5, [R5]; CPostEffects::m_HeatHazeFXSpeedMin ...
4906BA:  ADD             R3, PC; _ZN12CPostEffects21m_HeatHazeFXScanSizeXE_ptr
4906BC:  LDR             R1, [R2]; CPostEffects::m_HeatHazeFXRandomShift
4906BE:  LDR.W           R2, =(_ZN12CPostEffects21m_HeatHazeFXScanSizeYE_ptr - 0x4906CA)
4906C2:  STR             R1, [R0,#0x6C]
4906C4:  LDR             R6, [R6]; CPostEffects::m_HeatHazeFXSpeedMax ...
4906C6:  ADD             R2, PC; _ZN12CPostEffects21m_HeatHazeFXScanSizeYE_ptr
4906C8:  LDR             R1, [R5]; CPostEffects::m_HeatHazeFXSpeedMin
4906CA:  LDR.W           R5, =(_ZN12CPostEffects23m_HeatHazeFXRenderSizeXE_ptr - 0x4906D6)
4906CE:  STR             R1, [R0,#0x70]
4906D0:  LDR             R3, [R3]; CPostEffects::m_HeatHazeFXScanSizeX ...
4906D2:  ADD             R5, PC; _ZN12CPostEffects23m_HeatHazeFXRenderSizeXE_ptr
4906D4:  LDR             R1, [R6]; CPostEffects::m_HeatHazeFXSpeedMax
4906D6:  LDR.W           R6, =(_ZN12CPostEffects23m_HeatHazeFXRenderSizeYE_ptr - 0x4906E2)
4906DA:  STR             R1, [R0,#0x74]
4906DC:  LDR             R2, [R2]; CPostEffects::m_HeatHazeFXScanSizeY ...
4906DE:  ADD             R6, PC; _ZN12CPostEffects23m_HeatHazeFXRenderSizeYE_ptr
4906E0:  LDR             R1, [R3]; CPostEffects::m_HeatHazeFXScanSizeX
4906E2:  LDR.W           R3, =(_ZN12CPostEffects17m_bDarknessFilterE_ptr - 0x4906EE)
4906E6:  STR             R1, [R0,#0x78]
4906E8:  LDR             R5, [R5]; CPostEffects::m_HeatHazeFXRenderSizeX ...
4906EA:  ADD             R3, PC; _ZN12CPostEffects17m_bDarknessFilterE_ptr
4906EC:  LDR             R1, [R2]; CPostEffects::m_HeatHazeFXScanSizeY
4906EE:  LDR.W           R2, =(_ZN12CPostEffects21m_DarknessFilterAlphaE_ptr - 0x4906FA)
4906F2:  STR             R1, [R0,#0x7C]
4906F4:  LDR             R6, [R6]; CPostEffects::m_HeatHazeFXRenderSizeY ...
4906F6:  ADD             R2, PC; _ZN12CPostEffects21m_DarknessFilterAlphaE_ptr
4906F8:  LDR             R1, [R5]; CPostEffects::m_HeatHazeFXRenderSizeX
4906FA:  LDR.W           R5, =(_ZN12CPostEffects28m_DarknessFilterAlphaDefaultE_ptr - 0x490708)
4906FE:  STR.W           R1, [R0,#0x80]
490702:  LDR             R3, [R3]; CPostEffects::m_bDarknessFilter ...
490704:  ADD             R5, PC; _ZN12CPostEffects28m_DarknessFilterAlphaDefaultE_ptr
490706:  LDR             R1, [R6]; CPostEffects::m_HeatHazeFXRenderSizeY
490708:  LDR.W           R6, =(_ZN12CPostEffects39m_DarknessFilterRadiosityIntensityLimitE_ptr - 0x490716)
49070C:  STR.W           R1, [R0,#0x84]
490710:  LDR             R2, [R2]; CPostEffects::m_DarknessFilterAlpha ...
490712:  ADD             R6, PC; _ZN12CPostEffects39m_DarknessFilterRadiosityIntensityLimitE_ptr
490714:  LDRB            R1, [R3]; CPostEffects::m_bDarknessFilter
490716:  LDR.W           R3, =(_ZN12CPostEffects7m_bCCTVE_ptr - 0x490724)
49071A:  STRB.W          R1, [R0,#0x88]
49071E:  LDR             R5, [R5]; CPostEffects::m_DarknessFilterAlphaDefault ...
490720:  ADD             R3, PC; _ZN12CPostEffects7m_bCCTVE_ptr
490722:  LDR             R1, [R2]; CPostEffects::m_DarknessFilterAlpha
490724:  LDR.W           R2, =(_ZN12CPostEffects9m_CCTVcolE_ptr - 0x490732)
490728:  STR.W           R1, [R0,#0x8C]
49072C:  LDR             R6, [R6]; CPostEffects::m_DarknessFilterRadiosityIntensityLimit ...
49072E:  ADD             R2, PC; _ZN12CPostEffects9m_CCTVcolE_ptr
490730:  LDR             R1, [R5]; CPostEffects::m_DarknessFilterAlphaDefault
490732:  STR.W           R1, [R0,#0x90]
490736:  LDR             R3, [R3]; CPostEffects::m_bCCTV ...
490738:  LDR             R1, [R6]; CPostEffects::m_DarknessFilterRadiosityIntensityLimit
49073A:  STR.W           R1, [R0,#0x94]
49073E:  LDR             R2, [R2]; CPostEffects::m_CCTVcol ...
490740:  LDRB            R1, [R3]; CPostEffects::m_bCCTV
490742:  STRB.W          R1, [R0,#0x98]
490746:  LDRB            R1, [R2]; CPostEffects::m_CCTVcol
490748:  LDR.W           R3, =(_ZN12CPostEffects6m_bFogE_ptr - 0x490756)
49074C:  STRB.W          R1, [R0,#0x99]
490750:  LDRB            R1, [R2,#(byte_A4782A - 0xA47829)]
490752:  ADD             R3, PC; _ZN12CPostEffects6m_bFogE_ptr
490754:  LDR.W           R6, =(_ZN12CPostEffects10m_bSpeedFXE_ptr - 0x490762)
490758:  STRB.W          R1, [R0,#0x9A]
49075C:  LDRB            R1, [R2,#(byte_A4782B - 0xA47829)]
49075E:  ADD             R6, PC; _ZN12CPostEffects10m_bSpeedFXE_ptr
490760:  LDR.W           R5, =(_ZN12CPostEffects18m_bSpeedFXTestModeE_ptr - 0x49076E)
490764:  STRB.W          R1, [R0,#0x9B]
490768:  LDR             R3, [R3]; CPostEffects::m_bFog ...
49076A:  ADD             R5, PC; _ZN12CPostEffects18m_bSpeedFXTestModeE_ptr
49076C:  LDRB            R1, [R2,#(byte_A4782C - 0xA47829)]
49076E:  STRB.W          R1, [R0,#0x9C]
490772:  LDR             R2, [R6]; CPostEffects::m_bSpeedFX ...
490774:  LDR             R6, =(_ZN12CPostEffects14m_SpeedFXAlphaE_ptr - 0x49077C)
490776:  LDRB            R1, [R3]; CPostEffects::m_bFog
490778:  ADD             R6, PC; _ZN12CPostEffects14m_SpeedFXAlphaE_ptr
49077A:  STRB.W          R1, [R0,#0x9D]
49077E:  LDR             R3, [R5]; CPostEffects::m_bSpeedFXTestMode ...
490780:  LDR             R5, =(_ZN12CPostEffects18m_bSpeedFXUserFlagE_ptr - 0x490788)
490782:  LDRB            R1, [R2]; CPostEffects::m_bSpeedFX
490784:  ADD             R5, PC; _ZN12CPostEffects18m_bSpeedFXUserFlagE_ptr
490786:  LDR             R2, =(_ZN12CPostEffects30m_bSpeedFXUserFlagCurrentFrameE_ptr - 0x490792)
490788:  STRB.W          R1, [R0,#0x9E]
49078C:  LDR             R6, [R6]; CPostEffects::m_SpeedFXAlpha ...
49078E:  ADD             R2, PC; _ZN12CPostEffects30m_bSpeedFXUserFlagCurrentFrameE_ptr
490790:  LDRB            R1, [R3]; CPostEffects::m_bSpeedFXTestMode
490792:  LDR             R3, =(_ZN12CPostEffects33m_fSpeedFXManualSpeedCurrentFrameE_ptr - 0x49079E)
490794:  STRB.W          R1, [R0,#0x9F]
490798:  LDR             R5, [R5]; CPostEffects::m_bSpeedFXUserFlag ...
49079A:  ADD             R3, PC; _ZN12CPostEffects33m_fSpeedFXManualSpeedCurrentFrameE_ptr
49079C:  LDR             R1, [R6]; CPostEffects::m_SpeedFXAlpha
49079E:  LDR             R6, =(_ZN12CPostEffects13m_bInCutsceneE_ptr - 0x4907AA)
4907A0:  STR.W           R1, [R0,#0xA0]
4907A4:  LDR             R2, [R2]; CPostEffects::m_bSpeedFXUserFlagCurrentFrame ...
4907A6:  ADD             R6, PC; _ZN12CPostEffects13m_bInCutsceneE_ptr
4907A8:  LDRB            R1, [R5]; CPostEffects::m_bSpeedFXUserFlag
4907AA:  LDR             R5, =(_ZN12CPostEffects14m_bNightVisionE_ptr - 0x4907B6)
4907AC:  STRB.W          R1, [R0,#0xA4]
4907B0:  LDR             R3, [R3]; CPostEffects::m_fSpeedFXManualSpeedCurrentFrame ...
4907B2:  ADD             R5, PC; _ZN12CPostEffects14m_bNightVisionE_ptr
4907B4:  LDRB            R1, [R2]; CPostEffects::m_bSpeedFXUserFlagCurrentFrame
4907B6:  LDR             R2, =(_ZN12CPostEffects26m_NightVisionGrainStrengthE_ptr - 0x4907C2)
4907B8:  STRB.W          R1, [R0,#0xA5]
4907BC:  LDR             R6, [R6]; CPostEffects::m_bInCutscene ...
4907BE:  ADD             R2, PC; _ZN12CPostEffects26m_NightVisionGrainStrengthE_ptr
4907C0:  LDR             R1, [R3]; CPostEffects::m_fSpeedFXManualSpeedCurrentFrame
4907C2:  LDR             R3, =(_ZN12CPostEffects20m_NightVisionMainColE_ptr - 0x4907CE)
4907C4:  STR.W           R1, [R0,#0xA8]
4907C8:  LDR             R5, [R5]; CPostEffects::m_bNightVision ...
4907CA:  ADD             R3, PC; _ZN12CPostEffects20m_NightVisionMainColE_ptr
4907CC:  LDRB            R1, [R6]; CPostEffects::m_bInCutscene
4907CE:  STRB.W          R1, [R0,#0xAC]
4907D2:  LDR             R2, [R2]; CPostEffects::m_NightVisionGrainStrength ...
4907D4:  LDRB            R1, [R5]; CPostEffects::m_bNightVision
4907D6:  STRB.W          R1, [R0,#0xAD]
4907DA:  LDR             R3, [R3]; CPostEffects::m_NightVisionMainCol ...
4907DC:  LDR             R1, [R2]; CPostEffects::m_NightVisionGrainStrength
4907DE:  STR.W           R1, [R0,#0xB0]
4907E2:  LDRB            R1, [R3]; CPostEffects::m_NightVisionMainCol
4907E4:  LDR             R2, =(_ZN12CPostEffects28m_fNightVisionSwitchOnFXTimeE_ptr - 0x4907F0)
4907E6:  STRB.W          R1, [R0,#0xB4]
4907EA:  LDRB            R1, [R3,#(byte_A477EE - 0xA477ED)]
4907EC:  ADD             R2, PC; _ZN12CPostEffects28m_fNightVisionSwitchOnFXTimeE_ptr
4907EE:  LDR             R6, =(_ZN12CPostEffects29m_fNightVisionSwitchOnFXCountE_ptr - 0x4907FA)
4907F0:  STRB.W          R1, [R0,#0xB5]
4907F4:  LDRB            R1, [R3,#(byte_A477EF - 0xA477ED)]
4907F6:  ADD             R6, PC; _ZN12CPostEffects29m_fNightVisionSwitchOnFXCountE_ptr
4907F8:  LDR             R5, =(_ZN12CPostEffects32m_fInfraredVisionSwitchOnFXCountE_ptr - 0x490804)
4907FA:  STRB.W          R1, [R0,#0xB6]
4907FE:  LDR             R2, [R2]; CPostEffects::m_fNightVisionSwitchOnFXTime ...
490800:  ADD             R5, PC; _ZN12CPostEffects32m_fInfraredVisionSwitchOnFXCountE_ptr
490802:  LDRB            R1, [R3,#(byte_A477F0 - 0xA477ED)]
490804:  LDR             R3, =(_ZN12CPostEffects17m_bInfraredVisionE_ptr - 0x490810)
490806:  STRB.W          R1, [R0,#0xB7]
49080A:  LDR             R6, [R6]; CPostEffects::m_fNightVisionSwitchOnFXCount ...
49080C:  ADD             R3, PC; _ZN12CPostEffects17m_bInfraredVisionE_ptr
49080E:  LDR             R1, [R2]; CPostEffects::m_fNightVisionSwitchOnFXTime
490810:  STR.W           R1, [R0,#0xB8]
490814:  LDR             R2, [R5]; CPostEffects::m_fInfraredVisionSwitchOnFXCount ...
490816:  LDR             R5, =(_ZN12CPostEffects29m_InfraredVisionGrainStrengthE_ptr - 0x49081E)
490818:  LDR             R1, [R6]; CPostEffects::m_fNightVisionSwitchOnFXCount
49081A:  ADD             R5, PC; _ZN12CPostEffects29m_InfraredVisionGrainStrengthE_ptr
49081C:  LDR             R6, =(_ZN12CPostEffects29m_fInfraredVisionFilterRadiusE_ptr - 0x490828)
49081E:  STR.W           R1, [R0,#0xBC]
490822:  LDR             R3, [R3]; CPostEffects::m_bInfraredVision ...
490824:  ADD             R6, PC; _ZN12CPostEffects29m_fInfraredVisionFilterRadiusE_ptr
490826:  LDR             R1, [R2]; CPostEffects::m_fInfraredVisionSwitchOnFXCount
490828:  STR.W           R1, [R0,#0xC0]
49082C:  LDR             R5, [R5]; CPostEffects::m_InfraredVisionGrainStrength ...
49082E:  LDRB            R1, [R3]; CPostEffects::m_bInfraredVision
490830:  LDR             R2, =(_ZN12CPostEffects30m_fInfraredVisionHeatObjectColE_ptr - 0x49083C)
490832:  STRB.W          R1, [R0,#0xC4]
490836:  LDR             R6, [R6]; CPostEffects::m_fInfraredVisionFilterRadius ...
490838:  ADD             R2, PC; _ZN12CPostEffects30m_fInfraredVisionHeatObjectColE_ptr
49083A:  LDR             R1, [R5]; CPostEffects::m_InfraredVisionGrainStrength
49083C:  LDR             R3, =(_ZN12CPostEffects19m_InfraredVisionColE_ptr - 0x490848)
49083E:  STR.W           R1, [R0,#0xC8]
490842:  LDR             R1, [R6]; CPostEffects::m_fInfraredVisionFilterRadius
490844:  ADD             R3, PC; _ZN12CPostEffects19m_InfraredVisionColE_ptr
490846:  LDR             R2, [R2]; CPostEffects::m_fInfraredVisionHeatObjectCol ...
490848:  STR.W           R1, [R0,#0xCC]
49084C:  ADD.W           R1, R0, #0xD0
490850:  VLD1.32         {D16-D17}, [R2]
490854:  LDR             R3, [R3]; CPostEffects::m_InfraredVisionCol ...
490856:  VST1.32         {D16-D17}, [R1]
49085A:  LDRB            R1, [R3]; CPostEffects::m_InfraredVisionCol
49085C:  LDR             R2, =(_ZN12CPostEffects23m_InfraredVisionMainColE_ptr - 0x490868)
49085E:  STRB.W          R1, [R0,#0xE0]
490862:  LDRB            R1, [R3,#(_ZN12CPostEffects19m_InfraredVisionColE+1 - 0xA477FD)]; CPostEffects::m_InfraredVisionCol
490864:  ADD             R2, PC; _ZN12CPostEffects23m_InfraredVisionMainColE_ptr
490866:  STRB.W          R1, [R0,#0xE1]
49086A:  LDRB            R1, [R3,#(_ZN12CPostEffects19m_InfraredVisionColE+2 - 0xA477FD)]; CPostEffects::m_InfraredVisionCol
49086C:  STRB.W          R1, [R0,#0xE2]
490870:  LDR             R2, [R2]; CPostEffects::m_InfraredVisionMainCol ...
490872:  LDRB            R1, [R3,#(_ZN12CPostEffects19m_InfraredVisionColE+3 - 0xA477FD)]; CPostEffects::m_InfraredVisionCol
490874:  STRB.W          R1, [R0,#0xE3]
490878:  LDRB            R1, [R2]; CPostEffects::m_InfraredVisionMainCol
49087A:  LDR             R3, =(_ZN12CPostEffects12m_bRadiosityE_ptr - 0x490886)
49087C:  STRB.W          R1, [R0,#0xE4]
490880:  LDRB            R1, [R2,#(_ZN12CPostEffects23m_InfraredVisionMainColE+1 - 0xA47801)]; CPostEffects::m_InfraredVisionMainCol
490882:  ADD             R3, PC; _ZN12CPostEffects12m_bRadiosityE_ptr
490884:  LDR             R6, =(_ZN12CPostEffects24m_bRadiosityLinearFilterE_ptr - 0x490890)
490886:  STRB.W          R1, [R0,#0xE5]
49088A:  LDRB            R1, [R2,#(_ZN12CPostEffects23m_InfraredVisionMainColE+2 - 0xA47801)]; CPostEffects::m_InfraredVisionMainCol
49088C:  ADD             R6, PC; _ZN12CPostEffects24m_bRadiosityLinearFilterE_ptr
49088E:  LDR             R5, =(_ZN12CPostEffects25m_bRadiosityStripCopyModeE_ptr - 0x49089A)
490890:  STRB.W          R1, [R0,#0xE6]
490894:  LDR             R3, [R3]; CPostEffects::m_bRadiosity ...
490896:  ADD             R5, PC; _ZN12CPostEffects25m_bRadiosityStripCopyModeE_ptr
490898:  LDRB            R1, [R2,#(_ZN12CPostEffects23m_InfraredVisionMainColE+3 - 0xA47801)]; CPostEffects::m_InfraredVisionMainCol
49089A:  LDR             R2, =(_ZN12CPostEffects18m_RadiosityPixelsXE_ptr - 0x4908A6)
49089C:  STRB.W          R1, [R0,#0xE7]
4908A0:  LDR             R6, [R6]; CPostEffects::m_bRadiosityLinearFilter ...
4908A2:  ADD             R2, PC; _ZN12CPostEffects18m_RadiosityPixelsXE_ptr
4908A4:  LDRB            R1, [R3]; CPostEffects::m_bRadiosity
4908A6:  STRB.W          R1, [R0,#0xE8]
4908AA:  LDR             R3, [R5]; CPostEffects::m_bRadiosityStripCopyMode ...
4908AC:  LDR             R5, =(_ZN12CPostEffects18m_RadiosityPixelsYE_ptr - 0x4908B4)
4908AE:  LDRB            R1, [R6]; CPostEffects::m_bRadiosityLinearFilter
4908B0:  ADD             R5, PC; _ZN12CPostEffects18m_RadiosityPixelsYE_ptr
4908B2:  LDR             R6, =(_ZN12CPostEffects23m_RadiosityFilterPassesE_ptr - 0x4908BE)
4908B4:  STRB.W          R1, [R0,#0xE9]
4908B8:  LDR             R2, [R2]; CPostEffects::m_RadiosityPixelsX ...
4908BA:  ADD             R6, PC; _ZN12CPostEffects23m_RadiosityFilterPassesE_ptr
4908BC:  LDRB            R1, [R3]; CPostEffects::m_bRadiosityStripCopyMode
4908BE:  LDR             R3, =(_ZN12CPostEffects23m_RadiosityRenderPassesE_ptr - 0x4908CA)
4908C0:  STRB.W          R1, [R0,#0xEA]
4908C4:  LDR             R5, [R5]; CPostEffects::m_RadiosityPixelsY ...
4908C6:  ADD             R3, PC; _ZN12CPostEffects23m_RadiosityRenderPassesE_ptr
4908C8:  LDR             R1, [R2]; CPostEffects::m_RadiosityPixelsX
4908CA:  LDR             R2, =(_ZN12CPostEffects25m_RadiosityIntensityLimitE_ptr - 0x4908D6)
4908CC:  STR.W           R1, [R0,#0xEC]
4908D0:  LDR             R6, [R6]; CPostEffects::m_RadiosityFilterPasses ...
4908D2:  ADD             R2, PC; _ZN12CPostEffects25m_RadiosityIntensityLimitE_ptr
4908D4:  LDR             R1, [R5]; CPostEffects::m_RadiosityPixelsY
4908D6:  LDR             R5, =(_ZN12CPostEffects20m_RadiosityIntensityE_ptr - 0x4908E2)
4908D8:  STR.W           R1, [R0,#0xF0]
4908DC:  LDR             R3, [R3]; CPostEffects::m_RadiosityRenderPasses ...
4908DE:  ADD             R5, PC; _ZN12CPostEffects20m_RadiosityIntensityE_ptr
4908E0:  LDR             R1, [R6]; CPostEffects::m_RadiosityFilterPasses
4908E2:  LDR             R6, =(_ZN12CPostEffects28m_RadiosityFilterUCorrectionE_ptr - 0x4908EE)
4908E4:  STR.W           R1, [R0,#0xF4]
4908E8:  LDR             R2, [R2]; CPostEffects::m_RadiosityIntensityLimit ...
4908EA:  ADD             R6, PC; _ZN12CPostEffects28m_RadiosityFilterUCorrectionE_ptr
4908EC:  LDR             R1, [R3]; CPostEffects::m_RadiosityRenderPasses
4908EE:  LDR             R3, =(_ZN12CPostEffects28m_RadiosityFilterVCorrectionE_ptr - 0x4908FA)
4908F0:  STR.W           R1, [R0,#0xF8]
4908F4:  LDR             R5, [R5]; CPostEffects::m_RadiosityIntensity ...
4908F6:  ADD             R3, PC; _ZN12CPostEffects28m_RadiosityFilterVCorrectionE_ptr
4908F8:  LDR             R1, [R2]; CPostEffects::m_RadiosityIntensityLimit
4908FA:  LDR             R2, =(_ZN12CPostEffects17m_bRadiosityDebugE_ptr - 0x490906)
4908FC:  STR.W           R1, [R0,#0xFC]
490900:  LDR             R6, [R6]; CPostEffects::m_RadiosityFilterUCorrection ...
490902:  ADD             R2, PC; _ZN12CPostEffects17m_bRadiosityDebugE_ptr
490904:  LDR             R1, [R5]; CPostEffects::m_RadiosityIntensity
490906:  LDR             R5, =(_ZN12CPostEffects41m_bRadiosityBypassTimeCycleIntensityLimitE_ptr - 0x490912)
490908:  STR.W           R1, [R0,#0x100]
49090C:  LDR             R3, [R3]; CPostEffects::m_RadiosityFilterVCorrection ...
49090E:  ADD             R5, PC; _ZN12CPostEffects41m_bRadiosityBypassTimeCycleIntensityLimitE_ptr
490910:  LDR             R1, [R6]; CPostEffects::m_RadiosityFilterUCorrection
490912:  LDR             R6, =(_ZN12CPostEffects23m_bDisableAllPostEffectE_ptr - 0x49091E)
490914:  STR.W           R1, [R0,#0x104]
490918:  LDR             R2, [R2]; CPostEffects::m_bRadiosityDebug ...
49091A:  ADD             R6, PC; _ZN12CPostEffects23m_bDisableAllPostEffectE_ptr
49091C:  LDR             R1, [R3]; CPostEffects::m_RadiosityFilterVCorrection
49091E:  LDR             R3, =(_ZN12CPostEffects22m_bSavePhotoFromScriptE_ptr - 0x49092A)
490920:  STR.W           R1, [R0,#0x108]
490924:  LDR             R5, [R5]; CPostEffects::m_bRadiosityBypassTimeCycleIntensityLimit ...
490926:  ADD             R3, PC; _ZN12CPostEffects22m_bSavePhotoFromScriptE_ptr
490928:  LDRB            R1, [R2]; CPostEffects::m_bRadiosityDebug
49092A:  LDR             R2, =(_ZN12CPostEffects14m_bGrainEnableE_ptr - 0x490936)
49092C:  STRB.W          R1, [R0,#0x10C]
490930:  LDR             R6, [R6]; CPostEffects::m_bDisableAllPostEffect ...
490932:  ADD             R2, PC; _ZN12CPostEffects14m_bGrainEnableE_ptr
490934:  LDRB            R1, [R5]; CPostEffects::m_bRadiosityBypassTimeCycleIntensityLimit
490936:  LDR             R5, =(_ZN12CPostEffects15m_grainStrengthE_ptr - 0x490942)
490938:  STRB.W          R1, [R0,#0x10D]
49093C:  LDR             R3, [R3]; CPostEffects::m_bSavePhotoFromScript ...
49093E:  ADD             R5, PC; _ZN12CPostEffects15m_grainStrengthE_ptr
490940:  LDRB            R1, [R6]; CPostEffects::m_bDisableAllPostEffect
490942:  LDR             R6, =(_ZN12CPostEffects16m_bHilightEnableE_ptr - 0x49094E)
490944:  STRB.W          R1, [R0,#0x10E]
490948:  LDR             R2, [R2]; CPostEffects::m_bGrainEnable ...
49094A:  ADD             R6, PC; _ZN12CPostEffects16m_bHilightEnableE_ptr
49094C:  LDRB            R1, [R3]; CPostEffects::m_bSavePhotoFromScript
49094E:  LDR             R3, =(_ZN12CPostEffects17m_hilightStrengthE_ptr - 0x49095A)
490950:  STRB.W          R1, [R0,#0x10F]
490954:  LDR             R5, [R5]; CPostEffects::m_grainStrength ...
490956:  ADD             R3, PC; _ZN12CPostEffects17m_hilightStrengthE_ptr
490958:  LDRB            R1, [R2]; CPostEffects::m_bGrainEnable
49095A:  LDR             R2, =(_ZN12CPostEffects14m_hilightScaleE_ptr - 0x490966)
49095C:  STRB.W          R1, [R0,#0x110]
490960:  LDR             R6, [R6]; CPostEffects::m_bHilightEnable ...
490962:  ADD             R2, PC; _ZN12CPostEffects14m_hilightScaleE_ptr
490964:  LDR             R1, [R5]; CPostEffects::m_grainStrength
490966:  LDR             R5, =(_ZN12CPostEffects15m_hilightOffsetE_ptr - 0x490972)
490968:  STR.W           R1, [R0,#0x114]
49096C:  LDR             R3, [R3]; CPostEffects::m_hilightStrength ...
49096E:  ADD             R5, PC; _ZN12CPostEffects15m_hilightOffsetE_ptr
490970:  LDRB            R1, [R6]; CPostEffects::m_bHilightEnable
490972:  LDR             R6, =(_ZN12CPostEffects14m_hilightMblurE_ptr - 0x49097E)
490974:  STRB.W          R1, [R0,#0x118]
490978:  LDR             R2, [R2]; CPostEffects::m_hilightScale ...
49097A:  ADD             R6, PC; _ZN12CPostEffects14m_hilightMblurE_ptr
49097C:  LDR             R1, [R3]; CPostEffects::m_hilightStrength
49097E:  LDR             R3, =(_ZN12CPostEffects15m_waterStrengthE_ptr - 0x49098A)
490980:  STR.W           R1, [R0,#0x11C]
490984:  LDR             R5, [R5]; CPostEffects::m_hilightOffset ...
490986:  ADD             R3, PC; _ZN12CPostEffects15m_waterStrengthE_ptr
490988:  LDR             R1, [R2]; CPostEffects::m_hilightScale
49098A:  LDR             R2, =(_ZN12CPostEffects9m_xoffsetE_ptr - 0x490996)
49098C:  STR.W           R1, [R0,#0x120]
490990:  LDR             R6, [R6]; CPostEffects::m_hilightMblur ...
490992:  ADD             R2, PC; _ZN12CPostEffects9m_xoffsetE_ptr
490994:  LDR             R1, [R5]; CPostEffects::m_hilightOffset
490996:  LDR             R5, =(_ZN12CPostEffects9m_yoffsetE_ptr - 0x4909A2)
490998:  STR.W           R1, [R0,#0x124]
49099C:  LDR             R3, [R3]; CPostEffects::m_waterStrength ...
49099E:  ADD             R5, PC; _ZN12CPostEffects9m_yoffsetE_ptr
4909A0:  LDRB            R1, [R6]; CPostEffects::m_hilightMblur
4909A2:  LDR             R6, =(_ZN12CPostEffects12m_waterSpeedE_ptr - 0x4909AE)
4909A4:  STRB.W          R1, [R0,#0x128]
4909A8:  LDR             R2, [R2]; CPostEffects::m_xoffset ...
4909AA:  ADD             R6, PC; _ZN12CPostEffects12m_waterSpeedE_ptr
4909AC:  LDR             R1, [R3]; CPostEffects::m_waterStrength
4909AE:  LDR             R3, =(_ZN12CPostEffects11m_waterFreqE_ptr - 0x4909BA)
4909B0:  STR.W           R1, [R0,#0x12C]
4909B4:  LDR             R5, [R5]; CPostEffects::m_yoffset ...
4909B6:  ADD             R3, PC; _ZN12CPostEffects11m_waterFreqE_ptr
4909B8:  LDR             R1, [R2]; CPostEffects::m_xoffset
4909BA:  LDR             R2, =(_ZN12CPostEffects10m_waterColE_ptr - 0x4909C6)
4909BC:  STR.W           R1, [R0,#0x130]
4909C0:  LDR             R6, [R6]; CPostEffects::m_waterSpeed ...
4909C2:  ADD             R2, PC; _ZN12CPostEffects10m_waterColE_ptr
4909C4:  LDR             R1, [R5]; CPostEffects::m_yoffset
4909C6:  STR.W           R1, [R0,#0x134]
4909CA:  LDR             R3, [R3]; CPostEffects::m_waterFreq ...
4909CC:  LDR             R1, [R6]; CPostEffects::m_waterSpeed
4909CE:  STR.W           R1, [R0,#0x138]
4909D2:  LDR             R2, [R2]; CPostEffects::m_waterCol ...
4909D4:  LDR             R1, [R3]; CPostEffects::m_waterFreq
4909D6:  STR.W           R1, [R0,#0x13C]
4909DA:  LDRB            R1, [R2]; CPostEffects::m_waterCol
4909DC:  LDR             R3, =(_ZN12CPostEffects21m_bWaterDepthDarknessE_ptr - 0x4909E8)
4909DE:  STRB.W          R1, [R0,#0x140]
4909E2:  LDRB            R1, [R2,#(byte_A47848 - 0xA47847)]
4909E4:  ADD             R3, PC; _ZN12CPostEffects21m_bWaterDepthDarknessE_ptr
4909E6:  LDR             R6, =(_ZN12CPostEffects25m_fWaterFullDarknessDepthE_ptr - 0x4909F2)
4909E8:  STRB.W          R1, [R0,#0x141]
4909EC:  LDRB            R1, [R2,#(byte_A47849 - 0xA47847)]
4909EE:  ADD             R6, PC; _ZN12CPostEffects25m_fWaterFullDarknessDepthE_ptr
4909F0:  LDR             R5, =(_ZN12CPostEffects29m_fWaterFXStartUnderWaternessE_ptr - 0x4909FC)
4909F2:  STRB.W          R1, [R0,#0x142]
4909F6:  LDR             R3, [R3]; CPostEffects::m_bWaterDepthDarkness ...
4909F8:  ADD             R5, PC; _ZN12CPostEffects29m_fWaterFXStartUnderWaternessE_ptr
4909FA:  LDRB            R1, [R2,#(byte_A4784A - 0xA47847)]
4909FC:  STRB.W          R1, [R0,#0x143]
490A00:  LDR             R2, [R6]; CPostEffects::m_fWaterFullDarknessDepth ...
490A02:  LDRB            R1, [R3]; CPostEffects::m_bWaterDepthDarkness
490A04:  LDR             R6, =(_ZN12CPostEffects13m_bRainEnableE_ptr - 0x490A10)
490A06:  STRB.W          R1, [R0,#0x144]
490A0A:  LDR             R3, [R5]; CPostEffects::m_fWaterFXStartUnderWaterness ...
490A0C:  ADD             R6, PC; _ZN12CPostEffects13m_bRainEnableE_ptr
490A0E:  LDR             R1, [R2]; CPostEffects::m_fWaterFullDarknessDepth
490A10:  LDR             R5, =(_ZN12CPostEffects14m_bColorEnableE_ptr - 0x490A1C)
490A12:  STR.W           R1, [R0,#0x148]
490A16:  LDR             R1, [R3]; CPostEffects::m_fWaterFXStartUnderWaterness
490A18:  ADD             R5, PC; _ZN12CPostEffects14m_bColorEnableE_ptr
490A1A:  LDR             R2, =(_ZN12CPostEffects16m_defScreenXPosnE_ptr - 0x490A24)
490A1C:  LDR             R3, =(_ZN12CPostEffects16m_defScreenYPosnE_ptr - 0x490A26)
490A1E:  LDR             R6, [R6]; CPostEffects::m_bRainEnable ...
490A20:  ADD             R2, PC; _ZN12CPostEffects16m_defScreenXPosnE_ptr
490A22:  ADD             R3, PC; _ZN12CPostEffects16m_defScreenYPosnE_ptr
490A24:  STR.W           R1, [R0,#0x14C]
490A28:  LDR             R5, [R5]; CPostEffects::m_bColorEnable ...
490A2A:  LDRB            R1, [R6]; CPostEffects::m_bRainEnable
490A2C:  STRB.W          R1, [R0,#0x150]
490A30:  LDR             R2, [R2]; CPostEffects::m_defScreenXPosn ...
490A32:  LDR             R3, [R3]; CPostEffects::m_defScreenYPosn ...
490A34:  LDRB            R1, [R5]; CPostEffects::m_bColorEnable
490A36:  STRB.W          R1, [R0,#0x151]
490A3A:  LDR             R1, [R2]; CPostEffects::m_defScreenXPosn
490A3C:  LDR             R2, [R3]; CPostEffects::m_defScreenYPosn
490A3E:  STRD.W          R1, R2, [R0,#0x154]
490A42:  POP.W           {R8}
490A46:  POP             {R4-R7,PC}
