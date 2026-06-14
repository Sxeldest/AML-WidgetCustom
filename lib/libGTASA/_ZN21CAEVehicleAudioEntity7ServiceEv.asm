; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity7ServiceEv
; Address            : 0x3ACDB4 - 0x3ACF78
; =========================================================

3ACDB4:  PUSH            {R4-R7,LR}
3ACDB6:  ADD             R7, SP, #0xC
3ACDB8:  PUSH.W          {R8,R9,R11}
3ACDBC:  MOV             R4, R0
3ACDBE:  LDRB.W          R0, [R4,#0xA4]
3ACDC2:  CBZ             R0, loc_3ACDEC
3ACDC4:  LDRB.W          R0, [R4,#0xA5]
3ACDC8:  LDR             R5, [R4,#4]
3ACDCA:  CBZ             R0, loc_3ACE3C
3ACDCC:  LDR             R0, =(_ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr - 0x3ACDD2)
3ACDCE:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr
3ACDD0:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pPlayerDriver ...
3ACDD2:  LDR             R0, [R0]; this
3ACDD4:  CBZ             R0, loc_3ACE3C
3ACDD6:  LDRB.W          R1, [R4,#0xA7]
3ACDDA:  CBNZ            R1, loc_3ACE3C
3ACDDC:  LDR.W           R1, [R0,#0x44C]
3ACDE0:  CMP             R1, #0x3F ; '?'
3ACDE2:  BNE             loc_3ACDF2
3ACDE4:  MOVS            R0, #1
3ACDE6:  STRB.W          R0, [R4,#0xA7]
3ACDEA:  B               loc_3ACE04
3ACDEC:  POP.W           {R8,R9,R11}
3ACDF0:  POP             {R4-R7,PC}
3ACDF2:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
3ACDF6:  CBNZ            R0, loc_3ACE3C
3ACDF8:  LDRB.W          R0, [R4,#0xA5]
3ACDFC:  MOVS            R1, #1
3ACDFE:  STRB.W          R1, [R4,#0xA7]
3ACE02:  CBZ             R0, loc_3ACE3C
3ACE04:  LDRSB.W         R0, [R4,#0x9B]
3ACE08:  ADD.W           R1, R4, #0x80
3ACE0C:  CMP             R0, #0
3ACE0E:  IT NE
3ACE10:  CMPNE           R0, #2
3ACE12:  BEQ             loc_3ACE1E
3ACE14:  CMP             R0, #3
3ACE16:  BNE             loc_3ACE2A
3ACE18:  LDR             R0, =(AudioEngine_ptr - 0x3ACE1E)
3ACE1A:  ADD             R0, PC; AudioEngine_ptr
3ACE1C:  B               loc_3ACE22
3ACE1E:  LDR             R0, =(AudioEngine_ptr - 0x3ACE24)
3ACE20:  ADD             R0, PC; AudioEngine_ptr
3ACE22:  LDR             R0, [R0]; AudioEngine
3ACE24:  MOVS            R2, #0
3ACE26:  BLX             j__ZN12CAudioEngine9StopRadioEP21tVehicleAudioSettingsh; CAudioEngine::StopRadio(tVehicleAudioSettings *,uchar)
3ACE2A:  LDR             R0, =(_ZN21CAEVehicleAudioEntity31s_pVehicleAudioSettingsForRadioE_ptr - 0x3ACE34)
3ACE2C:  MOVS            R2, #0
3ACE2E:  LDR             R1, =(_ZN21CAEVehicleAudioEntity25s_pPlayerAttachedForRadioE_ptr - 0x3ACE36)
3ACE30:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity31s_pVehicleAudioSettingsForRadioE_ptr
3ACE32:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity25s_pPlayerAttachedForRadioE_ptr
3ACE34:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pVehicleAudioSettingsForRadio ...
3ACE36:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_pPlayerAttachedForRadio ...
3ACE38:  STR             R2, [R0]; CAEVehicleAudioEntity::s_pVehicleAudioSettingsForRadio
3ACE3A:  STR             R2, [R1]; CAEVehicleAudioEntity::s_pPlayerAttachedForRadio
3ACE3C:  LDR             R0, [R4,#4]
3ACE3E:  MOVS            R6, #0
3ACE40:  LDRB.W          R0, [R0,#0x3A]
3ACE44:  AND.W           R0, R0, #0xF8
3ACE48:  CMP             R0, #0x28 ; '('
3ACE4A:  IT EQ
3ACE4C:  MOVEQ           R6, #1
3ACE4E:  BNE             loc_3ACE5E
3ACE50:  LDRB.W          R0, [R4,#0xA8]
3ACE54:  CMP             R0, #0
3ACE56:  ITT EQ
3ACE58:  MOVEQ           R0, R4; this
3ACE5A:  BLXEQ           j__ZN21CAEVehicleAudioEntity18JustWreckedVehicleEv; CAEVehicleAudioEntity::JustWreckedVehicle(void)
3ACE5E:  STRB.W          R6, [R4,#0xA8]
3ACE62:  LDR.W           R0, [R5,#0x464]; this
3ACE66:  CBZ             R0, loc_3ACE72
3ACE68:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3ACE6C:  CBZ             R0, loc_3ACE72
3ACE6E:  MOVS            R6, #1
3ACE70:  B               loc_3ACE74
3ACE72:  MOVS            R6, #0
3ACE74:  BLX             j__ZN15CAEAudioUtility19FindVehicleOfPlayerEv; CAEAudioUtility::FindVehicleOfPlayer(void)
3ACE78:  LDR             R5, [R4,#4]
3ACE7A:  CMP             R6, #0
3ACE7C:  MOV.W           R2, #0
3ACE80:  MOV             R9, R0
3ACE82:  IT EQ
3ACE84:  MOVEQ           R2, #1
3ACE86:  MOVS            R1, #0
3ACE88:  CMP             R9, R5
3ACE8A:  LDRB.W          R0, [R4,#0xA5]
3ACE8E:  IT EQ
3ACE90:  MOVEQ           R1, #1
3ACE92:  CMP             R6, #0
3ACE94:  AND.W           R8, R2, R1
3ACE98:  BEQ             loc_3ACEA4
3ACE9A:  CBNZ            R0, loc_3ACEAE
3ACE9C:  MOV             R0, R4; this
3ACE9E:  BLX             j__ZN21CAEVehicleAudioEntity24JustGotInVehicleAsDriverEv; CAEVehicleAudioEntity::JustGotInVehicleAsDriver(void)
3ACEA2:  B               loc_3ACEAE
3ACEA4:  CMP             R0, #0
3ACEA6:  ITT NE
3ACEA8:  MOVNE           R0, R4; this
3ACEAA:  BLXNE           j__ZN21CAEVehicleAudioEntity27JustGotOutOfVehicleAsDriverEv; CAEVehicleAudioEntity::JustGotOutOfVehicleAsDriver(void)
3ACEAE:  CMP.W           R8, #1
3ACEB2:  ITT EQ
3ACEB4:  LDRBEQ.W        R0, [R4,#0xA6]
3ACEB8:  CMPEQ           R0, #0
3ACEBA:  BEQ             loc_3ACED0
3ACEBC:  CBZ             R6, loc_3ACF12
3ACEBE:  LDRB.W          R0, [R4,#0xA5]
3ACEC2:  CMP             R0, #0
3ACEC4:  ITT EQ
3ACEC6:  LDRBEQ.W        R0, [R4,#0xA6]
3ACECA:  CMPEQ           R0, #0
3ACECC:  BNE             loc_3ACF60
3ACECE:  B               loc_3ACED8
3ACED0:  LDRB.W          R0, [R4,#0xA5]
3ACED4:  CMP             R0, #0
3ACED6:  BNE             loc_3ACEBC
3ACED8:  LDR             R0, =(_ZN21CAEVehicleAudioEntity31s_pVehicleAudioSettingsForRadioE_ptr - 0x3ACEE0)
3ACEDA:  LDR             R1, =(_ZN21CAEVehicleAudioEntity25s_pPlayerAttachedForRadioE_ptr - 0x3ACEE4)
3ACEDC:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity31s_pVehicleAudioSettingsForRadioE_ptr
3ACEDE:  LDR             R2, [R4,#4]
3ACEE0:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity25s_pPlayerAttachedForRadioE_ptr
3ACEE2:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pVehicleAudioSettingsForRadio ...
3ACEE4:  LDR             R3, [R1]; CAEVehicleAudioEntity::s_pPlayerAttachedForRadio ...
3ACEE6:  ADD.W           R1, R4, #0x80
3ACEEA:  LDR.W           R2, [R2,#0x464]
3ACEEE:  STR             R1, [R0]; CAEVehicleAudioEntity::s_pVehicleAudioSettingsForRadio
3ACEF0:  STR             R2, [R3]; CAEVehicleAudioEntity::s_pPlayerAttachedForRadio
3ACEF2:  LDRSB.W         R0, [R4,#0x9B]
3ACEF6:  CMP             R0, #0
3ACEF8:  IT NE
3ACEFA:  CMPNE           R0, #2
3ACEFC:  BEQ             loc_3ACF08
3ACEFE:  CMP             R0, #3
3ACF00:  BNE             loc_3ACF12
3ACF02:  LDR             R0, =(AudioEngine_ptr - 0x3ACF08)
3ACF04:  ADD             R0, PC; AudioEngine_ptr
3ACF06:  B               loc_3ACF0C
3ACF08:  LDR             R0, =(AudioEngine_ptr - 0x3ACF0E)
3ACF0A:  ADD             R0, PC; AudioEngine_ptr
3ACF0C:  LDR             R0, [R0]; AudioEngine
3ACF0E:  BLX             j__ZN12CAudioEngine10StartRadioEP21tVehicleAudioSettings; CAudioEngine::StartRadio(tVehicleAudioSettings *)
3ACF12:  CBNZ            R6, loc_3ACF60
3ACF14:  CMP             R9, R5
3ACF16:  BEQ             loc_3ACF60
3ACF18:  LDRB.W          R0, [R4,#0xA5]
3ACF1C:  CMP             R0, #0
3ACF1E:  ITT EQ
3ACF20:  LDRBEQ.W        R0, [R4,#0xA6]
3ACF24:  CMPEQ           R0, #0
3ACF26:  BEQ             loc_3ACF60
3ACF28:  LDRSB.W         R0, [R4,#0x9B]
3ACF2C:  ADD.W           R1, R4, #0x80
3ACF30:  CMP             R0, #0
3ACF32:  IT NE
3ACF34:  CMPNE           R0, #2
3ACF36:  BEQ             loc_3ACF42
3ACF38:  CMP             R0, #3
3ACF3A:  BNE             loc_3ACF4E
3ACF3C:  LDR             R0, =(AudioEngine_ptr - 0x3ACF42)
3ACF3E:  ADD             R0, PC; AudioEngine_ptr
3ACF40:  B               loc_3ACF46
3ACF42:  LDR             R0, =(AudioEngine_ptr - 0x3ACF48)
3ACF44:  ADD             R0, PC; AudioEngine_ptr
3ACF46:  LDR             R0, [R0]; AudioEngine
3ACF48:  MOVS            R2, #0
3ACF4A:  BLX             j__ZN12CAudioEngine9StopRadioEP21tVehicleAudioSettingsh; CAudioEngine::StopRadio(tVehicleAudioSettings *,uchar)
3ACF4E:  LDR             R0, =(_ZN21CAEVehicleAudioEntity31s_pVehicleAudioSettingsForRadioE_ptr - 0x3ACF58)
3ACF50:  MOVS            R2, #0
3ACF52:  LDR             R1, =(_ZN21CAEVehicleAudioEntity25s_pPlayerAttachedForRadioE_ptr - 0x3ACF5A)
3ACF54:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity31s_pVehicleAudioSettingsForRadioE_ptr
3ACF56:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity25s_pPlayerAttachedForRadioE_ptr
3ACF58:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pVehicleAudioSettingsForRadio ...
3ACF5A:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_pPlayerAttachedForRadio ...
3ACF5C:  STR             R2, [R0]; CAEVehicleAudioEntity::s_pVehicleAudioSettingsForRadio
3ACF5E:  STR             R2, [R1]; CAEVehicleAudioEntity::s_pPlayerAttachedForRadio
3ACF60:  STRB.W          R8, [R4,#0xA6]
3ACF64:  MOV             R0, R4; this
3ACF66:  LDR             R1, [R4,#4]; CPhysical *
3ACF68:  STRB.W          R6, [R4,#0xA5]
3ACF6C:  POP.W           {R8,R9,R11}
3ACF70:  POP.W           {R4-R7,LR}
3ACF74:  B.W             _ZN21CAEVehicleAudioEntity14ProcessVehicleEP9CPhysical; CAEVehicleAudioEntity::ProcessVehicle(CPhysical *)
