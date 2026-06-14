; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity32PlayerAboutToExitVehicleAsDriverEv
; Address            : 0x3ACFAC - 0x3ACFFE
; =========================================================

3ACFAC:  LDRB.W          R1, [R0,#0xA5]
3ACFB0:  MOVS            R2, #1
3ACFB2:  STRB.W          R2, [R0,#0xA7]
3ACFB6:  CMP             R1, #0
3ACFB8:  IT EQ
3ACFBA:  BXEQ            LR
3ACFBC:  PUSH            {R7,LR}
3ACFBE:  MOV             R7, SP
3ACFC0:  LDRSB.W         R2, [R0,#0x9B]
3ACFC4:  ADD.W           R1, R0, #0x80
3ACFC8:  CMP             R2, #0
3ACFCA:  IT NE
3ACFCC:  CMPNE           R2, #2
3ACFCE:  BEQ             loc_3ACFDA
3ACFD0:  CMP             R2, #3
3ACFD2:  BNE             loc_3ACFE6
3ACFD4:  LDR             R0, =(AudioEngine_ptr - 0x3ACFDA)
3ACFD6:  ADD             R0, PC; AudioEngine_ptr
3ACFD8:  B               loc_3ACFDE
3ACFDA:  LDR             R0, =(AudioEngine_ptr - 0x3ACFE0)
3ACFDC:  ADD             R0, PC; AudioEngine_ptr
3ACFDE:  LDR             R0, [R0]; AudioEngine
3ACFE0:  MOVS            R2, #0
3ACFE2:  BLX             j__ZN12CAudioEngine9StopRadioEP21tVehicleAudioSettingsh; CAudioEngine::StopRadio(tVehicleAudioSettings *,uchar)
3ACFE6:  LDR             R0, =(_ZN21CAEVehicleAudioEntity31s_pVehicleAudioSettingsForRadioE_ptr - 0x3ACFF0)
3ACFE8:  MOVS            R2, #0
3ACFEA:  LDR             R1, =(_ZN21CAEVehicleAudioEntity25s_pPlayerAttachedForRadioE_ptr - 0x3ACFF2)
3ACFEC:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity31s_pVehicleAudioSettingsForRadioE_ptr
3ACFEE:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity25s_pPlayerAttachedForRadioE_ptr
3ACFF0:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pVehicleAudioSettingsForRadio ...
3ACFF2:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_pPlayerAttachedForRadio ...
3ACFF4:  STR             R2, [R0]; CAEVehicleAudioEntity::s_pVehicleAudioSettingsForRadio
3ACFF6:  STR             R2, [R1]; CAEVehicleAudioEntity::s_pPlayerAttachedForRadio
3ACFF8:  POP.W           {R7,LR}
3ACFFC:  BX              LR
