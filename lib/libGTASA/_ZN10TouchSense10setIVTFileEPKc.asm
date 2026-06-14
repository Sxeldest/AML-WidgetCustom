; =========================================================
; Game Engine Function: _ZN10TouchSense10setIVTFileEPKc
; Address            : 0x270868 - 0x270974
; =========================================================

270868:  PUSH            {R4-R7,LR}
27086A:  ADD             R7, SP, #0xC
27086C:  PUSH.W          {R8-R11}
270870:  SUB             SP, SP, #4
270872:  MOV             R9, R0
270874:  LDR             R0, =(UseTouchSense_ptr - 0x27087C)
270876:  MOV             R8, R1
270878:  ADD             R0, PC; UseTouchSense_ptr
27087A:  LDR             R0, [R0]; UseTouchSense
27087C:  LDRB            R0, [R0]
27087E:  CBZ             R0, loc_2708C6
270880:  ADR             R0, aGta3Data; "GTA3/data/"
270882:  MOV             R1, R8; char *
270884:  MOVS            R2, #0; bool
270886:  MOVS            R3, #1; bool
270888:  MOVS            R4, #0
27088A:  BLX             j__Z7NvFOpenPKcS0_bb; NvFOpen(char const*,char const*,bool,bool)
27088E:  CBZ             R0, loc_2708CA
270890:  STRB.W          R4, [R9,#4]
270894:  LDR.W           R10, [R0]
270898:  CMP.W           R10, #1
27089C:  BNE             loc_2708DC
27089E:  LDR             R6, [R0,#4]
2708A0:  MOV             R0, R6; stream
2708A2:  BLX             ftell
2708A6:  MOV             R4, R0
2708A8:  MOV             R0, R6; stream
2708AA:  MOVS            R1, #0; off
2708AC:  MOVS            R2, #2; whence
2708AE:  BLX             fseek
2708B2:  MOV             R0, R6; stream
2708B4:  BLX             ftell
2708B8:  MOV             R5, R0
2708BA:  MOV             R0, R6; stream
2708BC:  MOV             R1, R4; off
2708BE:  MOVS            R2, #0; whence
2708C0:  BLX             fseek
2708C4:  B               loc_2708E6
2708C6:  MOVS            R0, #1
2708C8:  B               loc_27096C
2708CA:  LDR             R1, =(aTouchsenseGta3 - 0x2708D6); "TouchSense-GTA3"
2708CC:  ADR             R2, aFailedToOpenIv; "Failed to open IVT file \"%s\"!"
2708CE:  MOVS            R0, #6; prio
2708D0:  MOV             R3, R8
2708D2:  ADD             R1, PC; "TouchSense-GTA3"
2708D4:  BLX             __android_log_print
2708D8:  MOVS            R0, #0
2708DA:  B               loc_27096C
2708DC:  LDR             R6, [R0,#4]
2708DE:  MOV             R0, R6; asset
2708E0:  BLX             AAsset_getLength
2708E4:  MOV             R5, R0
2708E6:  LDR.W           R0, [R9,#0x20]; void *
2708EA:  CMP             R0, #0
2708EC:  IT NE
2708EE:  BLXNE           _ZdaPv; operator delete[](void *)
2708F2:  MOV             R0, R5; unsigned int
2708F4:  BLX             _Znaj; operator new[](uint)
2708F8:  MOV             R4, R0
2708FA:  CMP.W           R10, #1
2708FE:  STR.W           R4, [R9,#0x20]
270902:  BNE             loc_270936
270904:  MOV             R0, R4; ptr
270906:  MOVS            R1, #1; size
270908:  MOV             R2, R5; n
27090A:  MOV             R3, R6; stream
27090C:  BLX             fread
270910:  CMP             R0, R5
270912:  BEQ             loc_270966
270914:  LDR             R1, =(aTouchsenseGta3 - 0x270920); "TouchSense-GTA3"
270916:  ADR             R2, aFailedToReadIv; "Failed to read IVT data from \"%s\"!"
270918:  MOVS            R0, #6; prio
27091A:  MOV             R3, R8
27091C:  ADD             R1, PC; "TouchSense-GTA3"
27091E:  BLX             __android_log_print
270922:  LDR.W           R0, [R9,#0x20]; void *
270926:  CMP             R0, #0
270928:  IT NE
27092A:  BLXNE           _ZdaPv; operator delete[](void *)
27092E:  MOVS            R0, #0
270930:  STR.W           R0, [R9,#0x20]
270934:  B               loc_27096C
270936:  MOV             R0, R6; asset
270938:  BLX             AAsset_getLength
27093C:  MOV             R10, R0
27093E:  MOV             R0, R6; asset
270940:  BLX             AAsset_getLength
270944:  MOV             R11, R0
270946:  MOV             R0, R6; asset
270948:  BLX             AAsset_getRemainingLength
27094C:  SUB.W           R0, R0, R11
270950:  MOV             R1, R4; buf
270952:  ADD.W           R2, R0, R10
270956:  MOV             R0, R6; asset
270958:  CMP             R5, R2
27095A:  IT LE
27095C:  MOVLE           R2, R5; count
27095E:  BLX             AAsset_read
270962:  CMP             R0, R5
270964:  BNE             loc_270914
270966:  MOVS            R0, #1
270968:  STRB.W          R0, [R9,#4]
27096C:  ADD             SP, SP, #4
27096E:  POP.W           {R8-R11}
270972:  POP             {R4-R7,PC}
