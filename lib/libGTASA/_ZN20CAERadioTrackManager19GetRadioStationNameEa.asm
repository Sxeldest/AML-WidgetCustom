; =========================================================
; Game Engine Function: _ZN20CAERadioTrackManager19GetRadioStationNameEa
; Address            : 0x3A3250 - 0x3A32AA
; =========================================================

3A3250:  CMP             R1, #1
3A3252:  ITT LT
3A3254:  MOVLT           R0, #0
3A3256:  BXLT            LR
3A3258:  PUSH            {R7,LR}
3A325A:  MOV             R7, SP
3A325C:  SUB             SP, SP, #8
3A325E:  MOVW            R0, #:lower16:(loc_33504C+1)
3A3262:  MOVW            R2, #0x4546
3A3266:  MOVT            R0, #:upper16:(loc_33504C+1)
3A326A:  MOVT            R2, #0x5F41
3A326E:  CMP             R1, #0xC
3A3270:  BEQ             loc_3A3286
3A3272:  CMP             R1, #0xD
3A3274:  BNE             loc_3A328C
3A3276:  MOVW            R1, #:lower16:(_Z25HandleTextureEnhancementsP8RwRaster+1); HandleTextureEnhancements(RwRaster *)
3A327A:  STR             R2, [SP,#0x10+var_10]
3A327C:  MOVT            R1, #:upper16:(_Z25HandleTextureEnhancementsP8RwRaster+1); HandleTextureEnhancements(RwRaster *)
3A3280:  ADD             R0, R1
3A3282:  STR             R0, [SP,#0x10+var_C]
3A3284:  B               loc_3A329A
3A3286:  STRD.W          R2, R0, [SP,#0x10+var_10]
3A328A:  B               loc_3A329A
3A328C:  LDR             R3, =(aFeaRD - 0x3A3296); "FEA_R%d"
3A328E:  SUBS            R2, R1, #1
3A3290:  MOV             R0, SP
3A3292:  ADD             R3, PC; "FEA_R%d"
3A3294:  MOV             R1, R3
3A3296:  BL              sub_5E6BC0
3A329A:  LDR             R0, =(TheText_ptr - 0x3A32A2)
3A329C:  MOV             R1, SP; CKeyGen *
3A329E:  ADD             R0, PC; TheText_ptr
3A32A0:  LDR             R0, [R0]; TheText ; this
3A32A2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
3A32A6:  ADD             SP, SP, #8
3A32A8:  POP             {R7,PC}
