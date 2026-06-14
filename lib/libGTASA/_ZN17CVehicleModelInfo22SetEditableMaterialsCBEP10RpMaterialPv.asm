; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo22SetEditableMaterialsCBEP10RpMaterialPv
; Address            : 0x388880 - 0x388A4C
; =========================================================

388880:  PUSH            {R4-R7,LR}
388882:  ADD             R7, SP, #0xC
388884:  PUSH.W          {R8,R9,R11}
388888:  MOV             R4, R0
38888A:  LDR             R0, =(_ZN17CVehicleModelInfo16ms_pRemapTextureE_ptr - 0x388894)
38888C:  MOV             R9, R4
38888E:  LDR             R6, [R4]
388890:  ADD             R0, PC; _ZN17CVehicleModelInfo16ms_pRemapTextureE_ptr
388892:  LDR.W           R8, [R9,#4]!
388896:  MOV             R5, R1
388898:  LDR             R0, [R0]; CVehicleModelInfo::ms_pRemapTexture ...
38889A:  LDR             R0, [R0]; CVehicleModelInfo::ms_pRemapTexture
38889C:  CBZ             R0, loc_3888D8
38889E:  CBZ             R6, loc_3888D6
3888A0:  ADD.W           R0, R6, #0x10; char *
3888A4:  ADR             R1, aRemap; "remap"
3888A6:  MOVS            R2, #5; size_t
3888A8:  BLX             strncmp
3888AC:  CBNZ            R0, loc_3888D8
3888AE:  LDR             R0, [R5]
3888B0:  ADDS            R1, R0, #4
3888B2:  STR             R1, [R5]
3888B4:  STR             R4, [R0]
3888B6:  LDR             R0, [R5]
3888B8:  LDR             R1, =(_ZN17CVehicleModelInfo16ms_pRemapTextureE_ptr - 0x3888C4)
3888BA:  ADDS            R2, R0, #4
3888BC:  STR             R2, [R5]
3888BE:  MOVS            R2, #8
3888C0:  ADD             R1, PC; _ZN17CVehicleModelInfo16ms_pRemapTextureE_ptr
3888C2:  STR             R2, [R0]
3888C4:  LDR             R0, [R5]
3888C6:  LDR             R1, [R1]; CVehicleModelInfo::ms_pRemapTexture ...
3888C8:  LDR             R2, [R4]
3888CA:  ADDS            R3, R0, #4
3888CC:  STR             R3, [R5]
3888CE:  STR             R2, [R0]
3888D0:  LDR             R6, [R1]; CVehicleModelInfo::ms_pRemapTexture
3888D2:  STR             R6, [R4]
3888D4:  B               loc_3888D8
3888D6:  MOVS            R6, #0
3888D8:  LDR             R0, =(_ZN17CVehicleModelInfo17ms_pLightsTextureE_ptr - 0x3888DE)
3888DA:  ADD             R0, PC; _ZN17CVehicleModelInfo17ms_pLightsTextureE_ptr
3888DC:  LDR             R0, [R0]; CVehicleModelInfo::ms_pLightsTexture ...
3888DE:  LDR             R0, [R0]; CVehicleModelInfo::ms_pLightsTexture
3888E0:  CMP             R6, R0
3888E2:  BEQ             loc_38890C
3888E4:  BIC.W           R0, R8, #0xFF000000
3888E8:  CMP.W           R0, #0xFF00FF
3888EC:  BGE             loc_38892C
3888EE:  MOVW            R1, #0xFF3C
3888F2:  CMP             R0, R1
3888F4:  BEQ             loc_38895E
3888F6:  MOVS            R1, #0xAF00FF
3888FC:  CMP             R0, R1
3888FE:  BNE.W           loc_388A44
388902:  LDR             R0, =(_ZN17CVehicleModelInfo13ms_currentColE_ptr - 0x388908)
388904:  ADD             R0, PC; _ZN17CVehicleModelInfo13ms_currentColE_ptr
388906:  LDR             R0, [R0]; CVehicleModelInfo::ms_currentCol ...
388908:  ADDS            R0, #1
38890A:  B               loc_38896E
38890C:  BIC.W           R0, R8, #0xFF000000
388910:  MOVW            R1, #0xFFB8
388914:  CMP             R0, R1
388916:  BGT             loc_388946
388918:  MOVW            R1, #0x3CFF
38891C:  CMP             R0, R1
38891E:  BEQ             loc_3889A8
388920:  MOVW            R1, #0xAFFF
388924:  CMP             R0, R1
388926:  BNE             loc_3889B0
388928:  MOVS            R0, #0
38892A:  B               loc_3889B4
38892C:  BEQ             loc_388966
38892E:  MOV             R1, #0xFFFF00
388936:  CMP             R0, R1
388938:  BNE.W           loc_388A44
38893C:  LDR             R0, =(_ZN17CVehicleModelInfo13ms_currentColE_ptr - 0x388942)
38893E:  ADD             R0, PC; _ZN17CVehicleModelInfo13ms_currentColE_ptr
388940:  LDR             R0, [R0]; CVehicleModelInfo::ms_currentCol ...
388942:  ADDS            R0, #2
388944:  B               loc_38896E
388946:  MOVW            R1, #0xFFB9
38894A:  CMP             R0, R1
38894C:  BEQ             loc_3889AC
38894E:  MOV             R1, #0xC8FF00
388956:  CMP             R0, R1
388958:  BNE             loc_3889B0
38895A:  MOVS            R0, #1
38895C:  B               loc_3889B4
38895E:  LDR             R0, =(_ZN17CVehicleModelInfo13ms_currentColE_ptr - 0x388964)
388960:  ADD             R0, PC; _ZN17CVehicleModelInfo13ms_currentColE_ptr
388962:  LDR             R0, [R0]; CVehicleModelInfo::ms_currentCol ...
388964:  B               loc_38896E
388966:  LDR             R0, =(_ZN17CVehicleModelInfo13ms_currentColE_ptr - 0x38896C)
388968:  ADD             R0, PC; _ZN17CVehicleModelInfo13ms_currentColE_ptr
38896A:  LDR             R0, [R0]; CVehicleModelInfo::ms_currentCol ...
38896C:  ADDS            R0, #3
38896E:  LDR             R2, [R5]
388970:  LDRB            R0, [R0]; CVehicleModelInfo::ms_currentCol ...
388972:  ADDS            R3, R2, #4
388974:  STR             R3, [R5]
388976:  STR.W           R9, [R2]
38897A:  LDR             R2, [R5]
38897C:  LDR             R1, =(_ZN17CVehicleModelInfo21ms_vehicleColourTableE_ptr - 0x388988)
38897E:  ADDS            R3, R2, #4
388980:  STR             R3, [R5]
388982:  MOVS            R3, #4
388984:  ADD             R1, PC; _ZN17CVehicleModelInfo21ms_vehicleColourTableE_ptr
388986:  STR             R3, [R2]
388988:  LDR             R2, [R5]
38898A:  LDR             R1, [R1]; CVehicleModelInfo::ms_vehicleColourTable ...
38898C:  LDR             R3, [R4,#4]
38898E:  ADDS            R6, R2, #4
388990:  STR             R6, [R5]
388992:  STR             R3, [R2]
388994:  LDRB.W          R2, [R1,R0,LSL#2]
388998:  ADD.W           R0, R1, R0,LSL#2
38899C:  STRB            R2, [R4,#4]
38899E:  LDRB            R1, [R0,#1]
3889A0:  STRB            R1, [R4,#5]
3889A2:  LDRB            R0, [R0,#2]
3889A4:  STRB            R0, [R4,#6]
3889A6:  B               loc_388A44
3889A8:  MOVS            R0, #3
3889AA:  B               loc_3889B4
3889AC:  MOVS            R0, #2
3889AE:  B               loc_3889B4
3889B0:  MOV.W           R0, #0xFFFFFFFF
3889B4:  LDR             R1, [R5]
3889B6:  ADDS            R2, R1, #4
3889B8:  STR             R2, [R5]
3889BA:  STR.W           R9, [R1]
3889BE:  LDR             R1, [R5]
3889C0:  ADDS            R2, R1, #4
3889C2:  STR             R2, [R5]
3889C4:  MOVS            R2, #4
3889C6:  STR             R2, [R1]
3889C8:  LDR             R1, [R5]
3889CA:  LDR.W           R2, [R9]
3889CE:  ADDS            R3, R1, #4
3889D0:  STR             R3, [R5]
3889D2:  STR             R2, [R1]
3889D4:  LDR.W           R1, [R9]
3889D8:  ORN.W           R1, R1, #0xFF000000
3889DC:  STR.W           R1, [R9]
3889E0:  ADDS            R1, R0, #1
3889E2:  BEQ             loc_388A44
3889E4:  LDR             R1, =(_ZN17CVehicleModelInfo11ms_lightsOnE_ptr - 0x3889EA)
3889E6:  ADD             R1, PC; _ZN17CVehicleModelInfo11ms_lightsOnE_ptr
3889E8:  LDR             R1, [R1]; CVehicleModelInfo::ms_lightsOn ...
3889EA:  LDRB            R0, [R1,R0]
3889EC:  CBZ             R0, loc_388A44
3889EE:  LDR             R0, [R5]
3889F0:  ADDS            R1, R0, #4
3889F2:  STR             R1, [R5]
3889F4:  STR             R4, [R0]
3889F6:  LDR             R0, [R5]
3889F8:  ADDS            R1, R0, #4
3889FA:  STR             R1, [R5]
3889FC:  MOVS            R1, #8
3889FE:  STR             R1, [R0]
388A00:  LDR             R0, [R5]
388A02:  LDR             R2, [R4]
388A04:  ADDS            R3, R0, #4
388A06:  STR             R3, [R5]
388A08:  STR             R2, [R0]
388A0A:  LDR             R0, [R5]
388A0C:  LDR             R3, =(gLightSurfProps_ptr - 0x388A1E)
388A0E:  ADDS            R2, R0, #4
388A10:  STR             R2, [R5]
388A12:  ADD.W           R2, R4, #0xC
388A16:  STR             R2, [R0]
388A18:  LDR             R0, [R5]
388A1A:  ADD             R3, PC; gLightSurfProps_ptr
388A1C:  LDR             R2, =(_ZN17CVehicleModelInfo19ms_pLightsOnTextureE_ptr - 0x388A28)
388A1E:  ADDS            R6, R0, #4
388A20:  STR             R6, [R5]
388A22:  STR             R1, [R0]
388A24:  ADD             R2, PC; _ZN17CVehicleModelInfo19ms_pLightsOnTextureE_ptr
388A26:  LDR             R0, [R5]
388A28:  LDR             R1, [R2]; CVehicleModelInfo::ms_pLightsOnTexture ...
388A2A:  LDR             R2, [R3]; gLightSurfProps
388A2C:  ADDS            R6, R0, #4
388A2E:  LDR             R3, [R4,#0xC]
388A30:  STR             R6, [R5]
388A32:  STR             R3, [R0]
388A34:  LDR             R0, [R1]; CVehicleModelInfo::ms_pLightsOnTexture
388A36:  STR             R0, [R4]
388A38:  VLDR            D16, [R2]
388A3C:  LDR             R0, [R2,#(dword_6869AC - 0x6869A4)]
388A3E:  STR             R0, [R4,#0x14]
388A40:  VSTR            D16, [R4,#0xC]
388A44:  MOV             R0, R4
388A46:  POP.W           {R8,R9,R11}
388A4A:  POP             {R4-R7,PC}
