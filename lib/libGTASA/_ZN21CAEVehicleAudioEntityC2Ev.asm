; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntityC2Ev
; Address            : 0x3AAC70 - 0x3AACA0
; =========================================================

3AAC70:  LDR             R1, =(_ZTV21CAEVehicleAudioEntity_ptr - 0x3AAC7A); Alternative name is 'CAEVehicleAudioEntity::CAEVehicleAudioEntity(void)'
3AAC72:  MOVS            R3, #0
3AAC74:  LDR             R2, =(_ZTV22CAETwinLoopSoundEntity_ptr - 0x3AAC7E)
3AAC76:  ADD             R1, PC; _ZTV21CAEVehicleAudioEntity_ptr
3AAC78:  STR             R3, [R0,#0x10]
3AAC7A:  ADD             R2, PC; _ZTV22CAETwinLoopSoundEntity_ptr
3AAC7C:  STR.W           R3, [R0,#0x194]
3AAC80:  LDR             R1, [R1]; `vtable for'CAEVehicleAudioEntity ...
3AAC82:  LDR             R2, [R2]; `vtable for'CAETwinLoopSoundEntity ...
3AAC84:  ADDS            R1, #8
3AAC86:  STRD.W          R3, R3, [R0,#0x224]
3AAC8A:  STRH.W          R3, [R0,#0x20C]
3AAC8E:  STR             R3, [R0,#4]
3AAC90:  STRB.W          R3, [R0,#0xA4]
3AAC94:  STR             R1, [R0]
3AAC96:  ADD.W           R1, R2, #8
3AAC9A:  STR.W           R1, [R0,#0x184]
3AAC9E:  BX              LR
